using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class Sales
    {
        public string id { get; set; }
        public string title { get; set; }
        public string startDate { get; set; }
        public string outOfDate { get; set; }
        public string discount { get; set; }

        public Sales() { }
        public Sales(string _id, string _title, string _startDate, string _outOfDate, string _discount)
        {
            this.id = _id;
            this.title = _title;
            this.startDate = _startDate;
            this.outOfDate = _outOfDate;
            this.discount = _discount;
        }

        public void Edit(string _id, string _title, string _startDate, string _outOfDate, string _discount)
        { }

        public float GetNewPrice(string _ClothesID)
        {
            float newPrice = 0;
            return newPrice;
        }
    }
}
