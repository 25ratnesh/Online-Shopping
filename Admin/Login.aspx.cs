using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["productdb"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
    }   
    protected void Button1_Click(object sender, EventArgs e)
    {


        if (Uname.Text.Length > 0 && Uname.Text == "Ratnesh" && Pwd.Text.Length > 0 && Pwd.Text == "123")
        {
            Session["AdminName"] = Uname.Text;
            Session["AdminPass"] = Pwd.Text;
            Response.Redirect("Product.aspx");
        }
        else
        {
            Label1.Text = "Invalid User";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    


    }
}