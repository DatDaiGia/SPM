<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewClothes.ascx.cs" Inherits="PTXDPM.UseCotrol.NewClothes" %>

        <h3>Sản phẩm mới</h3>
        <div class="specia-top">
            <asp:DataList ID="listproduct" runat="server" RepeatColumns="3" Width="100%" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div class="showProduct">
                        <a href="DetailClothes.aspx?ID=<%#Eval("ID") %>">
                            <img src="<%#Eval("Images") %>" class="img-responsive" alt=""></a>
                        <!-- Load trang chi tiet va hinh anh tu database vao day -->
                        <div class="special-info grid_1 simpleCart_shelfItem">
                            <h5><%#Eval("Name") %></h5>
                            <!-- Load ten san pham tu database vao day -->
                            <div class="item_add"><span class="item_price">
                                <h6><%#Eval("PriceOut").ToString()+" VNĐ" %></h6>
                            </span></div>
                            <!-- Load gia sp tu database vao day -->
                            <div class="item_add"><span class="item_price"><a href="DetailClothes.aspx?ID=<%#Eval("ID") %>">Thêm vào giỏ</a></span></div>
                            <!-- Bat su kien sau khi nhan nut-->
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>

<%--<div class="special">
    <div class="container">
        <h3>Sản phẩm mới</h3>
    </div>
    <div class="specia-top">
        <asp:DataList ID="listproduct" runat="server" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
            <ItemTemplate>
                <div class="SP">
                    <div class="HinhAnhSP">
                    <asp:ImageButton CommandName="Detail" CommandArgument='<%#Eval("ID") %>' ImageUrl='<%#Eval("Images") %>' Width="100px" Height="133px" runat="server" />
                    </div>
                    <asp:Label CssClass="TenSP" Text='<%#Eval("Name") %>' runat="server"/>
                    <asp:Label CssClass="GiaSP" Text='<%#Eval(("PriceOUT"))%>' runat="server" />
                    <div class ="DatMua">
                    <asp:ImageButton CssClass="btnDatMua" CommandName="Order" CommandArgument='<%#Eval("ID") %>' ImageUrl='/Images/ThemVaoGio2.png' runat="server" />
                     </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</div>--%>
