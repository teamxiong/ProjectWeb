using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProjectWebBusiness;
using ProjectWebModel;

namespace ProjectWeb.Controllers
{
    public class HomeController : BaseController
    {

        public IActionResult Index()
        {
            ViewBag.UserName = uSession.UserName;
            return View();
        }

        public IActionResult Homepage()
        {
            return View();
        }
        [HttpPost]
        public JsonResult GettbMenu()
        {
            Dictionary<string, object> dict = tbMenuBusiness.MenusAnalytical(uSession.UserMenus);
            return Json(dict);
        }
        public IActionResult OutLogin()
        {
            HttpContext.Session.Clear();
            HttpContext.Response.Redirect("/Account/Login");
            return View();
        }
        #region Menu
        public IActionResult MenuMain()
        {
            return View();
        }
        public IActionResult MenuEdit()
        {
            return View();
        }
        [HttpPost]
        public JsonResult GetMenuList(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                int totalNumber = 0;
               List<tbMenu> InfoList = tbMenuBusiness.GettbMenuList(page, limit, data,ref totalNumber);
                info.Add("code", 0);
                info.Add("msg", "");
                info.Add("count", totalNumber);
                info.Add("data", InfoList);
            }
            catch (Exception ex)
            {
                throw;
            }
            return Json(info);
        }
        [HttpPost]
        public JsonResult GetMenuBysystem()
        {
            string RoleId = Request.Query["RoleId"];
            Dictionary<string, object> InfoList = tbMenuBusiness.GetMenuBysystem("939");
            return Json(InfoList);
        }
        [HttpPost]
        public JsonResult SavaMenu(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            string state = Request.Query["state"];
            if (data == null || string.IsNullOrEmpty(state))
            {
                resInfo.res = false;
                resInfo.info = "获取参数失败！";
                return Json(resInfo);
            }
            switch (state)
            {
                case "Add":
                    resInfo = tbMenuBusiness.AddMenu(data);
                    break;
                case "Edit":
                    resInfo = tbMenuBusiness.UpMenu(data);
                    break;
                case "Delete":
                    resInfo = tbMenuBusiness.DeMenu(data);
                    break;
            }
            return Json(resInfo);
        }
#endregion

        #region tbButton
        public IActionResult tbButtonMain()
        {
            return View();
        }
        public IActionResult tbButtonEdit()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GettbButtonList(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                Dictionary<string, object> dictList = tbButtonBusiness.GettbButtonList(page, limit, data);
                info.Add("status", 200);
                info.Add("message", "");
                info.Add("total", (dictList == null) ? 0 : dictList["rowCount"]);
                info.Add("rows", (dictList == null) ? null : dictList["rows"]);
            }
            catch (Exception ex)
            {
                throw;
            }
            return Json(info);
        }
        [HttpPost]
        public JsonResult GettbButtonByMenuIdList(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                Dictionary<string, object> dictList = tbButtonBusiness.GettbButtonByMenuIdList(page, limit, data);
                info.Add("status", 200);
                info.Add("message", "");
                info.Add("total", (dictList == null) ? 0 : dictList["rowCount"]);
                info.Add("rows", (dictList == null) ? null : dictList["rows"]);
            }
            catch (Exception ex)
            {
                throw;
            }
            return Json(info);
        }

        [HttpPost]
        public JsonResult GettbButtonByhwhere(Dictionary<string, string> data)
        {
            IList<tbButton> list = tbButtonBusiness.GettbButtonByhwhere(data);
            return Json(list);
        }
        [HttpPost]
        public JsonResult SavatbButton(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            string state = Request.Query["state"];
            if (data == null || string.IsNullOrEmpty(state))
            {
                resInfo.res = false;
                resInfo.info = "获取参数失败！";
                return Json(resInfo);
            }
            switch (state)
            {
                case "Add":
                    resInfo = tbButtonBusiness.AddtbButton(data);
                    break;
                case "Edit":
                    resInfo = tbButtonBusiness.UptbButton(data);
                    break;
                case "Delete":
                    resInfo = tbButtonBusiness.DetbButton(data);
                    break;
            }
            return Json(resInfo);
        }
        public IActionResult CommonHelpView()
        {
            return View();
        }
        [HttpPost]
        public JsonResult SavatbMenuButton(string MenuId, string ButtonIdstr)
        {
            ResultInfo resInfo = new ResultInfo();
            if (string.IsNullOrEmpty(MenuId) || string.IsNullOrEmpty(ButtonIdstr))
            {
                resInfo.res = false;
                resInfo.info = "获取参数失败！";
                return Json(resInfo);
            }
            resInfo = tbMenuButtonBusiness.UptbMenuButton(MenuId, ButtonIdstr);
            return Json(resInfo);
        }
        #endregion
        #region tbRole
        public IActionResult tbRoleMain()
        {
            return View();
        }
        public IActionResult tbRoleEdit()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GettbRoleList(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                int totalNumber = 0;
                List<tbRole> RoleList = tbRoleBusiness.GettbRoleList(page, limit, data, ref totalNumber);
                info.Add("status", 200);
                info.Add("message", "");
                info.Add("total", totalNumber);
                info.Add("rows", RoleList);
            }
            catch (Exception ex)
            {
                throw;
            }
            return Json(info);
        }
        [HttpPost]
        public JsonResult GetUser_authorization(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                int totalNumber = 0;
                List<tbRole> RoleList = tbRoleBusiness.GetUser_authorization(page, limit, data, ref totalNumber);
                info.Add("status", 200);
                info.Add("message", "");
                info.Add("total", totalNumber);
                info.Add("rows", RoleList);
            }
            catch (Exception ex)
            {
                throw;
            }
            return Json(info);
        }

        [HttpPost]
        public JsonResult SavatbRole(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            string state = Request.Query["state"];
            if (data == null || string.IsNullOrEmpty(state))
            {
                resInfo.res = false;
                resInfo.info = "获取参数失败！";
                return Json(resInfo);
            }
            switch (state)
            {
                case "Add":
                    resInfo = tbRoleBusiness.AddtbRole(data);
                    break;
                case "Edit":
                    resInfo = tbRoleBusiness.UptbRole(data);
                    break;
                case "Delete":
                    resInfo = tbRoleBusiness.DetbRole(data);
                    break;
            }
            return Json(resInfo);
        }

        public IActionResult Role_authorization()
        {
            return View();
        }
        [HttpPost]
        public JsonResult GetRole_authorization()
        {
            string RoleId = Request.Query["RoleId"];
            Dictionary<string, object> Role_authorization = tbRoleBusiness.GetRole_authorization(RoleId);
            return Json(Role_authorization);
        }
        [HttpPost]
        public JsonResult Role_authorization(string RoleId, string authorizationStr)
        {
            ResultInfo resInfo = new ResultInfo();
            if (string.IsNullOrEmpty(RoleId)|| string.IsNullOrEmpty(authorizationStr))
            {
                resInfo.res = false;
                resInfo.info = "获取参数失败！";
                return Json(resInfo);
            }
            resInfo = tbRoleBusiness.Role_authorization(Convert.ToInt32(RoleId), authorizationStr);
            return Json(resInfo);
        }
        #endregion
        #region tbUser

        public IActionResult tbUserMain()
        {
            return View();
        }
        public IActionResult tbUserEdit()
        {
            return View();
        }

        [HttpPost]
        public JsonResult GettbUserList(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                int total = 0;
                List<tbUser> resList = tbUserBusiness.GettbUserList(page, limit, data, ref total);
                info.Add("status", 200);
                info.Add("message", "");
                info.Add("total", total);
                info.Add("rows", resList);
            }
            catch (Exception ex)
            {
                throw;
            }
            return Json(info);
        }
        [HttpPost]
        public JsonResult GettbUserByhwhere(Dictionary<string, string> data)
        {
            IList<tbUser> list = tbUserBusiness.GettbUserByhwhere(data);
            return Json(list);
        }
        [HttpPost]
        public JsonResult User_authorization_Roles(Dictionary<string, string> data)
        {
            IList<tbUser> list = tbUserBusiness.GettbUserByhwhere(data);
            return Json(list);
        }

        [HttpPost]
        public JsonResult SavatbUser(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            string state = Request.Query["state"];
            if (data == null || string.IsNullOrEmpty(state))
            {
                resInfo.res = false;
                resInfo.info = "获取参数失败！";
                return Json(resInfo);
            }
            switch (state)
            {
                case "Add":
                    resInfo = tbUserBusiness.AddtbUser(data);
                    break;
                case "Edit":
                    resInfo = tbUserBusiness.UptbUser(data);
                    break;
                case "Delete":
                    resInfo = tbUserBusiness.DetbUser(data);
                    break;
                case "Reset":
                    resInfo = tbUserBusiness.Reset_Password(data);
                    break;
            }
            return Json(resInfo);
        }
        #endregion


        [HttpPost]
        public JsonResult User_tbUserRole(string UserId, string RoleId)
        {
            ResultInfo resInfo = new ResultInfo();
            if (string.IsNullOrEmpty(UserId) || string.IsNullOrEmpty(RoleId))
            {
                resInfo.res = false;
                resInfo.info = "获取参数失败！";
                return Json(resInfo);
            }
            resInfo = tbUserBusiness.User_authorization_Roles(UserId, RoleId);
            return Json(resInfo);
        }

    }
}
