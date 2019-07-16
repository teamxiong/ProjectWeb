using ProjectWebICoreService;
using ProjectWebModel;
using SqlSugar;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace ProjectWebDataAccess
{
    public class tbRoleDAL : DbContext<tbRole>,tbRoleICoreService
    {
        public List<tbRole> GettbRoleList(int StartPage, int PageSize, Dictionary<string, string> data, ref int totalNumber)
        {
            var queryable = CurrentDb.AsQueryable();
            if (data.ContainsKey("RoleName") && !string.IsNullOrEmpty(data["RoleName"]))
            {
                queryable.Where(it => it.RoleName == data["RoleName"]);
            }
            if (data.ContainsKey("Name") && !string.IsNullOrEmpty(data["Name"]))
            {
                queryable.Where(it => it.RoleName == data["RoleName"]);
            }
            return queryable.Clone().ToPageList(StartPage, PageSize, ref totalNumber); 
        }
        public List<tbRole> GettbRoleLisByUsert(int StartPage, int PageSize, string UserId, ref int totalNumber)
        {
            var RoleLis = Db.Queryable<tbRole, tbUserRole>((t1, t2) => new object[] {
                JoinType.Left,
                t1.Id==t2.RoleId
            }).Where((t1, t2) => t2.UserId == Convert.ToInt32(UserId)).Select(
                (t1, t2) => new tbRole
                {
                    Id = t1.Id,
                    RoleName = t1.RoleName,
                    Description = t2.UserId.ToString()
                }).ToPageList(StartPage, PageSize, ref totalNumber);
            return RoleLis;
        }
        public IList<tbRole> GettbRoleByhwhere(string where)
        {
            IList<tbRole> List = new List<tbRole>();
            DataTable dt = SqlHelper.GetDataTable(SqlHelper.ConnectionString(), CommandType.Text, string.Format("select * from tbRole where 1=1 {0} ", where), null);
            List = SqlHelper.ConvertTo<tbRole>(dt);
            return List;
        }
        public bool AddtbRole(tbRole Info)
        {
            return CurrentDb.AsInsertable(Info).ExecuteCommand()>0;
        }
        public bool UptbRole(tbRole Info)
        {
            return CurrentDb.Update(Info);
        }
        public bool DetbRole(string Id)
        {
            return CurrentDb.DeleteByIds(Id.Split(','));
        }

        public List<tbMenu> GetRole_authorization(string RoleId)
        {
            List<tbMenu> InfoList = new List<tbMenu>();
            if (RoleId=="90")
            {
                InfoList = Db.Queryable<tbMenu>().ToList();
            }
            else
            {
                var List1 = Db.Queryable<tbMenu, tbRoleMenu, tbRole>((t, tr, tb) => new object[] {
                JoinType.Inner,t.Id==tr.MenuId,
                JoinType.Inner,tr.RoleId==tb.Id
}).Where((t, tr, tb) => tb.Id == Convert.ToInt32(RoleId));
                InfoList.AddRange(List1.Clone().ToList());
            }
            return InfoList;
        }
        public ResultInfo Role_authorization(int RoleId, List<tbRoleMenu> InfoList)
        {
            ResultInfo result = new ResultInfo();
            try
            {
                var res = Db.Ado.UseTran(() =>
                {
                    Db.Deleteable<tbRoleMenu>().Where(i => i.RoleId == RoleId).ExecuteCommand();
                    Db.Insertable(InfoList).ExecuteCommand();
                });
                result.res = res.IsSuccess;
                result.info = res.ErrorMessage;
            }
            catch (Exception ex)
            {
                result.res = false;
                result.info = ex.Message;
            }
            return result;
        }
    }
}
