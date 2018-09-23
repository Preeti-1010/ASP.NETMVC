using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_login : System.Web.UI.Page
{
    static string connectionstring = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connectionstring);
        conn.Open();
        string cmdtext = " select *from admin_login where firstname='" + txtadminid.Text + "' and password='" + txtpassword.Text + "'";
        SqlCommand cmd = new SqlCommand(cmdtext, conn);
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sd.Fill(ds);

        if (ds.Tables[0].Rows.Count == 1)
        {

            string str_email = ds.Tables[0].Rows[0][1].ToString();
            string str_pass = ds.Tables[0].Rows[0][2].ToString();
            Session["user"] = str_email + " " + str_pass;

            Response.Redirect("admin_operation.aspx");
        }
        else
        {
            lblmsg.Text = "Invailid User Id or Password";

            lblmsg.Visible = true;
        }





    }
}