using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class Order
    {
        public Bag bag { get; set; }
        public Customer customer { get; set; }
        public string date { get; set; }

        public Order() { }

        // Hàm khởi tạo sử dụng để thêm mới đơn đặt hàng
        public Order(Bag _bag, Customer _customer, string _date)
        {
            this.bag = _bag;
            this.customer = _customer;
            this.date = _date;

            ConnectDB db = new ConnectDB();

            SqlParameter[] b = new SqlParameter[4];
            b[0] = new SqlParameter("@CustomerID", _customer.id);
            b[1] = new SqlParameter("@TotalPrice", bag.totalPrice);
            b[2] = new SqlParameter("@Date", DateTime.Now.ToString("MM/dd/yyyy"));
            b[3] = new SqlParameter("@Status", "1");
            db.ExecuteCommand("Order_Insert", b);

            // Lấy ID của Order vừa thêm vào bên trên
            string orderID = db.GetData("Select Top 1 ID from [dbo].[Order] order by ID desc", "ID", "");
            if (orderID == null) orderID = "1";

            // Sử dụng ID vừa lấy, thêm dữ liệu vào bảng OrderDetail
            SqlParameter[] a = new SqlParameter[3];
            foreach (Cloth item in _bag.listClothes)
            {
                a[0] = new SqlParameter("@OrderID", orderID);
                a[1] = new SqlParameter("@ClothesID", item.id);
                a[2] = new SqlParameter("@Quantity", item.quantity);
                db.ExecuteCommand("OrderDetail_Insert", a);
            }

            // Giảm số lượng các hàng hóa được đặt mua
            SqlParameter[] c = new SqlParameter[2];
            foreach (Cloth item in _bag.listClothes)
            {
                c[0] = new SqlParameter("@ID",item.id);
                c[1] = new SqlParameter("@Quantity",int.Parse(item.quantity));
                db.ExecuteCommand("Clothes_UpdateQuantity", c);
            }
            

        }

        // Hiển thị danh sách đơn đặt hàng
        public DataTable ShowListOrder()
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[3];
            a[0] = new SqlParameter("@Top", "");
            a[1] = new SqlParameter("@where", "Status = 1");
            a[2] = new SqlParameter("@order", "ID desc");
            DataTable dtListOrder = db.ReturnDataTable("Order_SelectByTop", a);
            return dtListOrder;
        }

        public int Unpublic(string ID)
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[1];
            a[0] = new SqlParameter("@ID", ID);
            return db.ExecuteCommand("Order_Delete", a);
        }

        public DataTable ShowDetailOrder(string ID)
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[1];
            a[0] = new SqlParameter("@ID", ID);
            DataTable detailOrder = db.ReturnDataTable("OrderDetail_SelectByOrderID", a);
            return detailOrder;
        }
    }
}
