using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : BasePage
{
    private bool IsCreateSuc;
    private BLL.BLLUser blluser = new BLL.BLLUser();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
    {
        var validatecode = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("txtImgValid") as TextBox;
        if (Session["CheckCode"] == null)
        {
            Response.Write("<script language='javascript'>alert('未可知错误!')</script>");
            e.Cancel = true;
            return;
        }

        if (String.Compare(Session["CheckCode"].ToString(), validatecode.Text, true) == 0)
        {
            IsCreateSuc = true;
        }
        else
        {
            Response.Write("<script language='javascript'>alert('验证码错误!')</script>");
            IsCreateSuc = false;
            e.Cancel = true;
        }
    }
    protected void CreateUserWizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if (IsCreateSuc)
        {
        }
        else
        {
            e.Cancel = true;
        }  
    }
}