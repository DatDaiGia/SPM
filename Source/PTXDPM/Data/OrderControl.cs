using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    // Lớp điều khiển
    public class OrderControl
    {
        public Order order { get; set; }
        public Bag bag { get; set; }
        public Customer customer { get; set; }
        public Cloth chonseCloth { get; set; }

        public OrderControl() {
            this.order = new Order();
            this.customer = new Customer();
            this.bag = new Bag();
        }

        public OrderControl(Order _order,Bag _bag,Customer _customer,Cloth _chonseClothes)
        {
            this.order = _order;
            this.bag = _bag;
            this.customer = _customer;
            this.chonseCloth = _chonseClothes;
        }

        // Hàm lấy danh sách sản phẩm mới truyền vào số lượng sản phẩm muốn lấy
        public DataTable ShowNewCloth(int _sl)
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[3];
            a[0] = new SqlParameter("@Top", ""+_sl+"");
            a[1] = new SqlParameter("@where", "status =1");
            a[2] = new SqlParameter("@order", "[Order] Desc");
            DataTable dtNewCloth = db.ReturnDataTable("Clothes_SelectByTop", a);
            return dtNewCloth;
        }

        // Hàm lấy danh sách sản phẩm theo nhóm sản phẩm, truyền vào nhóm sản phẩm
        public DataTable ShowClothByGroup(string _groupID)
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[3];
            a[0] = new SqlParameter("@Top", "");
            a[1] = new SqlParameter("@where", "GroupClothesID ="+_groupID+"");
            a[2] = new SqlParameter("@order", "[Order] Desc");
            DataTable dt = db.ReturnDataTable("Clothes_SelectByTop", a);
            return dt;
        }

        // Hàm lấy chi tiết sản phẩm, truyền vào mã sản phẩm
        public DataTable ShowClothByID(string _id)
        {
           chonseCloth = Cloth.FindClothByID(_id);
           return chonseCloth.ShowDetail();
        }

        // Hàm thêm sản phẩm vào giỏ hàng, truyền vào ID sản phẩm
        public void AddClothToBag(string _id)
        {
            bag.AddCloth(_id);
        }
        // Hàm tạo đơn hàng 
        public void CreateOrder(string _name,string _email,string _address,string _phonenumber)
        {
            string date = "";
            customer = customer.CreateCustomer(_name, _email, _address, _phonenumber);
            order = new Order(bag, customer, date);
        }

        // Hàm lấy danh sách nhóm sản phẩm, truyền vào số lượng cần lấy
        public DataTable ShowSpeciaCloth(int _sl)
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[3];
            a[0] = new SqlParameter("@Top", "" + _sl + "");
            a[1] = new SqlParameter("@where", "status =1 and New = 1");
            a[2] = new SqlParameter("@order", "[Order] Desc");
            DataTable dtNewCloth = db.ReturnDataTable("Clothes_SelectByTop", a);
            return dtNewCloth;
        }
    }
}
