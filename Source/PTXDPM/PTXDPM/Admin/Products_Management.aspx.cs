using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data;
using System.Data;
using System.Data.SqlClient;


namespace PTXDPM.Admin
{
    public partial class Products_Management : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Cloth;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
        public void ShowData()
        {

        }

        public void luuanh()
        {
            string filename;
            if (uphinh.FileName != "")
            {
                filename = Server.MapPath("../Customer/Images/" + uphinh.FileName);
                uphinh.PostedFile.SaveAs(filename);
            }
        }
        private void showMessage(string p)
        {
            ClientScript.RegisterClientScriptBlock(this.ClientScript.GetType(), "", "<script language='javascript'>alert('" + p + "');</script>");
        }

        public void Loaddata()
        {
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter("Select * from Clothes", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridView1.PageIndex = e.NewSelectedIndex;
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {

            if (conn.State == ConnectionState.Closed)
                conn.Open();
            try
            {
                luuanh();
                SqlCommand cmd = new SqlCommand("sp_addClothes", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter p = new SqlParameter("Name", txtname.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("GroupClothesID", drgroupclothes.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("Description", txtdescription.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("PriceIN", txtpricein.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("PriceOUT", txtpriceout.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("NewPrice", txtnewprice.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("Sex", drsex.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("ColorID", drcolorid.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("SizeID", drsizeid.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("Images", uphinh.FileName.ToString());
                cmd.Parameters.Add(p);
                p = new SqlParameter("MaterialID", drmaterialid.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("Quantity", txtquantity.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("Status", txtstatus.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("Order", txtorder.Text);
                cmd.Parameters.Add(p);
                p = new SqlParameter("New", txtnew.Text);
                cmd.Parameters.Add(p);
                if (cmd.ExecuteNonQuery() > 0)
                {
                    showMessage("Thêm mới thành công!!!");
                    Loaddata();
                }
                else
                    lblerror.Text = "Lỗi!";
            }
            catch (Exception)
            {
                showMessage("Đã tồn tại mã sản phẩm! Mời nhập lại");
            }
        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            txtname.Text = "";
            txtdescription.Text = "";
            txtpricein.Text = "";
            txtpriceout.Text = "";
            txtnewprice.Text = "";
            txtquantity.Text = "";
            txtstatus.Text = "";
            txtorder.Text = "";
            txtnew.Text = "";
        }
    }

}