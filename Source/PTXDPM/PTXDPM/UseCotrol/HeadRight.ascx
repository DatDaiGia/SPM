<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeadRight.ascx.cs" Inherits="PTXDPM.UseCotrol.HeadRight"  %>
<div class="header_right">
    <div class="rgt-bottom">
        <div class="log">
            <div class="login">
                <div id="loginContainer">                    
                </div>
            </div>
        </div>
        <div class="reg">
            <a href="/Customer/Login.aspx"><asp:Label ID="lbLogin" runat="server" Text="ĐĂNG NHẬP"></asp:Label></a> | <a href="/Customer/Register.aspx"><asp:Label ID="lbRegister" runat="server" Text="ĐĂNG KÝ"></asp:Label></a><a href="/Customer/Home.aspx?state=1"><asp:Label ID="lbDangXuat" runat="server" Text="ĐĂNG XUẤT"></asp:Label></a>
        </div>
        <div class="cart box_1">
            <a href="/Customer/BagDetail.aspx"
            <h3>$ <asp:Label ID="lbTongTien" runat="server" Text="Label"></asp:Label>(<asp:Label ID="lbSoLuong" runat="server" Text="Label"></asp:Label>)<img src="assets/images/bag.png" alt=""></h3>
                </a>
            <div class="clearfix"></div>
        </div>
        <div class="create_btn">
            <a href="/Customer/BagDetail.aspx">Xem giỏ</a>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="search">
           <%-- <input type="text" name="txtsearch" value="" width ="200px" runat="server" placeholder="search...">  --%>    
        <asp:TextBox ID="txtsearch" runat="server" placeholder="Search" autofocus="autofocus" Width="300px"></asp:TextBox>
            <div class="create_btn">
                <asp:ImageButton ID="btn_search" runat="server" CommandName="TimKiem" Height="38px" ImageUrl="~/Customer/Images/Zoom_search_find_magnifying_glass.png" OnCommand="btn_search_Command" Width="60px" />
        </div>

    </div>
    <div class="clearfix"></div>
</div>
