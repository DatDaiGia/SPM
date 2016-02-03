<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GroupClothes_Control.ascx.cs" Inherits="PTXDPM.UseCotrol.GroupClothes_Control" %>
<style type="text/css">
    .auto-style1 {
        width: 226px;
        text-align: left;
    }
</style>

<asp:GridView ID="grvgroupclothes" runat="server" BorderColor="#e4e4e4" AutoGenerateColumns="False" ShowHeader="False" Width="100%" Height="138px">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <table cellpadding="0" cellspacing="0" style="border-color: #e4e4e4; background-color: #e4e4e4">
                    <tr style="border-color: #e4e4e4; background-color: #e4e4e4">
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="10px" ImageUrl="~/Customer/Images/Lumos - Icon Pack.png" Width="10px" />
                        </td>
                        <td class="auto-style1">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Name") %>' NavigateUrl='<%# "../Customer/GroupClothes.aspx?id="+Eval("ID") %>' Font-Size="14px"></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

<asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>


