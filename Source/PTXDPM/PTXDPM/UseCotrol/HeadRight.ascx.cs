using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;
using System.Data;

namespace PTXDPM.UseCotrol
{
    public partial class HeadRight : System.Web.UI.UserControl
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbDangXuat.Visible = false;
                if (Session["Bag"] == null)
                {
                    lbTongTien.Text = "0 VNĐ";
                    lbSoLuong.Text = "0 hàng";
                }
                else
                {
                    Bag gh = (Bag)Session["Bag"];
                    gh.CaculatorTotalPrice();
                    lbTongTien.Text = (gh.totalPrice).ToString() + " VNĐ";
                    lbSoLuong.Text = gh.listClothes.Count().ToString() + " hàng";
                }

                if (Session["Customer"] != null)
                {
                    Data.Customer customer = (Data.Customer)Session["Customer"];
                    lbLogin.Text = customer.name.ToUpper();
                    lbDangXuat.Visible = true;
                    lbRegister.Visible = false;
                }
            }
        }

        protected void btn_search_Command(object sender, CommandEventArgs e)
        {          
                if (btn_search.CommandName == "TimKiem")
                {
                    string Name = txtsearch.Text;
                    Response.Redirect("../Customer/GroupClothes.aspx?Name=" + Name+"");
                }
        }      
    }
}