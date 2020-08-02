using BaoDienTu.Domain;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace BaoDienTu.DAL
{
    public class BaseRepository
    {
        protected IDbConnection conn;
        public BaseRepository()
        {
            //string connectionString = @"Data Source=DESKTOP-FF1278R;Initial Catalog=Online-Newspaper-DB;Integrated Security=True";
            //conn = new SqlConnection(connectionString);
            conn = new SqlConnection(Common.ConnectionString);
        }
    }
}
