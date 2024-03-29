<header>
    <div class="grid-container" style="top: 32px;">    
        <nav role="tablist">
            <div class="navbar">
                <ul class="menu">
                    <li>
                        <div class="d">
                            <button class="d-btn" onmouseover="openDivHeaderMen()">NAM GIỚI</button>
                            <div class="divTable"></div>
                        </div>
                    </li>
                    <li>
                        <div class="d">
                            <button class="d-btn" onmouseover="openDivHeaderWomen()">NỮ GIỚI</button>
                            <div class="divTable"></div>
                        </div>
                    </li>
                    <li>
                        <div class="d">
                            <button class="d-btn">VỀ CURNON</button>
                            <div class="d2-content">
                                <div class="row2">
                                    <div class="column2">
                                        <a href="/blog"><h3>Blog</h3></a>
                                        <a href="/aboutMe"><h3>Về chúng tôi</h3></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <div style="display: flex">
                    <li>
                        <div>
                            <a href="/home">
                                <img class="nav-img" src="{{ asset('assets/img/User/layouts/curnonlogo.svg') }}">
                            </a>
                        </div>
                    </li>
                    <li class="cart">
                        <div>
                            <a href="javascript:" onclick="openNav()">
                                <div class="cart-align">
                                    <p style="font-weight: lighter; color: black">GIỎ HÀNG</p>
                                    <img width="24px" height="24px" src="{{ asset('assets/img/User/layouts/cart.png') }}">
                                </div>
                            </a>
                        </div>
                    </li>
                    <li class="user">
                        <div>
                            <a href="{{ route('user.info') }}">
                                <img width="24px" height="24px" src="{{ asset('assets/img/User/layouts/user.png') }}">
                            </a>
                        </div>
                    </li>
                    </div>
                </ul>
            </div>
        </nav>
    </div>
</header>

<div id="changeItemCart">
    @if(Session::has("Cart") != null)

    <div id="mySidebar" class="sidebar">
        <div class="sidebar-header">
            <p style="font-size: 25px; margin-left: 40px; font-weight: 600">GIỎ HÀNG CỦA BẠN</p>
            <p style="font-size: 45px; margin-left: 60px"><a href="javascript:void(0)" class="closebtn"
                    onclick="closeNav()">×</a></p>
        </div>
        <div class="sidebar-shipping">
            <p><img width="26px" height="26px" src="{{ asset('assets/img/User/Home/shipped.png') }}"></p>
            <p style="font-size:12px; color: black; margin-left: 12px">MIỄN PHÍ VẬN CHUYỂN ĐƠN HÀNG > 700K</p>
        </div>
        <div class="sidebar-product">
            @php
                $Price = 0;
            @endphp
            @foreach(Session::get('Cart')->products as $item)
            <div class="show-product-close" id="{{$item['productInfo']->id_product }}">
                {{-- <script>
                    deleteProduct({{$item['productInfo']->id_product }});
                </script> --}}
            </div>
            <div class="product01">
                <div class="pd01">
                    <div>
                        <button onclick="deleteProduct({{$item['productInfo']->id_product }})" class="showBTN">×</button>
                    </div>
                    <img width="84px" height="84px" src="{{ $item['productInfo']->img_main }}">
                </div>
                <div class="pd02">
                    <p>{{$item['productInfo']->name }}</p>
                </div>
                <div class="pd03">
                    @if($item['productInfo']->isdiscount == '1')
                            @php
                                $discountedPrice =$item['productInfo']->sellprice - $item['productInfo']->sellprice * ($item['productInfo']->discount / 100) ;
                                $finalPrice = number_format($discountedPrice) . ' đ';
                                $Price =$Price+ $discountedPrice*$item["quanty"];
                            @endphp
                            {{-- <b>{{ $finalPrice }}</b> --}}
                            <p class="tien">{{ $finalPrice }}</p>
                            
                        @else
                            <p class="tien">{{ number_format($item['productInfo']->sellprice) }} đ</p>
                            @php
                            $Price = $Price + $item['productInfo']->sellprice * $item["quanty"];
                            @endphp
                        @endif
                    {{-- <p class="tien">{{ number_format($item['productInfo']->sellprice) }} đ</p> --}}
                    <div class="Qty">
                        <form class='quantity' id="qtySave">
                            <input type='button' value='-' class='qtyminus minus' field='quantity' />
                            <input id="quanty-item-{{ $item['productInfo']->id_product }}" type='text' name='quantity' value='{{ $item["quanty"] }}' class='qty' />
                            <input type='button' value='+' class='qtyplus plus' field='quantity' />
                            <input type='button' value='Save' onclick="SaveItemCart({{ $item['productInfo']->id_product }})" field='quantity' class='qtySave2'/>
                        </form>
                    </div>
                </div>
            </div>

            @endforeach
        </div>
        <div class="sidebar-total" style="margin-top: 1%">
            <hr>
            <div class="sidebar-total-content">
                <div style="display: flex; margin-bottom: 10%">
                    <p style="color:black"><b>Thành tiền:</b></p>
                    <p style="color:red; margin-left: 45%"><b id="result">{{ number_format($Price) }} đ</b>
                    </p>
                </div>
                <div class="sidebar-total-purchase">
                    <a href="/checkout">
                        <button>
                            THANH TOÁN NGAY
                            <img width="12px" height="12px" src="{{ asset('assets/img/User/Blog/arrow.png') }}">
                        </button>
                    </a>
                </div>
            </div>
        </div>
    </div>
    @endif
</div>



<script>
    function openDivHeaderMen(){
        var divTables = document.getElementsByClassName('divTable');
        var html = `<div class='d-content'>
                                <div class='row'>
                                    <div class='column'>
                                        <a onmouseover="openCity(event, 'watch')" href='/product/men'><h3>ĐỒNG HỒ</h3></a>
                                        <a onmouseover="openCity(event, 'accessories')" href='#'><h3>PHỤ KIỆN</h3></a>
                                        <a onmouseover="openCity(event, 'leather')" href='#'><h3>DÂY ĐỒNG HỒ</h3></a>
                                    </div>
                                    <div class='row-content'>
                                        <div id="watch" class="tabcontent">
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <p style="margin-bottom: 12%; margin-top: 50%">XEM TẤT CẢ</p>
                                                <img width="24px" height="24px" src="{{ asset('assets/img/User/Blog/arrow.png') }}" >
                                            </div>
                                        </div>
                                        <div id="accessories" class="tabcontent">
                                            <div class="tabcontent-all">
                                                <div class="tabcontent-accessories">
                                                    <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FCuff_1.png&w=128&q=75">
                                                    <p>VÒNG TAY</p>
                                                </div>
                                                <div class="tabcontent-watch">
                                                    <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FDa_y_ba_t_gia_c_che_o.jpg&w=128&q=75">
                                                    <p>VÒNG CỔ</p>
                                                </div>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <p style="margin-bottom: 12%; margin-top: 140%">XEM TẤT CẢ</p>
                                                <img width="24px" height="24px" src="{{ asset('assets/img/User/Blog/arrow.png') }}" >
                                            </div>
                                        </div>
                                        <div id="leather" class="tabcontent">
                                            <img width="310px" height="310px" style="margin-left: 8%; margin-top: 4%" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fcms.curnonwatch.com%2Fuploads%2F3_ebc2dc50c4.jpeg&w=384&q=75">
                                            <div class="leather-content">
                                                <p>Từ nay bạn đã có thể biến một thành nhiều chiếc đồng hồ để thay đổi phong cách thời trang của bản thân với dây đồng hồ Curnon.
                                                </p>
                                                <button>MUA NGAY</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>`
        for (var i = 0; i < divTables.length; i++) {
            divTables[i].innerHTML = html;
        }
    }
    function openDivHeaderWomen(){
        var divTables = document.getElementsByClassName('divTable');
        var html = `<div class='d-content'>
                                <div class='row'>
                                    <div class='column'>
                                        <a onmouseover="openCity(event, 'watch')" href='/product/women'><h3>ĐỒNG HỒ</h3></a>
                                        <a onmouseover="openCity(event, 'accessories')" href='#'><h3>PHỤ KIỆN</h3></a>
                                        <a onmouseover="openCity(event, 'leather')" href='#'><h3>DÂY ĐỒNG HỒ</h3></a>
                                    </div>
                                    <div class='row-content'>
                                        <div id="watch" class="tabcontent">
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FKashmir.png&w=128&q=75">
                                                <p>KASHMIR</p>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <p style="margin-bottom: 12%; margin-top: 50%">XEM TẤT CẢ</p>
                                                <img width="24px" height="24px" src="{{ asset('assets/img/User/Blog/arrow.png') }}" >
                                            </div>
                                        </div>
                                        <div id="accessories" class="tabcontent">
                                            <div class="tabcontent-all">
                                                <div class="tabcontent-accessories">
                                                    <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FCuff_1.png&w=128&q=75">
                                                    <p>VÒNG TAY</p>
                                                </div>
                                                <div class="tabcontent-watch">
                                                    <img width="114px" height="114px" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fshop.curnonwatch.com%2Fmedia%2Fcatalog%2Fcategory%2FDa_y_ba_t_gia_c_che_o.jpg&w=128&q=75">
                                                    <p>VÒNG CỔ</p>
                                                </div>
                                            </div>
                                            <div class="tabcontent-watch">
                                                <p style="margin-bottom: 12%; margin-top: 140%">XEM TẤT CẢ</p>
                                                <img width="24px" height="24px" src="{{ asset('assets/img/User/Blog/arrow.png') }}" >
                                            </div>
                                        </div>
                                        <div id="leather" class="tabcontent">
                                            <img width="310px" height="310px" style="margin-left: 8%; margin-top: 4%" src="https://curnonwatch.com/_next/image/?url=https%3A%2F%2Fcms.curnonwatch.com%2Fuploads%2F3_ebc2dc50c4.jpeg&w=384&q=75">
                                            <div class="leather-content">
                                                <p>Từ nay bạn đã có thể biến một thành nhiều chiếc đồng hồ để thay đổi phong cách thời trang của bản thân với dây đồng hồ Curnon.
                                                </p>
                                                <button>MUA NGAY</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>`
        for (var i = 0; i < divTables.length; i++) {
            divTables[i].innerHTML = html;
        }
    }

    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            if (tabcontent[i].id === cityName) {
                tabcontent[i].style.display = "flex";
            } else {
                tabcontent[i].style.display = "none";
            }
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        evt.currentTarget.className += " active";
    }
    var temp = 0;
    const body = document.body;
    let lastScroll = 0;
    window.addEventListener("scroll", () => {
        const currentScroll = window.pageYOffset;
        if (currentScroll <= 0) {
            body.classList.remove("scroll-up");
            return;
        }

        if (currentScroll > lastScroll && !body.classList.contains("scroll-down")) {
            body.classList.remove("scroll-up");
            body.classList.add("scroll-down");
        } else if (
            currentScroll < lastScroll &&
            body.classList.contains("scroll-down")
        ) {
            body.classList.remove("scroll-down");
            body.classList.add("scroll-up");
        }
        lastScroll = currentScroll;
    });

    function openNav() {
        document.getElementById("mySidebar").style.width = "400px";
        temp = 1;
    }
    
    function closeNav() {
        document.getElementById("mySidebar").style.width = "0";
        temp = 0;
    }

    
   
    jQuery(document).ready(($) => {
        $('.quantity').on('click', '.plus, .minus', function (e) {
            let $form = $(this).closest('form.quantity');
            let $input = $form.find('input.qty');
            let val = parseInt($input.val());
            let price = parseInt($form.closest('.pd03').find('.tien').text().replace(/\D/g, '')); // Lấy giá trị thành tiền

            if ($(this).hasClass('plus')) {
                $input.val(val + 1).change();
            } else {
                if (val > 1) {
                    $input.val(val - 1).change();
                }
            }
        });
    });
    

    function SaveItemCart(id){

        var url = "{{ url('/Save-Cart/') }}/" + id + '/' + $('#quanty-item-' + id).val();

        // console.log('Save-Cart/' + id+'/' +$('#quanty-item-' + id).val());
        // console.log("{{ url('/Save-Cart/') }}/" + id + '/' + $('#quanty-item-' + id).val());

    $.ajax({
            url: url,
            type: 'GET',
        }).done(function(response){
            RenderCart(response);
            alertify.success('Đã thêm sản phẩm thành công');
        });
    }

    function toggleProduct(){
            var divTables = document.getElementsByClassName("showBTN");
            for (var i = 0; i < divTables.length; i++) {
                divTables[i].style.display = (divTables[i].style.display === 'none') ? '' : 'none';
        }
        }

        function deleteProduct(productIndex) {
            var divTables = document.getElementById(productIndex);
            divTables.style.display = '';
            var html = `<div class="product-close">
                        <h3>Đừng làm thế, xin bạn đấy!</h3>
                            <div>
                                <button class="bt01" onclick="turnback(${productIndex})">QUAY LẠI</button>
                                <button class="bt02" data-id="${productIndex}">XOÁ SẢN PHẨM</button>
                            </div>
                        </div>`

            divTables.innerHTML = html;    
        }

        function turnback(productIndex){
            var divTables = document.getElementById(productIndex);
            divTables.style.display = 'none';
        }

        $("#changeItemCart").on("click", ".bt02", function(){

        var url = "{{ url('/Delete-Cart/') }}/" + $(this).data('id') +'/'+ 1;
            console.log(url);
            $.ajax({
                url: url,
                type: 'GET',
            }).done(function(response){
                RenderCart(response);
                alertify.success('Đã xoá giỏ hàng thành công');
            });
        });

</script>

