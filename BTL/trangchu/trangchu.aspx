<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="BTL.trangchu.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <style>
        
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


body {
    font-family: 'Arial', sans-serif;
    background-color: #f8f8f8;
}

.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 100px;
    padding: 20px;
    background-color: #000000;
    position: relative;
}

.header__logo {
    max-width: 80px;
}

.header__logo img {
    width: 80px;
}

.header__navbar-list {
    list-style: none;
    display: flex;
}

.header__navbar-item {
    margin: 0 15px;
    padding: 10px 0;
}

.header__navbar-item-link {
    color: white;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
    padding: 10px 15px;
    text-transform: uppercase;
}

.item_red .header__navbar-item-link {
    background-color: #f15a24;
    border-radius: 3px;
}

.header__navbar-item-link:hover {
    background-color: #444;
    border-radius: 3px;
}

/* Ô tìm kiếm và icon */
.header__item {
    display: flex;
    align-items: center;
}

.item__search-wrap {
    position: relative;
    margin-right: 20px;
}

.item__search-input {
    width: 250px;
    padding: 10px;
    border-radius: 50px;
    border: none;
    font-size: 14px;
    padding-left: 35px;
    outline: none;
}

.search-icon-link {
    position: absolute;
    top: 50%;
    left: 10px;
    transform: translateY(-50%);
}

.search-icon-link-icon {
    width: 18px;
}

.user__icon, .cart__icon {
    width: 40px;
    margin-right: 20px;
}

.user-icon-link{
    text-decoration: none;
}
.userText{
    color:white;
    font-size: 15px;
    margin-left: 3px;
}
/* Banner */
.banner {
    position: relative;
    display: flex;

}

.banner__img {
 
    width: 118%;
    height: 500px;
    object-fit: cover;

}


/**/ 
.container{
    height: 500px;
   display: block;
    
}
.container__btn{
    height: 50px;
    margin-top: 30px;
    width: 450px;
    margin-left: 30px;
    display: flex;

}
.ctn__btn-item{
    width: 200px;
    height: 50px;
    margin-left: 30px;
    border-radius: 50px;
   font-weight: bold;

}
.black {
    background-color: black;
    color: white;
}
.ctn__btn-item:hover{
    cursor: pointer;
}
.container__xt{
    justify-content: end;
}

/*container grid */
.container__grid{
    display: flex;
}
.container__gridcolumn{
    width: 250px;
    height: 400px;
    margin-top: 30px;
    margin-left: 60px;
    border-radius: 12px;

}

.ctn__grid-img{
    width: 100%;
    height: 70%;
    border-radius: 12px;
}

.ctn__grid-img-giamgia{
    width: 100%;
    height: 30px;
    margin-top: -5px;
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
}.grid-descrip-btn-black
{
    width: 50px;
    height: 25px;
    background-color: rgb(0, 0, 0);
    border: none;
    border-radius: 10px;
    cursor: pointer;
    
}
.grid-descrip-btn-white{
    width: 50px;
    height: 25px;
    background-color: rgb(204, 203, 203);
    border: none;
    border-radius: 10px;
    cursor: pointer;

}

.grid-descrip-btn-red
{
    width: 50px;
    height: 25px;
    background-color: rgb(255, 0, 0);
    border: none;
    border-radius: 10px;
    cursor: pointer;
    
}
.grid-descrip-btn-green{
    width: 50px;
    height: 25px;
    background-color: rgb(67, 168, 60);
    border: none;
    border-radius: 10px;
    cursor: pointer;
    

}
.grid-descrip-btn-grey{
    width: 50px;
    height: 25px;
    background-color: rgb(86, 86, 86);
    border: none;
    border-radius: 10px;
    cursor: pointer;
    

}
.grid-descrip-btn-blue{
    width: 50px;
    height: 25px;
    background-color: rgb(0, 21, 255);
    border: none;
    border-radius: 10px;
    cursor: pointer;
    }
.grid-descrip-btn-black:focus {
    outline: none;
    border: 2px solid rgb(255, 0, 0); 

}
.grid-descrip-btn-white:focus {
    outline: none;
    border: 2px solid rgb(255, 0, 0); 
}
.grid-descrip-btn-green:focus {
    outline: none;
    border: 2px solid rgb(255, 0, 0); 

}
.grid-descrip-btn-blue:focus {
    outline: none;
    border: 2px solid rgb(255, 0, 0); 
}
.grid-descrip-btn-grey:focus {
    outline: none;
    border: 2px solid rgb(255, 0, 0); 
}
.grid-descrip-text{
    color: var(--text-color);
    font-size: 13px;
    margin-top: 5px;

}
.grid-descrip-cost{
    display: flex;
    width: 100%;
    margin-top: 5px;
    
}

.descrip-discount{
    width: 25px;
    background-color: rgb(0, 94, 255);
    margin-left: 5px;
    border-radius: 5px;
    font-size: 13px;
    color: #ffffff;
}
.descrip-size{
     font-weight: bold;
     font-size: 15px;
    margin-left: 150px;
  margin-top: -25px;
}
.descrip-currcost{
    font-weight: bold;
    font-size: 15px;
}
.descrip-costori{
   margin-left: 5px;
   color:#c8c8c8 ;
   font-size: 15px;
 }
 /* banner item */
 .banner__item{
width: 100%;
height: 500px;
position: relative;
 }
.banner__item-img{
 width: 100%;
 height: 100%;
}
.banner__item-descrip{
    position: absolute;
    margin-top: -200px;
    margin-left: 50px;
}
.bnn__item-title{
    color: #000000;
    font-size: 60px;
    font-weight: bold;
}
.bnn__item-text{
    color: #000000;
    font-size: 18px;
    font-weight: 700;
}
.bnn__item-link{
    background-color: rgb(4, 0, 255);
    width: 200px;
    height: 50px;
    color: white;
    font-weight: bold;
    font-size: 18px;
    border-radius: 25px;
    display: flex;
    justify-content: center; 
    align-items: center; 
    text-align: center;
}
.bnn__item-link:hover{
    cursor: pointer;
}
/* banner item smail*/
.banner__iten-small{
    width: 100%;
    display: flex;
    height: 500px;
}

.item-small{
    width: 80%;
    height: 500px;
    position: relative;
     }
    .banner__item-img-small{
        margin: 40px;
     width: 90%;
     height: 90%;
     border-radius: 30px;
    }
    .banner__item-descrip-small{
        position: absolute;
        margin-top: -250px;
        margin-left: 50px;
    }
    .bnn__item-title-small{
    
        color: #ffffff;
        font-size: 60px;
        font-weight: bold;
    }
  
    .bnn__item-link-small{
        background-color: rgb(255, 255, 255);
        width: 200px;
        height: 50px;
        color: rgb(0, 0, 0);
        font-weight: bold;
        font-size: 18px;
        border-radius: 25px;
        display: flex;
        justify-content: center; 
        align-items: center; 
        text-align: center;
    }
    .bnn__item-link-small:hover{
        cursor: pointer;
    }
.joinTieudao{
    background-color: rgb(0, 8, 255);
    height: 120px;
    margin-top: 100px;
}
.jointdText{
      display: flex;
      justify-content: center;
      padding-top: 20px;
      font-size: 25px;
      color: #ffffff;
      font-weight: bold;
}
.jointd{
       margin-left: 600px;
       margin-top: 10px;
       background-color: #ffffff;
       height: 40px;
       width: 350px;
       border-radius: 20px;
      border: none;
      color: #f15a24;
      font-weight: 700;
      display: flex;
    align-items: center;
    justify-content: center;
      
}
.jointd:hover{
    cursor: pointer;
}
    /* footer*/
.footer{
    background-color: #000000;
    width: 100%;
    height: 400px;
    position: relative;

}
.footer__comment{
    position: absolute;
    width: 600px;
    margin: 40px 60px;
   
    
}
.ft__comment-title{
    color: #ffffff;
    font-size: 20px;
    font-weight: bold;
}
.ft__comment-content{
    margin-top: 5px;
    color: #f0eeee;
    font-size: 15px;
    line-height: 20px;
    
}
.ft__comment-contribute{
    margin-top: 30px;
    background-color: #2f5acf;
    height: 50px;
    width: 150px;
    color: #e4e2e2;
    display: flex;
    justify-content: center;
    align-items: center;
    border: 0;
    font-weight: bold;
    border-radius: 20px;
}
.ft__comment-contribute:hover{
    color: #000000;
    background-color: #ffffff;
    font-weight: bold;

}

.ft__contact{
    position: absolute;
    width: 300px;
    margin-left: 700px;
    margin-top: 20px;

}
.ft__contact-item{
    display: flex;
    margin-top: 20px;
}
.ft__contact-img{
    margin-right: 20px;
}
.ft__title{
    font-size: 15px;
    color: #ffffff;
}
.ft__Text{
    margin-top: 4px;
    font-size: 17px;
    color: #ffffff;
    font-weight: bold;
}

.ft__socialnw{
   display: flex;
   position: absolute;
   margin-left: 1050px;
   margin-top: 50px;
}
.ft__socialnw-icon{
    height: 50px;
    margin-right: 30px;
}

#hr{
    position: absolute;
    background-color: #f0eeee;
    margin-top: 250px;
    height: 2px;
    width: 90%;
    margin-left: 70px;
}


@media (max-width: 1069px) {

    .header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
        padding: 0 1%; /* 10px đổi thành 1% */
        position: relative;
    }

    .header__logo-img {
        width: 30%; 
        margin: 1% 0; /* 10px đổi thành 1% */
    }

    .header__item {
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .header__navbar {
        width: 100%;
        margin-top: 1%; /* 10px đổi thành 1% */
    }

    .header__navbar-list {
        display: flex;
        flex-direction: column;
        align-items: center;
        background-color: #5b5858;
        margin-top: 4%; /* 45px đổi thành 4% */
        width: 100%;
        right: 0;
        position: absolute;
    }

    .header__navbar-item {
        padding: 1% 0; /* 10px đổi thành 1% */
        text-align: center;
        width: 100%;
    }

    .banner {
        width: 100%;
        height: auto;
        margin-top: 30%; /* 300px đổi thành 30% */
    }

    .banner__img {
        width: 100%;
        height: auto;
    }

    .container {
        position: relative; /* Đã sửa từ absolute thành relative */
    }

    .container__btn {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .container__grid {
        display: grid;
        grid-template-columns: 1fr;
        gap: 1%; /* 10px đổi thành 1% */
    }

    .banner__iten-small {
        display: flex;
        flex-direction: column;
        margin-left: -3%; /* -30px đổi thành -3% */
        position: relative;
    }

    .joinTieudao {
        margin-top: 50%; /* 500px đổi thành 50% */
        width: 100%; /* Thay thế width 1080px thành 100% */
    }

    .jointdText {
        font-size: 2%; /* 20px đổi thành 2% */
    }

    .jointd {
        margin-left: auto; /* Hoặc text-align: center trong parent để căn giữa */
    }

    .footer {
        display: flex;
        width: 100%; /* Thay thế width 1080px thành 100% */
        flex-direction: column;
        align-items: center;
        text-align: center;
        padding: 2%; /* 20px đổi thành 2% */
    }

    .footer__comment,
    .ft__socialnw,
    #hr {
        width: 100%; 
        margin: 1% 0; /* 10px đổi thành 1% */
    }

    .footer__comment {
        margin-top: 3%; /* 30px đổi thành 3% */
    }

    .ft__comment-content {
        width: 100%;
    }

    .ft__contact {
        display:block ;
        margin: auto;
        margin-top: 10%; /* 100px đổi thành 10% */
        margin-left:33%;
    }

    .ft__socialnw {
        margin-top: 25%;
      

    }

    #hr {
        height: 0.1%; /* 1px đổi thành 0.1% */
        background-color: #ccc;
    }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
          
   <header class="header">
  <div class="header__logo">
    <img src="../image/logo.png" alt="Logo" class="header__logo-img">
  </div>
  <div class="header__navbar">
    <ul class="header__navbar-list ">
      <li class="header__navbar-item item_red"><a href="" class="header__navbar-item-link ">OUTLET</a></li>
      <li class="header__navbar-item"><a href="" class="header__navbar-item-link">SẢNPHẨM</a></li>
      <li class="header__navbar-item"><a href="../danhmuc/danhmuc.aspx" class="header__navbar-item-link">ĐồTHỂTHAO</a></li>
      <li class="header__navbar-item"><a href="" class="header__navbar-item-link">ĐỒLÓT</a></li>
      <li class="header__navbar-item"><a href="" class="header__navbar-item-link">MẶCHÀNGNGÀY</a></li> 
      <li class="header__navbar-item"><a href="" class="header__navbar-item-link">HÀNGĐẶCBIỆT</a></li> 
      <li class="header__navbar-item"><a href="../QLTaiKhoan/qltaikhoan.aspx" class="header__navbar-item-link">Quản lý TK</a></li> 
    </ul>
  </div>
  <div class="header__item">
    <div class="item__search-wrap">
      <input type="text" name="search" class="item__search-input" placeholder="Nhập để tìm kiếm">
      <a href="" class="search-icon-link">
        <img src="../image/iconsearch.png" alt="search" class="search-icon-link-icon">
      </a>
    </div>
    <div class="item__user">
      <a href="../dangnhap/dangnhap.aspx" class="user-icon-link">
        <img src="../image/user.png" alt="user" class="user__icon">
      </a>
    </div>
    <div class="item__cart">
      <a href="../giohang/giohang.aspx" class="user-icon-link">
        <img src="../image/cart.png" alt="cart" class="cart__icon">
      </a>
    </div>
  </div>
</header>

<div class="banner">
  <a href="" class="banner__link">
    <img src="../image/AnhBanner.png" alt="banner" class="banner__img">
  </a>
</div>

<div class="container">
  <div class="container__btn">
    <input type="button" name="btn_spm" class="ctn__btn-item black" value="Sản phẩm mới">
    <input type="button" name="btn_bcn" class="ctn__btn-item" value="Bán chạy nhất">
  </div>

  <div class="container__grid" id="idwrapper_DS1" runat="server"></div>

  <div class="banner__item" id="idwrapper_Banner1" runat="server">
    <a href="">
      <img src="../image/BannerItem1.png" alt="banner" class="banner__item-img">
    </a>
    <div class="banner__item-descrip">
      <p class="bnn__item-title">MẶC HÀNG NGÀY</p>
      <p class="bnn__item-text">Tặng 01 áo thun cotton, cho một số sản phẩm</p>
      <div class="bnn__item-link">KHÁM PHÁ NGAY</div>
    </div>
  </div>

  <div class="container__grid" id="idwrapper_DS2" runat="server"></div>

  <div class="banner__item" id="idwrapper_Banner12" runat="server">
    <a href="">
      <img src="../image/BannertItemwo.png" alt="banner" class="banner__item-img">
    </a>
    <div class="banner__item-descrip">
      <p class="bnn__item-title">MẶC HÀNG NGÀY</p>
        <p class="bnn__item-text">Tặng 01 áo thun cotton, cho một số sản phẩm</p>
      <div class="bnn__item-link">KHÁM PHÁ NGAY</div>
    </div>
  </div>

  <div class="banner__iten-small">
    <div class="item-small">
      <a href="">
        <img src="../image/BannerItemSmall1.png" alt="banner" class="banner__item-img-small">
      </a>
      <div class="banner__item-descrip-small">
        <p class="bnn__item-title-small">GYM COLLECTION</p>
        <div class="bnn__item-link-small">KHÁM PHÁ NGAY</div>
      </div>
    </div>
    <div class="item-small">
      <a href="">
        <img src="../image/BannerItemsmall2.png" alt="banner" class="banner__item-img-small">
      </a>
      <div class="banner__item-descrip-small">
        <p class="bnn__item-title-small">RACQUET SPORTS COLLECTION</p>
        <div class="bnn__item-link-small">KHÁM PHÁ NGAY</div>
      </div>
    </div>
  </div>

  <div class="joinTieudao">
    <p class="jointdText">Tham gia TIÊU DAO nhận ngay Voucher 20% + hoàn tiền khi mua sắm</p>
    <input type="button" name="join" class="jointd" value="ĐĂNG KÝ MIỄN PHÍ hoặc ĐĂNG NHẬP">
  </div>

  <div class="footer">
    <div class="footer__comment">
      <p class="ft__comment-title">TIÊU DAO luôn lắng nghe bạn!</p>
      <p class="ft__comment-content">Chúng tôi luôn trân trọng và mong đợi nhận được mọi ý kiến đóng góp từ khách hàng để có thể nâng cấp trải nghiệm dịch vụ và sản phẩm tốt hơn nữa.</p>
      <div class="ft__comment-contribute">Đóng góp ý kiến</div>
    </div>

    <div class="ft__contact">
      <div class="ft__contact-item">
        <img src="../image/Hotline_icon.png" alt="hotline" class="ft__contact-img">
        <div class="ft__contact-content">
          <p class="ft__title">Hotline</p>
          <p class="ft__Text">6666.666666-1313.131313</p>
        </div>
      </div>
      <div class="ft__contact-item">
        <img src="../image/email_icon.png" alt="email" class="ft__contact-img">
        <div class="ft__contact-content">
          <p class="ft__title">Email</p>
          <p class="ft__Text">Tieudao@daotieu.em</p>
        </div>
      </div>
    </div>

    <div class="ft__socialnw">
      <a href=""><img src="../image/Facebook_icon.png" alt="facebook" class="ft__socialnw-icon"></a>
      <a href=""><img src="../image/zalo_icon.png" alt="zalo" class="ft__socialnw-icon"></a>
      <a href=""><img src="../image/tiktok_icon.png" alt="tiktok" class="ft__socialnw-icon"></a>
      <a href=""><img src="../image/instargram_icon.png" alt="instagram" class="ft__socialnw-icon"></a>
      <a href=""><img src="../image/youtobe_icon.png" alt="youtube" class="ft__socialnw-icon"></a>
    </div>
    <div id="hr"></div>
  </div>
</div>

    </form>
</body>
</html>
