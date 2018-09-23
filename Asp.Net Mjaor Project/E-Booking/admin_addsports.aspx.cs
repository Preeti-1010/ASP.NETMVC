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

public partial class admin_sports : System.Web.UI.Page
{
    static string connectionstring = ConfigurationManager.ConnectionStrings["GlobalConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connectionstring);
        conn.Open();
        if (imgload.HasFile)
        {

            Stream fs = imgload.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);

            string Savepath = "";
            string imageurl = "";
            if (imgload.PostedFile.ContentLength < 240800)
            {
                string filePath = imgload.PostedFile.FileName;
                //string filename = Path.GetFileName(filePath);
                string ext = Path.GetExtension(filePath);
                string contenttype = "";

                //Set the contenttype based on File Extension

                switch (ext)
                {
                    case ".doc":
                        contenttype = "application/vnd.ms-word";
                        break;

                    case ".docx":
                        contenttype = "application/vnd.ms-word";
                        break;

                    case ".xls":
                        contenttype = "application/vnd.ms-excel";
                        break;

                    case ".xlsx":
                        contenttype = "application/vnd.ms-excel";
                        break;

                    case ".jpg":
                        contenttype = "image/jpg";
                        break;

                    case ".png":
                        contenttype = "image/png";
                        break;

                    case ".gif":
                        contenttype = "image/gif";
                        break;

                    case ".pdf":
                        contenttype = "application/pdf";
                        break;
                }


                if (contenttype != "")
                {
                    Savepath = Path.GetFileName(imgload.PostedFile.FileName); //Server.MapPath("uploaded/" + fuImage.FileName);
                    Savepath = "img" + System.DateTime.Now.ToString("_ddMMyyhhmmss") + ".jpg";
                    Savepath = "~/uploaded/" + Savepath;
                    imgload.SaveAs(Server.MapPath(Savepath));
                }

                // Label1.Text = "not uploaded";

                string cmdtext = @"insert into admin_addsports (image,sports_id,title,description,date,time,category,address,price)
                                  values('" + Savepath + "'," + txtid.Text + ",'" + txttitle.Text + "','" + txtdes.Text + "', '" + txtdate.Text + "', '" + txttime.Text + "','" + txtcat.Text + "', '" + txtadd.Text + "', '" + txtprice.Text + "')";
                SqlCommand cmd = new SqlCommand(cmdtext, conn);
                int result = cmd.ExecuteNonQuery();
                if (result != -1)
                {
                    lblmsg.Text = "Data added succesfully";
                }
                else
                {

                    lblmsg.Text = "Plzz add the details carefully";

                }
            }
        }
    }

}