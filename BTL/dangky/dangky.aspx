<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangky.aspx.cs" Inherits="BTL.dangky.dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
     <script>
         function checkDangnhap() {
             event.preventDefault();
             var tk = document.getElementById("tk").value;
             var pass = document.getElementById("pass").value;


             document.getElementById("tk-error").textContent = "";
             document.getElementById("pass-error").textContent = "";

             var isValid = true;

             var phoneRegex = /^[0-9]{10}$/;
             var emailOrPhoneRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

             if (!emailOrPhoneRegex.test(tk) && !phoneRegex.test(tk)) {
                 document.getElementById("tk-error").textContent = "Vui lòng nhập email hoặc số điện thoại hợp lệ.";
                 isValid = false;
             }

             if (pass.trim() === "") {
                 document.getElementById("pass-error").textContent = "Vui lòng nhập mật khẩu.";
                 isValid = false;
             }

             if (isValid) {
                 window.location.href = "../trangchu/trangchu.aspx";

             }
         }
     </script>
    <style>
        body {
            background-color: rgba(0, 0, 0, .7);
        }
        .error-message {
            color: red;
            font-size: 12px;
        }
        .container {
            background-color: #ffffff;
            width: 560px;
            border: 30px;
            position: relative;
            height: 550px;
            margin: auto;
            margin-top: 10%;
            border-radius: 10px;
        }
        #btn_exit {
            position: absolute;
            width: 40px;
            height: 40px;
            border-radius: 30px;
            background-color: black;
            border: solid #ffffff 2px;
            color: #ffffff;
            right: -20px;
            top: -20px;
            font-size: 20px;
            transition: transform 0.1s ease;
        }
        #btn_exit:hover {
            cursor: pointer;
            transform: scale(1.25);
        }
        .lable {
            position: absolute;
        }
        .lable_text {
            background-color: rgb(0, 72, 255);
            padding: 10px;
            border-radius: 5px;
            width: 130px;
            color: #ffffff;
            font-size: 25px;
            margin-left: 30px;
            font-weight: 800;
        }
        .lable_content {
            margin-top: -10px;
            margin-left: 30px;
            font-size: 20px;
            font-weight: bold;
            color: var(--text-color);
        }
        .Voucher {
            position: absolute;
            margin-top: 90px;
        }
        .Voucher__img {
            height: 65px;
            margin: 30px;
        }
        .login {
            position: absolute;
            margin-top: 230px;
            display: block;
            height: 130px;
            width: 500px;
            margin-left: 30px;
        }
        .loin_tk {
            display: block;
            width: 100%;
        }
        .info {
            display: flex;
            margin-bottom: 10px;
        }
        #name, #SDT, #tk, #pass, #class {
            width: 47%;
            height: 40px;
            border-radius: 50px;
            border: solid #989898 1px;
            padding-left: 10px;
            outline: none;
        }
        #SDT {
            margin-left: 10px;
        }
        #tk, #pass, #class { 
            margin-top: 20px;
            display: block;
            width: 97%;
        }
        #tk:focus, #pass:focus {
            border: solid #0026ff 1px;
        }
        #sbdk {
            color: #ffffff;
            font-size: 20px;
            background-color: black;
            margin-top: 20px;
            display: block;
            width: 100%;
            height: 50px;
            border-radius: 50px;
            padding-left: 10px;
            border: none;
        }
        #sbdk:hover {
            background-color: rgba(160, 159, 159, 0.7);
            cursor: pointer;
        }
        .register {
            position: absolute;
            margin-top: 20px;
            width: 100%;
            display: flex;
            justify-content: space-between;
        }
        .register__dk, .register__forgot {
            text-decoration: none;
            color: #0026ff;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form id="formdk" runat="server" method="post">
        <div class="container"> 
            <button id="btn_exit" type="button" onclick="exit()">X</button>
            <div class="lable">
                <p class="lable_text">TIÊU DAO</p>
                <p class="lable_content">Rất nhiều đặc quyền và quyền lợi mua sắm đang chờ bạn</p>
            </div>
            <div class="Voucher">
                <img src="./imageheader/quyenloi.png" alt="" class="Voucher__img"/>
            </div>
            <div class="login">
                <div class="loin_tk">
                    <div class="info">
                        <input type="text" name="name" id="name" placeholder="Tên của bạn"/>
                        <div id="name-error" class="error-message"></div>
                        <input type="text" name="SDT" id="SDT" placeholder="SĐT của bạn"/>
                        <div id="SDT-error" class="error-message"></div> 
                    </div>
                    <input type="text" name="tk" id="tk" placeholder="Tên tài khoản của bạn"/>
                    <div id="tk-error" class="error-message"></div> 
                    <input type="password" name="pass" id="pass" placeholder="Mật khẩu"/>
                    <div id="pass-error" class="error-message"></div>
                    <input type="submit" name="sbdk" id="sbdk" value="Đăng ký" onclick="checkDangky(event)"/>
                    
                </div>
                <div class="register">
                    <a href="../dangnhap/dangnhap.aspx" class="register__dk">Đăng nhập</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
