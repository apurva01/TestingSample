using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class adminsignup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DELL-PC; database=jp_project; uid=sa; pwd=ss");
    //  SqlDataAdapter da;
    //DataTable dt;
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO admin values(@email_id, @pwd, @cpwd)";

        //adding parameter with values
        cmd.Parameters.AddWithValue("@email_id", TextBox1.Text.ToString());
        

        cmd.Parameters.AddWithValue("@pwd", TextBox2.Text.ToString());
        cmd.Parameters.AddWithValue("@cpwd", TextBox3.Text.ToString());
        con.Open();//opening connection
        cmd.ExecuteNonQuery(); //executing query

        // Response.Write("You are sucessfully registered");
        con.Close();

        string message = "Your registration is submitted successfully";
        System.Text.StringBuilder sb = new System.Text.StringBuilder();
        sb.Append("<script type='text/javascript'>");
        sb.Append("window.onload=function(){");
        sb.Append("alert('");
        sb.Append(message);
        sb.Append("')};");
        sb.Append("</script>");
        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
    
    }
}