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
    public partial class vote_page : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand com;
        SqlDataReader dr;
        SqlCommand com1;

        protected void Page_Load(object sender, EventArgs e)
        {

            con = new SqlConnection("Data Source=RASHID-PC;Initial Catalog=vote;Integrated Security=True");
            con.Open();

            string sql = "select * from candidate where c_sign='" + DropDownList3.Text + "'";
            com = new SqlCommand(sql, con);
            Label2.Text=Session["voter_nic"].ToString();
           
            
        }



        protected void Button1_Click(object sender, EventArgs e)
        {


            dr = com.ExecuteReader();
            while (dr.Read())
            {
                if (dr.HasRows)
                {
                    Label6.Text = dr["c_name"].ToString();
                    Label7.Text = dr["party_name"].ToString();
                }
                else
                {
                    Label3.Text = "sorri";
                }
            }  
    }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //dr = com.ExecuteReader();
            //while (dr.Read())
            //{
            //    if (dr.HasRows)
            //    {
            //        Label6.Text = dr["c_name"].ToString();
            //        Label7.Text = dr["party_name"].ToString();
            //    }
            //    else
            //    {
            //        Label3.Text = "sorri";
            //    }
            //}  
        }

        protected void DropDownList3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label6.Text == "" && Label7.Text == "")
            {
                Label8.Text = "Click Fetch Data Button To Retrieve Candidate Information";
            }
            else
            {
                string sqlad = "insert into vote values(" + Label2.Text + ",'" + Label7.Text + "','" + Label6.Text + "','" + DropDownList3.Text + "')";
                com1 = new SqlCommand(sqlad, con);
                com1.ExecuteNonQuery();
                Response.Redirect("voter_home.aspx");
            }
        }
    }
}