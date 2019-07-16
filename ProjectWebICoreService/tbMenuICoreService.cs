using ProjectWebModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace ProjectWebICoreService
{
   public interface tbMenuICoreService
    {
         IList<tbMenu> GettbMenu(string UserId);
        IList<tbMenu> GettbMenuByhwhere(string where);
        Dictionary<string, object> GettbMenuList(int StartPage, int PageSize, string Filter);
        bool AddMenu(tbMenu Info);
        bool UpMenu(tbMenu Info);
        bool DeMenu(string Id);
    }
}
