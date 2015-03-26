using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class signup1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DELL-PC; database=jp_project; uid=sa; pwd=ss");
    //  SqlDataAdapter da;
    //DataTable dt;
    SqlCommand cmd = new SqlCommand();

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
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO signup values(@email_id, @gender,@mob, @pwd, @cpwd, @securityques, @securityans)";

        //adding parameter with values
        cmd.Parameters.AddWithValue("@email_id", TextBox1.Text.ToString());
        cmd.Parameters.AddWithValue("@gender", RdoGender.SelectedItem.Text.ToString());
        cmd.Parameters.AddWithValue("@mob", TextBox4.Text.ToString());

        cmd.Parameters.AddWithValue("@pwd", TextBox2.Text.ToString());
        cmd.Parameters.AddWithValue("@cpwd", TextBox3.Text.ToString());
        cmd.Parameters.AddWithValue("@securityques", DD1.Text.ToString());
        cmd.Parameters.AddWithValue("@securityans", TextBox5.Text.ToString());

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
    protected void RdoGender_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
       // RdoGender.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;
        TextBox5.Text = string.Empty;
       // DD1.Text = string.Empty;
    }
}