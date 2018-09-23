using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;



public partial class DebitCard : System.Web.UI.Page
{
    static string connectionstring = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void pay_Click(object sender, EventArgs e)
    {
       
        SqlConnection conn = new SqlConnection(connectionstring);
        conn.Open();
        String cmdText = @"insert into payment_info(cardnumber,validthrudate,validthruyear,cardholdername,pin,capcha )
        values('" + txtcardno.Text + "','" + ddlmm.Text + "'," + ddlyy.Text + ",'" + txtname.Text + "','" + txtpin.Text + "','" + txtbelow.Text + "')";
        SqlCommand cmd = new SqlCommand(cmdText, conn);
        int result = cmd.ExecuteNonQuery();

        if (result != -1)
        {
            if (Session["title"] != null && Session["date"] != null && Session["time"] != null && Session["address"] != null && Session["price"] != null)
            {
                Label1.Text = Session["user"].ToString();
                lbltitle.Text = Session["title"].ToString();
                lbldate.Text = Session["date"].ToString();
                lbltime.Text = Session["time"].ToString();
                lbladdress.Text = Session["address"].ToString();
                lblprice.Text = Session["price"].ToString();

            using (MailMessage mm = new MailMessage("ebooking1010@gmail.com", Label1.Text))
            {
                mm.Subject = "Booking from Ebooking" ;
                mm.Body = "Dear  Customer <b>" + lbltitle.Text + "<br>" + lbldate.Text + " <br > " + lbltime.Text + "<br>" + lbladdress.Text + "<br>" + lblprice.Text + "<br> </b><br/>You Booked your ticket successfully ";

                mm.IsBodyHtml = true;
                MailAddressCollection ma = new MailAddressCollection();
                ma.Add("bpbestpreeti@gmail.com");

                mm.Bcc.Add(ma.ToString());
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("ebooking1010@gmail.com", "ebooking");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;

                smtp.Send(mm);
                Page.RegisterStartupScript("UserMsg", "<script>alert('Thank You for Booking your ticket ,check your email. Enjoy!!.');</script>");



            }
            }

           // Response.Redirect("Process.aspx");
        }
        else
        {

            lblMessage.Text = "Invalid details";

        }


       
    }
    
   
}