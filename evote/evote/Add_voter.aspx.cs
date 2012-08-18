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
    public partial class voters_add : System.Web.UI.Page
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

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                if (cnic.Text == "" || fam.Text == "" || vote_name.Text == "" || so_combo.Text == "" || so_name.Text == "" || gen.Text == "" || dob.Text == "" || adr.Text == "")
                {
                    Label8.Text = "Check Data !";
                }
                else
                {
                    string sql = "insert into reg(nic,fam,iname,so,so_name,gen,dob,adr) values(" + cnic.Text + "," + fam.Text + ",'" + vote_name.Text + "','" + so_combo.Text + "','" + so_name.Text + "','" + gen.Text + "','" + dob.Text + "','" + adr.Text + "')";

                    com = new SqlCommand(sql, con);
                    com.ExecuteNonQuery();
                    cnic.Text = "";
                    fam.Text = "";
                    vote_name.Text = "";
                    so_combo.Text = "";
                    so_name.Text = "";
                    dob.Text = "";
                    adr.Text = "";
                    Label8.Text = "Record Added Successfully !";
                }
            }
            catch (Exception ex) {
                Label8.Text = "Check Data !";
            }
            }
    }
}