using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebModel
{
    public class tbRole
    {
        /// <summary>
        /// Id
        /// </summary>		
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }

        /// <summary>
        /// 角色编码：唯一
        /// </summary>		
        public string RoleCode { get; set; }

        /// <summary>
        /// RoleName
        /// </summary>		
        public string RoleName { get; set; }

        /// <summary>
        /// Description
        /// </summary>		
        public string Description { get; set; }

        /// <summary>
        /// CreateBy
        /// </summary>		
        public string CreateBy { get; set; }

        /// <summary>
        /// CreateTime
        /// </summary>		
        public DateTime CreateTime { get; set; }

        /// <summary>
        /// UpdateBy
        /// </summary>		
        public string UpdateBy { get; set; }

        /// <summary>
        /// UpdateTime
        /// </summary>		
        public DateTime UpdateTime { get; set; }
        public string IsEnable { get; set; }
        [SugarColumn(IsIgnore = true)]
        public bool LAY_CHECKED { get; set; }
    }
}
