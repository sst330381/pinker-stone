<%@ WebHandler Language="C#" Class="WeixinInterface" %>

using System;
using System.Web;

public class WeixinInterface : IHttpHandler
{
    HttpContext context = null;
    string postStr = "";
    BLL.BLLExpress bllexpress = new BLL.BLLExpress();
    MODEL.ExpressInfo expressinfo;
    
    public void ProcessRequest(HttpContext param_context)
    {
        context = param_context;

        if (context.Request.HttpMethod.ToLower() == "post")
        {
            context.Response.Buffer = true;
            System.IO.Stream s = context.Request.InputStream;
            byte[] b = new byte[s.Length];
            s.Read(b, 0, (int)s.Length);
            postStr = System.Text.Encoding.UTF8.GetString(b);
            if (!string.IsNullOrEmpty(postStr))
            {
                responseMsg(postStr);
            }
        }
    }

    public void valid()
    {
        var echostr = context.Request["echoStr"].ToString();
        if (checkSignature() && !string.IsNullOrEmpty(echostr))
        {
            context.Response.Write(echostr);
            context.Response.End();//推送...不然微信平台无法验证token
        }
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

    public void responseMsg(string postStr)
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

        var CreateTimeList = postObj.GetElementsByTagName("CreateTime");
        string CreateTime = CreateTimeList[0].Value;

        while (context.Response.IsClientConnected)
        {
            WriteLog("context.Response.IsClientConnected\n");
            System.Threading.Thread.Sleep(20000);
            if (bllexpress.GetExpress(FromUserName)==null)
            {
                expressinfo = new MODEL.ExpressInfo() { 
                    UserName=FromUserName,
                    Content=Content,
                    Timestamp=CreateTime
                };
                context.Response.Flush();

            }
            else
            {
                context.Response.Write(".");
                context.Response.Flush();
            }
        }
        var time = DateTime.Now;
        var textpl = "<xml><ToUserName><![CDATA[" + FromUserName + "]]></ToUserName>" +
            "<FromUserName><![CDATA[" + ToUserName + "]]></FromUserName>" +
            "<CreateTime>" + ConvertDateTimeInt(DateTime.Now) + "</CreateTime><MsgType><![CDATA[text]]></MsgType>" +
            "<Content><![CDATA[欢迎来到微信世界---" + Content + "]]></Content><FuncFlag>0</FuncFlag></xml> ";
        context.Response.Write(textpl);
        context.Response.End();
    }
    
    private DateTime UnixTimeToTime(string timeStamp)
    {
        DateTime dtStart = TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(1970, 1, 1));
        long lTime = long.Parse(timeStamp + "0000000");
        TimeSpan toNow = new TimeSpan(lTime);
        return dtStart.Add(toNow);
    }

    private int ConvertDateTimeInt(System.DateTime time)
    {
        System.DateTime startTime = TimeZone.CurrentTimeZone.ToLocalTime(new System.DateTime(1970, 1, 1));
        return (int)(time - startTime).TotalSeconds;
    }

    private void WriteLog(string strMemo)
    {
        string filename = "D:/WEBHOME/17pinker/logs/log.txt";
        if (!System.IO.Directory.Exists("D:/WEBHOME/17pinker/logs/"))
            System.IO.Directory.CreateDirectory("D:/WEBHOME/17pinker/logs/");
        System.IO.StreamWriter sr = null;
        try
        {
            if (!System.IO.File.Exists(filename))
            {
                sr = System.IO.File.CreateText(filename);
            }
            else
            {
                sr = System.IO.File.AppendText(filename);
            }
            sr.WriteLine(strMemo);
        }
        catch
        {
        }
        finally
        {
            if (sr != null)
                sr.Close();
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