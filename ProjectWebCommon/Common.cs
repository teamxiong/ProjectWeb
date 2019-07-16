using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace ProjectWebCommon
{
    public class Common
    {

        // <summary>
        /// 服务器链接
        /// </summary>
        /// <param name="connStr"></param>
        /// <returns></returns>
        public static string Serverlink(string connStr)
        {
            string ConfigPath = Environment.CurrentDirectory + @"\appsettings.json";
            string json = System.IO.File.ReadAllText(ConfigPath, Encoding.Default);
            JObject jsonConfig = (JObject)JsonConvert.DeserializeObject(json);
            string configName = jsonConfig[connStr].ToString();   //读取配置文件
            return configName;
        }
        public static Dictionary<string, string> getProperties<T>(T t)
        {
            Dictionary<string, string> Info = new Dictionary<string, string>();
            if (t == null)
            {
                return Info;
            }
            System.Reflection.PropertyInfo[] properties = t.GetType().GetProperties(System.Reflection.BindingFlags.Instance | System.Reflection.BindingFlags.Public);

            if (properties.Length <= 0)
            {
                return Info;
            }
            foreach (System.Reflection.PropertyInfo item in properties)
            {
                Info.Add(item.Name, (item.GetValue(t, null) == null) ? "" : item.GetValue(t, null).ToString());
            }
            return Info;
        }

        /// <summary>
        /// MD5加密字符串
        /// </summary>
        public static string GetMD5String(string str)
        {
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] data = Encoding.Default.GetBytes(str);
            byte[] md5data = md5.ComputeHash(data);
            md5.Clear();

            StringBuilder builder = new StringBuilder();
            for (int i = 0; i < md5data.Length - 1; i++)
            {
                builder.Append(md5data[i].ToString("X2"));
            }
            return builder.ToString();
        }
    }
}
