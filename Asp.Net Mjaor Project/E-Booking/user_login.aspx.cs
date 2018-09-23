using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    static string connectionstring = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Sign_In_Click(object sender, EventArgs e)
    {
        
            SqlConnection conn = new SqlConnection(connectionstring);
            conn.Open();
            string cmdtext = " select *from userregister where email='" + txtemail.Text + "' and password='" + txtpassword.Text + "'";
            SqlCommand cmd = new SqlCommand(cmdtext, conn);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sd.Fill(ds);

            if (ds.Tables[0].Rows.Count == 1)
            {

                string str_email = ds.Tables[0].Rows[0][2].ToString();
                string str_pass = ds.Tables[0].Rows[0][4].ToString();
                Session["user"] = str_email;

                if (Session["addevent_id"] != null)
                {
                    Response.Redirect("Book.aspx");
                }

                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                lblMessage.Text = "Invailid User Id or Password";

                lblMessage.Visible = true;
            }

        }


    protected void linkguest_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
}
