using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindRoutes();
        }
    }

    private void BindRoutes()
    {
        //var datasource = new BLL.BLLRoute().GetRoute();
        //rptRoutes.DataSource = datasource;
        //rptRoutes.DataBind();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    { 
        //Response.Redirect("/PinkerList.aspx?start="+txtStart.Text+"&dest="+txtDest.Text);
    }
}