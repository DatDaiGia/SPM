<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.Master" AutoEventWireup="true" CodeBehind="Clothes_Price_Search.aspx.cs" Inherits="PTXDPM.Customer.Clothes_Price_Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="arriv">
        <div class="container">                       
            <table cellpadding="4" cellspacing="0">
                <tr>
                    <td class="modal-lg" style="width: 976px; height: 46px; text-align: left; background-color: #C0C0C0;">
                        <asp:Label ID="lblTongsoHH" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="modal-lg" style="width: 976px; height: 38px">
                        <asp:GridView ID="grdDSHH" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" PageSize="5" ShowHeader="False" Width="100%" Height="350px" OnSelectedIndexChanging="grdDSHH_SelectedIndexChanging">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table class="nav-justified" style="height: 59px">
                                            <tr>
                                                <td rowspan="3" style="width: 95px" class="text-center">
                                                    <asp:Image ID="Image1" runat="server" Height="140px" ImageUrl='<%# Eval("Images") %>' Width="120px" />
                                                </td>
                                                <td style="height: 32px">
                                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# ("ClothDetail.aspx?id="+Eval("ID")) %>' Text='<%# Eval("Name") %>'></asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 34px">Đơn giá:
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("PriceOUT","{0:#,##0 VNĐ}") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 41px">
                                                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="#009900" NavigateUrl='<%# "ClothDetail.aspx?id="+Eval("ID") %>'>Xem chi tiết</asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width: 95px">&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="modal-lg" style="width: 976px; height: 25px; text-align: left">
                        <asp:Label ID="lblerror" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>
                </table>
                       
        </div>
    </div>



    <asp:DataList ID="grdDSHH1" runat="server" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="showProduct">
                        <a href="DetailClothes.aspx?ID=<%#Eval("ID") %>">
                            <img src="<%#Eval("Images") %>" class="img-responsive" alt=""></a>
                        <!-- Load trang chi tiet va hinh anh tu database vao day -->
                        <div class="special-info grid_1 simpleCart_shelfItem">
                            <h5><%#Eval("Name") %></h5>
                            <!-- Load ten san pham tu database vao day -->
                            <div class="item_add">
                                <span class="item_price">
                                    <h6><%#Eval("PriceOut").ToString()+" VNĐ" %></h6>
                                </span>
                            </div>
                            <!-- Load gia sp tu database vao day -->
                            <div class="item_add"><span class="item_price"><a href="BagDetail.aspx?ID=<%#Eval("ID") %>">Thêm vào giỏ</a></span></div>
                            <!-- Bat su kien sau khi nhan nut-->
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
</asp:Content>
