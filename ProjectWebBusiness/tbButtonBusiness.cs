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
    public class tbButtonBusiness
    {
        public static tbButtonICoreService dal = new tbButtonDAL();
        public static Dictionary<string, object> GettbButtonList(int StartPage, int PageSize, Dictionary<string, string> data)
        {
            Dictionary<string, object> dictList = new Dictionary<string, object>();
            string Filter = "";
            if (data.ContainsKey("Name") && !string.IsNullOrEmpty(data["Name"]))
            {
                Filter += string.Format(" and Name like'{0}' ", data["Name"]);
            }
            dictList = dal.GettbButtonList(StartPage, PageSize, Filter);
            return dictList;
        }
        public static Dictionary<string, object> GettbButtonByMenuIdList(int StartPage, int PageSize, Dictionary<string, string> data)
        {
            Dictionary<string, object> dictList = new Dictionary<string, object>();
            string Filter = "";
            if (data.ContainsKey("text") && !string.IsNullOrEmpty(data["text"]))
            {
                Filter += string.Format(" and Name like'{0}' ", data["text"]);
            }
            string MenuId = data["MenuId"];
            dictList = dal.GettbButtonByMenuIdList(StartPage, PageSize, Filter, MenuId);
            return dictList;
        }
        public static IList<tbButton> GettbButtonByhwhere(Dictionary<string, string> dict)
        {
            StringBuilder where = new StringBuilder();
            if (dict.ContainsKey("Id"))
            {
                where.Append(" AND Id='" + dict["Id"] + "' ");
            }
            IList<tbButton> List = dal.GettbButtonByhwhere(where.ToString());
            return List;
        }
        public static ResultInfo AddtbButton(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbButton Info = new tbButton();
                Info.Name = data["Name"];
                Info.Icon = data["Icon"];
                Info.Code = data["Code"];
                Info.Description = data["Description"]; 
                Info.CreateTime =DateTime.Now;
                Info.CreateBy = "1xx";
                resInfo.res = dal.AddtbButton(Info);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
        public static ResultInfo UptbButton(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                tbButton Info = new tbButton();
                Info.Id = Convert.ToInt32(data["Id"]);
                Info.Name = data["Name"];
                Info.Icon = data["Icon"];
                Info.Code = data["Code"];
                Info.Description = data["Description"];
                resInfo.res = dal.UptbButton(Info);
            }
            catch (Exception ex)
            {
                resInfo.res = false;
                resInfo.info = ex.Message;
            }
            return resInfo;
        }
        public static ResultInfo DetbButton(Dictionary<string, string> data)
        {
            ResultInfo resInfo = new ResultInfo();
            try
            {
                resInfo.res = dal.DetbButton(data["Id"]);
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
