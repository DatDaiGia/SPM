using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Data;

namespace Data
{
    public class Customer
    {
        public string id { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string address { get; set; }
        public string phoneNumber { get; set; }
        public string userName { get; set; }
        public string passWord { get; set; }

        public string rule { get; set; }

        public Customer() { }
        public Customer(string _name, string _email, string _address, string _phoneNumber, string _userName, string _password, string _rule)
        {
            this.name = _name;
            this.email = _email;
            this.address = _address;
            this.phoneNumber = _phoneNumber;
            this.userName = _userName;
            this.passWord = _password;
            this.rule = _rule;
        }

        // Hàm khởi tạo cho trường hợp khách hàng không đăng ký tài khoản
        public Customer CreateCustomer(string _name, string _email, string _address, string _phoneNumber)
        {
            this.name = _name;
            this.email = _email;
            this.address = _address;
            this.phoneNumber = _phoneNumber;

            //Thêm mới Customer vào CSDL
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[7];
            a[0] = new SqlParameter("@Name", _name);
            a[1] = new SqlParameter("@Email", _email);
            a[2] = new SqlParameter("@Address", _address);
            a[3] = new SqlParameter("@PhoneNumber", _phoneNumber);
            a[4] = new SqlParameter("@UserName", _email);
            a[5] = new SqlParameter("@Password", "CrazyClothes");
            a[6] = new SqlParameter("@Rule", "0");
            db.ExecuteCommand("Customer_Insert", a);
            string customerID = db.GetData("Select Top 1 ID from [dbo].[Customer] order by ID desc", "ID", "");
            this.id = customerID;
            this.rule = "0";
            return this;
        }

        public int CheckLogin(string usename, string password)
        {
            ConnectDB db = new ConnectDB();
            int rule = -1;
            string query = "select * from Customer where UserName like N'"+usename+"' and [Password] like N'"+password+"'";
            SqlConnection connect = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Cloth;Integrated Security=True");
            connect.Open();
            SqlCommand sqlcmd = new SqlCommand(query, connect);
            SqlDataReader reader = null;
            reader = sqlcmd.ExecuteReader();
            while (reader.Read())
                rule = int.Parse(reader["Rule"].ToString());
            connect.Close();
            return rule;
        }

        public int CheckUsename(string usename)
        {
            string query = "select count(*) from Customer where UserName like N'%"+usename+"%'";
            SqlConnection connect = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Cloth;Integrated Security=True");
            connect.Open();
            SqlCommand sqlcmd = new SqlCommand(query, connect);
            return (int)sqlcmd.ExecuteScalar();
        }

        public Customer FindCustomer(string usename, string password)
        {
            ConnectDB db = new ConnectDB();
            Customer customer = new Customer();
            string query = "select * from Customer where UserName like N'%" + usename + "%' and [Password] like N'%" + password + "%'";
            DataTable dt = null;
            dt = db.ReturnDataTable_NonParameter(query);
            if (dt == null) return null;
            DataRow dr = dt.Rows[0];
            customer.id = dr["ID"].ToString();
            customer.name = dr["Name"].ToString();
            customer.email = dr["Email"].ToString();
            customer.address = dr["Address"].ToString();
            customer.phoneNumber = dr["PhoneNumber"].ToString();
            customer.userName = dr["UserName"].ToString();
            customer.passWord = dr["Password"].ToString();
            customer.rule = dr["Rule"].ToString();
            return customer;
        }

        public int Register(string _name, string _email, string _address, string _phoneNumber, string _userName, string _password)
        {
            //Thêm mới Customer vào CSDL
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[7];
            a[0] = new SqlParameter("@Name", _name);
            a[1] = new SqlParameter("@Email", _email);
            a[2] = new SqlParameter("@Address", _address);
            a[3] = new SqlParameter("@PhoneNumber", _phoneNumber);
            a[4] = new SqlParameter("@UserName", _userName);
            a[5] = new SqlParameter("@Password", _password);
            a[6] = new SqlParameter("@Rule", "0");
            return db.ExecuteCommand("Customer_Insert", a);
        }
        public DataTable ShowDetail(string ID)
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[1];
            a[0] = new SqlParameter("@ID", ID);
            DataTable detailCustomer = db.ReturnDataTable("Customer_SelectByID", a);
            return detailCustomer;
        }
    }
}
