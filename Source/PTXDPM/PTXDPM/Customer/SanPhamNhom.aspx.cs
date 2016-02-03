using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

namespace PTXDPM.Customer
{
    public partial class SanPhamNhom : System.Web.UI.Page
    {
        OrderClothesUI orderClothesUI = new OrderClothesUI();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Lấy ID từ URL
                string ID = Request.QueryString["ID"];
                // Load danh sách sản phẩm lên listview
                listproduct.DataSource = orderClothesUI.showClothesByGroup(ID);
                listproduct.DataBind();
            }
        }
    }
}