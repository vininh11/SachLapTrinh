using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SachLapTrinh.Data_Access_Layer
{
    public class BaseDataAccess
    {
        public void FillDataFromStore(DataSet ds, string strStoreName, SqlParameter[] arrParam)
        {
            DBUltilities dbUlts = new DBUltilities();
            SqlConnection sqlConn = dbUlts._connection();

            try
            {
                sqlConn.Open();
                SqlCommand sqlComm = new SqlCommand();
                sqlComm.Connection = sqlConn;
                sqlComm.CommandType = CommandType.StoredProcedure;
                sqlComm.CommandText = strStoreName;
                sqlComm.CommandTimeout = sqlComm.Connection.ConnectionTimeout;

                if (arrParam != null)
                {
                    sqlComm.Parameters.AddRange(arrParam);
                }

                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlComm);
                sqlAdapter.Fill(ds);
                sqlConn.Close();
            }
            catch(Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
            }
        }
    }
}