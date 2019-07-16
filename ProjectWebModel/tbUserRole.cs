using SqlSugar;
using System;
using System.Collections.Generic;
using System.Text;

namespace ProjectWebModel
{
    public class tbUserRole
    {
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }
        public int UserId { get; set; }
        public int RoleId { get; set; }

    }
}
