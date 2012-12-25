using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using MODEL;

public partial class PinkerList : BasePage
{
    BLLRoute bllroute = new BLLRoute();
    public int resultcout;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindPinklist();
        }
    }

    private void BindPinklist()
    {
        var type1 = Request.Cookies["pubtype1_s"] == null ? "host" : Request.Cookies["pubtype1_s"].Value;
        var type2 = Request.Cookies["pubtype2_s"] == null ? "上下班拼车" : Request.Cookies["pubtype2_s"].Value;
        var routes = bllroute.GetRoute(
            (PinkerType)Enum.Parse(typeof(PinkerType), type2), type1 == "host",
            txtStart.Value.Trim(), txtDest.Value.Trim());
        resultcout = routes.Count;
        rptcars.DataSource = routes;
        rptcars.DataBind();
    }

}