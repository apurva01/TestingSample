using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DetailManagement;
using System.Data.SqlClient;
using System.Configuration;
namespace Emp_Database
{
    class DbProgram
{
       static void Main (string[] args)
        {

        }
}
    
     public class DbConnection
    {
       public void Insert(string e_name, int e_code, string e_dept)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DetailManagement.Properties.Settings.connectionStr"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO  Emp_Details VALUES(@emp_Name, @emp_Code, @emp_Dept)", conn))
                    {
                        cmd.Parameters.AddWithValue("@emp_Name", e_name);
                        cmd.Parameters.AddWithValue("@emp_Code", e_code);
                        cmd.Parameters.AddWithValue("@emp_Dept", e_dept);
                       
                        int rows = cmd.ExecuteNonQuery();

                       
                    }
                }
            }

            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void Read()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["DetailManagement.Properties.Settings.connectionStr"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (SqlCommand cmd =
                        new SqlCommand("SELECT * FROM Emp_Details;", conn))
                    {
                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                Console.WriteLine("Employee Name = ", reader["emp_Name"]);
                                Console.WriteLine("Employee Code = ", reader["emp_Code"]);
                                Console.WriteLine("Employee Dept = ", reader["emp_Dept"]);
                             

                            }
                        }

                        reader.Close();
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }

        }

   
    }
    }
