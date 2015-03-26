using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Feedback : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection("server=DELL-PC; database=jp_project; uid=sa; pwd=ss");
    SqlCommand cmd = new SqlCommand();


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO feedback values(@email_id, @brand_name,@rating, @reviews, @cus_review)";

        //adding parameter with values
        cmd.Parameters.AddWithValue("@email_id", TextBox1.Text.ToString());
        cmd.Parameters.AddWithValue("@brand_name", TextBox2.Text.ToString());
        cmd.Parameters.AddWithValue("@rating", RBrate.SelectedItem.Text.ToString());

        cmd.Parameters.AddWithValue("@reviews", DDL.Text.ToString());
        cmd.Parameters.AddWithValue("@cus_review", TextBox3.Text.ToString());
        
      

        con.Open();//opening connection
        cmd.ExecuteNonQuery(); //executing query

        //Response.Write("Your Feedback is submitted successfully");
        con.Close();
        string message = "Your valuable feedback is submitted successfully";
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