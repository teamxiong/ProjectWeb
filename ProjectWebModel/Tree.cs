using System;
using System.Collections.Generic;
using System.Text;

namespace ProjectWebModel
{
    public class Tree
    {
        public string id { get; set; }
        public string title { get; set; }
        public string icon { get; set; }
        public string href { get; set; }
        public int MenuType { get; set; }
        public string target { get; set; }
        public List<Tree> child { get; set; }
        public int ParentId { get; set; }
        public Tree()
        {
            if (child == null)
                child = new List<Tree>();
        }
        public static void GetTreeNode(IList<tbMenu> lstPlace, Tree InfoTreeNode)
        {
            try
            {
                if (InfoTreeNode == null)
                {
                    InfoTreeNode = new Tree();
                }
                int chilCareType = 1;
                chilCareType = Convert.ToInt16(InfoTreeNode.MenuType) + 1;
                foreach (tbMenu s in lstPlace)
                {
                    if (s.ParentId != Convert.ToInt32(InfoTreeNode.id) || s.MenuType != chilCareType)
                    {
                        continue;
                    }

                    Tree _info = new Tree();
                    _info.id = s.Id.ToString();
                    _info.title = s.Name.ToString();
                    _info.MenuType = s.MenuType;
                    _info.href = s.LinkAddress;
                    _info.icon = s.Icon.ToString();
                    _info.target = "_self";
                    _info.ParentId = s.ParentId;
                    GetTreeNode(lstPlace, _info);
                    InfoTreeNode.child.Add(_info);
                }
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }

}
