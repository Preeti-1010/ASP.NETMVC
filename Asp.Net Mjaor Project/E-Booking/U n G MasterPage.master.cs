using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class U_n_G_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            lnklogout.Visible = true;
            lbluseremail.Text = Session["user"].ToString();
            lbluseremail.Visible = true;
            lbtnlog.Visible = false;
        }
        else
        {
            lbtnlog.Visible = true;
           
            
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_register.aspx");
    }
    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Session.Abandon();
        Response.Redirect("user_login.aspx");
        lnklogout.Visible = false;
        lbluseremail.Text = "";
    }
    protected void lbtnlog_Click(object sender, EventArgs e)
    {
        Response.Redirect("user_login.aspx");
    }
}
