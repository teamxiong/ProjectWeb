using ProjectWebCommon;
using ProjectWebDataAccess;
using ProjectWebICoreService;
using ProjectWebModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace ProjectWebBusiness
{
    public class tbUserBusiness
    {
        public static tbUserICoreService dal = new tbUserDAL();
        public static List<tbUser> GettbUserList(int StartPage, int PageSize, Dictionary<string, string> data, ref int total)
        {
            var UserLsit = dal.GettbUserList(data,StartPage, PageSize, ref total);
            return UserLsit;
        }
        public static IList<tbUser> GettbUserByhwhere(Dictionary<string, string> dict)
        {
            StringBuilder where = new StringBuilder();
            IList<tbUser> List = dal.GettbUserByhwhere(dict);
            return List;
        }
        public static ResultInfo AddtbUser(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbUser Info = new tbUser();
                Info.AccountName = data["AccountName"];
                Info.Password = Common.GetMD5String("123456");
                Info.RealName = data["RealName"];
                Info.MobilePhone = data["MobilePhone"];
                Info.Email = data["Email"];
                Info.IsAble = true;
                Info.Description = data["Description"];
                Info.CreateBy = Info.UpdateBy = "xxx";
                Info.CreateTime = Info.UpdateTime = DateTime.Now;
                resInfo.res = dal.AddtbUser(Info);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
        public static ResultInfo UptbUser(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbUser Info = new tbUser();
                Info.Id =Convert.ToInt32(data["Id"]);
                Info.RealName = data["RealName"];
                Info.MobilePhone = data["MobilePhone"];
                Info.Email = data["Email"];
                Info.IsAble = Convert.ToBoolean(data["IsAble"]);
                Info.Description = data["Description"];
                Info.UpdateBy = "xxx";
                Info.UpdateTime = DateTime.Now;
                Info.AccountName = data["AccountName"];
                resInfo.res = dal.UptbUser(Info);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
        public static ResultInfo DetbUser(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                resInfo.res = dal.DetbUser(data["Id"]);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
        public static ResultInfo Reset_Password(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                string Id = data["Id"];
                string Password = Common.GetMD5String("123456");
                resInfo.res = dal.Reset_Password(Id, Password);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }

        public static ResultInfo User_authorization_Roles(string UserId, string RoleId)
        {
            ResultInfo resInfo = new ResultInfo();
            resInfo = dal.User_authorization_Roles(UserId, RoleId);
            return resInfo;
        }
    }
}
