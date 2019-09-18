using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProjectWebBusiness;
using ProjectWebICoreService;
using ProjectWebModel;

namespace ProjectWeb.Controllers
{
    public class HomeController : BaseController
    {
        public readonly tbMenuBusiness _MenuService;
        public readonly tbRoleBusiness _tbRoleService;
        public readonly tbUserBusiness _tbUserService;
        public HomeController(tbMenuICoreService _tbMenuICore, tbRoleICoreService _tbRoleICore, tbUserICoreService _tbUserICore)
        {
            _MenuService = new tbMenuBusiness(_tbMenuICore, _tbRoleICore);
            _tbRoleService = new tbRoleBusiness(_tbRoleICore);
            _tbUserService = new tbUserBusiness(_tbUserICore);
        }
        #region 主页
        public IActionResult Index()
        {
            ViewBag.UserName = uSession.UserName;
            return View();
        }

        public IActionResult Homepage()
        {
            return View();
        }
        //获取用户菜单
        [HttpPost]
        public JsonResult GettbMenu()
        {
            Dictionary<string, object> dict = _MenuService.MenusAnalytical(uSession.UserMenus);
            return Json(dict);
        }
        //系统退出
        public IActionResult OutLogin()
        {
            HttpContext.Session.Clear();
            HttpContext.Response.Redirect("/Account/Login");
            return View();
        }
        public IActionResult CommonHelpView()
        {
            return View();
        }
        #endregion
        #region Menu
        public IActionResult MenuMain()
        {
            return View();
        }
        public IActionResult MenuEdit()
        {
            return View();
        }
        //获取菜单列表
        [HttpPost]
        public JsonResult GetMenuList(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                int totalNumber = 0;
               List<tbMenu> InfoList = _MenuService.GettbMenuList(page, limit, data,ref totalNumber);
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
        //获取上级菜单
        [HttpPost]
        public JsonResult GetMenuBysystem()
        {
            string RoleId = Request.Query["RoleId"];
            Dictionary<string, object> InfoList = _MenuService.GetMenuBysystem("939");
            return Json(InfoList);
        }
        //保存系统菜单
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
                    resInfo = _MenuService.AddMenu(data);
                    break;
                case "Edit":
                    resInfo = _MenuService.UpMenu(data);
                    break;
                case "Delete":
                    resInfo = _MenuService.DeMenu(data);
                    break;
            }
            return Json(resInfo);
        }
        #endregion
        #region 角色管理
        public IActionResult tbRoleMain()
        {
            return View();
        }
        public IActionResult tbRoleEdit()
        {
            return View();
        }
        //获取用户角色详情
        public JsonResult GettbRoleInfo(string Id)
        {
            ResultInfo result = new ResultInfo();
            try
            {
                if (string.IsNullOrEmpty(Id))
                {
                    result.res = false;
                    result.info = "获取参数失败！";
                    return Json(result);
                }
                result.info = _tbRoleService.GettbRoleInfo(Id);
                result.res = true;
            }
            catch (Exception ex)
            {
                result.res = false;
                result.info = ex.Message;
                return Json(result);
            }
            return Json(result);
        }
        //查询用户列表
        [HttpPost]
        public JsonResult GettbRoleList(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                int totalNumber = 0;
                List<tbRole> RoleList = _tbRoleService.GettbRoleList(page, limit, data, ref totalNumber);
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
        //保存角色
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
                    resInfo = _tbRoleService.AddtbRole(data, uSession);
                    break;
                case "Edit":
                    resInfo = _tbRoleService.UptbRole(data,uSession);
                    break;
                case "Delete":
                    resInfo = _tbRoleService.DetbRole(data);
                    break;
            }
            return Json(resInfo);
        }
        //角色分配权限视图
        public IActionResult Role_authorization()
        {
            return View();
        }
        //获取角色分配的权限
        [HttpPost]
        public JsonResult GetRole_authorization()
        {
            string RoleId = Request.Query["RoleId"];
            Dictionary<string, object> Role_authorization = _tbRoleService.GetRole_authorization(RoleId);
            return Json(Role_authorization);
        }
        //保存角色权限
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
            resInfo = _tbRoleService.Role_authorization(Convert.ToInt32(RoleId), authorizationStr);
            return Json(resInfo);
        }
        #endregion
        #region 用户管理

        public IActionResult tbUserMain()
        {
            return View();
        }
        public IActionResult tbUserEdit()
        {
            return View();
        }
        //查询用户列表
        [HttpPost]
        public JsonResult GettbUserList(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                int total = 0;
                List<tbUser> resList = _tbUserService.GettbUserList(page, limit, data, ref total);
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
        //查询用户角色列表
        [HttpPost]
        public JsonResult GettbUserByhwhere(Dictionary<string, string> data)
        {
            IList<tbUser> list = _tbUserService.GettbUserByhwhere(data);
            return Json(list);
        }
        ////获取分配用户角色列表
        // [HttpPost]
        // public JsonResult User_authorization_Roles(Dictionary<string, string> data)
        // {
        //     IList<tbUser> list = tbUserBusiness.GettbUserByhwhere(data);
        //     return Json(list);
        // }
        [HttpPost]
        public JsonResult GetUser_authorization(Dictionary<string, string> data, int page, int limit)
        {
            Dictionary<string, object> info = new Dictionary<string, object>();
            try
            {
                int totalNumber = 0;
                List<tbRole> RoleList = _tbRoleService.GetUser_authorization(page, limit, data, ref totalNumber);
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
        //保存用户
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
                    resInfo = _tbUserService.AddtbUser(data,uSession);
                    break;
                case "Edit":
                    resInfo = _tbUserService.UptbUser(data,uSession);
                    break;
                case "Delete":
                    resInfo = _tbUserService.DetbUser(data);
                    break;
                case "Reset":
                    resInfo = _tbUserService.Reset_Password(data);
                    break;
            }
            return Json(resInfo);
        }
        //保存用户分配角色
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
            resInfo = _tbUserService.User_authorization_Roles(UserId, RoleId);
            return Json(resInfo);
        }
        #endregion
    }
}
