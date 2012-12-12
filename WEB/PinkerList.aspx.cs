using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class PinkerList : BasePage
{
    BLLRoute bllroute = new BLLRoute();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindPinklist();
        }
    }

    private void BindPinklist()
    {
        var routes=bllroute.GetRoute();
        rptcars.DataSource = routes;
        rptcars.DataBind();
    }

}