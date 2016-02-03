<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PTXDPM.Customer.Home" EnableEventValidation="false" %>
<%@ Register src="../UseCotrol/GroupClothes_Control.ascx" tagname="GroupClothes_Control" tagprefix="uc1" %>
<%--<%@ Register Src="~/UseCotrol/NewClothes.ascx" TagName="NewClothes" TagPrefix="UC" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../Nivoslider/nivo-slider.css" rel="stylesheet" />
    <script src="assets/js/jquery-1.10.2.min.js"></script>
    <script src="../Nivoslider/jquery.nivo.slider.js"></script>
    <script src="../Nivoslider/jquery.nivo.slider.pack.js"></script> 
    <style type="text/css">
        .auto-style1 {
            width: 205px;
        }
        .auto-style3 {
            width: 179px;
            height: 40px;
        }
        .auto-style4 {
            height: 35px;
            width: 179px;
        }
        .auto-style6 {
            width: 179px;
        }
        .auto-style7 {
            height: 28px;
            width: 179px;
        }
        .auto-style8 {
            height: 38px;
            width: 179px;
        }
        .auto-style9 {
            height: 32px;
            width: 179px;
        }
        </style>      
        <div class="arriv">      
             <div id="beforeNAVMENU">
            <table>
                <tr>
                    <td style="vertical-align:top" class="auto-style1">
                        <table style="width:250px">
                            <tr style="border-width: thin; border-color: black;">
                                <td style="text-align:center;background-color:#e4e4e4;border-color:black; font-weight: bold;" class="auto-style3">LOẠI SẢN PHẨM</td>                                
                            </tr>
                            <tr >
                                <td style="background-color:#e4e4e4;border-color:#e4e4e4" class="auto-style6">
                                    <uc1:GroupClothes_Control ID="GroupClothes_Control1" runat="server" />
                                </td>
                            </tr>
                            <tr style="border-color: black; border-width: thin">
                                <td style="border-color: black; background-color: #e4e4e4; text-align:center; font-weight: bold;" class="auto-style4">

                                    KHOẢNG GIÁ</td>
                            </tr>

                             <tr>              
                                <td style="background-color: #e4e4e4;font-size:14px;text-align:left" class="auto-style8">                                                                            
                                    <div>
                                        <asp:RadioButtonList ID="rblTimGiaTrongKhoan" runat="server" Width="245px">
                                        <asp:ListItem Value="1">Dưới 200 000 nghìn</asp:ListItem>
                                        <asp:ListItem Value="2">200 000 - 500 000 nghìn</asp:ListItem>
                                        <asp:ListItem Value="3">500 000 - 1 000 000 nghìn</asp:ListItem>
                                        <asp:ListItem Value="4">1 000 000 - 2 000 000 nghìn</asp:ListItem>
                                        <asp:ListItem Value="5">Trên 2 000 000 nghìn</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <br />                                                                   
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: #e4e4e4;text-align:right" class="auto-style9">
                                    <asp:ImageButton ID="img_search" runat="server" Height="40px" Width="60px" CommandName="Timkiem" ImageUrl="~/Customer/Images/search.png" OnCommand="img_search_Command1" />
                                </td>
                            </tr>
                         </table>
                    </td>
                    <td style="padding-left:40px;vertical-align:top">
                        <div id="slider" class="nivoSlider">
                            <img src="Images/11-031915-pnk-home-sub-apparel-RE.jpg" />
                            <img src="Images/11-040215-pnk-home-sub-tee (1).jpg" />
                            <img src="Images/11-042115-cp-pink_hdrs_APPAREL.jpg" />
                            <img src="Images/11-060415-pnk-home-apparel-v2.jpg" />
                            <img src="Images/11-060915-pnk-home-ultimate-1.jpg" />
                            <img src="Images/030215-cp-pink_headers_all-apparel-1.jpg" />
                            <img src="Images/032415_Landing_desktop_hdr.jpg" />
                        </div>
                    </td>
                </tr>
            </table>
         </div>             
        </div>   
    <div class="special">
        <div class="container">
            <h3>MỚI</h3>
        </div>
        <div class="specia-top">
            <asp:DataList ID="dlCloth" runat="server" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
                <ItemTemplate>

                    <%--Hiển thị danh sách sản phẩm--%>                    
                    <div class="showProduct">
                        <a href="ClothDetail.aspx?ID=<%#Eval("ID") %>">
                            <img src="<%#Eval("Images") %>" class="img-responsive" alt=""></a>
                        <div class="special-info grid_1 simpleCart_shelfItem">
                            <h5><%#Eval("Name") %></h5>
                            <div class="item_add">
                                <span class="item_price">
                                    <h6><%#Eval("PriceOut").ToString()+" VNĐ" %></h6>
                                </span>
                            </div>
                            <div class="item_add"><span class="item_price"><a href="BagDetail.aspx?ID=<%#Eval("ID") %>">THÊM VÀO GIỎ</a></span></div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    <%--Sản phẩm nổi bật--%>
     <div class="special">
        <div class="container">
            <h3>NỔI BẬT</h3>
        </div>
        <div class="specia-top">
            <asp:DataList ID="dlSpeciaCloth" runat="server" RepeatColumns="4" Width="100%" RepeatDirection="Horizontal">
                <ItemTemplate>

                    <%--Hiển thị danh sách sản phẩm--%>                    
                    <div class="showProduct">
                        <a href="ClothDetail.aspx?ID=<%#Eval("ID") %>">
                            <img src="<%#Eval("Images") %>" class="img-responsive" alt=""></a>
                        <div class="special-info grid_1 simpleCart_shelfItem">
                            <h5><%#Eval("Name") %></h5>
                            <div class="item_add">
                                <span class="item_price">
                                    <h6><%#Eval("PriceOut").ToString()+" VNĐ" %></h6>
                                </span>
                            </div>
                            <div class="item_add"><span class="item_price"><a href="BagDetail.aspx?ID=<%#Eval("ID") %>">THÊM VÀO GIỎ</a></span></div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div> 


     <!--Div chay novi slider-->
    <script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider({
                controlNav: false,
                nextText: '',
                prevText:'',
            });
        });
    </script>
</asp:Content>
