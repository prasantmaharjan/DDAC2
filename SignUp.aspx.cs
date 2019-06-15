using DDAC.DataAccess;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC
{
    public partial class SignUp : System.Web.UI.Page
    {
        DataBaseConnection dc = new DataBaseConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            string fname = txtfname.Text;
            string mname = txtmname.Text;
            string lname = txtlname.Text;
            string uaddress = txtaddress.Text;
            string contactno = txtcontactno.Text;
            string uemail = txtemail.Text;
            string uname = txtuname.Text;
            string upass = txtpass.Text;

            try
            {
                string sql = "Insert into reg(fname,midname,lname,uaddress,email,contactno,uname,upass) values(@fname,@mname,@lname,@uaddress,@email,@contactno,@uname,@upass)";
                SqlCommand cmd = new SqlCommand(sql, dc.cn);
                cmd.Parameters.AddWithValue("@fname", fname);
                cmd.Parameters.AddWithValue("@mname", mname);
                cmd.Parameters.AddWithValue("@lname", lname);
                cmd.Parameters.AddWithValue("@uaddress", uaddress);
                cmd.Parameters.AddWithValue("@contactno", contactno);
                cmd.Parameters.AddWithValue("@email", uemail);
                cmd.Parameters.AddWithValue("@uname", uname);
                cmd.Parameters.AddWithValue("@upass", upass);

                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    clear();
                    Response.Write("<script>alert('User Registration is Successfully!!!');</script>");
                    //Response.Redirect("~/View/Admin/Registration.aspx");
                }
                else
                {
                    Response.Write("<script>alert('User Registration isnot Successfully!!!');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error:\n" + ex + "');</script>");
            }
        }

        public void clear()
        {
            txtfname.Text=string.Empty;
            txtmname.Text= string.Empty;
            txtpass.Text= string.Empty;
            txtaddress.Text= string.Empty;
            txtcontactno.Text= string.Empty;
            txtemail.Text= string.Empty;
            txtuname.Text= string.Empty;
            txtpass.Text= string.Empty;
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp.aspx", false);
        }
    }
}