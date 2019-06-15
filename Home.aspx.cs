using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DDAC
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                setImageUrl();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            setImageUrl();
        }

        public void setImageUrl()
        {
            Random ran = new Random();
            int i = ran.Next(1, 5);
            Image1.ImageUrl = "~/images/" + i.ToString() + ".jpg";
        }
    }
}