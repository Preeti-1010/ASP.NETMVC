using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Book : System.Web.UI.Page
{
    static string connectionstring = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
     

      
    }
    
  
}