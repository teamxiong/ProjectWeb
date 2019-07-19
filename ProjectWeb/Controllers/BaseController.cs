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
            base.OnActionExecuting(filterContext);
            if (!string.IsNullOrEmpty(HttpContext.Session.GetString("UserSession")))
            {
                uSession = Newtonsoft.Json.JsonConvert.DeserializeObject<UserSession>(HttpContext.Session.GetString("UserSession"));
            }
            else
            {
                filterContext.Result = RedirectToAction("Login", "Account");
            }
        }

    }
}
