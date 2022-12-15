using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MyOrder : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }
    }

    public void FillGrid()
    {
        try
        {
             using (SqlDataAdapter sd = new SqlDataAdapter("SELECT [FirstName], [Email], [RegistrationID], [ProductName], [ProductPrice], [ProductID], [ProductDescription], DateTime FROM [ViewSelectOrderList] where RegistrationID= '"+ Session["RegistrationID"].ToString() + "'", con))
        {
            DataTable dt = new DataTable();
            sd.Fill(dt);
            gvlist.DataSource = dt;
            gvlist.DataBind();

        }
        }
        catch (Exception ex)
        {
            
        }
    }
    protected void gvlist_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int ID = Convert.ToInt32(e.CommandArgument.ToString());
        try
        {
            if (e.CommandName == "DEL")
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM ProductDatabase where ProductID = @ID", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ID", ID);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    FillGrid();
                    lbl.Text = "data deleted";
                }
            }
            else if (e.CommandName == "DOWN")
            {
                lbl.Text = "data downloaded";
            }
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
  }
