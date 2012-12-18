using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RouteDetail : System.Web.UI.Page
{
    BLL.BLLRoute bllroute = new BLL.BLLRoute();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindInfo();
        }
    }

    private void BindInfo()
    {
        var id = Request.QueryString[0];
        if (id == null) return;
        var route = bllroute.GetRoute(Guid.Parse(id));
        lbltitle.Text = route.Startpoint + "→" + route.Destination;
        lbltype.Text = route.Pinkertype.ToString();
        lbldatetime.Text = route.Godate + " " + route.Gotime;
        lblpassby.Text = " " + route.Passby1 + " " + route.Passby2 + " " + route.Passby3;
        lblremark.Text = " " + route.Remark;
        lblroute.Text = route.Startpoint + "→" + route.Destination;
        lblconn_name.Text = route.ConnectName;
        lblconn_phone.Text = route.ConnectPhone.Length == 11 ?
            route.ConnectPhone.Substring(0, 3) + "****" + route.ConnectPhone.Substring(7, 4)
            : route.ConnectPhone;
        lbldriver.Text = route.Driver ? "车主" : "乘客";
        p_start.Value = route.StartLocation;
        p_dest.Value = route.DestLocation;
        img_avatar.ImageUrl = route.PublishUser == null ? "/img/mavatar/M_001.jpg" : route.PublishUser.Avatar;
        (a_avatar as System.Web.UI.HtmlControls.HtmlAnchor).HRef =
            route.PublishUser == null ? "#" : "/Account/UserInfo.aspx?id=" + route.PublishUser.ID;
    }
}