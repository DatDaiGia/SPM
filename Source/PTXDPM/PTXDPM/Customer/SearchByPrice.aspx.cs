using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

namespace PTXDPM.Customer
{
    public partial class SearchByPrice : System.Web.UI.Page
    {
        Cloth clo = new Cloth();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int TimKiemTheoGia = int.Parse(Session["TimKiemTheoGia"].ToString());
                switch (TimKiemTheoGia)
                {
                    case 1:
                        listproduct.DataSource = clo.Searchnormal(0,200000);
                        listproduct.DataBind();
                        break;
                    case 2:
                        listproduct.DataSource = clo.Searchnormal(200000,500000);
                        listproduct.DataBind();
                        break;
                    case 3:
                        listproduct.DataSource = clo.Searchnormal(500000,1000000);
                        listproduct.DataBind();
                        break;
                    case 4:
                        listproduct.DataSource = clo.Searchnormal(1000000,2000000);
                        listproduct.DataBind();
                        break; 
                    case 5:
                        listproduct.DataSource = clo.Searchmax(2000000);
                        listproduct.DataBind();
                        break;
                }
            }
        }
    }
}