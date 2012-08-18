using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace evote
{
    public partial class search_cand : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a"] == null)
            {
                Response.Redirect("Main_login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "select c_nic as'NIC#',c_name as 'Name',party_name as 'Party Name',loc as 'Location',c_sign as'Sign' from candidate where c_nic=" + TextBox1.Text;
            SqlDataSource1.SelectCommand = sql;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}