﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Index : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["FirstName"] != null && Session["Email"] != null)
            {
                Label1.Text = Session["FirstName"].ToString();
            }
        }
    }
}