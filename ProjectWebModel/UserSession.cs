using System;
using System.Collections.Generic;
using System.Text;

namespace ProjectWebModel
{
    public class UserSession
    {
        public string UserId { get; set; }
        public string UserName { get; set; }
        public string MobilePhone { get; set; }
        public string Email { get; set; }
        public string RoleId { get; set; }
        public List<tbMenu> UserMenus { get; set; }

    }
}
