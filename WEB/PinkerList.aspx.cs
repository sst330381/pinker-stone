﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PinkerList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request["start"] != null)
            {
                txtStart.Text = Request["start"];
            }
            if (Request["dest"] != null)
            {
                txtDest.Text = Request["dest"];
            }
        }
    }
}