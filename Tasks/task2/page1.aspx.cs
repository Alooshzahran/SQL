using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _14_12_read_and_write_to_data_base
{
    public partial class page1 : System.Web.UI.Page
    {

        protected void UploadFile(object sender, EventArgs e)
        {

          

          
            try
            {
                string folderPath = Server.MapPath("~/Files/");

                //Check whether Directory (Folder) exists.
                if (!Directory.Exists(folderPath))
                {
                    //If Directory (Folder) does not exists Create it.
                    Directory.CreateDirectory(folderPath);
                }

                //Save the File to the Directory (Folder).
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

                //Display the Picture in Image control.
                Image1.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);
                SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = batool ; integrated security=SSPI");

                //SqlCommand comand = new SqlCommand("select * from name_and_password", cc);
                cc.Open();
                string query = "insert into name_and_password (name,password) values ('" + TextBox1.Text + "','" + "Files/" + Path.GetFileName(FileUpload1.FileName) + "') ";
                SqlCommand cmd = new SqlCommand(query, cc);
                cmd.ExecuteNonQuery();
                cc.Close();
            }
            catch (SqlException q)
            {
                Response.Write(q.Message);
            }

        }

       

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection cc = new SqlConnection("data source = DESKTOP-V50HPE1\\SQLEXPRESS; database = batool ; integrated security=SSPI");

            //SqlCommand comand = new SqlCommand("select * from name_and_password", cc);
            cc.Open();
         
            string query = "select * from  name_and_password";
            SqlCommand cmd = new SqlCommand(query, cc);
            SqlDataReader sdr = cmd.ExecuteReader();
            string table = "<table table table-striped> <tr> <th>name</th><th>password</th></tr>";
            while (sdr.Read())
            {
                table += $"<tr><td>{sdr[0]}</td><td><img src ={sdr[1]} width=200px; height=200px /></td> </tr>";
            }

            table += "</table>";
            Label5.Text = table;
            cc.Close();
        }


    }
}