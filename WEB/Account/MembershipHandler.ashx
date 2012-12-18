<%@ WebHandler Language="C#" Class="MembershipHandler" %>

using System;
using System.Web;


/// <summary>
/// MembershipHandler 的摘要说明
/// </summary>
public class MembershipHandler : IHttpHandler
{
    BLL.BLLUser bllUser = new BLL.BLLUser();

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        if (context.Request.QueryString["openid"] != null)
        {
            string memberName = string.Empty;
            var openid = context.Request.QueryString["openid"];
            MODEL.User user = bllUser.GetUesr8Openid(openid, MODEL.OpenType.qqwbuser);
            //第1次登录
            if (user == null)
            //将用户信息加入数据库
            {
                try
                {
                    string username = context.Request.QueryString["nickname"];
                    bllUser.CreateUser(username, openid, MODEL.OpenType.qqwbuser);
                    memberName = username;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            else
            {
                memberName = user.Name;
            }
            System.Web.Security.FormsAuthentication.SetAuthCookie(memberName, false);
            context.Response.Redirect("/");
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