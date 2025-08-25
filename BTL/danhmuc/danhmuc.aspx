<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="danhmuc.aspx.cs" Inherits="BTL.danhmuc.danhmuc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Danh mục sản phẩm</title>
    <link rel="stylesheet" href="danhMuc.css"/>
    <script src="danhMuc.js"></script>
</head>
<body>
    <header class="header">
        <div class="header__logo">
            <a href="../trangchu/trangchu.aspx"><img src="../image/logo.png" alt="Logo" class="header__logo-img"/></a>
        </div>
        <div class="header__navbar">
            <ul class="header__navbar-list">
                <li class="header__navbar-item">
                    <a href="../trangchu/trangchu.aspx" class="header__navbar-item-link">OUTLET</a>
                </li>
                <li class="header__navbar-item">
                    <a href="#" class="header__navbar-item-link">SẢN PHẨM</a>
                </li>
                <li class="header__navbar-item item_red">
                    <a href="#" class="header__navbar-item-link">ĐỒ THỂ THAO</a>
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

    <div class="banner">
        <a href="#" class="banner__link">
             <img src="../image/bannerdanhmuc.png.jpg" alt="banner" class="banner__img" />
        </a>
    </div>
    <div class="container">
        <div class="sidebar">
            <div class="filter-section">
                <hr/>
                <h2>Kích cỡ</h2>
                <div class="size-options">
                    <button onclick="locSize('S')">S</button>
                    <button onclick="locSize('M')">M</button>
                    <button onclick="locSize('L')">L</button>
                    <button onclick="locSize('XL')">XL</button>
                </div>
            </div>

            <div class="filter-section">
                <hr/>
                <h2>Màu sắc</h2>
                <div class="color-options">
                    <button class="phoi-mau"></button>
                    <button onclick="locMau('green')" class="xanh-la"></button>
                    <button onclick="locMau('black')" class="den"></button>
                    <button onclick="locMau('red')" class="do"></button>
                    <button onclick="locMau('grey')" class="xam"></button>            
                    <button onclick="locMau('blue')" class="xanh-blue"></button>
                </div>
            </div>
        </div>

        <div class="content">
            <div class="content-head">
                <h2>ĐỒ THỂ THAO</h2>
            </div>
            <div class="container__grid" id="wrapperDS" runat="server">

            </div> 

        </div>
        <div class="btn-add">
            <button>Xem thêm</button>
        </div>
    </div>

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
