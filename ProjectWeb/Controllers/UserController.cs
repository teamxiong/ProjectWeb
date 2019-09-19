using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ProjectWebBusiness;
using ProjectWebICoreService;
using ProjectWebModel;
namespace ProjectWeb.Controllers
{
    public class UserController : BaseController
    {
        public readonly tbUserBusiness _tbUserService;
        public UserController(tbUserICoreService _tbUserICore)
        {
            _tbUserService = new tbUserBusiness(_tbUserICore);
        }
        public IActionResult Password()
        {
            return View();
        }
        public IActionResult UserInfo()
        {
            return View();
        }
        [HttpPost]
        public JsonResult UpPassword(string oldPassword, string repassword)
        {
            ResultInfo result = new ResultInfo();
            try
            {
                if (string.IsNullOrEmpty(oldPassword) || string.IsNullOrEmpty(repassword))
                {
                    result.res = false;
                    result.info = "获取参数失败！";
                    return Json(result);
                }
                result = _tbUserService.UpPassword(uSession, oldPassword, repassword);
            }
            catch (Exception ex)
            {
                result.res = false;
                result.info = ex.Message;
                return Json(result);
            }
            return Json(result);
        }
        [HttpPost]
        public JsonResult GetUserInfo()
        {
            ResultInfo result = new ResultInfo();
            try
            {
                result.res = true;
                var UserInfo = _tbUserService.GetUserInfo(uSession);
                Dictionary<string, object> info = new Dictionary<string, object>
                {
                    { "AccountName", UserInfo.AccountName },
                    { "Email", UserInfo.Email },
                    { "MobilePhone", UserInfo.MobilePhone },
                    { "UserName", UserInfo.RealName }
                };
                result.info = info;
            }
            catch (Exception ex)
            {
                result.res = false;
                result.info = ex.Message;
                return Json(result);
            }
            return Json(result);
        }
        [HttpPost]
        public JsonResult UpUserInfo(string RealName, string Email, string MobilePhone)
        {
            ResultInfo result = new ResultInfo();
            try
            {
                if (string.IsNullOrEmpty(RealName))
                {
                    result.res = false;
                    result.info = "获取参数失败！";
                    return Json(result);
                }
                result = _tbUserService.UpUserInfo(uSession, RealName,Email,MobilePhone);
            }
            catch (Exception ex)
            {
                result.res = false;
                result.info = ex.Message;
                return Json(result);
            }
            return Json(result);
        }
    }
}