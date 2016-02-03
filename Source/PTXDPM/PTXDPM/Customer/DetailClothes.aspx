<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.Master" AutoEventWireup="true" CodeBehind="DetailClothes.aspx.cs" Inherits="PTXDPM.Customer.DetailClothes" %>
<%@ Register Src="~/UseCotrol/DetailClothes.ascx" TagName="DetailClothes" TagPrefix="UC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <UC:DetailClothes runat="server" />
</asp:Content>
