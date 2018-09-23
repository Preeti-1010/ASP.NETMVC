using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class view_movies : System.Web.UI.Page
{
  // string connectionstring = "Data Source=HARSH\\SQLEXPRESS;Initial Catalog=e_booking;User Id=surbhi; Password=surbhi";
    static string connectionstring = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionstring);
        SqlCommand cmd = new SqlCommand("Select * from m_catgory1",con);
       //SqlCommand cmd = new SqlCommand("select * from cinema_halls,m_catgory where cinema_halls.m_cat_id=m_catgory.m_cat_id", con);
        //SqlCommand cmd = new SqlCommand("select * from cinema_halls UNION select * from m_category ", con);

        con.Open();

        SqlDataReader sdr = cmd.ExecuteReader();


        gvmovies.DataSource = sdr;
        gvmovies.DataBind();
    }
    protected void gvmovies_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}