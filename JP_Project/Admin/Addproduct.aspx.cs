using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
public partial class Admin_Addproduct : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    //private string lblproductid;
    //string dpath = "C:\Users\Dell\My Documents\Visual Studio 2010\WebSites\JP_Project\img1";

    protected void Page_Load(object sender, EventArgs e)
    {
       // if (!Directory.Exists(dpath))
        //{
          //  Directory.CreateDirectory(dpath);
        //}


        lblMsg.Text = "";
        if (!IsPostBack)
        {
            
            BindProductData();
        }
    }

    private void BindProductData()
    {
        using (SqlConnection sqlCon = new SqlConnection(conn))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT * FROM productdetails";
                cmd.Connection = sqlCon;
                sqlCon.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                productdetails.DataSource = dt;
                productdetails.DataBind();
                sqlCon.Close();
            }
        }
    }



    protected void btnadd_Click(object sender, EventArgs e)
    {
       
        bool IsAdded = false;   
       // string Product_ID = txtproductid.Text.Trim();
        string Unique_Id = txtuniqueid.Text.Trim();
        string Product_Name = txtproductname.Text.Trim();
        string Product_Desc = txtproductdesc.Text.Trim();
        string Price = txtprice.Text.Trim();
        string Brand = txtbrand.Text.Trim();
    
       // string Filename = Path.GetFileName(txtimage.PostedFile.FileName);
        //saving file to disk
        //txtimage.SaveAs(Server.MapPath("~/img1" + Filename));
        string s = txtimage.FileName;
        string pa= Server.MapPath("");
        
        //if (pa == ".jpg")
        //{
            string bpath = pa + "\\" + "W_EW" + "\\" + s;
            string dpath = "~" + "/" + "W_EW" + "/" + s;
            //txtimage.PostedFile.SaveAs(bpath);
        //}
        
        
        using (SqlConnection sqlCon = new SqlConnection(conn))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                //here added "@" to write continuous strind in new line
                cmd.CommandText = @"INSERT INTO productdetails(Unique_id,pro_name,pro_desc,price,brand,pro_image)
                                VALUES(@Unique_id,@pro_name,@pro_desc,@price,@brand, @pro_image)";
                //cmd.Parameters.AddWithValue("@product_id", Product_ID);
                cmd.Parameters.AddWithValue("@Unique_id", Unique_Id); 
                cmd.Parameters.AddWithValue("@pro_name", Product_Name);
                cmd.Parameters.AddWithValue("@pro_desc", Product_Desc);
                cmd.Parameters.AddWithValue("@price", Price);
                cmd.Parameters.AddWithValue("@brand", Brand);
                cmd.Parameters.AddWithValue("@pro_image",dpath);
               

                cmd.Connection = sqlCon;
                sqlCon.Open();

                IsAdded = cmd.ExecuteNonQuery() > 0;
              //  txtimage.PostedFile.SaveAs(bpath);

             //   try
               // {
                 //   Directory.SetCurrentDirectory(dpath);


                //}
                //catch 
                //{
                  //  Console.WriteLine("Directory not found: " + dpath);
                //}


                sqlCon.Close();
            }
        }
        if (IsAdded)
        {
          //  txtimage.PostedFile.SaveAs(bpath);
            lblMsg.Text =" Product added successfully!";
                //"'" + Product_Desc + "' Product added successfully!";
            lblMsg.ForeColor = System.Drawing.Color.Green;

            BindProductData();
        }
        else
        {
            lblMsg.Text = "Error while adding '" + productdetails + "' productdetails";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
        ResetAll();//to reset all form controls

    }
    public void ResetAll()
    {
        btnadd.Visible = true;
        
        txtproductid.Text = "";
        txtuniqueid.Text = "";
        txtproductname.Text = "";
        txtproductdesc.Text = "";
        txtprice.Text = "";
        txtbrand.Text = "";
       
          
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
         if (string.IsNullOrEmpty(txtproductid.Text))
    {
        lblMsg.Text = "Please select record to update";
        lblMsg.ForeColor = System.Drawing.Color.Red;
        return;
    }
    bool IsUpdated = false;
    int Product_ID = Convert.ToInt32(txtproductid.Text);
    string Unique_id = txtuniqueid.Text.Trim();
    string Product_Name = txtproductname.Text.Trim();
    string Product_Desc = txtproductdesc.Text.Trim();
     string Price = txtprice.Text.Trim();
    string Brand = txtbrand.Text.Trim();
      
      string Filename = Path.GetFileName(txtimage.PostedFile.FileName);
    //saving file to disk
       txtimage.SaveAs(Server.MapPath("~/W_EW" + Filename));
    //string name = txtimage.FileName;
    //string s = Server.MapPath("");
    //string pa = Path.GetExtension(name);
    //    if(pa==".jpg")
    //    {
    //        string bpath = s + "\\" + "img1" + "\\" + name;
    //       txtimage.PostedFile.SaveAs(bpath);
    //    }
       
    using (SqlConnection sqlCon = new SqlConnection(conn))
    {
        using (SqlCommand cmd = new SqlCommand())
        {
            //here added "@" to write continuous strind in new line
            cmd.CommandText = @"UPDATE productdetails SET Unique_id=@Unique_id, pro_name=@pro_name,
                                pro_desc=@pro_desc,price=@price,brand=@brand,pro_image=@pro_image WHERE pro_id=@pro_id";
                cmd.Parameters.AddWithValue("@pro_id", Product_ID);
                cmd.Parameters.AddWithValue("@Unique_id", Unique_Id);                 
                cmd.Parameters.AddWithValue("@pro_name", Product_Name);
                cmd.Parameters.AddWithValue("@pro_desc", Product_Desc);
                cmd.Parameters.AddWithValue("@price", Price);
                cmd.Parameters.AddWithValue("@brand", Brand);
                cmd.Parameters.AddWithValue("@pro_image",Filename);
               
            cmd.Connection = sqlCon;
            sqlCon.Open();
            IsUpdated = cmd.ExecuteNonQuery() > 0;
            sqlCon.Close();
        }
    }
    if (IsUpdated)
    {
        lblMsg.Text = "'" + Product_Name + "' product details updated successfully!";
        lblMsg.ForeColor = System.Drawing.Color.Green;
    }
    else
    {
        lblMsg.Text = "Error while updating '" + Product_Name + "' product details";
        lblMsg.ForeColor = System.Drawing.Color.Red;
    }
    productdetails.EditIndex = -1;
    BindProductData();
   ResetAll();//to reset all form controls
}
    

      
    protected void btndelete_Click(object sender, EventArgs e)
    {
        if(string.IsNullOrEmpty(txtproductid.Text))
        {
            lblMsg.Text = "Please select a record to delete";
            lblMsg.ForeColor = System.Drawing.Color.Red;
            return;
        }
        bool IsDeleted = false;
        int ProductID =Convert.ToInt32(txtproductid.Text.Trim());
        string ProductName = txtproductname.Text.Trim();
        using (SqlConnection sqlCon = new SqlConnection(conn))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "DELETE FROM ProductDetails WHERE pro_id=@pro_id";
                cmd.Parameters.AddWithValue("@pro_id",ProductID);
                cmd.Connection = sqlCon;
                sqlCon.Open();
                IsDeleted = cmd.ExecuteNonQuery() > 0;
                sqlCon.Close();
            }
        }
        if (IsDeleted)
        {
            lblMsg.Text = "'" + ProductName + "' product details deleted successfully!";
            lblMsg.ForeColor = System.Drawing.Color.Green;
            BindProductData();
        }
        else
        {
            lblMsg.Text = "Error while deleting '" + ProductName + "' product details";
            lblMsg.ForeColor = System.Drawing.Color.Red;
        }
        ResetAll();//to reset all form controls
        

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        ResetAll();
    }
    //protected void productdetails_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    txtproductid.Text = productdetails.DataKeys[productdetails.SelectedRow.RowIndex].Value.ToString();
    //    //txtproductname.Text = (productdetails.SelectedRow.FindControl(lblproductname) as Label).Text;
    //    //txtproductdesc.Text = (productdetails.SelectedRow.FindControl(lblproductdesc) as Label).Text;
    //    //txtprice.Text = (productdetails.SelectedRow.FindControl(lblprice) as Label).Text;
    //    //txtbrand.Text = (productdetails.SelectedRow.FindControl(lblbrand) as Label).Text;
    //    //txtproductid.Text = productdetails.Rows[e.NewSelectedIndex].Cells[1].Text;
    //    //txtproductname.Text = productdetails.Rows[e.NewSelectedIndex].Cells[2].Text;
    //    //txtproductdesc.Text = productdetails.Rows[e.NewSelectedIndex].Cells[3].Text;
    //    //txtbrand.Text = productdetails.Rows[e.NewSelectedIndex].Cells[4].Text;
    //    //txtprice.Text = productdetails.Rows[e.NewSelectedIndex].Cells[5].Text;
    //   // string SelectedRow = productdetails.SelectedIndex;
    //    //txtproductid = productdetails.Rows[SelectedRow].Cells[0].Text.ToString();
    //    //txtproductname = productdetails.Rows[SelectedRow].Cells[1].Text;
    //    //txtproductdesc = productdetails.Rows[SelectedRow].Cells[2].Text;
    //    //txtbrand = productdetails.Rows[SelectedRow].Cells[3].Text;
    //    //txtprice = productdetails.Rows[SelectedRow].Cells[4].Text;
    //    btnadd.Visible = false;
    //}
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = +1;
        productdetails.Visible = true;
      
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
      //  productdetails.Visible = false;
       // GridView1.Visible = true;
       // Response.Redirect("view2");
    }


    protected void lbsignout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Admin/Admin.aspx");
    

    }



    //protected void productdetails_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    //{
    //    txtproductid.Text = productdetails.Rows[e.NewSelectedIndex].Cells[1].Text;
    //    txtproductname.Text = productdetails.Rows[e.NewSelectedIndex].Cells[2].Text;
    //    txtproductdesc.Text = productdetails.Rows[e.NewSelectedIndex].Cells[3].Text;
    //    txtbrand.Text = productdetails.Rows[e.NewSelectedIndex].Cells[4].Text;
    //    txtprice.Text = productdetails.Rows[e.NewSelectedIndex].Cells[5].Text;
    //    btnadd.Visible = false;

    //}

   
    protected void productdetails_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtproductid.Text = productdetails.DataKeys[productdetails.SelectedRow.RowIndex].Value.ToString();
        txtproductname.Text = (productdetails.SelectedRow.FindControl("lblproductname") as Label).Text;
        txtproductdesc.Text = (productdetails.SelectedRow.FindControl("lblproductdesc") as Label).Text;
        txtprice.Text = (productdetails.SelectedRow.FindControl("lblprice") as Label).Text;
        txtbrand.Text = (productdetails.SelectedRow.FindControl("lblbrand") as Label).Text;
        btnadd.Visible = false;

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }

    public object Unique_Id { get; set; }
}
