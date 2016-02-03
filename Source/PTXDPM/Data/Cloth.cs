using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class Cloth
    {
        public string id { get; set; }
        public string name { get; set; }
        public string groupClothesID { get; set; }
        public string description { get; set; }
        public string priceIn { get; set; }
        public string priceOut { get; set; }
        public string newPrice { get; set; }
        public string sex { get; set; }
        public string colorID { get; set; }
        public string sizeID { get; set; }
        public string images { get; set; }
        public string materialID { get; set; }
        public string quantity { get; set; }
        public string order { get; set; }
        public string status { get; set; }

        public Cloth() { }

        //hàm khởi tạo trong trường hợp thêm Cloth vào Bag
        public Cloth(string _id)
        {
            this.id = _id;
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[1];
            a[0] = new SqlParameter("@ID", "" + this.id + "");
            DataTable dt = db.ReturnDataTable("Clothes_SelectByID", a);
            DataRow dr = dt.Rows[0];
            this.colorID = dr["ID"].ToString();
            this.name = dr["Name"].ToString();
            this.groupClothesID = dr["GroupClothesID"].ToString();
            this.description = dr["Description"].ToString();
            this.priceIn = dr["PriceIn"].ToString();
            this.priceOut = dr["PriceOut"].ToString();
            this.newPrice = dr["NewPrice"].ToString();
            this.sex = dr["Sex"].ToString();
            this.colorID = dr["ColorID"].ToString();
            this.sizeID = dr["SizeID"].ToString();
            this.images = dr["Images"].ToString();
            this.materialID = dr["MaterialID"].ToString();
            this.quantity = "1"; // Trường hợp truy vấn để thêm vào giỏ nên số lượng cần lấy là 1
            this.order = dr["Order"].ToString();
            this.status = dr["Status"].ToString();
        }

        public static Cloth FindClothByID(string _id)
        {
            Cloth temp = new Cloth();
            temp.id = _id;
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[1];
            a[0] = new SqlParameter("@ID", "" + temp.id + "");
            DataTable dt = db.ReturnDataTable("Clothes_SelectByID", a);
            DataRow dr = dt.Rows[0];
            temp.colorID = dr["ID"].ToString();
            temp.name = dr["Name"].ToString();
            temp.groupClothesID = dr["GroupClothesID"].ToString();
            temp.description = dr["Description"].ToString();
            temp.priceIn = dr["PriceIn"].ToString();
            temp.priceOut = dr["PriceOut"].ToString();
            temp.newPrice = dr["NewPrice"].ToString();
            temp.sex = dr["Sex"].ToString();
            temp.colorID = dr["ColorID"].ToString();
            temp.sizeID = dr["SizeID"].ToString();
            temp.images = dr["Images"].ToString();
            temp.materialID = dr["MaterialID"].ToString();
            temp.quantity = "1"; // Trường hợp truy vấn để thêm vào giỏ nên số lượng cần lấy là 1
            temp.order = dr["Order"].ToString();
            temp.status = dr["Status"].ToString();
            return temp;
        }

        public Cloth(string _id, string _name, string _gID, string _des, string _pricein, string priceout, string _newprice, string _sex, string _colorID, string _sizeID, string _images, string _materialID, string _quantity, string _order, string _status)
        {
            this.id = _id;
            this.name = _name;
            this.groupClothesID = _gID;
            this.description = _des;
            this.priceIn = _pricein;
            this.priceOut = priceout;
            this.newPrice = _newprice;
            this.sex = _sex;
            this.colorID = _colorID;
            this.sizeID = _sizeID;
            this.images = _images;
            this.materialID = _materialID;
            this.quantity = _quantity;
            this.order = _order;
            this.status = _status;
        }

        public List<Cloth> FindClothByOptions()
        {
            List<Cloth> _list = new List<Cloth>();
            return _list;
        }

        public DataTable ShowDetail()
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[1];
            a[0] = new SqlParameter("@ID", "" + this.id + "");
            DataTable dtClothDetail = db.ReturnDataTable("Clothes_SelectByID", a);
            return dtClothDetail;
        }
        // Hàm tìm kiếm hàng giá <200
        public DataTable Searchmin(int InPrice)
        {
            try
            {
                ConnectDB.MoKetNoi();
                SqlDataAdapter da = new SqlDataAdapter("Select * from Clothes where PriceOUT < '" + InPrice + "'", ConnectDB.connect);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ConnectDB.DongKetNoi();
            }
        }
        // Hàm tìm kiếm hàng 200<x<500
        public DataTable Searchnormal(int Price1, int Price2)
        {
            try
            {
                ConnectDB.MoKetNoi();
                SqlDataAdapter da = new SqlDataAdapter("Select * from Clothes where PriceOUT < '" + Price2 + "' and PriceOUT > '" + Price1 + "'", ConnectDB.connect);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ConnectDB.DongKetNoi();
            }
        }
        // Hàm tìm kiếm hàng x>500
        public DataTable Searchmax(int InPrice)
        {
            try
            {
                ConnectDB.MoKetNoi();
                SqlDataAdapter da = new SqlDataAdapter("Select * from Clothes where PriceOUT > '" + InPrice + "'", ConnectDB.connect);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ConnectDB.DongKetNoi();
            }
        }
        // Hàm tìm kiếm hàng hóa theo nhóm
        public DataTable showdata(int ID)
        {
            try
            {
                ConnectDB.MoKetNoi();
                SqlDataAdapter da = new SqlDataAdapter("Select * from Clothes where GroupClothesID = '" + ID + "'", ConnectDB.connect);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ConnectDB.DongKetNoi();
            }
        }
        // Hàm tìm kiếm theo tên

        public DataTable SearchName(string s)
        {
            try
            {
                ConnectDB.MoKetNoi();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter("Select * from Clothes where Clothes.Name like'%" + s + "%'", ConnectDB.connect);
                da.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                ConnectDB.DongKetNoi();
            }
        }
    }
}
