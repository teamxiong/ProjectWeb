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
        public List<tbRole> GetUser_authorization(int StartPage, int PageSize, Dictionary<string, string> data, ref int totalNumber)
        {
            var UserRoles = Db.Queryable<tbRole, tbUserRole>((t, tr) => new object[] {
                JoinType.Inner,t.Id==tr.RoleId
            }).Where((t,tr)=>tr.UserId==Convert.ToInt32(data["UserId"])).ToList();
            var tbRoleTable = Db.Queryable<tbRole>();
            if (data.ContainsKey("Name") && !string.IsNullOrEmpty(data["Name"]))
            {
                tbRoleTable.Where(it => it.RoleName == data["Name"]);
            }
            var tbRoleList = tbRoleTable.Clone().ToPageList(StartPage, PageSize, ref totalNumber);
            var Role_authorization = (from b in tbRoleList
                                      join a in UserRoles on b.Id equals a.Id into a_join
                                      from x in a_join.DefaultIfEmpty()
                                      select new tbRole
                                      {
                                          Id = b.Id,
                                          RoleName = b.RoleName,
                                          CreateTime = b.CreateTime,
                                          Description = b.Description,
                                          LAY_CHECKED = x == null ? false :true
                                      }).ToList();
            return Role_authorization;
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
            var InfoList = Db.Queryable<tbMenu, tbRoleMenu, tbRole>((t, tr, tb) => new object[] {
                JoinType.Inner,t.Id==tr.MenuId,
                JoinType.Inner,tr.RoleId==tb.Id
                }).Where((t, tr, tb) => tb.Id == Convert.ToInt32(RoleId)).ToList();

            var MenuList = Db.Queryable<tbMenu>().ToList();

            var Role_authorization = (from b in MenuList
                                      join a in InfoList on b.Id equals a.Id into a_join
                                      from x in a_join.DefaultIfEmpty()
                                      select new tbMenu
                                      {
                                          Id = b.Id,
                                          Icon = b.Icon,
                                          IsMenu = b.IsMenu,
                                          LinkAddress = b.LinkAddress,
                                          MenuType = b.MenuType,
                                          Name = b.Name,
                                          ParentId = b.ParentId,
                                          IsEnable = x == null ? "0" : "1"
                                      }).ToList();
            return Role_authorization;
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

        /// <summary>
        /// 根据角色ID获取角色详情
        /// </summary>
        /// <param name="RoleId"></param>
        /// <returns></returns>
        public tbRole GettbRoleInfo(int RoleId)
        {
           return Db.Queryable<tbRole>().Where(i => i.Id == RoleId).First();
        }
    }
}
