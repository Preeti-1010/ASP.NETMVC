using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["user"] == null)
        {
           // Response.Redirect("user_login.aspx");
        }
        else
        {

        }
       
    }


    protected void rbmovive_CheckedChanged(object sender, EventArgs e)
    {
        if (rbmovie.Checked == true)
        {

        //    ddl_movie.Visible = true;
          //  ddl_movie_date.Visible = true;
            Response.Redirect("");
        }
        
    }
    protected void rbevent_CheckedChanged(object sender, EventArgs e)
    {
        if (rbevent.Checked == true)

        {
           // ddl_event.Visible = true;
            //ddl_movie.Visible = false;
            //ddl_movie_date.Visible = false;
            Response.Redirect("Events.aspx");
            
        }

        

    }
    protected void rbsports_CheckedChanged(object sender, EventArgs e)
    {
        if (rbsports.Checked == true)
        {
            /*ddl_sports.Visible = true;
            ddl_event.Visible = false;
            ddl_movie.Visible = false;
            ddl_movie_date.Visible = false;*/
            Response.Redirect("sports.aspx");
        }
       
    }


   
    protected void proceedbtn_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "Gorakhpur";
        ddlcity.Visible = false;
        lblmsg.Text = "Gorakhpur";
        ddlcountry.Visible = false;
        ddlstate.Visible = false;
        lblc.Visible = false;
        lblcity.Visible = false;
        lblstate.Visible = false;
    }
}