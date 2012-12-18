﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_UserInfo : BasePage
{

    BLL.BLLUser blluser = new BLL.BLLUser();
    MODEL.User user = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count == 0)
        {
            //显示自己的信息
            user = CurrentUser;
        }
        else
        {
            //显示他人的信息
            user = blluser.GetUser8Id(Guid.Parse(Request.QueryString[0]));
        }
        if (!IsPostBack)
        {
            BindInfo();
        }
    }

    private void BindInfo()
    {
        if (Request.QueryString.Count == 0 && CurrentUser == null)
            Response.Redirect("/Account/Login.aspx");
        lbltitle.Text = user.Name;
        txtname.Text = user.RealName;
        txtphone.Text = user.Telphone;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        user.RealName = txtname.Text.Trim();
        user.Telphone = txtphone.Text.Trim();
        user.Email = txtemail.Text.Trim();
        blluser.UpdateUser(user);
        if (user.Email == txtemail.Text)
        { 
            Response.Write("javascript:alert('修改成功!')")
        }
        else
        {
            
        }
    }
}