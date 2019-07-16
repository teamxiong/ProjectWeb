using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebModel
{
    /// <summary>
    /// 返回值类
    /// </summary>
    public class ResultInfo
    {
        string _info = string.Empty;   //输出消息   

        public ResultInfo()
        {
            res = false;
            StatusCode = "499";
            attr = new Dictionary<string, string>();
        }

        public ResultInfo(bool isRes)
        {
            res = false;
            if (isRes)
            {
                attr = new Dictionary<string, string>();
            }
        }

        public string info
        {
            get { return _info; }
            set { _info = value; }
        }
        public string StatusCode { get; set; }
        public bool res
        {
            get;
            set;
        }
        public Dictionary<string, string> attr
        {
            get;
            set;
        }

    }
}
