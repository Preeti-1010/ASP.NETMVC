using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
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

        SqlConnection conn = new SqlConnection(connectionstring);
        conn.Open();
        string cmdText = @"select * from admin_addsports";
        SqlCommand cmd = new SqlCommand(cmdText, conn);

        SqlDataReader dr = cmd.ExecuteReader();
        gv1.DataSource = dr;

        gv1.DataBind();


        cmd.Dispose();
        conn.Close();
    }

    protected void linkbtn_Click(object sender, EventArgs e)
    {
        ImageButton linkbtnedit = (ImageButton)sender;
        GridViewRow gvr = (GridViewRow)linkbtnedit.NamingContainer;
        string user_id = ((Label)gvr.FindControl("lblid")).Text;
        Response.Redirect("Booksports.aspx?sports_id=" + user_id);
    }
}