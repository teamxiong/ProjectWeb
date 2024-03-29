﻿using ProjectWebModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebICoreService
{
    public interface tbRoleICoreService
    {
        List<tbRole> GettbRoleList(int StartPage, int PageSize, Dictionary<string, string> data, ref int totalNumber);
        List<tbRole> GettbRoleLisByUsert(int StartPage, int PageSize, string UserId, ref int totalNumber);
        List<tbRole> GetUser_authorization(int StartPage, int PageSize, Dictionary<string, string> data, ref int totalNumber);
        bool AddtbRole(tbRole Info);
        bool UptbRole(tbRole Info);
        bool DetbRole(string Id);
        List<tbMenu> GetRole_authorization(string RoleId);
        ResultInfo Role_authorization(int RoleId, List<tbRoleMenu> InfoList);
        tbRole GettbRoleInfo(int RoleId);
    }
}
