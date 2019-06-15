using DDAC.DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC.Admin
{
    public partial class PortInfo : System.Web.UI.Page
    {
        DataBaseConnection dc = new DataBaseConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                portinfotbl();
            }

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            string protname = txtportno.Text;
            string portlocation = txtportlocation.Text;


            try {
                string sql = "insert into portinfo(protname, protlocation) values(@portname, @portlocation)";
                SqlCommand cmd = new SqlCommand(sql, dc.cn);
                cmd.Parameters.AddWithValue("@portname", protname);
                cmd.Parameters.AddWithValue("@portlocation", portlocation);

                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Write("<script>alert('Port information Added Successfully!!!');</script>");
                    clear();
                }
            } catch (Exception ex) {
                Response.Write("<script>alert('Error:\n" + ex + "');</script>");
            }
        }

        public void clear()
        {
            txtportno.Text = "";
            txtportlocation.Text = "";
        }

        public void portinfotbl()
        {
            string sql = "Select * from portinfo";
            SqlDataAdapter sda = new SqlDataAdapter(sql, dc.cn);

            DataSet ds = new DataSet();
            sda.Fill(ds);

            gvportinfo.DataSource = ds;
            gvportinfo.DataBind();
        }

        protected void gvportinfo_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}