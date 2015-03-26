using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Forgetpassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection
        (ConfigurationManager.ConnectionStrings["constr"].ToString());
    SqlCommand cmd;
    string str;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select securityques from signup  where email_id='" + TextBox1.Text + "'", con);
        str = Convert.ToString(cmd.ExecuteScalar());
        if (str == "")
        {
            Panel1.Visible = false;
            Literal2.Text = "invalid email";
        }
        else
        {
            Panel1.Visible = true;
            Literal1.Text = str;
        }
        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        string s = "select pwd ,email_id from signup where email_id='" + TextBox1.Text + "' and securityans='" + TextBox2.Text + "'";
        cmd = new SqlCommand(s, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Response.Output.Write("pwd={0} email_id={1}", dr[0], dr[1]);
             }
        else
        {
            string message = "Invalid Answer plz try again";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type='text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
    
            
           // Literal2.Text = "Invalid Answer Pls Try again";
            //Response.Write("Invalid Answer Pls Try again");
        }
        con.Close();


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}