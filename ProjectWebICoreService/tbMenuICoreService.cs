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
        List<tbMenu> GettbMenuList(int StartPage, int PageSize, Dictionary<string, string> data, ref int totalNumber);
        bool AddMenu(tbMenu Info);
        bool UpMenu(tbMenu Info);
        bool DeMenu(string Id);
    }
}
