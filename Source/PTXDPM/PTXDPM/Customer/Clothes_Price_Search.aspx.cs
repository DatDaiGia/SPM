using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Data;

namespace PTXDPM.Customer
{
    public partial class Clothes_Price_Search : System.Web.UI.Page
    {
        Cloth clo = new Cloth();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["Pricemin"] = Request.QueryString["Pricemin"];
                ViewState["Price1"] = Request.QueryString["Price1"];
                ViewState["Price2"] = Request.QueryString["Price2"];
                ViewState["Pricemax"] = Request.QueryString["Pricemax"];
                if (ViewState["Pricemin"] != null)
                {
                    grdDSHH.DataSource = clo.Searchmin(Convert.ToInt32(ViewState["Pricemin"]));                  
                    lblTongsoHH.Text = "Tìm được " + clo.Searchmin(Convert.ToInt32(ViewState["Pricemin"])).Rows.Count + " sản phẩm ";
                    grdDSHH.DataBind();
                    grdDSHH1.DataSource = clo.Searchmin(Convert.ToInt32(ViewState["Pricemin"]));
                    lblTongsoHH.Text = "Tìm được " + clo.Searchmin(Convert.ToInt32(ViewState["Pricemin"])).Rows.Count + " sản phẩm ";
                    grdDSHH1.DataBind();    
                }
                else if ((ViewState["Price1"] != null)&& (ViewState["Price2"] != null))
                {
                    grdDSHH.DataSource = clo.Searchnormal(Convert.ToInt32(ViewState["Price1"]), Convert.ToInt32(ViewState["Price2"]));                  
                    lblTongsoHH.Text = "Tìm được " + clo.Searchnormal(Convert.ToInt32(ViewState["Price1"]), Convert.ToInt32(ViewState["Price2"])).Rows.Count + " sản phẩm ";
                    grdDSHH.DataBind();
                }
                else
                {
                    grdDSHH.DataSource = clo.Searchmax(Convert.ToInt32(ViewState["Pricemax"]));                   
                    lblTongsoHH.Text = "Tìm được " + clo.Searchmax(Convert.ToInt32(ViewState["Pricemax"])).Rows.Count + " sản phẩm ";
                    grdDSHH.DataBind();
                }
            }
        }

        protected void grdDSHH_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            grdDSHH.PageIndex = e.NewSelectedIndex;
        }
    }
}