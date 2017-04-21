using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class confirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        patient.Text = Session["value"].ToString();
        doct_name.Text = Session["doctor_name"].ToString();
        shift_date.Text = Session["app_date"].ToString();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        // Button1.PostBackUrl = "~/Home.aspx";
        Response.Redirect("Home.aspx");
    }
}