using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Admin_ProductList : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["productdb"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e){
    if (!IsPostBack)
        {
            FillGrid();
        }
    }

    public void FillGrid()
    {
        using (SqlDataAdapter sd = new SqlDataAdapter("select * from ProductDatabase", con))
        {
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView dr = (DataRowView)e.Row.DataItem;
            string imageurl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["ProductImage"]);
            (e.Row.FindControl("img1") as Image).ImageUrl = imageurl;

        }
    }
}