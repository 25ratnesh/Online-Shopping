using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdminName"] != null && Session["AdminPass"] != null)
            {
                lblmsg.Text = Session["AdminName"].ToString();
            }
            else
            {
                Session.Clear();
                Response.Redirect("Login.aspx");
            }
        }
    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("/admin/Login.aspx");
    }
}
