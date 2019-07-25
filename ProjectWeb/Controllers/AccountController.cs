using System;
using System.Collections.Generic;
using System.DrawingCore;
using System.DrawingCore.Drawing2D;
using System.DrawingCore.Imaging;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProjectWebBusiness;
using ProjectWebModel;
namespace ProjectWeb.Controllers
{
    public class AccountController : Controller
    {
        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public JsonResult Click_Login(string logname,string logpass,string valiCode)
        {
            ResultInfo result = new ResultInfo();
            try
            {
                if (string.IsNullOrEmpty(logname) || string.IsNullOrEmpty(logpass) || string.IsNullOrEmpty(valiCode))
                {
                    result.res = false;
                    result.info = "参数不能为空！";
                    return Json(result);
                }
                string valiCodes = HttpContext.Session.GetString("valiCode");
                if (string.IsNullOrEmpty(valiCodes))
                {
                    result.res = false;
                    result.info = "验证码超时！";
                    return Json(result);
                }
                if (valiCodes.ToLower() != valiCode.ToLower())
                {
                    result.res = false;
                    result.info = "验证码输入错误，请重新输入！";
                    return Json(result);
                }
                UserSession Info =tbUserBusiness.Click_Login(logname, logpass);
                if (Info==null)
                {
                    result.res = false;
                    result.info = "用户名或密码错误，请重新输入！";
                }
                else
                {
                    if (string.IsNullOrEmpty(Info.RoleId))
                    {
                        result.res = false;
                        result.info = "未获取该用户的权限，请分配权限后重新登录！";
                    }
                    else
                    {
                 
                        Info.UserMenus= tbMenuBusiness.GetUserMenus(Info.UserId);
                        HttpContext.Session.SetString("UserSession", Newtonsoft.Json.JsonConvert.SerializeObject(Info));
                        result.res = true;
                        result.info = "/Home/Index";
                    }
                }
            }
            catch (Exception ex)
            {
                result.res = false;
                result.info = ex.Message;
            }
            return Json(result);
        }

        #region 混合验证码
        /// <summary>
        /// 混合验证码
        /// </summary>
        /// <returns></returns>
        public FileContentResult MixVerifyCode()
        {
            int length = 4;
            int width = 100;
            int height = 40;
            char[] verification = new char[length];
            char[] dictionary = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
            };
            Random random = new Random();
            for (int i = 0; i < length; i++)
            {
                verification[i] = dictionary[random.Next(dictionary.Length - 1)];
            }
            string code = new string(verification);

            Font font = new Font("Arial", 14, (FontStyle.Bold | FontStyle.Italic));
            Brush brush;
            Bitmap bitmap = new Bitmap(width, height);
            Graphics g = Graphics.FromImage(bitmap);
            SizeF totalSizeF = g.MeasureString(code, font);
            SizeF curCharSizeF;
            PointF startPointF = new PointF(0, (height - totalSizeF.Height) / 2);
            g.Clear(Color.White); //清空图片背景色  
            for (int i = 0; i < code.Length; i++)
            {
                brush = new LinearGradientBrush(new Point(0, 0), new Point(1, 1), Color.FromArgb(random.Next(255), random.Next(255), random.Next(255)), Color.FromArgb(random.Next(255), random.Next(255), random.Next(255)));
                g.DrawString(code[i].ToString(), font, brush, startPointF);
                curCharSizeF = g.MeasureString(code[i].ToString(), font);
                startPointF.X += curCharSizeF.Width;
            }

            //画图片的干扰线  
            for (int i = 0; i < 10; i++)
            {
                int x1 = random.Next(bitmap.Width);
                int x2 = random.Next(bitmap.Width);
                int y1 = random.Next(bitmap.Height);
                int y2 = random.Next(bitmap.Height);
                g.DrawLine(new Pen(Color.Silver), x1, y1, x2, y2);
            }

            //画图片的前景干扰点  
            for (int i = 0; i < 100; i++)
            {
                int x = random.Next(bitmap.Width);
                int y = random.Next(bitmap.Height);
                bitmap.SetPixel(x, y, Color.FromArgb(random.Next()));
            }

            g.DrawRectangle(new Pen(Color.Silver), 0, 0, bitmap.Width - 1, bitmap.Height - 1); //画图片的边框线  
            g.Dispose();
            MemoryStream stream = new MemoryStream();
            bitmap.Save(stream, ImageFormat.Gif);
            HttpContext.Session.SetString("valiCode", code);
            return File(stream.ToArray(), "image/gif");
        }
        #endregion
    }
}