using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    { 
     
    }
    static int i = 0;
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        string[] s = { "~/img/0.jpg", "~/img/1.jpg", "~/img/2.jpg", "~/img/3.jpg", "~/img/4.jpg", "~/img/5.jpg", "~/img/6.jpg", "~/img/7.jpg", "~/img/8.jpg" };
        if (i < s.Length)
        {
            Image1.ImageUrl = s[i];
            i++;
        }
        else
        {
            i = 0;
        }
    
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Men.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Women.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Footwear");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("New Arrivals.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup1.aspx");
    }
}
