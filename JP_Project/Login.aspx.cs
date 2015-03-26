using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgetpassword.aspx");
    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Signup.aspx");
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        String str = args.Value;

        if (str.Contains("@") && str.Length == 8)
            args.IsValid = true;
        else
            args.IsValid = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {    
        SqlConnection con = new SqlConnection
    (ConfigurationManager.ConnectionStrings["constr"].ToString());
        SqlDataReader dr;
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from signup where email_id=@email_id and pwd=@pwd",con);

        cmd.Parameters.AddWithValue("@email_id", email1.Text);
        cmd.Parameters.AddWithValue("@pwd", pass1.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        

        DataTable dt = new DataTable();
        da.Fill(dt);

        
        dr = cmd.ExecuteReader();


        //if (email1.Text == "adminmania786@gmail.com" && pass1.Text == "admin001")
        //{
          //  Session["email_id"] = email1;
            //Response.Redirect("Admin/Admin.aspx");

        //}

        //else // if (email1.Text != "canedituser@mania.com" && pass1.Text == "@pwd")
        //{
          //  Session["email_id"] = email1;
            //Session.Timeout = 2;
            //Response.Redirect("Specialoffers1.aspx");
        //}



        if (dr.Read())
        {
            Session["s"] = dr[0];
            Session.Timeout = 2;
            Response.Redirect("Specialoffers.aspx");
        }
        //  else if (email1.Text == "canedituser@mania.com" && pass1.Text == "admin001")
        //{
        //  Response.Redirect("Admin/Admin.aspx;");

          //}


       else
        { ltfail.Text = "invalid email_id OR password"; }
        con.Close();
     
    }
        
        
     //   if (dt.Rows.Count > 0)
       // {
         //   Response.Redirect("Specialoffers.aspx");

        //}
       // else
        //{
          //  Response.Redirect("Login.aspx");
            
        //}
    //}
}