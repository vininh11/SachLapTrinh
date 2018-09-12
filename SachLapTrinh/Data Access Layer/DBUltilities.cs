using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace SachLapTrinh.Data_Access_Layer
{
    public class DBUltilities
    {
        public SqlConnection _connection()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            return conn;
        }
    }
}