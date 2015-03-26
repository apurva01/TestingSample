using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Women : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("server=DELL-PC; database=jp_project; uid=sa; pwd=ss");
    //  SqlDataAdapter da;
    //DataTable dt;
    SqlCommand cmd = new SqlCommand();
    public void Page_Load(object sender, EventArgs e)
    {
        
    }
  
   
}

public class Model1
{
    string Unique_Id { get; set; }
    string Product_name { get; set; }
    string Image { get; set; }
}