<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="BTL.giohang.giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"/>
    <link rel="stylesheet" href="giohang.css"/>
    <script src="giohang.js"></script>
</head>
<body>
    <header class="header">
        <div class="header__logo">
            <a href="../trangchu/trangchu.aspx"> <img src="../image/logo.png" alt="Logo" class="header__logo-img"/></a>
        </div>
        <div class="header__navbar">
            <ul class="header__navbar-list">
                <li class="header__navbar-item">
                    <a href="../trangchu/trangchu.aspx" class="header__navbar-item-link">OUTLET</a>
                </li>
                <li class="header__navbar-item">
                    <a href="#" class="header__navbar-item-link">SẢN PHẨM</a>
                </li>
                <li class="header__navbar-item">
                    <a href="../danhmuc/danhmuc.aspx" class="header__navbar-item-link">ĐỒ THỂ THAO</a>
                </li>
                <li class="header__navbar-item">
                    <a href="#" class="header__navbar-item-link">ĐỒ LÓT</a>
                </li>
                <li class="header__navbar-item">
                    <a href="#" class="header__navbar-item-link">MẶC HÀNG NGÀY</a>
                </li> 
                <li class="header__navbar-item">
                    <a href="#" class="header__navbar-item-link">HÀNG ĐẶC BIỆT</a>
                </li> 
                <li class="header__navbar-item"><a href="../QLTaiKhoan/qltaikhoan.aspx" class="header__navbar-item-link">Quản lý TK</a></li> 
            </ul>
        </div>
        <div class="header__item">
            <div class="item__search-wrap">
                <input type="text" name="search" class="item__search-input" placeholder="Nhập để tìm kiếm"/>
                <a href="#" class="search-icon-link">
                    <img src="../image/iconsearch.png" alt="user" class="search-icon-link-icon"/>
                </a>
            </div>
            <div class="item__user">
                <a href="../dangnhap/dangnhap.aspx" class="user-icon-link">
                    <img src="../image/user.png" alt="user" class="user__icon"/>
                </a>
            </div>
            <div class="item__cart">
                <a href="../giohang/giohang.aspx" class="user-icon-link">
                    <img src="../image/cart.png" alt="user" class="cart__icon"/>
                </a>
            </div>
        </div>
    </header>
    
    <main class="cart">
        <h1>Giỏ hàng của bạn</h1>
        <div class="cart__items" id="danhsach" runat="server">
            
        </div>
        <div class="cart__summary" id="thanhtoan" runat="server">
            
        </div>
    </main>

    <footer class="footer">
        <div class="footer__comment">
            <p class="ft__comment-title">TIÊU DAO luôn lắng nghe bạn!</p>
            <p class="ft__comment-content">Chúng tôi luôn trân trọng và mong đợi nhận được mọi ý kiến đóng góp từ khách hàng để có thể nâng cấp trải nghiệm dịch vụ và sản phẩm tốt hơn nữa.</p>
            <div class="ft__comment-contribute">Đóng góp ý kiến</div>
        </div>
        <div class="ft__contact">
            <div class="ft__contact-item">
                <img src="../image/Hotline_icon.png"  alt="hotlineimg" class="ft__contact-img">
                <div class="ft__contact-content">
                    <p class="ft__title">Hotline</p>
                    <p class="ft__Text">6666.666666-1313.131313</p>
                </div>
            </div>
            <div class="ft__contact-item">
                <img src="../image/email_icon.png"  alt="hotlineimg" class="ft__contact-img">
                <div class="ft__contact-content"> 
                    <p class="ft__title">Email</p>
                    <p class="ft__Text">Tieudao@daotieu.em</p>
                </div>
            </div>
        </div>
        <div class="ft__socialnw">
            <a href="">
                <img src="../image/Facebook_icon.png"  alt="fbimg" class="ft__socialnw-icon">
            </a>
            <a href="">
                 <img src="../image/zalo_icon.png" alt="zaloimg" class="ft__socialnw-icon">
            </a>
            <a href="">
                <img src="../image/tiktok_icon.png" alt="ttimg" class="ft__socialnw-icon">
            </a>
            <a href="">
                <img src="../image/instargram_icon.png"  alt="isimg" class="ft__socialnw-icon">
            </a>
            <a href="">
                <img src="../image/youtobe_icon.png"  alt="ytimg" class="ft__socialnw-icon">
            </a>
        </div>
        <div id="hr"></div>
    </footer>
</body>
</html>

