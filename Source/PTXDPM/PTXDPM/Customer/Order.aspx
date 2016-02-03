<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" EnableEventValidation="false"  Inherits="PTXDPM.Customer.Order" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="pnShow" Width="100%" runat="server">
    <div class="registration_form">
        <h2>THÔNG TIN KHÁCH HÀNG</h2>
        <!-- Form -->
        <form id="registration_form"  method="post">
            <div>
                <label>
                    <asp:TextBox ID="txtHoTen" placeholder="Họ tên" autofocus="autofocus" runat="server" Width="500px" required=""></asp:TextBox>
                </label>
            </div>
            <div>
                <label>
                    <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" Width="500px" required=""></asp:TextBox>
                </label>
            </div>
            <div>
                <label>
                    <asp:TextBox ID="txtDiaChi" placeholder="Địa chỉ" runat="server" Width="500px" required=""></asp:TextBox>
                </label>
            </div>
            <div>
                <label>
                    <asp:TextBox ID="txtSĐT" placeholder="Số điện thoại" runat="server" Width="500px" required=""></asp:TextBox>
                </label>
            </div>
           
           <%-- <input type="submit" value="HOÀN TẤT MUA HÀNG"  id="register-submit">--%>
        </form>
        <!-- /Form -->
    </div>
</asp:Panel>
    <asp:Panel ID="pnCustomerDetail" Width="100%" runat="server">
        <div id ="OrderShowCustomer">
        <div>
                <label>
                    <asp:Label ID="lbHoten" Font-Size="Large" runat="server" Text="Label"></asp:Label>
                </label>
            </div>
            <div>
                <label>
                    <asp:Label ID="lbEmail" Font-Size="Large" runat="server" Text="Label"></asp:Label>
                </label>
            </div>
            <div>
                <label>
                    <asp:Label ID="lbDiaChi" Font-Size="Large" runat="server" Text="Label"></asp:Label>
                </label>
            </div>
            <div>
                <label>
                    <asp:Label ID="lbSoDienThoai" Font-Size="Large" runat="server" Text="Label"></asp:Label>
                </label>
            </div>
            </div>
    </asp:Panel>
     <asp:Button ID="btnDatHang" Width="100px" Height="50px" BackColor="#f58ec5" runat="server" Text="ĐẶT HÀNG"  OnClick="btnDatHang_Click" />
</asp:Content>
