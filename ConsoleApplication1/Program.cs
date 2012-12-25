using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            var postdata = "<xml><ToUserName><![CDATA[toUser]]></ToUserName><FromUserName>"+
                "<![CDATA[fromUser]]></FromUserName> <CreateTime>1348831860</CreateTime>"+
                "<MsgType><![CDATA[text]]></MsgType><Content><![CDATA[Stone]]></Content></xml> ";
            if (!string.IsNullOrWhiteSpace(postdata))
            {
                System.Xml.XmlDocument postObj = new System.Xml.XmlDocument();
                postObj.LoadXml(postdata);
                var FromUserNameList = postObj.GetElementsByTagName("FromUserName");
                string FromUserName = string.Empty;
                for (int i = 0; i < FromUserNameList.Count; i++)
                {
                    if (FromUserNameList[i].ChildNodes[0].NodeType == System.Xml.XmlNodeType.CDATA)
                    {
                        FromUserName = FromUserNameList[i].ChildNodes[0].Value;
                    }
                }
                var toUsernameList = postObj.GetElementsByTagName("ToUserName");
                string ToUserName = string.Empty;
                for (int i = 0; i < toUsernameList.Count; i++)
                {
                    if (toUsernameList[i].ChildNodes[0].NodeType == System.Xml.XmlNodeType.CDATA)
                    {
                        ToUserName = toUsernameList[i].ChildNodes[0].Value;
                    }
                }
                var keywordList = postObj.GetElementsByTagName("Content");
                string Content = string.Empty;
                for (int i = 0; i < keywordList.Count; i++)
                {
                    if (keywordList[i].ChildNodes[0].NodeType == System.Xml.XmlNodeType.CDATA)
                    {
                        Content = keywordList[i].ChildNodes[0].Value;
                    }
                }
                var time = DateTime.Now;
                var textpl = "<xml><ToUserName><![CDATA[" + ToUserName + "]]></ToUserName>" +
                    "<FromUserName><![CDATA[" + FromUserName + "]]></FromUserName>" +
                    "<CreateTime>" + time + "</CreateTime><MsgType><![CDATA[text]]></MsgType>" +
                    "<Content><![CDATA[Welcome to wechat world!"+Content+"]]></Content><FuncFlag>0</FuncFlag></xml> ";
                Console.WriteLine(textpl);
            }

            var codelist = new List<string>() { "faketoken", "bbb", "12345678" };
            Console.WriteLine(GetSha1(codelist));
            Console.ReadLine();
        }

        public static string GetSha1(System.Collections.Generic.List<string> codelist)
        {
            codelist.Sort();
            var combostr = string.Empty;
            for (int i = 0; i < codelist.Count; i++)
            {
                combostr += codelist[i];
            }
            return EncryptToSHA1(combostr);
        }
        public static string EncryptToSHA1(string str)
        {
            SHA1CryptoServiceProvider sha1 = new SHA1CryptoServiceProvider();
            byte[] str1 = Encoding.UTF8.GetBytes(str);
            byte[] str2 = sha1.ComputeHash(str1);
            sha1.Clear();
            (sha1 as IDisposable).Dispose();
            return Convert.ToBase64String(str2);
        }
    }
}
