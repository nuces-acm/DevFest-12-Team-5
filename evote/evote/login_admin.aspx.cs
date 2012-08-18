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
    public partial class login_admin : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand com;
        SqlDataReader dr;
        DataSet ds;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=RASHID-PC;Initial Catalog=vote;Integrated Security=True");
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            if (TextBox1.Text == "" && TextBox2.Text == "")
            {
                Label1.Text = "Invalid ID or Password";
            }
            else
            {
                Session["a"] = TextBox1.Text;

                ds = new DataSet();
                SqlDataAdapter ad = new SqlDataAdapter("select * from adm_info where username ='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'", con);
                SqlCommandBuilder cb = new SqlCommandBuilder(ad);
                ds.Clear();
                ad.Fill(ds);

                if (TextBox2.Text == "" || ds.Tables[0].Rows.Count == 0)
                {


                    Label1.Text = "Invalid ID or Password";
                   

                }
                else
                {
                    //Response.Write(" <script >alert ('congrates') </script>");

                    Response.Redirect("default.aspx");
                    con.Close();

                }
                Label1.Text = "Invalid ID or Password";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}