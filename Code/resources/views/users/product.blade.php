<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Product</title>
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<link href="{{ asset('assets/css/User/home.css') }}" rel="stylesheet">
	{{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"> --}}
	<link href="{{ asset('assets/css/User/product.css') }}" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/lightslider/lightslider.css')}}">
    <script type="text/javascript" src="{{ asset('assets/js/lightslider/Jquery.js')}}"></script>
    <script type="text/javascript" src="{{ asset('assets/js/lightslider/lightslider.js') }}"></script>
    {{-- <script src="https://code.jquery.com/jquery-migrate-3.4.1.js" integrity="sha256-CfQXwuZDtzbBnpa5nhZmga8QAumxkrhOToWweU52T38=" crossorigin="anonymous"></script> --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="shortcut icon" type="image/x-icon" href="{{ asset('assets/img/User/layouts/curnonlogo.svg') }}" />
</head>
<body>
	@extends('layouts.app')
    @section('content')
	<div id="forBody">
        <div class="headerImg">
            <img src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2Fcollection_nam.jpg&w=1920&q=75">
        </div>
        <div class="layer1">
            <h1 style="font-size: 36px">
                <b>{{ $title }}</b>    
            </h1>
            <div class="flex">
                <p>{{ $des }}</p>
                <p style="margin-left: 50%"><i>30 trên 30 sản phẩm</i></p>
            </div>
        </div>
		<!--định dạng filter-->
		<div class="filter-format">
			<div class="filter-bar">
				<button class="ap-filter__category-open-button" onclick="toggleBST()">BỘ SƯU TẬP</button>
				<button class="ap-filter__category-open-button" onclick="toggleSize()">SIZE</button>
				<button class="ap-filter__category-open-button" onclick="toggleColor()">MÀU SẮC</button>
				<button class="ap-filter__category-open-button" onclick="toggleMaterial()">CHẤT LIỆU DÂY</button>
				<button class="ap-filter__category-open-button" onclick="toggleSort()">SẮP XẾP THEO</button>
			</div>
		</div>
		<!--Định dạng Size-->
		<div class="filter-format-option">
			<div class="filter-bar-option">
				<div class="option-content" id="size-content">
					<p>CASE DIAMETER</p>
					<div >
						<div class="complication-text-item"><input type="checkbox" value="LARGE" id="large" > <span style="font-size: 20px;">LARGE</span> <br><br><br></div>
						<div class="complication-text-item"><input type="checkbox" value="MEDIUM" id="medium"><span style="font-size: 20px;">MEDIUM</span> <br><br><br></div>
						<div class="complication-text-item"><input type="checkbox" value="SMALL" id="small"><span style="font-size: 20px;">SMAll</span> <br><br><br></div>
					</div>
				</div>
			</div>
		</div>
	
		<script>
			// JavaScript để ẩn/hiển thị nội dung Size
			function toggleBST() {
				var sizeContent = document.getElementById("size-content");
				var complicationContent = document.getElementById("complication-content");
				var collectionContent = document.getElementById("collection-content");
				var materialContent = document.getElementById("material-content")
				if (sizeContent.style.display === "none"|| sizeContent.style.display === "") {
					sizeContent.style.display = "block";
					complicationContent.style.display = "none";
					collectionContent.style.display = "none";
					materialContent.style.display = "none";	
				} else {
					sizeContent.style.display = "none";
				}
			}
		</script>

		<!--Định dạng complication-->
		<div class="filter-format-option">
			<div class="filter-bar-option">
				<div class="option-content" id="complication-content">
					<div class="flex-row">
						<div class="filter-option-right">
							<p>MECHANISM</p>
							<input type="checkbox"  id="SELFWINDING" > <span style="font-size: 20px;">SELFWINDING</span> <br><br><br>
							<input type="checkbox"  id="hand-wound"><span style="font-size: 20px;">HAND-WOUND</span> <br><br><br>
							<input type="checkbox"  id="quarzt"><span style="font-size: 20px;">QUARTZ</span> <br><br><br>
						</div>
						<div>
							<p>FUNCTIONS</p>
								<div class="div-left">
									<div class="complication-text-item"><input type="checkbox"  id="SELFWINDING" > <span style="font-size: 20px;">WANDERING HOURS STARWHEEL </span> <br><br><br></div>
									<div class="complication-text-item"><input type="checkbox"  id="MOONPHASES"><span style="font-size: 20px;">MOON PHASES </span> <br><br><br></div>
									<div class="complication-text-item"><input type="checkbox"  id="DUALTIME"><span style="font-size: 20px;">DUAL TIME </span> <br><br><br></div>
									<div class="complication-text-item"><input type="checkbox"  id="MINUTEREPEATER"><span style="font-size: 20px;">MINUTE REPEATER </span> <br><br><br></div>
								</div>
								<div class="div-left">
									<div class="complication-text-item"><input type="checkbox"  id="HOURSMINUTES"><span style="font-size: 20px;">HOURS, MINUTES</span> <br><br><br></div>
									<div class="complication-text-item"><input type="checkbox"  id="HOURSMINUTES"><span style="font-size: 20px;">FLYBACK CHRONOGRAPH </span> <br><br><br></div>
									<div class="complication-text-item"><input type="checkbox"  id="HOURSMINUTES"><span style="font-size: 20px;">GMT</span> <br><br><br></div>
									<div class="complication-text-item"><input type="checkbox"  id="HOURSMINUTES"><span style="font-size: 20px;">FLYING TOURBILLON</span> <br><br><br></div>
								</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			// JavaScript để ẩn/hiển thị nội dung Complication
			function toggleSize() {
				var complicationContent = document.getElementById("complication-content");
				var sizeContent = document.getElementById("size-content");
				var collectionContent = document.getElementById("collection-content");
				var materialContent = document.getElementById("material-content")
				if (complicationContent.style.display === "none"|| complicationContent.style.display === "") {
					complicationContent.style.display = "block";
					collectionContent.style.display = "none";
					sizeContent.style.display = "none";
					materialContent.style.display = "none";	
				} else {
					complicationContent.style.display = "none";
				}
			}
		</script>

		<!--Định dạng collection-->
		<div class="filter-format-option">
			<div class="filter-bar-option">
				<div class="option-content" id="collection-content">
					<div class="image-filter-container">
						<div class="image-filter-collection-item">
							<img class="image-filter-collection" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/collections/collection-RO.jpg" > <br>
							Royal OaK
						</div>
						<div class="image-filter-collection-item">
							<img class="image-filter-collection" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/collections/collection-ROC.jpg" > <br>
							ROYAL OAK CONCEPT
						</div>
						<div class="image-filter-collection-item">
							<img class="image-filter-collection" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/collections/collection-ROO.jpg" > <br>
							ROYAL OAK OFFSHORE 
						</div>
						<div class="image-filter-collection-item">
							<img class="image-filter-collection" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/collections/collection-11.59.jpg"> <br>
							CODE 11.59 BY AUDEMARS PIGUET
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			// JavaScript để ẩn/hiển thị nội dung Collection
			function toggleColor() {
				var collectionContent = document.getElementById("collection-content");
				var sizeContent = document.getElementById("size-content");
				var complicationContent = document.getElementById("complication-content");
				var materialContent = document.getElementById("material-content")
				if (collectionContent.style.display === "none"|| collectionContent.style.display === "") {
					collectionContent.style.display = "block";
					sizeContent.style.display = "none";
					complicationContent.style.display = "none";
					materialContent.style.display = "none";	
				} else {
					collectionContent.style.display = "none";
					
				}
			}
		</script>

		<!--Định dạng material-->
		<div class="filter-format-option">
			<div class="filter-bar-option">
				<div class="option-content" id="material-content">
				<p>CASE</p>
				<div class="image-filter-container">
					<div>
						<img class="image-filter-material" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/materials/image-40@3x.png"> <br>
						18-CARAT YELLOW GOLD
					</div>
					<div>
						<img class="image-filter-material" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/materials/image-39@3x.png"> <br>
						18-CARAT WHITE GOLD 
					</div>
					<div>
						<img class="image-filter-material" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/materials/Ceramic%20white.png"> <br>
						WHITE CERAMIC
					</div>
					<div>
						<img class="image-filter-material" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/materials/image-36@3x.png"> <br>
						BLACK CERAMIC
					</div>
					<div>
						<img class="image-filter-material" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/materials/Ceramic%20blue.png"> <br>
						BLUE CERAMIC 
					</div>
					<div>
						<img class="image-filter-material" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/materials/image-38@3x.png"> <br>
						18-CARAT PINK GOLD
					</div>
					<div>
						<img class="image-filter-material" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/materials/image-41@3x.png"> <br>
						STAINLESS STEEL 
					</div>
					<div>
						<img class="image-filter-material" src="https://www.audemarspiguet.com/content/dam/ap/com/filter-options/materials/image-42@3x.png"> <br>
						TITANIUM
					</div>
				</div>
				

				</div>
			</div>
		</div>
		<script type="text/javascript" src="{{ asset('assets/js/lightslider/script2.js') }}"></script>  
	
		<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
		<!-- CSS -->
		<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
		<!-- Default theme -->
		<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
		<!-- Semantic UI theme -->
		<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>
		<!-- Bootstrap theme -->
		<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css"/>
		<script>
			// JavaScript để ẩn/hiển thị nội dung Material
			function toggleMaterial() {
				var materialContent = document.getElementById("material-content")
				var collectionContent = document.getElementById("collection-content");
				var sizeContent = document.getElementById("size-content");
				var complicationContent = document.getElementById("complication-content");
				if (materialContent.style.display === "none"|| materialContent.style.display === "") {
					materialContent.style.display = "block";
					sizeContent.style.display = "none";
					complicationContent.style.display = "none";
					collectionContent.style.display = "none";
				} else {
					materialContent.style.display = "none";	
				}
			}
		</script>

		<script>
			// JavaScript để ẩn/hiển thị nội dung Complication
			function toggleSort() {
				var complicationContent = document.getElementById("complication-content");
				var sizeContent = document.getElementById("size-content");
				var collectionContent = document.getElementById("collection-content");
				var materialContent = document.getElementById("material-content")
				if (complicationContent.style.display === "none"|| complicationContent.style.display === "") {
					complicationContent.style.display = "block";
					collectionContent.style.display = "none";
					sizeContent.style.display = "none";
					materialContent.style.display = "none";	
				} else {
					complicationContent.style.display = "none";
				}
			}
	</script>
		<div class="product_wrapper">
			<div class="product_top">
			{{-- discount --}}
				@foreach ($product as $productItem) 
					<a  href="{{ route('detailProduct',['id'=>$productItem->id_product]) }}">
						<div class="product_info product_highlight">
							<img src="{{ $productItem->img_main }}">
								@if( $productItem->qty_store == '0')
									<a  class="product_addToCard_out" target="_self">
										<span class="product_addToCard_font_out">
											<input type="button" value="HẾT HÀNG">
										</span>
									</a>
									<p class="product_ref_kind">{{ $productItem->brName }}</p>
									<span class="product_ref_name">{{ $productItem->pdName }}</span>
									<div class="product_font_price">
										<b>{{ number_format($productItem->sellprice) }} đ</b>
									</div>
								@else
									<b class="product_image_discount">-{{ $productItem->discount }}%</b>
									<a class="product_addToCard" target="_self" onclick="AddCart({{ $productItem->id_product }})" href="javascript:">
										<span class="product_addToCard_font">
											<input type="text" name='id' style="display: none;" value="{{ $productItem->id_product }}">
											<input type="submit" value="THÊM VÀO GIỎ">
										</span>
									</a>
									<p class="product_ref_kind">{{ $productItem->brName }}</p>
									<span class="product_ref_name">{{ $productItem->pdName }}</span>
									<div class="product_font_price">
										@if($productItem->isdiscount == '1')
											@php
												$discountedPrice =$productItem->sellprice - $productItem->sellprice * ($productItem->discount / 100);
												$finalPrice = number_format($discountedPrice) . ' đ';
											@endphp
											<b>{{ $finalPrice }}</b>
										@else
											<b>{{ number_format($productItem->sellprice) }} đ</b>
										@endif
										<del class="product_font_price_discount">{{ number_format($productItem->sellprice) }} đ</del>
									</div>
								@endif 
							</div>
						</a>
					
					
				@endforeach
			</div>
		</div>

    <script>
        function showButton(){
            var productbutton = document.getElementById("product-button");
            productbutton.style.display="";
        }
        function hideButton(){
            var productbutton = document.getElementById("product-button");
            productbutton.style.display="none";
        }

		function Test(id){
			console.log(id);
		}

       
    function AddCart(id) {
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        var url = "{{ url('/Add-Cart') }}/" + id;

        $.ajax({
            url: url,
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken
            }
        })
        .done(function (response) {
            if (response.redirect) {
                window.location.href = response.redirect;
            } else {
                RenderCart(response, id);
                alertify.success('Đã thêm giỏ hàng thành công');
            }
        })
        .fail(function (xhr, status, error) {
            console.error(error);

            if (xhr.status === 401) {
                window.location.href = '/login';
            }
        });
    }  
        
		function RenderCart(response){
			$("#changeItemCart").empty();
			$("#changeItemCart").append(response);
			if(temp == 1){
				openNav();
			}
		}
		function RenderCart(response , id){
			$("#changeItemCart").empty();
			$("#changeItemCart").append(response);
			if(temp == 1){
				openNav();
			}
		}
    </script>

	@endsection
</body>
</html>
