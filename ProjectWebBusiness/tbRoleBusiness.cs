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
    public class tbRoleBusiness
    {
        public static tbRoleICoreService dal = new tbRoleDAL();
        public static List<tbRole> GettbRoleList(int StartPage, int PageSize, Dictionary<string, string> data, ref int totalNumber)
        {
            List<tbRole> RoleList = new List<tbRole>();
            string UserId = "";
            if (data.ContainsKey("UserId")&& !string.IsNullOrEmpty(data["UserId"]))
            {
                UserId = data["UserId"];
            }
            if (string.IsNullOrEmpty(UserId))
            {
                RoleList = dal.GettbRoleList(StartPage, PageSize, data,ref totalNumber);
            }
            else
            {
                RoleList = dal.GettbRoleLisByUsert(StartPage, PageSize, UserId, ref totalNumber);
            }
          
            return RoleList;
        }
        public static IList<tbRole> GettbRoleByhwhere(Dictionary<string, string> dict)
        {
            StringBuilder where = new StringBuilder();
            if (dict.ContainsKey("Id"))
            {
                where.Append(" AND Id='" + dict["Id"] + "' ");
            }
            IList<tbRole> List = dal.GettbRoleByhwhere(where.ToString());
            return List;
        }
        public static ResultInfo AddtbRole(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbRole Info = new tbRole();
                Info.RoleCode = "";
                Info.RoleName = data["RoleName"];
                Info.Description = data["Description"];
                Info.CreateBy = Info.UpdateBy = "xxx";
                Info.CreateTime = Info.UpdateTime = DateTime.Now;
                resInfo.res = dal.AddtbRole(Info);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
        public static ResultInfo UptbRole(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbRole Info = new tbRole();
                Info.Id = Convert.ToInt32(data["Id"]);
                Info.RoleCode = "";
                Info.RoleName = data["RoleName"];
                Info.Description = data["Description"];
                Info.UpdateBy = "xxx";
                Info.UpdateTime = DateTime.Now;
                resInfo.res = dal.UptbRole(Info);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
        public static ResultInfo DetbRole(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                resInfo.res = dal.DetbRole(data["Id"]);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }

        public static List<Dictionary<string, object>> GetRole_authorization(string RoleId)
        {
            List<Dictionary<string, object>> dictList = new List<Dictionary<string, object>>();
            List<Dictionary<string, object>> dictdata = null;
            List<Dictionary<string, object>> dictButtonlist = null;
            Dictionary<string, string> data = new Dictionary<string, string>();
            //if (RoleId!="90")
            //{
            //    where = " and tb.Id='" + RoleId + "' ";
            //}
               
            List<tbMenu> List = dal.GetRole_authorization(data);
            //if (List != null && List.Count > 0)
            //{

            //    var tbMenuType1 = List.Where(i => i["MenuType"] == "1").ToList();
            //    foreach (var item in tbMenuType1)
            //    {
            //        Dictionary<string, object> dict = new Dictionary<string, object>();
            //        dictdata = new List<Dictionary<string, object>>();
            //        var tbMenuType2 = List.Where(i => i["MenuType"] == "2" && i["ParentId"] == item["Id"]).ToList();
            //        foreach (var info in tbMenuType2)
            //        {
            //            dictButtonlist = new List<Dictionary<string, object>>();
            //            Dictionary<string, object> dict2 = new Dictionary<string, object>();
            //            var tbButtonList = List.Where(i => i["MenuType"] == "3" && i["ParentId"] == info["Id"]).ToList();
            //            foreach (var Button in tbButtonList)
            //            {
            //                Dictionary<string, object> dictButton = new Dictionary<string, object>();
            //                dictButton.Add("title", Button["Name"]);
            //                dictButton.Add("value", Button["Id"]);
            //                dictButton.Add("Type", 3);
            //                dictButton.Add("ParentId", Button["ParentId"]);
            //                dictButton.Add("data","");
            //                dictButtonlist.Add(dictButton);
            //            }
            //            dict2.Add("title", info["Name"]);
            //            dict2.Add("value", info["Id"]);
            //            dict2.Add("Type", 2);
            //            dict2.Add("ParentId", info["ParentId"]);
            //            dict2.Add("data", dictButtonlist);
            //            dictdata.Add(dict2);
            //        }
            //        dict.Add("title", item["Name"]);
            //        dict.Add("value", item["Id"]);
            //        dict.Add("ParentId", item["ParentId"]);
            //        dict.Add("Type",1);
            //        dict.Add("data", dictdata);
            //        dictList.Add(dict);
            //    }
           // }
            return dictList;
        }
        public static ResultInfo Role_authorization(string RoleId, string authorizationStr)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                string[] Idstr = authorizationStr.Split('%');
                resInfo.res = dal.Role_authorization(RoleId, Idstr);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
    }
}
