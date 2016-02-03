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
    public partial class GroupClothes : System.Web.UI.Page
    {

        Cloth clo = new Cloth();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ConnectDB db = new ConnectDB();
                ViewState["id"] = Request.QueryString["id"];
                ViewState["Name"] = Request.QueryString["Name"];
                if (ViewState["id"] != null)
                {
                    listproduct.DataSource = clo.showdata(Convert.ToInt32(ViewState["id"]));
                    listproduct.DataBind();
                }
                else 
                {
                    listproduct.DataSource = clo.SearchName(Convert.ToString(ViewState["Name"]));
                    listproduct.DataBind();
                }
            }
        }       
    }
}