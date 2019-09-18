using ProjectWebCommon;
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
        public static tbUserICoreService dal;
        public tbUserBusiness(tbUserICoreService _tbUserICoreService)
        {
            dal = _tbUserICoreService;
        }
        /// <summary>
        /// 查询用户列表
        /// </summary>
        /// <param name="StartPage"></param>
        /// <param name="PageSize"></param>
        /// <param name="data"></param>
        /// <param name="total"></param>
        /// <returns></returns>
        public List<tbUser> GettbUserList(int StartPage, int PageSize, Dictionary<string, string> data, ref int total)
        {
            var UserLsit = dal.GettbUserList(data,StartPage, PageSize, ref total);
            return UserLsit;
        }
        /// <summary>
        /// 查询用户角色列表
        /// </summary>
        /// <param name="dict"></param>
        /// <returns></returns>
        public IList<tbUser> GettbUserByhwhere(Dictionary<string, string> dict)
        {
            StringBuilder where = new StringBuilder();
            IList<tbUser> List = dal.GettbUserByhwhere(dict);
            return List;
        }
        /// <summary>
        /// 添加用户
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        public  ResultInfo AddtbUser(Dictionary<string, string> data,UserSession uSession)
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
                Info.CreateBy = Info.UpdateBy = uSession.UserName;
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
        /// <summary>
        /// 修改用户
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        public  ResultInfo UptbUser(Dictionary<string, string> data,UserSession uSession)
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
                Info.UpdateBy = uSession.UserName;
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
        /// <summary>
        /// 删除用户
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        public  ResultInfo DetbUser(Dictionary<string, string> data)
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
        /// <summary>
        /// 重置用户密码
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        public  ResultInfo Reset_Password(Dictionary<string, string> data)
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
        /// <summary>
        /// 保存用户分配角色
        /// </summary>
        /// <param name="UserId"></param>
        /// <param name="RoleId"></param>
        /// <returns></returns>
        public ResultInfo User_authorization_Roles(string UserId, string RoleId)
        {
            ResultInfo resInfo = new ResultInfo();
            resInfo = dal.User_authorization_Roles(UserId, RoleId);
            return resInfo;
        }

        /// <summary>
        /// 用户登录
        /// </summary>
        /// <param name="UserId"></param>
        /// <param name="PassWord"></param>
        /// <returns></returns>
        public UserSession Click_Login(string UserId, string PassWord)
        {
            PassWord = Common.GetMD5String(PassWord);
            UserSession Info = dal.Click_Login(UserId, PassWord);
            return Info;
        }
    }
}
