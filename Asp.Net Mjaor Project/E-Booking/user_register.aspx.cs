using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class register : System.Web.UI.Page
{
    static string connectionstring = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnregister_click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(connectionstring);
        conn.Open();
        String cmdText = @"insert into userregister(name,email, mobileno, password, confirmpass )
        values('" + txtname.Text + "','" + txtemail.Text + "'," + Convert.ToInt64(txtmobileno.Text) + ",'" + txtpassword.Text + "','" + txtconfirmpass.Text + "')";
        SqlCommand cmd = new SqlCommand(cmdText, conn);
        int result = cmd.ExecuteNonQuery();
        if (result != -1)
        {
            lblMessage.Text = "You are registered succesfully";
        }
        else
        {

            lblMessage.Text = "Plzz add the details carefully";

        }
    }

    }



