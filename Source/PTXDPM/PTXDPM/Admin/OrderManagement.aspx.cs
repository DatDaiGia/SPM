using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

namespace PTXDPM.Admin
{
    public partial class OrderManagement : System.Web.UI.Page
    {
        ConnectDB db = new ConnectDB();
        OrderControl orderControl = new OrderControl();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ShowListOrder();                
            }
        }


        public void ShowListOrder()
        {
            lbMaDonHang.Visible = false;
            TieuDeChiTiet.Visible = false;
            TieuDeChiTiet1.Visible = false;
            pnShow.Visible = true;
            PnCustomerDetail.Visible = false;
            PnOrderDetail.Visible = false;


            grdOrder.DataSource = orderControl.order.ShowListOrder();
            grdOrder.DataBind();
        }

        protected void grdOrder_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            // Lấy giá trị ID của hàng khi nhấn vào 
            string id = e.CommandArgument.ToString();

            if (e.CommandName == "unpublic")
            {
                orderControl.order.Unpublic(id);
                ShowListOrder();
            }


            if (e.CommandName == "ViewOrderDetail")
            {
                lbMaDonHang.Text ="MÃ HÓA ĐƠN: " +id;
                lbMaDonHang.Visible = true;
                TieuDeChiTiet1.Visible = true;
                TieuDeChiTiet.Visible = true;

                             
                // Hiển thị chi tiết đơn đặt hàng
                grdOrderDetail.DataSource = orderControl.order.ShowDetailOrder(id);
                grdOrderDetail.DataBind();
                PnOrderDetail.Visible = true;


                // Lấy ID của khách hàng 
                string customerID = db.GetData("SELECT CustomerID FROM [Order] WHERE ID= ", "CustomerID", id);
                // Hiển thị chi tiết khách hàng
                grdCustomer.DataSource = orderControl.customer.ShowDetail(customerID);
                grdCustomer.DataBind();
                PnCustomerDetail.Visible = true;
                
            }
            }
        }
    }
