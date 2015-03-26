using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;



public partial class Specialoffers : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["s"] != null)
        {
            Literal1.Text = Session["s"].ToString();
        }
        else
           Response.Redirect("Specialoffers.aspx");
    

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("login.aspx");
    

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
}