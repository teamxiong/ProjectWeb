using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebModel
{
    public class tbButton
    {
        [SugarColumn(IsPrimaryKey = true, IsIdentity = true)]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
        public string Icon { get; set; }
        public string Description { get; set; }
        public DateTime CreateTime { get; set; }
        public string CreateBy { get; set; }
    }
}
