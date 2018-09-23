using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Paynow_sports : System.Web.UI.Page
{

    static string connectionstring = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("user_login.aspx");
        }

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
            ViewState["addevent_id"] = user_id;

            SqlConnection conn = new SqlConnection(connectionstring);
            conn.Open();
            string cmdText = @"select * from admin_addsports where sports_id=" + user_id;
            SqlCommand cmd = new SqlCommand(cmdText, conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 1)
            {

                Session["title"] = ds.Tables[0].Rows[0][2].ToString();
                Session["date"] = ds.Tables[0].Rows[0][4].ToString();
                Session["time"] = ds.Tables[0].Rows[0][5].ToString();
                Session["address"] = ds.Tables[0].Rows[0][7].ToString();
                Session["price"] = ds.Tables[0].Rows[0][8].ToString();

                gv1.DataSource = ds;

                gv1.DataBind();
            }

            cmd.Dispose();
            conn.Close();
        }
    }

    protected void btnpay_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
}