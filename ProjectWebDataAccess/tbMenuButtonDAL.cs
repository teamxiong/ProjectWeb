using ProjectWebICoreService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace ProjectWebDataAccess
{
    public class tbMenuButtonDAL : tbMenuButtonICoreService
    {
        public bool UptbMenuButton(string MenuId, string ButtonIdstr)
        {
            bool Isok = false;
            List<string> SqlList = new List<string>();
            string[] ButtonIdArr = ButtonIdstr.Split(',');
            SqlList.Add(string.Format(" delete tbMenuButton where MenuId={0} ", MenuId));
            for (int i = 0; i < ButtonIdArr.Length; i++)
            {
                SqlList.Add(string.Format(" insert tbMenuButton values('{0}','{1}') ", MenuId, ButtonIdArr[i]));
            }
            Isok = (SqlHelper.ExecuteNonQuery(SqlHelper.ConnectionString(), SqlList) > 0) ? true : false;
            return Isok;
        }
    }
}
