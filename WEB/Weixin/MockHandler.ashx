<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler
{
    HttpContext context = null;
    string postStr = "";
    public void ProcessRequest(HttpContext param_context)
    {
        context = param_context;
        context.Response.ContentType = "text/plain";

        valid();
        if (context.Request.HttpMethod.ToLower() == "post")
        {
            System.IO.Stream s = System.Web.HttpContext.Current.Request.InputStream;
            byte[] b = new byte[s.Length];
            s.Read(b, 0, (int)s.Length);
            postStr = System.Text.Encoding.UTF8.GetString(b);
            if (!string.IsNullOrEmpty(postStr))
            {
                //ResponseMsg(postStr);
            }
        }

    }

    public void valid()
    {
        var echostr = context.Request["echoStr"].ToString();
        if (checkSignature() && !string.IsNullOrEmpty(echostr))
        {
            context.Response.Write(echostr);
            //context.Response.End();
        }
        //responseMsg();
    }

    public bool checkSignature()
    {
        var signature = context.Request["signature"].ToString();
        var timestamp = context.Request["timestamp"].ToString();
        var nonce = context.Request["nonce"].ToString();
        var token = "faketoken";
        string[] ArrTmp = { token, timestamp, nonce };
        Array.Sort(ArrTmp);     //字典排序
        string tmpStr = string.Join("", ArrTmp);
        tmpStr = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tmpStr, "SHA1");
        tmpStr = tmpStr.ToLower();
        if (tmpStr == signature)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public string GetSha1(System.Collections.Generic.List<string> codelist)
    {
        codelist.Sort();
        var combostr = string.Empty;
        for (int i = 0; i < codelist.Count; i++)
        {
            combostr += codelist[i];
        }
        return EncryptToSHA1(combostr);
    }

    public string EncryptToSHA1(string str)
    {
        System.Security.Cryptography.SHA1CryptoServiceProvider sha1 = new System.Security.Cryptography.SHA1CryptoServiceProvider();
        byte[] str1 = System.Text.Encoding.UTF8.GetBytes(str);
        byte[] str2 = sha1.ComputeHash(str1);
        sha1.Clear();
        (sha1 as IDisposable).Dispose();
        return Convert.ToBase64String(str2);
    }

    public void responseMsg()
    {
        var postStr = context.Request.Form[0];//HTTP_RAW_POST_DATA
        //var postdata = context.Request.QueryString.Count;
        //var postdata = "<xml><ToUserName><![CDATA[公共平台]]></ToUserName><FromUserName>" +
        //    "<![CDATA[石头]]></FromUserName> <CreateTime>1348831860</CreateTime>" +
        //    "<MsgType><![CDATA[text]]></MsgType><Content><![CDATA[Stone]]></Content></xml> ";
        if (!string.IsNullOrWhiteSpace(postStr))
        {
            System.Xml.XmlDocument postObj = new System.Xml.XmlDocument();
            postObj.LoadXml(postStr);
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
            var textpl = "<xml><ToUserName><![CDATA[" + FromUserName + "]]></ToUserName>" +
                "<FromUserName><![CDATA[" + ToUserName + "]]></FromUserName>" +
                "<CreateTime>12345678</CreateTime><MsgType><![CDATA[text]]></MsgType>" +
                "<Content><![CDATA[欢迎来到微信世界---" + Content + "]]></Content><FuncFlag>0</FuncFlag></xml> ";
            //context.Response.Write(textpl);
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}