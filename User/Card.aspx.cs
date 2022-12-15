
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class User_Card : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["productdb"].ConnectionString);
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
            using (SqlDataAdapter sd = new SqlDataAdapter("SELECT [CartId], [RegistrationID], [ProductID], [IsDone], [DateTime] FROM Cart where RegistrationID= '" + Session["RegistrationID"].ToString() + "'", con))
            {
                DataTable dt = new DataTable();
                sd.Fill(dt);
                gclist.DataSource = dt;
                gclist.DataBind();

            }
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
    protected void gclist_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int ID = Convert.ToInt32(e.CommandArgument.ToString());
        try
        {
            if (e.CommandName == "DEL")
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM Cart where  CartId= @ID", con))
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
            else
            {
                lbl.Text = "data not deleted";

            }
        }
        catch (Exception ex)
        {
            lbl.Text = ex.Message;
        }
    }
}
