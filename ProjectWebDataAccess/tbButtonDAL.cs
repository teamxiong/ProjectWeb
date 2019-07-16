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
   public class tbButtonDAL: tbButtonICoreService
    {
        public Dictionary<string, object> GettbButtonList(int StartPage, int PageSize, string Filter)
        {
            Dictionary<string, object> ResultJson = new Dictionary<string, object>();
            //String TableName = " tbButton ";
            //String Fields = " * ";
            //string order = "id";
            //ResultJson = Common.GetResultJsontwo(TableName, Fields, StartPage, PageSize, Filter, order);
            return ResultJson;
        }
        public Dictionary<string, object> GettbButtonByMenuIdList(int StartPage, int PageSize, string Filter, string MenuId)
        {
            Dictionary<string, object> ResultJson = new Dictionary<string, object>();
 //           String TableName = string.Format(@" tbButton T
 //left JOIN tbMenuButton tb on t.Id = tb.ButtonId and tb.MenuId ={0} ", MenuId);
 //           String Fields = " T.*,tb.ButtonId ";
 //           string order = " tb.ButtonId desc ";
 //           ResultJson = Common.GetResultJsontwo(TableName, Fields, StartPage, PageSize, Filter, order);
            return ResultJson;
        }
        public IList<tbButton> GettbButtonByhwhere(string where)
        {
            IList<tbButton> List = new List<tbButton>();
            DataTable dt = SqlHelper.GetDataTable(SqlHelper.ConnectionString(), CommandType.Text, string.Format("select * from tbButton where 1=1 {0} ", where), null);
            List = SqlHelper.ConvertTo<tbButton>(dt);
            return List;
        }
        public bool AddtbButton(tbButton Info)
        {
            bool Isok = false;
            string sql = @"INSERT  [dbo].[tbButton] VALUES (@Name
           ,@Code
             ,@Icon
           ,@Description
           ,@CreateTime
           ,@CreateBy )";
            SqlParameter[] paras = {
                 new SqlParameter("@Name",Info.Name),
                new SqlParameter("@Code",Info.Code),
                  new SqlParameter("@Description",Info.Description),
                   new SqlParameter("@Icon",Info.Icon),
                    new SqlParameter("@CreateTime",Info.CreateTime),
                     new SqlParameter("@CreateBy",Info.CreateBy)
            };
        Isok = (SqlHelper.ExecuteNonQuery(SqlHelper.ConnectionString(), CommandType.Text, sql, paras) > 0) ? true : false;
            return Isok;
        }
        public bool UptbButton(tbButton Info)
        {
            bool Isok = false;
            string sql = @" update  [dbo].[tbButton] set 
            Name=@Name
           ,Code=@Code
           ,Description=@Description
           ,Icon=@Icon where Id=@Id";
            SqlParameter[] paras = {
                new SqlParameter("@Id",Info.Id),
                 new SqlParameter("@Name",Info.Name),
                new SqlParameter("@Code",Info.Code),
                  new SqlParameter("@Description",Info.Description),
                   new SqlParameter("@Icon",Info.Icon)
            };
            Isok = (SqlHelper.ExecuteNonQuery(SqlHelper.ConnectionString(), CommandType.Text, sql, paras) > 0) ? true : false;
            return Isok;
        }
        public bool DetbButton(string Id)
        {
            bool Isok = false;
            string sql =string.Format(@" delete tbButton where Id in({0}) ",Id);
            Isok = (SqlHelper.ExecuteNonQuery(SqlHelper.ConnectionString(), CommandType.Text, sql, null) > 0) ? true : false;
            return Isok;
        }
    }
}
