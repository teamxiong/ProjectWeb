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

        public List<tbMenu> GetRole_authorization(Dictionary<string, string> data)
        {
            var List1 = Db.Queryable<tbMenu, tbRoleMenu, tbRole>((t, tr, tb) => new object[] {
                JoinType.Inner,t.Id==tr.MenuId,tr.RoleId==tb.Id
});
            var List2 = Db.Queryable<tbButton, tbRoleMenuButton, tbRole>((t, tr, tb) => new object[] {
                JoinType.Inner,t.Id==tr.ButtonId,tr.RoleId==tb.Id
}).Select((t, tr, tb) => new tbMenu { Id = t.Id, Name = t.Name, MenuType = 10 });

            List<tbMenu> InfoList = new List<tbMenu>();
            InfoList.AddRange(List1.Clone().ToList());
            InfoList.AddRange(List2.Clone().ToList());
            return InfoList;
        }
        public bool Role_authorization(string RoleId, string[] IdArr)
        {
            bool Isok = false;
            List<string> SqlList = new List<string>();
            SqlList.Add(string.Format(" delete tbRoleMenu where   RoleId='{0}' ", RoleId));
            SqlList.Add(string.Format("   delete tbRoleMenuButton where RoleId='{0}'  ", RoleId));
            for (int i = 0; i < IdArr.Length; i++)
            {
                string[] arr = IdArr[i].Split(',');
                if (arr[2] != "3")
                {
                    SqlList.Add(string.Format(" INSERT INTO [dbo].[tbRoleMenu] ([RoleId] ,[MenuId]) VALUES ('{0}' ,'{1}') ", RoleId, arr[0]));
                }
                else
                {
                    SqlList.Add(string.Format("  INSERT INTO[dbo].[tbRoleMenuButton] ([RoleId] ,[MenuId] ,[ButtonId]) VALUES('{0}' ,'{1}' ,'{2}')  ",RoleId, arr[1], arr[0]));
                }
            }

            Isok = (SqlHelper.ExecuteNonQuery(SqlHelper.ConnectionString(),SqlList) > 0) ? true : false;
            return Isok;
        }
    }
}
