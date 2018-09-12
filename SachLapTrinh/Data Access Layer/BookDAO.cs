using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SachLapTrinh.Data_Access_Layer
{
    public class BookDAO
    {
        public DataSet GetBookInfo()
        {
            DataSet dsBookInfo = new DataSet();

            SqlParameter param1 = new SqlParameter();

            return dsBookInfo;
        }
    }
}