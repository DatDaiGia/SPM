<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="OrderManagement.aspx.cs" Inherits="PTXDPM.Admin.OrderManagement" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ChiTietHoaDon">
    <h3>QUẢN LÝ HÓA ĐƠN</h3>
    <asp:Panel ID="pnShow" Width="100%" runat="server">
        <asp:DataGrid ID="grdOrder" runat="server" AllowPaging="true" AutoGenerateColumns="false" CellPadding="4" ForeColor="#33333" Width="100%" Font-Size="12" OnItemCommand="grdOrder_ItemCommand">
            <AlternatingItemStyle BackColor="White" />
            <HeaderStyle CssClass="trHeader" />
            <Columns>
                <asp:BoundColumn DataField="ID" HeaderText="MÃ HÓA ĐƠN"></asp:BoundColumn>
                <asp:BoundColumn DataField="CustomerID" HeaderText="MÃ KHÁCH HÀNG"></asp:BoundColumn>
                <asp:BoundColumn DataField="TotalPrice" HeaderText="TỔNG TIỀN"></asp:BoundColumn>
                <asp:BoundColumn DataField="Date" HeaderText="NGÀY GIAO DỊCH"></asp:BoundColumn>
                <asp:BoundColumn DataField="Status" HeaderText="TRẠNG THÁI"></asp:BoundColumn>
                <asp:TemplateColumn>
                    <HeaderTemplate>CHỌN CHỨC NĂNG</HeaderTemplate>
                    <ItemTemplate>
                        <asp:LinkButton runat="server" ID="lbt2" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID") %>' CommandName="unpublic" Text="ĐÃ DUYỆT" />
                        |   
                        <asp:LinkButton runat="server" ID="lbt3" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID") %>' CommandName="ViewOrderDetail" Text="XEM CHI TIẾT" />
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <EditItemStyle BackColor="#2461bF" />
            <HeaderStyle BackColor="#0078D7" Font-Bold="true" ForeColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <PagerStyle BackColor="#F3FBFE" ForeColor="Blue" HorizontalAlign="Center" Mode="NumericPages" />
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="true" ForeColor="#33333" />
        </asp:DataGrid>
    </asp:Panel>
        </div>
    <div class="ChiTietHoaDon">
        <div>
            <asp:Label ID="lbMaDonHang" Font-Size="Large" runat="server" Text="Label"></asp:Label>
        </div>
        <h4 id="TieuDeChiTiet" runat="server">CHI TIẾT KHÁCH HÀNG</h4>
        </asp:Panel>
        <asp:Panel ID="PnCustomerDetail" runat="server">
            <asp:DataGrid ID="grdCustomer" runat="server" AllowPaging="true" AutoGenerateColumns="false" CellPadding="6" ForeColor="#33333" Width="100%" Font-Size="12">
                <AlternatingItemStyle BackColor="White" />
                <HeaderStyle CssClass="trHeader" />
                <Columns>
                    <asp:BoundColumn DataField="Name" HeaderText="HỌ TÊN"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Email" HeaderText="EMAIL"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Address" HeaderText="ĐỊA CHỈ"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Phonenumber" HeaderText="SỐ ĐIỆN THOẠI"></asp:BoundColumn>
                </Columns>
                <EditItemStyle BackColor="#2461bF" />
                <HeaderStyle BackColor="#EECD50" Font-Bold="true" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <PagerStyle BackColor="#F3FBFE" ForeColor="Blue" HorizontalAlign="Center" Mode="NumericPages" />
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="true" ForeColor="#33333" />
            </asp:DataGrid>
        </asp:Panel>
        <br />
        <h4 ID="TieuDeChiTiet1" runat="server">CHI TIẾT ĐƠN HÀNG</h4>
        <asp:Panel ID="PnOrderDetail" runat="server">

            <asp:DataGrid ID="grdOrderDetail" runat="server" AllowPaging="true" AutoGenerateColumns="false" CellPadding="3" ForeColor="#33333" Width="100%" Font-Size="12">
                <AlternatingItemStyle BackColor="White" />
                <HeaderStyle CssClass="trHeader" />
                <Columns>
                    <asp:BoundColumn DataField="Name" HeaderText="TÊN SẢN PHẨM"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Quantity" HeaderText="SỐ LƯỢNG"></asp:BoundColumn>
                </Columns>
                <EditItemStyle BackColor="#2461bF" />
                <HeaderStyle BackColor="#E61A5F" Font-Bold="true" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <PagerStyle BackColor="#F3FBFE" ForeColor="Blue" HorizontalAlign="Center" Mode="NumericPages" />
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="true" ForeColor="#33333" />
            </asp:DataGrid>
        </asp:Panel>
    </div>
</asp:Content>
