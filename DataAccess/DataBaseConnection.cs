using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace DDAC.DataAccess
{
    public class DataBaseConnection
    {
        public SqlConnection cn;
        public DataBaseConnection()
        {
            string sqlconn = System.Configuration.ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
            cn = new SqlConnection(sqlconn);
            cn.Open();
        }
    }
}