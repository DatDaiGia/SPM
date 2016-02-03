using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

namespace PTXDPM.Customer
{
    public partial class Login : System.Web.UI.Page
    {
        Data.Customer customer = new Data.Customer();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbThongBao.Visible = false;
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            int kt = customer.CheckLogin(txtUsename.Text,txtPassword.Text);
            if (kt == 0)
            {
                Session["Customer"] = customer.FindCustomer(txtUsename.Text, txtPassword.Text);
                Response.Redirect("Home.aspx");
            }
            else if (kt == 1)
            {
                Response.Redirect("~/Admin/OrderManagement.aspx");
            }
            else if (kt == 2)
            {
                Response.Redirect("~/Admin/OrderManagement.aspx");
            }
            else
            {
                DisplayError();
            } 
        }

        private void DisplayError()
        {
            ClientScript.RegisterClientScriptBlock(this.ClientScript.GetType(), "", "<script language='javascript'>alert('Tên đăng nhập hoặc Mật khẩu không đúng');</script>");
        }
    }
}