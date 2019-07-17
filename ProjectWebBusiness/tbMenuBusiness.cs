using ProjectWebDataAccess;
using ProjectWebICoreService;
using ProjectWebModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebBusiness
{
   public class tbMenuBusiness
    {
        public static tbMenuICoreService dal = new tbMenuDAL();
        public static Dictionary<string, object> GettbMenuBysystem(string UserId)
        {
            List<Dictionary<string, object>> dictList = new List<Dictionary<string, object>>();
            IList<tbMenu> List = dal.GettbMenu(UserId);
            List<Dictionary<string, object>> deicList = new List<Dictionary<string, object>>();
            Tree InfoTreeNode = new Tree();
            InfoTreeNode.id = "0";
            InfoTreeNode.ParentId =0;
            InfoTreeNode.MenuType= -1;
            InfoTreeNode.child =new List<Tree>();
            GetTreeNode(List, InfoTreeNode);
            Dictionary<string, object> a = new Dictionary<string, object>();
            a.Add("menuInfo", InfoTreeNode.child);
            return a;
        }
        public class Tree
        {
            public string id { get; set; }
            public string title { get; set; }
            public string icon { get; set; }
            public string href { get; set; }
            public int MenuType { get; set; }
            public string target { get; set; }
            public List<Tree> child { get; set; }
            public int ParentId { get; set; }
            public Tree() {
                if (child == null)
                    child = new List<Tree>();
            }
        }
        public static void GetTreeNode(IList<tbMenu> lstPlace, Tree InfoTreeNode)
        {
            try
            {
                if (InfoTreeNode == null)
                {
                    InfoTreeNode = new Tree();
                }
                int chilCareType = 1;
                chilCareType = Convert.ToInt16(InfoTreeNode.MenuType) + 1;
                foreach (tbMenu s in lstPlace)
                {
                    if (s.ParentId != Convert.ToInt32(InfoTreeNode.id) || s.MenuType != chilCareType)
                    {
                        continue;
                    }

                    Tree _info = new Tree();
                    _info.id = s.Id.ToString();
                    _info.title = s.Name.ToString();
                    _info.MenuType = s.MenuType;
                    _info.href = s.LinkAddress;
                    _info.icon = s.Icon.ToString();
                    _info.target = "_self";
                    _info.ParentId = s.ParentId;
                    
                    GetTreeNode(lstPlace, _info);
                    InfoTreeNode.child.Add(_info);
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        public static List<tbMenu> GettbMenuList(int StartPage, int PageSize, Dictionary<string, string> data,ref int totalNumber)
        {
            return dal.GettbMenuList(StartPage, PageSize, data, ref totalNumber); 
        }
        public static IList<tbMenu> GettbMenuByhwhere(Dictionary<string,string> dict)
        {
            StringBuilder where = new StringBuilder();
            if (dict.ContainsKey("MenuType"))
            {
                where.Append(" AND MenuType='"+ dict["MenuType"] + "' ");
            }
            if (dict.ContainsKey("Id"))
            {
                where.Append(" AND Id='" + dict["Id"] + "' ");
            }
            IList<tbMenu> List = dal.GettbMenuByhwhere(where.ToString());
            return List;
        }
        public  static ResultInfo AddMenu(Dictionary<string,string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbMenu Info = new tbMenu
                {
                    Name = data["Name"],
                    MenuType = 0,
                    ParentId = Convert.ToInt32(data["ParentId"]),
                    Icon = data["Icon"],
                    LinkAddress = data["LinkAddress"],
                    IsEnable = "1"
                };
                resInfo.res = dal.AddMenu(Info);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
        public static ResultInfo UpMenu(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbMenu Info = new tbMenu();
                Info.Id = Convert.ToInt32(data["Id"]);
                Info.Name = data["Name"];
                Info.ParentId = Convert.ToInt32(data["ParentId"]);
                Info.Icon = data["Icon"];
                Info.LinkAddress = data["LinkAddress"];
                Info.IsEnable = "1";
                resInfo.res = dal.UpMenu(Info);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
        public static ResultInfo DeMenu(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                resInfo.res = dal.DeMenu(data["Id"]);
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
