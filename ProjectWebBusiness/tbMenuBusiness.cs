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
        public static List<tbMenu> GetUserMenus(string UserId)
        {
            List<tbMenu> List = dal.GettbMenu(UserId);
            return List;
        }
        public static Dictionary<string, object> MenusAnalytical(IList<tbMenu> List)
        {
            List<Dictionary<string, object>> deicList = new List<Dictionary<string, object>>();
            Tree InfoTreeNode = new Tree();
            InfoTreeNode.id = "0";
            InfoTreeNode.ParentId =0;
            InfoTreeNode.MenuType= 0;
            InfoTreeNode.child =new List<Tree>();
            Tree.GetTreeNode(List, InfoTreeNode);
            Dictionary<string, object> result = new Dictionary<string, object>();
            result.Add("menuInfo", InfoTreeNode.child);
            return result;
        }
        public static Dictionary<string, object> GetMenuBysystem(string UserId)
        {
            tbRoleICoreService da = new tbRoleDAL();
            List<tbMenu> List = da.GetRole_authorization("90");
            List<dtree> InfoTreeNodeList = new List<dtree>();
            dtree InfoTreeNode = new dtree();
            InfoTreeNode.id = "0";
            InfoTreeNode.parentId = "0";
            InfoTreeNode.dataType = "0";
            InfoTreeNode.title = "根节点";
            InfoTreeNode.checkArr = new dtree.checkArrInfo() { Checked = "0" };
            dtree.GetdtreeNode(List, InfoTreeNode);
            Dictionary<string, object> status = new Dictionary<string, object>();
            status.Add("code", 200);
            status.Add("message", "操作成功");
            Dictionary<string, object> result = new Dictionary<string, object>();
            InfoTreeNodeList.Add(InfoTreeNode);
            result.Add("status", status);
            result.Add("data", InfoTreeNodeList);
            return result;
        }


        public static List<tbMenu> GettbMenuList(int StartPage, int PageSize, Dictionary<string, string> data,ref int totalNumber)
        {
            return dal.GettbMenuList(StartPage, PageSize, data, ref totalNumber); 
        }

        public  static ResultInfo AddMenu(Dictionary<string,string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbMenu Info = new tbMenu
                {
                    Name = data["Name"],
                    ParentId = Convert.ToInt32(data["ParentId"]),
                    Icon = data["Icon"],
                    MenuType = Convert.ToInt32(data["MenuType"]),
                    LinkAddress = data["LinkAddress"],
                    IsEnable = "1",
                    IsMenu = data["IsMenu"],
                    ButtonId = data["ButtonId"],
                    ButtonCss = data["ButtonCss"],
                    ButtonClick = data["ButtonClick"]
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
                tbMenu Info = new tbMenu
                {
                    Id = Convert.ToInt32(data["Id"]),
                    Name = data["Name"],
                    ParentId = Convert.ToInt32(data["ParentId"]),
                    Icon = data["Icon"],
                    MenuType = Convert.ToInt32(data["MenuType"]),
                    LinkAddress = data["LinkAddress"],
                    IsEnable = "1",
                    IsMenu = data["IsMenu"],
                    ButtonId = data["ButtonId"],
                    ButtonCss = data["ButtonCss"],
                    ButtonClick = data["ButtonClick"]
                };

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
