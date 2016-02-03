<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.Master" AutoEventWireup="true" CodeBehind="SanPhamNhom.aspx.cs" Inherits="PTXDPM.Customer.SanPhamNhom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="special">
        <div class="container">
            <h3>Sản phẩm mới</h3>
        </div>
        <div class="specia-top">
            <asp:DataList ID="listproduct" runat="server" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
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
        </div>
    </div>
</asp:Content>
