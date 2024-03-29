﻿using System;
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
        public List<tbMenu> GettbMenu(int UserId)
        {
            var list = Db.Queryable<tbMenu, tbRoleMenu, tbRole, tbUserRole, tbUser>((t1, t2, t3, t4, t5) => new object[] {
                JoinType.Inner,t1.Id==t2.MenuId,
                JoinType.Inner,t2.RoleId==t3.Id,
                JoinType.Inner,t3.Id==t4.RoleId,
                JoinType.Inner,t4.UserId==t5.Id
            }).Where((t1, t2, t3, t4, t5) => t5.Id==UserId).OrderBy((t1)=>t1.MenuType).ToList();
            return list;
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
            if (data.ContainsKey("Id") && !string.IsNullOrEmpty(data["Id"]))
            {
                query.Where(i => i.Id ==Convert.ToInt32(data["Id"]));
            }
            return query.Clone().ToPageList(StartPage, PageSize, ref totalNumber);
        }
        public bool AddMenu(tbMenu Info)
        {

            int MenuId = CurrentDb.AsInsertable(Info).ExecuteReturnIdentity();
            tbRoleMenu SysUserRole = new tbRoleMenu()
            {
                MenuId = MenuId,
                 RoleId=90
            };
            var result = Db.Insertable<tbRoleMenu>(SysUserRole).ExecuteCommand();
            return result>0;
        }
        public bool UpMenu(tbMenu Info)
        {
            return CurrentDb.Update(Info);
        }
        public bool DeMenu(string Id)
        {
            var result = Db.Ado.UseTran(() =>
            {
                CurrentDb.DeleteByIds(Id.Split(','));
                Db.Deleteable<tbMenu>().In(i => i.ParentId, Id.Split(',')).ExecuteCommand();
                Db.Deleteable<tbRoleMenu>().In(i => i.MenuId, Id.Split(',')).ExecuteCommand();
            });
            return result.IsSuccess;
        }
    }
}
