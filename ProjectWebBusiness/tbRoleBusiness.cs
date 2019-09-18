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
        public static tbRoleICoreService dal;
        public tbRoleBusiness(tbRoleICoreService _tbRoleICoreService)
        {
            dal = _tbRoleICoreService;
        }
        /// <summary>
        /// 查询角色列表
        /// </summary>
        /// <param name="StartPage"></param>
        /// <param name="PageSize"></param>
        /// <param name="data"></param>
        /// <param name="totalNumber"></param>
        /// <returns></returns>
        public  List<tbRole> GettbRoleList(int StartPage, int PageSize, Dictionary<string, string> data, ref int totalNumber)
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
        /// <summary>
        /// 获取分配用户角色列表
        /// </summary>
        /// <param name="StartPage"></param>
        /// <param name="PageSize"></param>
        /// <param name="data"></param>
        /// <param name="totalNumber"></param>
        /// <returns></returns>
        public List<tbRole> GetUser_authorization(int StartPage, int PageSize, Dictionary<string, string> data, ref int totalNumber)
        {
            List<tbRole> List = dal.GetUser_authorization(StartPage, PageSize, data, ref totalNumber);
            return List;
        }
        /// <summary>
        /// 新增角色
        /// </summary>
        /// <param name="data"></param>
        /// <param name="uSession"></param>
        /// <returns></returns>
        public  ResultInfo AddtbRole(Dictionary<string, string> data, UserSession uSession)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbRole Info = new tbRole();
                Info.RoleCode = "";
                Info.RoleName = data["RoleName"];
                Info.Description = data["Description"];
                Info.UpdateBy = uSession.UserName;
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
        public  ResultInfo UptbRole(Dictionary<string, string> data,UserSession uSession)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbRole Info = new tbRole();
                Info.Id = Convert.ToInt32(data["Id"]);
                Info.RoleCode = "";
                Info.RoleName = data["RoleName"];
                Info.Description = data["Description"];
                Info.UpdateBy = uSession.UserName;
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
        /// <summary>
        /// 删除角色
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        public  ResultInfo DetbRole(Dictionary<string, string> data)
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
        /// <summary>
        /// 获取角色分配的权限
        /// </summary>
        /// <param name="RoleId"></param>
        /// <returns></returns>
        public Dictionary<string, object> GetRole_authorization(string RoleId)
        {
            List<tbMenu> List = dal.GetRole_authorization(RoleId);
            dtree InfoTreeNode = new dtree();
            InfoTreeNode.id = "0";
            InfoTreeNode.parentId ="0";
            InfoTreeNode.dataType = "0";
            InfoTreeNode.checkArr = new dtree.checkArrInfo() { Checked = "0" };
            InfoTreeNode.children = new List<dtree>();
            dtree.GetdtreeNode(List, InfoTreeNode);
            Dictionary<string, object> status = new Dictionary<string, object>();
            status.Add("code", 200);
            status.Add("message", "操作成功");
            Dictionary<string, object> dict = new Dictionary<string, object>();
            dict.Add("status", status);
            dict.Add("data", InfoTreeNode.children);
            return dict;
        }

        /// <summary>
        /// 保存角色权限
        /// </summary>
        /// <param name="RoleId"></param>
        /// <param name="authorizationStr"></param>
        /// <returns></returns>
        public ResultInfo Role_authorization(int RoleId, string authorizationStr)
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
        /// <summary>
        /// 根据角色ID获取角色详情
        /// </summary>
        /// <param name="RoleId"></param>
        /// <returns></returns>
        public tbRole GettbRoleInfo(string RoleId)
        {
            return dal.GettbRoleInfo(Convert.ToInt32(RoleId));
        }
    }
}
