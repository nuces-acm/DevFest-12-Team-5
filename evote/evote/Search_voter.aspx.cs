using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace evote
{
    public partial class Search_voter : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a"] == null)
            {
                Response.Redirect("Main_login.aspx");
            }
            con = new SqlConnection("Data Source=RASHID-PC;Initial Catalog=vote;Integrated Security=True");
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "select nic as'NIC#',fam as'Family#',iname as 'Voter Name',so as 'Title',so_name as 'Title Name',gen as 'Gender',dob as 'Date Of Birth',adr as 'Address' from reg where nic="+TextBox1.Text;
            SqlDataSource1.SelectCommand = sql;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}