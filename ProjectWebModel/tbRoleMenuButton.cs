﻿using SqlSugar;
using System;
using System.Collections.Generic;
using System.Text;

namespace ProjectWebModel
{
    public class tbRoleMenuButton
    {

        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }

        public int RoleId { get; set; }

        public int MenuId { get; set; }

        public int ButtonId { get; set; }

    }
}
