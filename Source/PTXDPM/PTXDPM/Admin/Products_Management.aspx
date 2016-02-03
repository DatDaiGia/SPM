<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Products_Management.aspx.cs" Inherits="PTXDPM.Admin.Products_Management" EnableEventValidation="false" %>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style30" colspan="2" style="background-color: #f5f5f5"><strong style="font-size: 24px">QUẢN LÝ HÀNG HÓA</strong><br />
            </td>
        </tr>
        <tr >
            <td class="auto-style2" style="border: thick solid #f5f5f5; font-size: 14px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Products_Management.aspx">QUẢN LÝ HÀNG HÓA</asp:HyperLink>
            </td>
            <td rowspan="2" style="font-size: 14px">
                <table class="auto-style34">
                    <tr>
                        <td class="auto-style19" style="border: thin solid #f5f5f5">
                            <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                        </td>
                        <td class="auto-style20" style="border: thin solid #f5f5f5">
                            <asp:TextBox ID="txtID" runat="server" Width="46px" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="auto-style21" style="border: thin solid #f5f5f5">MÀU ID</td>
                        <td class="auto-style22" style="border-style: solid; border-width: thin thick thin thin; border-color: #f5f5f5;">
                            <asp:DropDownList ID="drcolorid" runat="server" DataSourceID="SqlDataSource3" Height="22px" Width="101px" DataTextField="Name" DataValueField="ID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ClothConnectionString %>" SelectCommand="SELECT * FROM [Color]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23" style="border: thin solid #f5f5f5; height: 49px;">TÊN</td>
                        <td class="auto-style24" style="border: thin solid #f5f5f5; height: 49px;">
                            <asp:TextBox ID="txtname" runat="server" Width="191px"></asp:TextBox>
                        </td>
                        <td class="auto-style25" style="border: thin solid #f5f5f5; height: 49px;">SIZE ID</td>
                        <td class="auto-style26" style="border-left: thin solid #f5f5f5; border-right: thick solid #f5f5f5; border-top: thin solid #f5f5f5; border-bottom: thin solid #f5f5f5; height: 49px;">
                            <asp:DropDownList ID="drsizeid" runat="server" DataSourceID="SqlDataSource4" Height="22px" Width="101px" DataTextField="Name" DataValueField="ID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ClothConnectionString %>" SelectCommand="SELECT * FROM [Size]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style27" style="border: thin solid #f5f5f5; height: 49px;">NHÓM SẢN PHẨM</td>
                        <td class="auto-style28" style="border: thin solid #f5f5f5; height: 49px;">
                            <asp:DropDownList ID="drgroupclothes" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" Height="22px" Width="118px" DataValueField="ID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ClothConnectionString %>" SelectCommand="SELECT * FROM [GroupClothes]"></asp:SqlDataSource>
                        </td>
                        <td class="auto-style29" style="border: thin solid #f5f5f5; height: 49px;">HÌNH ẢNH</td>
                        <td class="auto-style17" style="border-left: thin solid #f5f5f5; border-right: thick solid #f5f5f5; border-top: thin solid #f5f5f5; border-bottom: thin solid #f5f5f5; height: 49px;">
                            <asp:FileUpload ID="uphinh" runat="server" Width="258px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="border: thin solid #f5f5f5; height: 49px;">MÔ TẢ</td>
                        <td class="auto-style20" style="border: thin solid #f5f5f5; height: 49px;">
                           
                            <asp:TextBox ID="txtdescription" runat="server" Width="290px"></asp:TextBox>
                           
                        <td class="auto-style21" style="border: thin solid #f5f5f5; height: 49px;">CHẤT LIỆU ID</td>
                        <td class="auto-style22" style="border-left: thin solid #f5f5f5; border-right: thick solid #f5f5f5; border-top: thin solid #f5f5f5; border-bottom: thin solid #f5f5f5; height: 49px;">
                            <asp:DropDownList ID="drmaterialid" runat="server" DataTextField="Name" DataSourceID="SqlDataSource5" Height="22px" DataValueField="ID">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ClothConnectionString %>" SelectCommand="SELECT * FROM [Material]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="border: thin solid #f5f5f5; height: 49px;">GIÁ NHẬP</td>
                        <td class="auto-style20" style="border: thin solid #f5f5f5; height: 49px;">
                            <asp:TextBox ID="txtpricein" runat="server" Width="79px"></asp:TextBox>
                        </td>
                        <td class="auto-style21" style="border: thin solid #f5f5f5; height: 49px;">SỐ LƯỢNG</td>
                        <td class="auto-style22" style="border-left: thin solid #f5f5f5; border-right: thick solid #f5f5f5; border-top: thin solid #f5f5f5; border-bottom: thin solid #f5f5f5; height: 49px;">
                            <asp:TextBox ID="txtquantity" runat="server" Width="55px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="border: thin solid #f5f5f5; height: 49px;">GIÁ BÁN</td>
                        <td class="auto-style20" style="border: thin solid #f5f5f5; height: 49px;">
                            <asp:TextBox ID="txtpriceout" runat="server" Width="79px"></asp:TextBox>
                        </td>
                        <td class="auto-style21" style="border: thin solid #f5f5f5; height: 49px;">TRẠNG THÁI</td>
                        <td class="auto-style22" style="border-left: thin solid #f5f5f5; border-right: thick solid #f5f5f5; border-top: thin solid #f5f5f5; border-bottom: thin solid #f5f5f5; height: 49px;">
                            <asp:TextBox ID="txtstatus" runat="server" Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="border: thin solid #f5f5f5; height: 49px;">GIÁ MỚI</td>
                        <td class="auto-style20" style="border: thin solid #f5f5f5; height: 49px;">
                            <asp:TextBox ID="txtnewprice" runat="server" Width="79px"></asp:TextBox>
                        </td>
                        <td class="auto-style21" style="border: thin solid #f5f5f5; height: 49px;">ĐẶT HÀNG</td>
                        <td class="auto-style22" style="border-left: thin solid #f5f5f5; border-right: thick solid #f5f5f5; border-top: thin solid #f5f5f5; border-bottom: thin solid #f5f5f5; height: 49px;">
                            <asp:TextBox ID="txtorder" runat="server" Width="100px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="border: thin solid #f5f5f5; height: 49px;">GIỚI TÍNH</td>
                        <td class="auto-style18" style="border: thin solid #f5f5f5; height: 49px;">
                            <asp:DropDownList ID="drsex" runat="server" Height="22px" Width="101px">
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="auto-style21" style="border: thin solid #f5f5f5; height: 49px;">NEW</td>
                        <td class="auto-style22" style="border-left: thin solid #f5f5f5; border-right: thick solid #f5f5f5; border-top: thin solid #f5f5f5; border-bottom: thin solid #f5f5f5; height: 49px;">
                            <asp:TextBox ID="txtnew" runat="server" Width="42px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style32" colspan="4" style="border-left: thin solid #f5f5f5; border-right: thick solid #f5f5f5; border-top: thin solid #f5f5f5; border-bottom: thin solid #f5f5f5; height: 49px;"><span class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="btnluu" runat="server" Text="LƯU" Width="80px" OnClick="btnluu_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnhuy" runat="server" Text="HỦY" Width="80px" OnClick="btnhuy_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style33" colspan="4" style="border-style: solid; border-width: thin thick thin thin; border-color: #f5f5f5;">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" 
                                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                                GridLines="Vertical" AllowPaging="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" PageSize="5" style="margin-top: 17px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" />
                                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="GroupClothesID" HeaderText="GroupClothes" SortExpression="GroupClothesID" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                    <asp:BoundField DataField="PriceIN" HeaderText="PriceIN" SortExpression="PriceIN" />
                                    <asp:BoundField DataField="PriceOUT" HeaderText="PriceOUT" SortExpression="PriceOUT" />
                                    <asp:BoundField DataField="NewPrice" HeaderText="NewPrice" SortExpression="NewPrice" />
                                    <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                                    <asp:BoundField DataField="ColorID" HeaderText="Color" SortExpression="ColorID" />
                                    <asp:BoundField DataField="SizeID" HeaderText="Size" SortExpression="SizeID" />
                                    <asp:BoundField DataField="Images" HeaderText="Images" SortExpression="Images" />
                                    <asp:BoundField DataField="MaterialID" HeaderText="Material" SortExpression="MaterialID" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                                    <asp:BoundField DataField="Order" HeaderText="Order" SortExpression="Order" />
                                    <asp:BoundField DataField="New" HeaderText="New" SortExpression="New" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ClothConnectionString %>" 
                                SelectCommand="SELECT * FROM [Clothes]"
                                UpdateCommand="Update [Clothes] SET Name=@Name,GroupClothesID=@GroupClothesID,Description=@Description,PriceIN=@PriceIN,PriceOUT=@PriceOUT,NewPrice=@NewPrice,Sex=@Sex,ColorID=@ColorID,SizeID=@SizeID,Images=@Images,MaterialID=@MaterialID,Quantity=@Quantity,Status=@Status,[Order]=@Order,New=@New  where ID = @ID"
                                DeleteCommand="Delete From [Clothes] where ID = @ID "
                                >

                                <UpdateParameters>
                                    <asp:Parameter Name="ID" Type ="int32" />
                                    <asp:Parameter Name="Name" Type ="String" />
                                    <asp:Parameter Name="GroupClothesID" Type ="int32" />
                                    <asp:Parameter Name="Description" Type ="String" />
                                    <asp:Parameter Name="PriceIN" Type ="Double" />
                                    <asp:Parameter Name="PriceOUT" Type ="Double" />
                                    <asp:Parameter Name="NewPrice" Type ="Double" />
                                    <asp:Parameter Name="Sex" Type ="Int32" />
                                    <asp:Parameter Name="ColorID" Type ="int32" />
                                    <asp:Parameter Name="SizeID" Type ="int32" />
                                    <asp:Parameter Name="Images" Type ="string" />
                                    <asp:Parameter Name="MaterialID" Type ="int32" />
                                    <asp:Parameter Name="Quantity" Type ="int32" />
                                    <asp:Parameter Name="Status" Type ="int32" />
                                    <asp:Parameter Name="Order" Type ="int32" />
                                    <asp:Parameter Name="New" Type ="int32" />
                                </UpdateParameters>

                                <DeleteParameters>
                                    <asp:Parameter Name="ID" Type ="int32" />
                                </DeleteParameters>

                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="auto-style35" style="border-style: solid; border-width: thin thick thick thin; border-color: #f5f5f5;">
                            <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="border: thick solid #f5f5f5; font-size: 14px">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin/OrderManagement.aspx">QUẢN LÝ ĐẶT HÀNG</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>
