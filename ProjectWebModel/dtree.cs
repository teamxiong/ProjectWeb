using System;
using System.Collections.Generic;
using System.Text;

namespace ProjectWebModel
{
    public class dtree
    {
        public string id { get; set; }
        public string title { get; set; }
        public string parentId { get; set; }
        public checkArrInfo checkArr { get; set; }
        public string dataType { get; set; }
        public List<dtree> children { get; set; }
        public class checkArrInfo
        {
            public string Checked { get; set; }
        }
        public dtree()
        {
            if (children == null)
                children = new List<dtree>();
        }
        public static void GetdtreeNode(IList<tbMenu> lstPlace, dtree InfoTreeNode)
        {
            try
            {
                if (InfoTreeNode == null)
                {
                    InfoTreeNode = new dtree();
                }
                int chilCareType = 1;
                chilCareType = Convert.ToInt16(InfoTreeNode.dataType) + 1;
                foreach (tbMenu s in lstPlace)
                {
                    if (s.ParentId != Convert.ToInt32(InfoTreeNode.id) || s.MenuType != chilCareType)
                    {
                        continue;
                    }

                    dtree _info = new dtree();
                    _info.id = s.Id.ToString();
                    _info.title = s.Name.ToString();
                    _info.parentId = s.ParentId.ToString();
                    _info.dataType = s.MenuType.ToString();
                    _info.checkArr = new dtree.checkArrInfo() { Checked =s.IsEnable};
                    GetdtreeNode(lstPlace, _info);
                    InfoTreeNode.children.Add(_info);
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }

    }
}
