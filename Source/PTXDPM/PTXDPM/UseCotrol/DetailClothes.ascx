<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DetailClothes.ascx.cs" Inherits="PTXDPM.UseCotrol.DetailClothes" %>

<div class="container">
<div class="women_main">
    <asp:DataList ID="DLChiTiet" runat="server" RepeatColumns="1" >
        <ItemTemplate>
            <div class="container">
            <div class="women_main">
            <div class="row single">
				<div class="col-md-9 det">
				  <div class="single_left">
					<div class="grid images_3_of_2">
						<div class="flexslider">
							        <!-- FlexSlider -->
										<script src="assets/js/imagezoom.js"></script>
										  <script defer src="assets/js/jquery.flexslider.js"></script>
										<link rel="stylesheet" href="assets/css/flexslider.css" type="text/css" media="screen" />

										<script>
										// Can also be used with $(document).ready()
										$(window).load(function() {
										  $('.flexslider').flexslider({
											animation: "slide",
											controlNav: "thumbnails"
										  });
										});
										</script>
									<!-- //FlexSlider-->

							  <ul class="slides">
								<li data-thumb="<%#Eval("Images") %>">
									<div class="thumb-image"> <img src="<%#Eval("Images") %>" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="<%#Eval("Image2") %>">
									 <div class="thumb-image"> <img src="<%#Eval("Image2") %>" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="<%#Eval("Image3") %>">
								   <div class="thumb-image"> <img src="<%#Eval("Image3") %>" data-imagezoom="true" class="img-responsive"> </div>
								</li>
								<li data-thumb="<%#Eval("Image4") %>">
								   <div class="thumb-image"> <img src="<%#Eval("Image4") %>" data-imagezoom="true" class="img-responsive"> </div>
								</li>
							  </ul>
							<div class="clearfix"></div>
						</div>
					</div>


                 <div class="desc1 span_3_of_2">
                <h3><%#Eval("Name") %></h3>

                <span class="brand">Nhãn hiệu: <a href="#"><%#Eval("GroupClothesID") %> </a></span>

                <br>
                <span class="code">Mã sản phẩm: <%#Eval("ID") %></span>

                <p><%#Eval("Description") %></p>
                <!-- Description -->
                <div class="price">
                    <span class="text">Price:</span>
                    <span class="price-new"><%#Eval("NewPrice") %> VNĐ</span><span class="price-old"><%#Eval("PriceOut") %> VNĐ</span> <br />
                    <span class="price-tax">Đồ Nam</span><br>
					<%--<span class="points"><small>Số lượng còn lại: <%#Eval("Quantity") %></small></span><br>--%>
					<span class="points">Số lượng còn lại: <%#Eval("Quantity") %></span><br>
                </div>
                <div class="det_nav1">
                    <h4>Chọn kích cỡ :</h4>
                    <div class=" sky-form col col-4">
                      <%--  <ul>
                            <li>
                                <label class="checkbox">
                                    <input type="checkbox" name="checkbox"><i></i>L</label></li>
                            <li>
                                <label class="checkbox">
                                    <input type="checkbox" name="checkbox"><i></i>S</label></li>
                            <li>
                                <label class="checkbox">
                                    <input type="checkbox" name="checkbox"><i></i>M</label></li>
                            <li>
                                <label class="checkbox">
                                    <input type="checkbox" name="checkbox"><i></i>XL</label></li>
                        </ul>--%>
                    </div>
                </div>
                <div class="btn_form">
                    <a href="BagDetail.aspx?ID=<%#Eval("ID") %>">Đặt mua</a>
                </div>
                <a href="#"><span>Đăng nhập để được giảm giá </span></a>
            </div>
          	    <div class="clearfix"></div>
                      </div>
          	    <div class="single-bottom1">
                      <h6>Thông tin chi tiết</h6>
                      <p class="prod-desc"><%#Eval("Description") %></p>
                  </div>
                      </div>
                    </div>
                    </div>
                    </div>
                    </ItemTemplate>
		   	     </asp:DataList>
 </div>	
</div>	 