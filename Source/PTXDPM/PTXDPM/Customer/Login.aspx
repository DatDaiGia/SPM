<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PTXDPM.Customer.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="registration_left">
		<h2>ĐĂNG NHẬP</h2>
		 <div class="registration_form">
		 <!-- Form -->
			<form id="registration_form" method="post">
                <asp:Label ID="lbThongBao" runat="server" Text="Label"></asp:Label>
				<div>
					<label>
					 <asp:TextBox ID="txtUsename" placeholder="Tên đăng nhập" runat="server" Width="500px" required=""></asp:TextBox>
					</label>
				</div>
				<div>
					<label>
						 <asp:TextBox ID="txtPassword" placeholder="Mật khẩu" type="password" runat="server" Width="500px" required=""></asp:TextBox>
					</label>
				</div>						
				<div>
					<asp:Button ID="btnDangNhap" runat="server" Text="Đặng nhập"  OnClick="btnDangNhap_Click" />
				</div>
			</form>
			<!-- /Form -->
			</div>
</asp:Content>
