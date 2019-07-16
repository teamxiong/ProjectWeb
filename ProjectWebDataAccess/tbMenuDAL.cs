using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using ProjectWebModel;
using ProjectWebICoreService;
using System.Data;
using SqlSugar;

namespace ProjectWebDataAccess
{
    public class tbMenuDAL : DbContext<tbMenu>,tbMenuICoreService
    {
        public IList<tbMenu> GettbMenu(string UserId)
        {
            IList<tbMenu> List = new List<tbMenu>();
            var list = Db.Queryable<tbMenu, tbRoleMenu, tbRole, tbUserRole, tbUser>((t1, t2, t3, t4, t5) => new object[] {
                JoinType.Inner,t1.Id==t2.MenuId,
                JoinType.Inner,t2.RoleId==t3.Id,
                JoinType.Inner,t3.Id==t4.RoleId,
                JoinType.Inner,t4.UserId==t5.Id
            }).Where((t1, t2, t3, t4, t5) => t5.Id== Convert.ToInt32(UserId)).OrderBy((t1)=>t1.MenuType).ToList();

            return list;
        }
        public IList<tbMenu> GettbMenuByhwhere(string where)
        {
            IList<tbMenu> List = new List<tbMenu>();
            DataTable dt = SqlHelper.GetDataTable(SqlHelper.ConnectionString(), CommandType.Text, string.Format("select * from tbMenu where 1=1 {0} ", where), null);
            List = SqlHelper.ConvertTo<tbMenu>(dt);
            return List;
        }
        public List<tbMenu> GettbMenuList(int StartPage, int PageSize,Dictionary<string,string> data,ref int totalNumber)
        {
            var query = CurrentDb.AsQueryable();
            if (data.ContainsKey("Name") && !string.IsNullOrEmpty(data["Name"]))
            {
                query.Where(i => i.Name.Contains(data["Name"]));
            }
            if (data.ContainsKey("LinkAddress") && !string.IsNullOrEmpty(data["LinkAddress"]))
            {
                query.Where(i => i.Name==data["LinkAddress"]);
            }
            if (data.ContainsKey("MenuType") && !string.IsNullOrEmpty(data["MenuType"]))
            {
                query.Where(i => i.MenuType == Convert.ToInt32(data["MenuType"]));
            }
            if (data.ContainsKey("LinkAddress") && !string.IsNullOrEmpty(data["LinkAddress"]))
            {
                query.Where(i => i.Name == data["Name"]);
            }
            return query.Clone().ToPageList(StartPage, PageSize, ref totalNumber);
        }


        public bool AddMenu(tbMenu Info)
        {
            bool Isok = false;
            string sql = @"INSERT  [dbo].[tbMenu] VALUES (@Name
           ,@ParentId
           ,@Code
           ,@LinkAddress
           ,@Icon
           ,@MenuType
           ,@IsEnable )";
            SqlParameter[] paras = {
                 new SqlParameter("@Name",Info.Name),
                new SqlParameter("@ParentId",Info.ParentId),
                 new SqlParameter("@Code",Info.Code),
                  new SqlParameter("@LinkAddress",Info.LinkAddress),
                   new SqlParameter("@Icon",Info.Icon),
                    new SqlParameter("@MenuType",Info.MenuType),
                     new SqlParameter("@IsEnable",Info.IsEnable)
            };
            Isok = (SqlHelper.ExecuteNonQuery(SqlHelper.ConnectionString(), CommandType.Text, sql, paras) > 0) ? true : false;
            return Isok;
        }
        public bool UpMenu(tbMenu Info)
        {
            bool Isok = false;
            string sql = @" update  [dbo].[tbMenu] set 
            Name=@Name
            ,ParentId=@ParentId
           ,Code=@Code
           ,LinkAddress=@LinkAddress
           ,Icon=@Icon
           ,MenuType=@MenuType
           ,IsEnable=@IsEnable where Id=@Id";
            SqlParameter[] paras = {
                  new SqlParameter("@Id",Info.Id),
                 new SqlParameter("@Name",Info.Name),
                new SqlParameter("@ParentId",Info.ParentId),
                 new SqlParameter("@Code",Info.Code),
                  new SqlParameter("@LinkAddress",Info.LinkAddress),
                   new SqlParameter("@Icon",Info.Icon),
                    new SqlParameter("@MenuType",Info.MenuType),
                     new SqlParameter("@IsEnable",Info.IsEnable)
            };
            Isok = (SqlHelper.ExecuteNonQuery(SqlHelper.ConnectionString(), CommandType.Text, sql, paras) > 0) ? true : false;
            return Isok;
        }
        public bool DeMenu(string Id)
        {
            bool Isok = false;
            string sql = string.Format(@" delete tbMenu where Id in ({0}) ",Id);
            Isok = (SqlHelper.ExecuteNonQuery(SqlHelper.ConnectionString(), CommandType.Text, sql, null) > 0) ? true : false;
            return Isok;
        }
    }
}
