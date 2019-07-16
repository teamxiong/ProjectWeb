using ProjectWebDataAccess;
using ProjectWebICoreService;
using ProjectWebModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebBusiness
{
    public class tbMenuButtonBusiness
    {
        public static tbMenuButtonICoreService dal = new tbMenuButtonDAL();
        public static ResultInfo UptbMenuButton(string MenuId, string ButtonIdstr)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                resInfo.res = dal.UptbMenuButton(MenuId, ButtonIdstr);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
    }
}
