using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebModel
{
    public class tbMenu
    {
        /// <summary>
        /// 主键
        /// </summary>
  [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }
        /// <summary>
        /// 导航菜单名称
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// 父级节点id
        /// </summary>
        public int ParentId { get; set; }

        /// <summary>
        /// 菜单标识码
        /// </summary>
        public string Code { get; set; }

        /// <summary>
        /// 链接地址
        /// </summary>
        public string LinkAddress { get; set; }

        /// <summary>
        /// 导航菜单图标
        /// </summary>
        public string Icon { get; set; }
        public int MenuType { get; set; }
        public string IsEnable { get; set; }

        public string IsMenu { get; set; }

    }
}
