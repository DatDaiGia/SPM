using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class Bag
    {
        public List<Cloth> listClothes { get; set; }
        public double totalPrice { get; set; }

        public Bag()
        {
            listClothes = new List<Cloth>();
            totalPrice = 0;
        }

        public Bag(List<Cloth> _list, float _total)
        {
            this.listClothes = _list;
            this.totalPrice = _total;
        }

        public void AddCloth(string _id)
        {
            int temp = 1;
            // Kiểm tra nếu Cloth đã tồn tại thì tăng số lượng
            foreach (Cloth item in listClothes)
            {
                if (item.id == _id)
                {
                    item.quantity = (int.Parse(item.quantity) + 1).ToString();
                    temp = 0;
                }
            }
            //Nếu chưa tồm tại thì thêm mới
            if (temp == 1)
            {
                Cloth temp1 = new Cloth(_id);
                this.listClothes.Add(temp1);
            }
        }

        public DataTable ShowDetail()
        {
            DataTable dtBagDetail = new DataTable();
            dtBagDetail.Columns.Add("ID");
            dtBagDetail.Columns.Add("Name");
            dtBagDetail.Columns.Add("Images");
            dtBagDetail.Columns.Add("Quantity");
            dtBagDetail.Columns.Add("TotalPrice");
            foreach (Cloth item in listClothes)
            {
                DataRow dr = dtBagDetail.NewRow();
                dr["ID"] = item.id.ToString();
                dr["Name"] = item.name;
                dr["Images"] = item.images;
                dr["Quantity"] = item.quantity;
                dr["TotalPrice"] = (double.Parse(item.quantity) * double.Parse(item.priceOut)).ToString();
                dtBagDetail.Rows.Add(dr);
            }
            return dtBagDetail;
        }

        public void CaculatorTotalPrice()
        {
            totalPrice = 0; // Tránh trường hợp gọi lại hàm thì tổng tiền sẽ tính tiếp và tăng lên
            foreach (Cloth item in listClothes)
                totalPrice += (double.Parse(item.quantity) * double.Parse(item.priceOut));
        }
    }
}
