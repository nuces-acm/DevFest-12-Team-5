﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace evote
{
    public partial class candidate_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a"] == null)
            {
                Response.Redirect("Main_login.aspx");
            }
        }
    }
}