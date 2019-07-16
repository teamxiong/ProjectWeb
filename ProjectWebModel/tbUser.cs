using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebModel
{
    public class tbUser
    {

        /// <summary>
        /// 帐户ID()
        /// </summary>	
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }

        /// <summary>
        /// 帐户名
        /// </summary>		
        public string AccountName { get; set; }

        /// <summary>
        /// 帐户密码
        /// </summary>		
        public string Password { get; set; }

        /// <summary>
        /// RealName
        /// </summary>		
        public string RealName { get; set; }

        /// <summary>
        /// 联系人手机号码
        /// </summary>		
        public string MobilePhone { get; set; }

        /// <summary>
        /// 联系的邮箱
        /// </summary>		
        public string Email { get; set; }

        /// <summary>
        /// IsAble
        /// </summary>		
        public bool IsAble { get; set; }

        /// <summary>
        /// 介绍描述
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
        /// 修改时间
        /// </summary>		
        public DateTime UpdateTime { get; set; }
    }
}
