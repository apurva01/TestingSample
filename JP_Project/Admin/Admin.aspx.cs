using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;




public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection
    (ConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlDataReader dr;
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from admin where email_id=@email_id and pwd=@pwd", con);
       
        cmd.Parameters.AddWithValue("@email_id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        dr = cmd.ExecuteReader();

        if (TextBox1.Text == "canedituser@mania.com" && TextBox2.Text == "adminright")
        {
            Session["email_id"] = TextBox1;
            Response.Redirect("~/Admin/Addproduct.aspx");

        }

       else
        { Literal1.Text = "invalid email_id OR password"; }
        
    }
}