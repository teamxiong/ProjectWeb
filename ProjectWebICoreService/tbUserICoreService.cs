using ProjectWebModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebICoreService
{
    public interface tbUserICoreService
    {
        UserSession Click_Login(string UserId, string PassWord);
        List<tbUser> GettbUserList(Dictionary<string, string> data, int StartPage, int PageSize, ref int total);
        IList<tbUser> GettbUserByhwhere(Dictionary<string, string> data);
        bool AddtbUser(tbUser Info);
        bool UptbUser(tbUser Info);
        bool UpPassword(tbUser Info);
        bool DetbUser(string Id);
         bool Reset_Password(string Id,string Password);
        ResultInfo User_authorization_Roles(string UserId, string RoleId);
        tbUser GetUserInfo(int UserId);
    }
}
