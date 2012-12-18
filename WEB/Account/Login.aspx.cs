using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.Security;

public partial class Login : BasePage
{
    BLL.BLLUser blluser = new BLL.BLLUser();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        //Session["CheckCode"] = null;
        var txtusername = Login1.FindControl("UserName") as TextBox;
        var txtuserpsw = Login1.FindControl("Password") as TextBox;
        if (blluser.ValidateUser(txtusername.Text, txtuserpsw.Text))
        {
            blluser.UpdateUserLogintime(txtusername.Text);
            //登录成功向浏览器写入身份票据
            FormsAuthentication.SetAuthCookie(txtusername.Text, false);
            //跳转回最初请求的url或是默认url
            //注:所谓最初请求的url是指:如果我未经登录,
            //直接访问admin/admin.aspx这个页面,那么将会跳转到该登录页面
            //如果登录成功,则此方法将会以登录用户的身份跳转回
            //admin/admin.aspx页面
            FormsAuthentication.RedirectFromLoginPage(txtusername.Text, false);
        }
    }
}