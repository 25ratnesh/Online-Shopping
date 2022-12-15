using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_Product : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["productdb"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Pname.Text.Trim().Length > 0 && Pprice.Text.Trim().Length > 0)
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO ProductTable (ProductName,ProductDescription,ProductPrice) VALUES (@ProductName,@ProductDescription,@ProductPrice)", con))
                {
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.AddWithValue("@ProductName", Pname.Text);
                    cmd.Parameters.AddWithValue("@ProductDescription", Pdescription.Text);
                    cmd.Parameters.AddWithValue("@ProductPrice", Pprice.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblmsg.Text = "Data Saved Successfully";
                }
            }
            else
            {
                lblmsg.Text = "Please enter data";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "something went wrong";
        }

    }
}