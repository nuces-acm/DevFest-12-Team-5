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
    public partial class login_voter : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=RASHID-PC;Initial Catalog=vote;Integrated Security=True");
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                Session["voter"] = TextBox2.Text;
                Session["voter_nic"] = TextBox1.Text;

                ds = new DataSet();
                SqlDataAdapter ad = new SqlDataAdapter("select * from reg where nic =" + TextBox1.Text + " and fam=" + TextBox2.Text, con);
                SqlCommandBuilder cb = new SqlCommandBuilder(ad);
                ds.Clear();
                ad.Fill(ds);

                if (ds.Tables[0].Rows.Count == 0)
                {


                    Response.Redirect("login_voter.aspx");
                    Label1.Text="Invalid Username Or Password";
                    // Response.Write(" <script >alert ('Wrong') </script>");

                }
                else
                {
                    //Response.Write(" <script >alert ('congrates') </script>");

                    Response.Redirect("voter_Home.aspx");
                    con.Close();

                }
            }
            catch(Exception ex){
             Label1.Text="Invalid Username Or Password";
            }
           

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}