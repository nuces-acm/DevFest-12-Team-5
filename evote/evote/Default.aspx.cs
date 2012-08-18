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
    public partial class _Default : System.Web.UI.Page
    {
        public static string abc;
        SqlConnection con;
        SqlCommand com;
        SqlCommand com1;
        SqlCommand com2;
        SqlCommand com3;
        SqlCommand com4;
        SqlDataReader dr;
        SqlDataReader dr1;
        protected void Page_Load(object sender, EventArgs e)
           

        {

            if (Session["a"] == null) {
                Response.Redirect("Main_login.aspx");
            }

            con = new SqlConnection("Data Source=RASHID-PC;Initial Catalog=vote;Integrated Security=True");
            con.Open();
            string sqlcount = "select count(nic) from reg";
            string sqlcount1 = "select count(c_nic) from candidate";
            string sqlget = "select * from adm_info";
            com2 = new SqlCommand(sqlget, con);

            com = new SqlCommand(sqlcount, con);
            com1 = new SqlCommand(sqlcount1, con);
            int  a=Convert.ToInt32( com.ExecuteScalar());
            int b = Convert.ToInt32(com1.ExecuteScalar());
            if (Session["a"] == null)
            {
                Response.Redirect("login_admin.aspx");
            }
            else {
                Label1.Text = "[ " + Session["a"].ToString() + " ]";
                Label4.Text = a.ToString();
                Label5.Text = b.ToString();

                dr = com2.ExecuteReader();
                dr.Read();
                    TextBox1.Text=dr["username"].ToString();
                    TextBox2.Text = dr["pass"].ToString();
                    TextBox3.Text = dr["adm_name"].ToString();
                    TextBox4.Text = dr["adm_post"].ToString();
                    TextBox5.Text = dr["adm_contact"].ToString();
                    abc=dr["adm_post"].ToString();
                    dr.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Enabled = true;
            TextBox2.Enabled = true;
            TextBox3.Enabled = true;
            TextBox4.Enabled = true;
            TextBox5.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Close();
            con.Open();
           string sqlupdate = "update adm_info set username='" + TextBox1.Text + "',pass='" + TextBox2.Text + "',adm_name='" + TextBox3.Text + "',adm_post='"+TextBox4.Text+ "',adm_contact=" + TextBox5.Text+" where username='"+Session["a"].ToString()+"'";
           
            com3 = new SqlCommand(sqlupdate, con);
            com3.ExecuteNonQuery();
            
            Response.Write(" <script >alert ('Profile Update Successfull !') </script>");
            string sqlsel = "select * from adm_info";
            com4 = new SqlCommand(sqlsel, con);
            dr1 = com4.ExecuteReader();
            dr1.Read();
            TextBox1.Text = dr1["username"].ToString();
            TextBox2.Text = dr1["pass"].ToString();
            TextBox3.Text = dr1["adm_name"].ToString();
            TextBox4.Text = dr1["adm_post"].ToString();
            TextBox5.Text = dr1["adm_contact"].ToString();

        }
    }
}
