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
            string connectionString = @"Data Source=desktop-b8n6v6g\sqlexpress;Initial Catalog=baodientu;Integrated Security=True";
            conn = new SqlConnection(connectionString);
            conn = new SqlConnection(Common.ConnectionString);
        }
    }
}
