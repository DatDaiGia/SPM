<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Register.aspx.cs" Inherits="PTXDPM.Customer.Register" %>

<%@ Register Src="~/UseCotrol/HeadRight.ascx" TagPrefix="uc1" TagName="HeadRight" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="registration_form">
        <h2>THÔNG TIN KHÁCH HÀNG</h2>
        <!-- Form -->
        <form id="registration_form" method="post">
            <div>
                <label>
                    <asp:TextBox ID="txtHoTen" placeholder="Họ tên" runat="server" Width="500px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtHoTen" Text="Vui lòng nhập họ tên!"   runat="server" />
                </label>
            </div>
            <div>
                <label>
                    <asp:TextBox ID="txtEmail" placeholder="Email" runat="server" TextMode="Email" Width="500px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtEmail" Text="Vui lòng nhập Email!"   runat="server" />
                </label>
            </div>
            <div>
                <label>
                    <asp:TextBox ID="txtDiaChi" placeholder="Địa chỉ" runat="server" Width="500px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtDiaChi" Text="Vui lòng nhập địa chỉ!"   runat="server" />
                </label>
            </div>
            <div>
                <label>
                    <asp:TextBox ID="txtSĐT" placeholder="Số điện thoại" runat="server" Width="500px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtSĐT" Text="Vui lòng nhập số điện thoại!"   runat="server" />
                </label>
            </div>

            <div>

                <div>
                    <label>
                        <asp:TextBox ID="txtTenDangNhap" placeholder="Tên đăng nhập" runat="server" Width="500px" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqFirstName" ControlToValidate="txtTenDangNhap" Text="Vui lòng nhập tên đăng nhập"   runat="server" />
                    </label>
                </div>
                <label>
                    <asp:TextBox ID="txtMatKhau" placeholder="Mật khẩu" runat="server" TextMode="Password" Width="500px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtMatKhau" Text="Vui lòng nhập mật khẩu"   runat="server" />
                </label>
            </div>
            <div>
                <label>
                    <asp:TextBox ID="txtNhapLaiMatKhau" placeholder="Nhập lại mật khẩu" TextMode="Password" runat="server" Width="500px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtMatKhau" Text="Nhập lại mật khẩu"   runat="server" />
                </label>
            </div>
           <div>
					<asp:Button ID="btnDangKy" runat="server" Text="Đăng Ký"  OnClick="btnDangKy_Click" />
				</div>
        </form>
        <!-- /Form -->
    </div>
</asp:Content>
