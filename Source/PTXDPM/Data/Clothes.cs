using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class Clothes
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string GroupClothesID { get; set; }
        public string Description { get; set; }
        public string PriceIn { get; set; }
        public string PriceOut { get; set; }
        public string NewPrice { get; set; }
        public string Sex { get; set; }
        public string ColorID { get; set; }
        public string SizeID { get; set; }
        public string Images { get; set; }
        public string MaterialID { get; set; }
        public string Quantity { get; set; }
        public string Order { get; set; }
        public string Status { get; set; }

        public Clothes() { }

        //ham khoi tao cho truong hop them Clothes vao Bag
        public Clothes(string _id)
        {
            this.ID = _id;
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[1];
            a[0] = new SqlParameter("@ID", "" + this.ID + "");
            DataTable dt = db.ReturnDataTable("Clothes_SelectByID", a);
            DataRow dr = dt.Rows[0];
            this.ColorID = dr["ID"].ToString();
            this.Name = dr["Name"].ToString();
            this.GroupClothesID = dr["GroupClothesID"].ToString();
            this.Description = dr["Description"].ToString();
            this.PriceIn = dr["PriceIn"].ToString();
            this.PriceOut = dr["PriceOut"].ToString();
            this.NewPrice = dr["NewPrice"].ToString();
            this.Sex = dr["Sex"].ToString();
            this.ColorID = dr["ColorID"].ToString();
            this.SizeID = dr["SizeID"].ToString();
            this.Images = dr["Images"].ToString();
            this.MaterialID = dr["MaterialID"].ToString();
            //this.Quantity = dr["Quantity"].ToString();
            this.Quantity = "1"; // Trường hợp truy vấn để thêm vào giỏ nên để là 1
            this.Order = dr["Order"].ToString();
            this.Status = dr["Status"].ToString();
        }

        public Clothes(string _id, string _name, string _gID, string _des, string _pricein, string priceout, string _newprice, string _sex, string _colorID, string _sizeID, string _images, string _materialID, string _quantity, string _order, string _status)
        {
            this.ID = _id;
            this.Name = _name;
            this.GroupClothesID = _gID;
            this.Description = _des;
            this.PriceIn = _pricein;
            this.PriceOut = priceout;
            this.NewPrice = _newprice;
            this.Sex = _sex;
            this.ColorID = _colorID;
            this.SizeID = _sizeID;
            this.Images = _images;
            this.MaterialID = _materialID;
            this.Quantity = _quantity;
            this.Order = _order;
            this.Status = _status;
        }

        public List<Clothes> findClothesByOptions()
        {
            List<Clothes> _list = new List<Clothes>();
            return _list;
        }

        public DataTable showDetail()
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[1];
            a[0] = new SqlParameter("@ID", "" + this.ID + "");
            DataTable dt = db.ReturnDataTable("Clothes_SelectByID", a);
            return dt;
        }

        //Lay ra Clothes tu ID
        public Clothes getClothesByID()
        {
            ConnectDB db = new ConnectDB();
            SqlParameter[] a = new SqlParameter[1];
            a[0] = new SqlParameter("@ID", "" + this.ID + "");
            DataTable dt = db.ReturnDataTable("Clothes_SelectByID", a);
            DataRow dr = dt.Rows[0];
            this.ColorID = dr["ID"].ToString();
            this.Name = dr["Name"].ToString();
            this.GroupClothesID = dr["GroupClothesID"].ToString();
            this.Description = dr["Description"].ToString();
            this.PriceIn = dr["PriceIn"].ToString();
            this.PriceOut = dr["PriceOut"].ToString();
            this.NewPrice = dr["NewPrice"].ToString();
            this.Sex = dr["Sex"].ToString();
            this.ColorID = dr["ColorID"].ToString();
            this.SizeID = dr["SizeID"].ToString();
            this.Images = dr["Images"].ToString();
            this.MaterialID = dr["MaterialID"].ToString();
            //this.Quantity = dr["Quantity"].ToString();
            this.Quantity = "1";
            this.Order = dr["Order"].ToString();
            this.Status = dr["Status"].ToString();
            return this;
        }
    }
}
