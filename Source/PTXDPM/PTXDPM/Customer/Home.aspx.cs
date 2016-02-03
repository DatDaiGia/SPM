using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

namespace PTXDPM.Customer
{
    public partial class Home : System.Web.UI.Page
    {
        OrderControl orderControl = new OrderControl();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["state"];
            if(ID!=null)
            {
                Session["Customer"] = null;
            }
            if (!IsPostBack)
            {
                dlCloth.DataSource = orderControl.ShowNewCloth(8);
                dlCloth.DataBind();

                dlSpeciaCloth.DataSource = orderControl.ShowSpeciaCloth(8);
                dlSpeciaCloth.DataBind();
            }
            Session["OrderControl"] = orderControl;
        }

        protected void img_search_Command1(object sender, CommandEventArgs e)
        {
            if (img_search.CommandName == "Timkiem")
            {
                Session["TimKiemTheoGia"] = rblTimGiaTrongKhoan.SelectedValue.ToString();
                Response.Redirect("SearchByPrice.aspx");
                //if (rad200.Checked == true && rad350.Checked == true)
                //{
                //    Response.Write("<script language='javascript'>alert('Chỉ được tìm kiếm theo một yêu cầu')</script>");
                //    Response.Redirect("../Customer/Home.aspx");
                //}
                //else if (rad350.Checked == true && rad500.Checked == true)
                //{
                //    Response.Write("<script language='javascript'>alert('Chỉ được tìm kiếm theo một yêu cầu')</script>");
                //    Response.Redirect("../Customer/Home.aspx");
                //}
                //else if (rad200.Checked == true && rad500.Checked == true)
                //{
                //    Response.Write("<script language='javascript'>alert('Chỉ được tìm kiếm theo một yêu cầu')</script>");
                //    Response.Redirect("../Customer/Home.aspx");
                //}
                //else if (rad200.Checked == true)
                //{
                //    string s1 = "200000";
                //    Response.Redirect("../Customer/Clothes_Price_Search.aspx?Pricemin="+ s1 +"");
                //}
                //else if (rad350.Checked == true)
                //{
                //    string s1 = "200000";
                //    string s2 = "500000";
                //    Response.Redirect("../Customer/Clothes_Price_Search.aspx?Price1="+ s1 +"&&Price2="+ s2 +"");
                //}
                //else
                //{
                //    string s1 = "500000";
                //    Response.Redirect("../Customer/Clothes_Price_Search.aspx?Pricemax="+ s1 +"");
                //}
            }
        }
    }
}