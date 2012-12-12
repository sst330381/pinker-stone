using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

/// <summary>
///BasePage 的摘要说明
/// </summary>
public class BasePage : System.Web.UI.Page
{
    public BLL.BLLUser blluser = new BLL.BLLUser();

    private MembershipUser CurrentMembershipUser
    {
        get { return Membership.GetUser(); }
    }

    public MODEL.User CurrentUser
    {
        get
        {
            if (CurrentMembershipUser != null)
            {
                return blluser.GetUser8Id((Guid)CurrentMembershipUser.ProviderUserKey);
            }
            else
            {
                return null;
            }
        }
    }

    bool needLogin = true;
    protected bool NeedLogin { get { return needLogin; } set { needLogin = value; } }

    //protected override void OnLoad(EventArgs e)
    //{
    //    if (NeedLogin)
    //    {
    //        if (CurrentUser == null)
    //        {
    //            Response.Redirect("/login.aspx?returnUrl=" + Request.RawUrl);
    //        }
    //    }

    //    base.OnLoad(e);
    //}
}