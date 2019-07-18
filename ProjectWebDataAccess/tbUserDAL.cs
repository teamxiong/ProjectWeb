using ProjectWebICoreService;
using ProjectWebModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace ProjectWebDataAccess
{
    public class tbUserDAL :DbContext<tbUser>,tbUserICoreService
    {
        public List<tbUser> GettbUserList(Dictionary<string,string> data,int StartPage, int PageSize,ref int total)
        {
            Dictionary<string, object> ResultJson = new Dictionary<string, object>();
            var queryable = CurrentDb.AsQueryable();
            if (data.ContainsKey("AccountName") &&!string.IsNullOrEmpty(data["AccountName"]))
            {
                queryable.Where(it => it.AccountName == data["AccountName"]);
            }
            var UserList= queryable.ToPageList(StartPage, PageSize, ref total);
            return UserList;
        }
        public IList<tbUser> GettbUserByhwhere(Dictionary<string, string> data)
        {
            var queryable = CurrentDb.AsQueryable();
            if (data.ContainsKey("Id") && !string.IsNullOrEmpty(data["Id"]))
            {
                queryable.Where(it => it.Id == Convert.ToInt32(data["Id"]));
            }
            return queryable.ToList();
        }
        public bool AddtbUser(tbUser Info)
        {
            return CurrentDb.Insert(Info);
        }
        public bool UptbUser(tbUser Info)
        {
            return (Db.Updateable(Info).IgnoreColumns(i => i == "Password").ExecuteCommand() > 0) ? true : false;
        }
        public bool DetbUser(string Id)
        {
            var result = Db.Ado.UseTran(() =>
            {
                Db.Deleteable<tbUserRole>().In(Id.Split(',')).ExecuteCommand();
                CurrentDb.DeleteByIds(Id.Split(','));
            });
            return result.IsSuccess;
        }
        public bool Reset_Password(string Id, string Password)
        {
            return Db.Updateable(new tbUser() { Id = Convert.ToInt32(Id) }).UpdateColumns(it => new { it.Password }).ReSetValue(it => it.Password == Password).ExecuteCommand() > 0;
        }

        public ResultInfo User_authorization_Roles(string UserId, string RoleId)
        {
            ResultInfo resuit = new ResultInfo();
            try
            {
                tbUserRole Info = new tbUserRole()
                {
                    RoleId = Convert.ToInt32(RoleId),
                    UserId = Convert.ToInt32(UserId)
                };
                var res = Db.Ado.UseTran(() =>
                {
                    Db.Deleteable<tbUserRole>().Where(i => i.UserId == Convert.ToInt32(UserId)).ExecuteCommand();
                    Db.Insertable<tbUserRole>(Info).ExecuteCommand();
                });
                if (res.IsSuccess)
                {
                    resuit.res = true;
                }
                else
                {
                    resuit.res = false;
                    resuit.info = "分配失败！";
                }
            }
            catch (Exception ex)
            {
                resuit.res = false;
                resuit.info = ex.Message;

            }
            return resuit;
        }

    }
}
