<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chitietsp.aspx.cs" Inherits="BTL.Chitiet.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title></title>
    <link rel="stylesheet" href="chitietsp.css"/>
</head>
<body>
     
       <div class="main">
    <header class="header">
        <div class="header__logo">
         <a href="../trangchu/trangchu.aspx" >
        <img src="../image/logo.png" alt="Logo" class="header__logo-img" />
    </a>
        </div>
               <div class="header__navbar">
                 <ul class="header__navbar-list ">
                 
                     <li class="header__navbar-item">
                         <a href="../trangchu/trangchu.aspx" class="header__navbar-item-link ">OUTLET</a></li>
                     <li class="header__navbar-item">
                         <a href="" class="header__navbar-item-link">SẢNPHẨM</a></li>
                     <li class="header__navbar-item">
                         <a href="../danhmuc/danhmuc.aspx" class="header__navbar-item-link">ĐồTHỂTHAO</a></li>
                     <li class="header__navbar-item">
                         <a href="" class="header__navbar-item-link">ĐỒLÓT</a></li>
                     <li class="header__navbar-item">
                         <a href="" class="header__navbar-item-link">MẶCHÀNGNGÀY</a></li> 
                     <li class="header__navbar-item">
                         <a href="" class="header__navbar-item-link">HÀNGĐẶCBIỆT</a></li> 
                     <li class="header__navbar-item  "><a href="../QLTaiKhoan/qltaikhoan.aspx" class="header__navbar-item-link">Quản lý TK</a></li> 
                 </ul>
                 </div>
                 <div class="header__item">
                     
                         <div class="item__search-wrap">
                             <input type="text" name="search" class="item__search-input" placeholder="Nhập để tìm kiếm"/>
     
                             <a href="" class="search-icon-link" >
                                <img src="../image/iconsearch.png" alt="user" class="search-icon-link-icon"/>
                             </a>
     
                         </div>
                         <div calss="item__user">
                             <a href="../dangnhap/dangnhap.aspx" class="user-icon-link" >
                                 <img src="../image/user.png" alt="user"  class="user__icon"/>
                             </a>
                         </div>
                         <div class="item__cart">
                             <a href="../giohang/giohang.aspx" class="user-icon-link" >
                                 <img src="../image/cart.png" alt="user"  class="cart__icon"/>
                             </a>
                         </div>
                 
                    
                 </div>
     
        </header>

        <div class="container">
            <div class="top-section" id="productInfo"  runat="server">
             
            </div>     
            <!-- Phần Đặc điểm nổi bật -->
            <div class="product-highlights">
                <h2 class="highlights-title">Đặc điểm nổi bật</h2>
                <div class="highlights-content">
                    <!-- Cột trái: Icon và thông tin -->
                    <div class="highlights-icons">
                        <div class="highlight-item">
                            <img src="../image/anhicon.png" alt="Co giãn"/>
                            <p>Co giãn</p>
                        </div>
                        <div class="highlight-item">
                             <img src="../image/anhicon.png" alt="Thoáng mát"/>
                            <p>Thoáng mát</p>
                        </div>
                        <div class="highlight-item">
                            <img src="../image/anhicon.png" alt="Thấm hút"/>
                            <p>Thấm hút</p>
                        </div>
                        <div class="highlight-item">
                            <img src="../image/anhicon.png"  alt="Chống xù lông"/>
                            <p>Chống xù lông</p>
                        </div>
                    </div>
                </div>
            
                <!-- Thông tin bổ sung và hình ảnh sản phẩm chia làm 2 cột -->
                <div class="additional-content">
                    <!-- Cột trái: Thông tin bổ sung -->
                    <div class="additional-info">
                        <h3>Thông tin sản phẩm</h3>
                        <ul>
                            <li>-Chất liệu 100% Cotton</li>
                            <li>-Xử lý hoàn thiện giúp bề mặt vải ít xù lông, mềm mịn và bền màu hơn</li>
                            <li>-Kiểu dệt Pique giúp áo thoáng mát</li>
                            <li>-Độ dày vải vừa phải giúp áo tôn dáng</li>
                            <li>-Phù hợp với đi làm, đi chơi</li>
                            <li>-Sản xuất tại Nhà máy Tessellation (TGV), Việt Nam.</li>
                            <li>-Người mẫu: 186cm - 77kg, mặc áo 2XL</li>
                        </ul>
                    </div>
            
                    <!-- Cột phải: Hình ảnh sản phẩm -->
                    <div class="highlight-image">
                        <img src="../image/mau.png" alt="Áo Polo"/>
                    </div>
                </div>
            </div>

            <div class="goiy">
                <h2 class="goiy_content">Gợi ý sản phẩm</h2>
              
                <div class="container__grid">
                      <div class="container__gridcolumn">
                           <img src="../image/anh1.png"  alt="anhtrangphuc" class="ctn__grid-img"/>
                            <div class="ctm__grid-description">
                                <button class="grid-descrip-btn-black"></button>
                                <button class="grid-descrip-btn-white"></button>
                                <p class="grid-descrip-text">Áo giữ nhiệt Ex-wram Lenzing Modal</p>
                                <div class="grid-descrip-cost">
                                    <p class="descrip-currcost">199000 đ</p>
                                    <p class="descrip-discount">7%</p>
                                </div>
                                <p class="descrip-costori">189000 đ</p>
                            </div>
                        </div>
               
                   
                         <div class="container__gridcolumn">
                            <img src="../image/anh22.png" alt="anhtrangphuc" class="ctn__grid-img"/>
                            <div class="ctm__grid-description">
                                <button class="grid-descrip-btn-black"></button>
                                <button class="grid-descrip-btn-white"></button>
                                <p class="grid-descrip-text">Áo giữ nhiệt Ex-wram Lenzing Modal</p>
                                <div class="grid-descrip-cost">
                                    <p class="descrip-currcost">199000 đ</p>
                                    <p class="descrip-discount">7%</p>
                                </div>
                                <p class="descrip-costori">189000 đ</p>
                            </div>
                        </div>
               
           
                    
                            <div class="container__gridcolumn">
                                <img src="../image/anh81.png" alt="anhtrangphuc" class="ctn__grid-img"/>
                                <div class="ctm__grid-description">
                                    <button class="grid-descrip-btn-black"></button>
                                    <button class="grid-descrip-btn-white"></button>
                                    <p class="grid-descrip-text">Áo giữ nhiệt Ex-wram Lenzing Modal</p>
                                    <div class="grid-descrip-cost">
                                        <p class="descrip-currcost">199000 đ</p>
                                        <p class="descrip-discount">7%</p>
                                    </div>
                                    <p class="descrip-costori">189000 đ</p>
                                </div>
                            </div>
           
        
                 
                          <div class="container__gridcolumn">
                            <img src="../image/anh2.png"  alt="anhtrangphuc" class="ctn__grid-img"/>
                            <div class="ctm__grid-description">
                                <button class="grid-descrip-btn-black"></button>
                                <button class="grid-descrip-btn-white"></button>
                                <p class="grid-descrip-text">Áo giữ nhiệt Ex-wram Lenzing Modal</p>
                                <div class="grid-descrip-cost">
                                    <p class="descrip-currcost">199000 đ</p>
                                    <p class="descrip-discount">7%</p>
                                </div>
                                <p class="descrip-costori">189000 đ</p>
                            </div>
                        </div>
                   
                         <div class="container__gridcolumn">
                             <img src="../image/anh3.png" alt="anhtrangphuc" class="ctn__grid-img"/>
                            <div class="ctm__grid-description">
                                <button class="grid-descrip-btn-black"></button>
                                <button class="grid-descrip-btn-white"></button>
                                <p class="grid-descrip-text">Áo giữ nhiệt Ex-wram Lenzing Modal</p>
                                <div class="grid-descrip-cost">
                                    <p class="descrip-currcost">199000 đ</p>
                                    <p class="descrip-discount">7%</p>
                                </div>
                                <p class="descrip-costori">189000 đ</p>
                            </div>
                        </div>            
                </div>          
        </div>
 </div>
       
       <div class="footer">
    <div class="footer__comment">
     <p class="ft__comment-title">TIÊU DAO luôn lắng nghe bạn!</p>
     <p class="ft__comment-content">Chúng tôi luôn trân trọng và mong đợi nhận được mọi ý kiến đóng góp từ khách hàng để có thể nâng cấp trải nghiệm dịch vụ và sản phẩm tốt hơn nữa.</p>
     <div class="ft__comment-contribute">Đóng góp ý kiến</div>
    </div>
       
    <div class="ft__contact">
        <div class="ft__contact-item">
            <img src="../image/Hotline_icon.png" alt="email" class="ft__contact-img"/>
           <div class="ft__contact-content">
            <p class="ft__title">Hotline</p>
            <p class="ft__Text">6666.666666-1313.131313</p>
           </div>
           
        </div>
        <div class="ft__contact-item">
            <img src="../image/email_icon.png" alt="email" class="ft__contact-img"/>
            <div class="ft__contact-content"> 
            <p class="ft__title">Email</p>
            <p class="ft__Text">Tieudao@daotieu.em</p>
            </div>
        </div>
    </div>
  <div class="ft__socialnw">
    <a href="">
        <img src="../image/Facebook_icon.png" alt="fbimg" class="ft__socialnw-icon"/>
    </a>
    <a href="">
       <img src="../image/zalo_icon.png" alt="zaloimg" class="ft__socialnw-icon"/>
    </a>
    <a href="">
        <img src="../image/tiktok_icon.png" alt="ttimg" class="ft__socialnw-icon"/>
    </a>
    <a href="">
       <img src="../image/instargram_icon.png" alt="isimg" class="ft__socialnw-icon"/>
    </a>
    <a href="">
       <img src="../image/youtobe_icon.png" alt="ytimg" class="ft__socialnw-icon"/>
    </a>

  </div>
   <div id="hr"></div>

</div>
</div>
         
    
<script>

    function onIncrementHandler() {
        const itemQuantity = document.querySelector(`.itemQuantity`);



        if (+itemQuantity.innerHTML <= 10) {
            itemQuantity.innerHTML = +itemQuantity.innerHTML + 1;
            ;
        }
    }

    function onDecrementHandler() {
        const itemQuantity = document.querySelector(`.itemQuantity`);



        if (+itemQuantity.innerHTML > 1) {
            itemQuantity.innerHTML = +itemQuantity.innerHTML - 1;

        }
    }
   

    //thêm giỏ hàng
    function themgiohang(thisBTN) {

        alert("Thêm thành công");
        let listCart = []
        listCart = JSON.parse(localStorage.getItem("cart"))
        let isDuplicate = false;


        if (listCart) {
            for (let i = 0; i < listCart.length; i++) {
                if (listCart[i].id == +thisBTN.dataset.id) {
                    isDuplicate = true; // Đánh dấu là trùng lặp
                    listCart[i].quantity += +document.querySelector('.itemQuantity').innerHTML;
                    localStorage.setItem("cart", JSON.stringify(listCart));
                    break;
                };
            }

            if (!isDuplicate) {
                console.log('Exist')
                listCart.push({
                    id: +thisBTN.dataset.id,
                    name: thisBTN.dataset.name,
                    size: thisBTN.dataset.size,
                    color: thisBTN.dataset.color,
                    image: thisBTN.dataset.image,
                    price: +thisBTN.dataset.newprice,
                    quantity: +document.querySelector(`.itemQuantity`).innerHTML
                });
                // Dấu + ở đằng trước là một cách để ép nó về kiểu number
                localStorage.setItem("cart", JSON.stringify(listCart))
            }

        } else {
            console.log(' No Exist')
            localStorage.setItem("cart", JSON.stringify([{
                id: +thisBTN.dataset.id,
                name: thisBTN.dataset.name,
                size: thisBTN.dataset.size,
                color: thisBTN.dataset.color,
                image: thisBTN.dataset.image,
                price: +thisBTN.dataset.newprice,
                quantity: +document.querySelector(`.itemQuantity`).innerHTML
            }]));

        }

        //localStorage.removeItem("cart");
    };
</script>
</body>
</html>
