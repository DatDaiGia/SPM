using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

namespace PTXDPM.Customer
{
    public partial class Order : System.Web.UI.Page
    {
        OrderControl orderControl;
        protected void Page_Load(object sender, EventArgs e)
        {
            orderControl = (OrderControl)Session["OrderControl"];
            if (Session["Customer"] != null)
            {
                orderControl.customer = (Data.Customer)Session["Customer"];
                lbHoten.Text =" HỌ TÊN: "+orderControl.customer.name.ToUpper();
                lbEmail.Text ="EMAIL: "+orderControl.customer.email;
                lbDiaChi.Text ="ĐỊA CHỈ: "+ orderControl.customer.address;
                lbSoDienThoai.Text = "SỐ ĐIỆN THOẠI: "+orderControl.customer.phoneNumber;
                pnShow.Visible = false;
                pnCustomerDetail.Visible = true;
            }
            else
            pnCustomerDetail.Visible = false;
        }

        protected void btnDatHang_Click(object sender, EventArgs e)
        {  
            if (orderControl.bag== null)
            {
                //Thông báo chưa mua hàng
            }
            else
            {
            }

           if(Session["Customer"]==null)
            orderControl.customer = new Data.Customer(txtHoTen.Text, txtEmail.Text, txtDiaChi.Text, txtSĐT.Text);
            orderControl.order = new Data.Order(orderControl.bag, orderControl.customer, DateTime.Now.ToString());
            Session["Bag"] = null;
            Response.Redirect("FinishOrder.aspx");
        }
    }
}