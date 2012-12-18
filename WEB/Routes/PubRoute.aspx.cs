using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PubRoute : BasePage
{
    BLL.BLLRoute bllroute = new BLL.BLLRoute();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (CurrentUser != null)
        {
            txtconnectname.Text = CurrentUser.RealName;
            txtconnectphone.Text = CurrentUser.Telphone;
        }
    }

    protected void btnPub_Click(object sender, EventArgs e)
    {
        var type1 = Request.Cookies["pubtype1"].Value;
        var type2 = Request.Cookies["pubtype2"].Value;
        var start = startplace.Text;
        var desti = destplace.Text;
        var s_location = Request.Cookies["m_start"] == null ? string.Empty : Request.Cookies["m_start"].Value.Replace("%2C",",");
        var d_location = Request.Cookies["m_dest"] == null ? string.Empty : Request.Cookies["m_dest"].Value.Replace("%2C", ",");
        var selectshort = select_shortrun.SelectedValue;
        var datetimeother = datepicker_otherrun.Text;
        var datetimelong = datepicker_longrun.Text;
        var datepickerhour = datepicker_hour.Text;
        var datepickerminutes = datepicker_minuts.Text;
        var passby1 = txtpassby1.Text.Trim();
        var passby2 = txtpassby2.Text.Trim();
        var passby3 = txtpassby3.Text.Trim();
        var appendtxt = txtappend.Value;
        var conname = txtconnectname.Text.Trim();
        var conphone = txtconnectphone.Text.Trim();
        var miles = Request.Cookies["m_miles"] == null ? string.Empty : Request.Cookies["m_miles"].Value;

        bllroute.CreateRoute(CurrentUser, type1, type2, start, desti, s_location,d_location,selectshort, datetimelong,
            datetimelong, datepickerhour, datepickerminutes, passby1, passby2, passby3, 
            appendtxt, conname, conphone,miles);
        Response.Redirect("/Routes/PinkerList.aspx");
    }
}