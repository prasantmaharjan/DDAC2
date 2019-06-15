using DDAC.DataAccess;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC.Admin
{
    public partial class Admin1 : System.Web.UI.Page
    {
        DataBaseConnection dc = new DataBaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string uname = txtusername.Text;
            string upass = txtpass.Text;

            string sql = "select * from admintbl";

            SqlCommand cmd = new SqlCommand(sql, dc.cn);
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                if (sdr.GetString(1).Equals(uname) && sdr.GetString(2).Equals(upass))
                {
                    Response.Write("<script>alert('Welcome!! To Admin Dashboard!!!')</script>");
                    Response.Redirect("~/Admin/Dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('User Name or Password is not correct!!!')</script>");
                }
            }
        }
    }
}