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
    public partial class voter_home : System.Web.UI.Page
    {
       // SqlDataAdapter da;
        DataSet ds;

        SqlDataReader dr;
        //SqlDataReader dr1;
        SqlConnection con;
        SqlCommand com;
       // SqlCommand com1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["voter"] == null)
            {
                Response.Redirect("login_voter.aspx");
            }
            else
            {
                con = new SqlConnection("Data Source=RASHID-PC;Initial Catalog=vote;Integrated Security=True");
                con.Open();
                com = new SqlCommand("Select * from reg where fam=" + Session["voter"].ToString(), con);

                dr = com.ExecuteReader();
                //dr.Read();
                if (dr.HasRows)
                {
                    dr.Read();
                    cnic.Text = dr["nic"].ToString();
                    fam.Text=dr["fam"].ToString();
                    name.Text=dr["iname"].ToString();
                    so.Text=dr["so"].ToString();
                    so_name.Text=dr["so_name"].ToString();
                    gen.Text=dr["gen"].ToString();
                    dob.Text=dr["dob"].ToString();
                    add.Text=dr["adr"].ToString();
                    dr.Close();
                }
                else
                {
                    Response.Write("Sori");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string sqlcheck = "select * from vote where nic=" + Session["voter_nic"].ToString();
            ds = new DataSet();
            SqlDataAdapter ad = new SqlDataAdapter("select * from vote where nic =" + Session["voter_nic"], con);
            SqlCommandBuilder cb = new SqlCommandBuilder(ad);
            ds.Clear();
            ad.Fill(ds);

            if (ds.Tables[0].Rows.Count == 0)
            {


                Response.Redirect("vote_page.aspx");


            }
            else
            {
               // Response.Write(" <script >alert ('congrates') </script>");
                Label8.Text = "You Already Casted Your Vote !";
                // Response.Redirect("voter_home.aspx");
                // Response.Redirect("vote_page.aspx");
                // con.Close();

            }


                }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["voter_nic"] = null;
            Session["voter"] = null;
            Response.Redirect("login_voter.aspx");

        }
            
        
    }
}