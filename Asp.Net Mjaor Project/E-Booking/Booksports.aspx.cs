using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class MyDetails : System.Web.UI.Page
{
        static string connectionstring = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            databindgridview();
        }
    }


    protected void databindgridview()
    {
        if (Request.QueryString["sports_id"] != null)
        {
            string user_id = (Request.QueryString["sports_id"]);
            ViewState["sports_id"] = user_id;
            Session["sports_id"] = user_id;
            SqlConnection conn = new SqlConnection(connectionstring);
            conn.Open();
            string cmdText = @"select * from admin_addsports where sports_id=" + user_id;
            SqlCommand cmd = new SqlCommand(cmdText, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            gv1.DataSource = dr;

            gv1.DataBind();


            cmd.Dispose();
            conn.Close();
        }
        if (Session["sports_id"] != null)
        {
            string user_id = Convert.ToString(Session["sports_id"]);
            ViewState["sports_id"] = user_id;
            Session["sports_id"] = user_id;
            SqlConnection conn = new SqlConnection(connectionstring);
            conn.Open();
            string cmdText = @"select * from admin_addsports where sports_id=" + user_id;
            SqlCommand cmd = new SqlCommand(cmdText, conn);

            SqlDataReader dr = cmd.ExecuteReader();
            gv1.DataSource = dr;

            gv1.DataBind();


            cmd.Dispose();
            conn.Close();
        }
    }


    protected void btnproceed_Click(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            if (chk1.Checked == true)
            {
                Response.Redirect("Paynow sports.aspx?sports_id=" + Session["sports_id"].ToString());

            }

        }
        else
        {
            if (chk1.Checked == true)
            {
                Response.Redirect("user_login.aspx");
            }
            else
            {
                lblmsg.Text = "Please Agree to the terms firstly";
            }
        }

    }

   
  
    
}