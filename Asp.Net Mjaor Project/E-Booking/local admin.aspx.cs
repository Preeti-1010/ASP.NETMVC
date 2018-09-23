using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class local_admin : System.Web.UI.Page
{
    string connectionstring = "Data Source=HARSH\\SQLEXPRESS;Initial Catalog=e_booking;User Id=surbhi; Password=surbhi";
    protected void Page_Load(object sender, EventArgs e)
    {      
       
        SqlConnection con = new SqlConnection(connectionstring);
       SqlCommand cmd = new SqlCommand("select * from local_admin", con);
        
        con.Open();

        SqlDataReader sdr = cmd.ExecuteReader();


        gvlocaladmin.DataSource = sdr;
        gvlocaladmin.DataBind();
    }

       
}