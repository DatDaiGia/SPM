using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class ConnectDB
    {
        public static SqlConnection connect;
        public static void MoKetNoi()
        {
            if (ConnectDB.connect == null)
                ConnectDB.connect = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Cloth;Integrated Security=True");
            if (ConnectDB.connect.State != ConnectionState.Open)
                ConnectDB.connect.Open();
        }

        public static void DongKetNoi()
        {
            if (ConnectDB.connect != null)
            {
                if (ConnectDB.connect.State == ConnectionState.Open)
                    ConnectDB.connect.Close();
            }
        }


        // Thực thi câu lệnh sql có tham số truyền vào
        public int ExecuteCommand(string query, SqlParameter[] param)
        {
            MoKetNoi();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddRange(param);
            cmd.Connection = connect;
            return cmd.ExecuteNonQuery();
            DongKetNoi();
        }


        // Lấy dữ liệu lên bảng truyền vào proceduce và Parametter
        public DataTable ReturnDataTable(string strSQL, SqlParameter[] a)
        {
            MoKetNoi();
            DataTable dt = new DataTable();
            SqlCommand sqlcmd = new SqlCommand(strSQL, connect);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.AddRange(a);
            SqlDataAdapter sqlda = new SqlDataAdapter(sqlcmd);
            sqlda.Fill(dt);
            return dt;
            DongKetNoi();
        }

        // Lấy dữ liệu bảng truyền vào câu lệnh SQL
        public DataTable ReturnDataTable_NonParameter(string strSQL)
        {
            MoKetNoi();
            DataTable dt = new DataTable();
            SqlCommand sqlcmd = new SqlCommand(strSQL, connect);
            SqlDataAdapter sqlda = new SqlDataAdapter(sqlcmd);
            sqlda.Fill(dt);
            return dt;
            DongKetNoi();
        }

        // Lấy 1 giá trị trong bảng : truyền vào câu lệnh sql, Tên cột cần lấy, giá trị truyền vào câu lệnh sql nếu có
        public string GetData(string query, string get, string input)
        {
            string output = "";
            string query1 = query + input;
            MoKetNoi();
            SqlCommand sqlcmd = new SqlCommand(query1, connect);
            SqlDataReader reader = null;
            reader = sqlcmd.ExecuteReader();
            while (reader.Read())
                output = reader["" + get + ""].ToString();
            DongKetNoi();
            return output;
        }
    }
}

