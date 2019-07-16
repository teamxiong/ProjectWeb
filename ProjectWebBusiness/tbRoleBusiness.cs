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

        public static Dictionary<string, object> GetRole_authorization(string RoleId)
        {
            List<tbMenu> List = dal.GetRole_authorization(RoleId);
            dtree InfoTreeNode = new dtree();
            InfoTreeNode.id = "0";
            InfoTreeNode.parentId ="0";
            InfoTreeNode.dataType = "-1";
            InfoTreeNode.checkArr = new dtree.checkArrInfo() { Checked = "0" };
            InfoTreeNode.children = new List<dtree>();
            GetTreeNode(List, InfoTreeNode);
            Dictionary<string, object> status = new Dictionary<string, object>();
            status.Add("code", 200);
            status.Add("message", "操作成功");
            Dictionary<string, object> dict = new Dictionary<string, object>();
            dict.Add("status", status);
            dict.Add("data", InfoTreeNode.children);
            string test = Newtonsoft.Json.JsonConvert.SerializeObject(InfoTreeNode.children);
            return dict;
        }
        public static void GetTreeNode(IList<tbMenu> lstPlace, dtree InfoTreeNode)
        {
            try
            {
                if (InfoTreeNode == null)
                {
                    InfoTreeNode = new dtree();
                }
                int chilCareType = 1;
                chilCareType = Convert.ToInt16(InfoTreeNode.dataType) + 1;
                foreach (tbMenu s in lstPlace)
                {
                    if (s.ParentId != Convert.ToInt32(InfoTreeNode.id) || s.MenuType != chilCareType)
                    {
                        continue;
                    }

                    dtree _info = new dtree();
                    _info.id = s.Id.ToString();
                    _info.title = s.Name.ToString();
                    _info.parentId = s.ParentId.ToString();
                    _info.dataType = s.MenuType.ToString();
                    _info.checkArr = new dtree.checkArrInfo() {  Checked="0"};
                    GetTreeNode(lstPlace, _info);
                    InfoTreeNode.children.Add(_info);
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        public class dtree
        {
            public string id { get; set; }
            public string title { get; set; }
            public string parentId { get; set; }
            public checkArrInfo checkArr { get; set; }
            public string dataType { get; set; }
            public List<dtree> children { get; set; }
            public class checkArrInfo
            {
                public string Checked { get; set; }
            }
            public dtree()
            {
                if (children == null)
                    children = new List<dtree>();
            }

        }
        public static ResultInfo Role_authorization(int RoleId, string authorizationStr)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                List<string> MenuIdList = authorizationStr.Split(',').ToList();
                List<tbRoleMenu> InfoList = new List<tbRoleMenu>();
                MenuIdList.ForEach(i => {
                    InfoList.Add(new tbRoleMenu() { RoleId=RoleId, MenuId=Convert.ToInt32(i) });
                });
                resInfo = dal.Role_authorization(RoleId, InfoList);
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
