using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDisplayDetails_Click(object sender, EventArgs e)
    {
        btnDisplayGrid.Visible = true;
        btnDisplayDetails.Visible = false;

        gvEmployees.Visible = false;
        dvEmployees.Visible = true;

        lblDetails.Visible = true;
        lblGrid.Visible = false;
    }

    protected void btnDisplayGrid_Click(object sender, EventArgs e)
    {

        btnDisplayGrid.Visible = false;
        btnDisplayDetails.Visible = true;

        gvEmployees.Visible = true;
        dvEmployees.Visible = false;

        lblDetails.Visible = false;
        lblGrid.Visible = true;
    }
}