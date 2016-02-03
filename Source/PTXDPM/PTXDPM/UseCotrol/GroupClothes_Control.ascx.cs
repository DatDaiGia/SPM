using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Data;

namespace PTXDPM.UseCotrol
{
    public partial class GroupClothes_Control : System.Web.UI.UserControl
    {
        public SqlDataAdapter da;
        public DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Loaddata();
            }
        }        
        public void Loaddata()
        {
            try
            {
                ConnectDB.MoKetNoi();
                da = new SqlDataAdapter("select * from GroupClothes", ConnectDB.connect);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    grvgroupclothes.DataSource = dt;
                    grvgroupclothes.DataBind();
                }
                else
                {
                    lblerror.Text = "Loi";
                }
            }
            catch (Exception ex)
            {
                lblerror.Text = "Loi" + ex.Message;
            }
            finally
            {
                ConnectDB.DongKetNoi();
                da.Dispose();
                dt.Dispose();
            }
        }

    }
}