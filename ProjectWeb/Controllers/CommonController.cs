using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ProjectWebModel;
namespace ProjectWeb.Controllers
{
    public class CommonController : BaseController
    {
        //获取当前页面的操作权限
        [HttpPost]
        public JsonResult GetUserViewpower(string MenId)
        {
            List<tbMenu> InfoList = uSession.UserMenus.Where(i => i.ParentId == Convert.ToInt32(MenId) && i.IsMenu == "0").OrderBy(i=>i.Id).ToList();
            var Info = (from a in InfoList
                        select new
                        {
                            ButtonId = a.ButtonId,
                            ButtonCss = a.ButtonCss,
                            ButtonClick = a.ButtonClick,
                            Icon = a.Icon,
                            Name=a.Name
                        }).ToList();
            return Json(Info);
        }
    }
}