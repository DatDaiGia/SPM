using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;

namespace PTXDPM.Customer
{
    public partial class ClothDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OrderControl orderControl = (OrderControl)Session["OrderControl"];
            string ID = Request.QueryString["ID"];
            if (!IsPostBack)
            {
                ConnectDB db = new ConnectDB();
                dlDetailCloth.DataSource = orderControl.ShowClothByID(ID.ToString());
                dlDetailCloth.DataBind();
            }
        }
    }
}