using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using ProjectWebModel;

namespace ProjectWeb.Controllers
{
    public class BaseController : Controller
    {
        protected UserSession uSession;
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            bool IsAjaxRequest = filterContext.HttpContext.Request.Headers["x-requested-with"] == "XMLHttpRequest";
            if (!string.IsNullOrEmpty(HttpContext.Session.GetString("UserSession")))
            {
                //if (IsAjaxRequest&& filterContext.HttpContext.Request.Headers.Keys.Contains("table"))
                //{
                //    //if (uSession.UserMenus.Where(i=>i.LinkAddress))
                //    //{

                //    //}
                //}
                uSession = Newtonsoft.Json.JsonConvert.DeserializeObject<UserSession>(HttpContext.Session.GetString("UserSession"));
            }
            else
            {
                if (IsAjaxRequest)
                {
                    filterContext.HttpContext.Response.Headers.Add("outLogin", "true");
                    filterContext.Result = Json("");
                }
                else
                {
                    filterContext.Result = RedirectToAction("Login", "Account");
                }
            }
            base.OnActionExecuting(filterContext);
        }
    }
}
