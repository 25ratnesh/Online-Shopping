using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.IO;
using System.Security.Policy;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["productdb"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            if (Txtproduct.Text.Trim().Length > 0 && Txtprice.Text.Trim().Length > 0)
            {
                string Product = Txtproduct.Text.Trim();
                string Description = Txtdescription.Text.Trim();
                string Price = Txtprice.Text.Trim();
                byte[] bytes;
                if (fileupload.HasFile)
                {
                    using (BinaryReader br = new BinaryReader(fileupload.PostedFile.InputStream))
                    {
                        bytes = br.ReadBytes(fileupload.PostedFile.ContentLength);
                    }
                }


                else
                {
                    Labelproduct.Text = "Please SelectImage";
                    return;
                }
                using (SqlCommand cmd = new SqlCommand("INSERT INTO ProductDatabase (ProductName,ProductDescription,ProductPrice,ProductImage)VALUES(@Product,@Description,@Price,@Image)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@Product", Product);
                    cmd.Parameters.AddWithValue("@Description", Description);
                    cmd.Parameters.AddWithValue("@Price", Price);
                    cmd.Parameters.AddWithValue("@Image", bytes);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Txtproduct.Text = "";
                    Txtdescription.Text = "";
                    Txtprice.Text = "";
                    Labelproduct.Text = "data added";
                }
            }
            else
            {
                Labelproduct.Text = "data not added properly";
            }

        }
        catch (Exception ex)
        {

            Labelproduct.Text = "something went wrong";
        }
    }
    public void FillGrid()
    {
        try
        {
            using (SqlDataAdapter sd = new SqlDataAdapter("SELECT * FROM ProductDatabase", con))
            {
                DataTable dt = new DataTable();
                sd.Fill(dt);
                gvImages.DataSource = dt;
                gvImages.DataBind();
            }
        }
        catch (Exception ex)
        {
            Labelproduct.Text = "Something Wrong in Fetching";
        }
    }

    protected void gvImages_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        try
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["ProductImage"]);
                (e.Row.FindControl("Img1") as Image).ImageUrl = imageUrl;
            }
        }
        catch (Exception ex)
        {
            Labelproduct.Text = "Something Wrong in Fetching Image";
        }

    }
}