using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace evote
{
    public partial class candidate_add : System.Web.UI.Page
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
            try{
                if(c_nic.Text=="" || c_name.Text=="" || p_name.Text=="" || loc.Text=="" || c_sign.Text==""){
                    Label6.Text="Check Data !";
                }
                else{
            int nic = Convert.ToInt32(c_nic.Text);
            string sql = "insert into candidate values("+nic+",'"+c_name.Text+"','"+p_name.Text+"','"+loc.Text+"','"+c_sign.Text+"')" ;
            com = new SqlCommand(sql, con);
            com.ExecuteNonQuery();
            Label6.Text = "Record Added Successfully !";
                    }
            }
                    catch(Exception ex){
                        Label6.Text = "Check Data !";
                    }
        }
    }
}