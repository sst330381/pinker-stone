using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        TextBox txtImage = Login1.FindControl("txtImgValid") as TextBox;

        if (Session["CheckCode"] == null)
        {
            Response.Write("<script language='javascript'>alert('未可知错误!')</script>");
            e.Authenticated = false;
            return;
        }

        if (String.Compare(Session["CheckCode"].ToString(), txtImage.Text, true) != 0)
        {
            Response.Write("<script language='javascript'>alert('验证码错误 !')</script>");
            e.Authenticated = false;
            return;
        }

        e.Authenticated = true;
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Session["CheckCode"] = null;
    }
}