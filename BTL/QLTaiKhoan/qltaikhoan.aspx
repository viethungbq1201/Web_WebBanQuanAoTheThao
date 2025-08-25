<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="qltaikhoan.aspx.cs" Inherits="BTL.QLTaiKhoan.qltaikhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="qltaikhoan.css"/>
    <title>Quản lý tài khoản</title>
    <style>
 * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}



body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    padding-top: 40px;
    display: flex;
    justify-content: center;
    align-items: flex-start;
    min-height: 100vh;
    margin: 0;
}
.header {
    display: flex;
    justify-content: start; 
    height: 100px;
    padding: 20px;
    background-color: #000000;
    position: fixed;
    top: 0;
    width: 100%;
    z-index: 1000;
}


.header__logo {
    max-width: 80px;
    margin-right: 20px; 
}

    .header__logo img {
        width: 80px;
    }
.header__navbar {
    flex: 1;
    margin-left: 20px;
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


.container {
    width: 100%;
    max-width: 100%; 
    background-color: white;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}
table {
    width: 80%; /* Bảng rộng bằng 80% màn hình */
    border-collapse: collapse;
    margin: auto;
}
    </style>
</head>
<body>
 <header class="header">
     <div class="header__logo">
      <a href="../trangchu/trangchu.aspx" >
     <img src="../image/logo.png" alt="Logo" class="header__logo-img" />
 </a>
     </div>
            <div class="header__navbar">
              <ul class="header__navbar-list ">
              
                  <li class="header__navbar-item ">
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
                  <li class="header__navbar-item item_red"><a href="../QLTaiKhoan/qltaikhoan.aspx" class="header__navbar-item-link">Quản lý TK</a></li>  
              </ul>
              </div>
              <div class="header__item">    
                   <div class="header__actions">
                       <a href="../dangnhap/dangnhap.aspx" class="user-icon-link">
                        <img src="../image/user.png" alt="user" class="user__icon">
                        </a>
                    <div class="user-name">
                       <span>Administrator</span>
                    </div>
                    </div>
                </div>
  
     </header>
   
    <form id="form1" runat="server">
        <div class="container">
            <h2>Quản lý tài khoản</h2>
           <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Họ và tên</th>
                        <th>Tên đăng nhập</th>
                        <th>SDT</th>
                        <th>Hành động</th>
                    </tr>
                 </thead>
            <tbody id="userTable" runat="server">
               
            </tbody>
        </table>
        </div>
    </form>
</body>
</html>
