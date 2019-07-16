using ProjectWebModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebICoreService
{
    public interface tbButtonICoreService
    {
        Dictionary<string, object> GettbButtonList(int StartPage, int PageSize, string Filter);
        IList<tbButton> GettbButtonByhwhere(string where);
        Dictionary<string, object> GettbButtonByMenuIdList(int StartPage, int PageSize, string Filter, string MenuId);
        bool AddtbButton(tbButton Info);
        bool UptbButton(tbButton Info);
        bool DetbButton(string Id);
    }
}
