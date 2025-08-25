<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="BTL.TrangDatHang.OrderSuccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đặt Hàng Thành Công</title>
    <link rel="stylesheet" href="DatHang.css">
    <script type="text/javascript">
    let countdown = 5;
        function startCountdown() {
            const countdownElement = document.getElementById("countdown");
            const interval = setInterval(() => {
                countdown--;
                countdownElement.innerText = countdown;

                if (countdown === 0) {
                    clearInterval(interval);
                    window.location.href = "../trangchu/trangchu.aspx";
                }
            }, 1000);
        }
        window.onload = startCountdown;</script>
</head>
<body>
    <div class="header">
        <img src="../imgs/logo.png" alt="Logo" class="logo">
        <h1>Đặt Hàng</h1>
        <img src="../imgs/AnhDatHang.png" alt="success" class="logo">
    </div>
    <div class="container" style="text-align:center">
        <img src="../imgs/success.png" alt="Icon success" class="icon">
        <h1>Bạn đã đặt hàng thành công!</h1>
        <p>Sẽ chuyển về trang chủ trong <span id="countdown">5</span> giây.</p>
    </div>
    <div class="footer">
        <p>&copy; 2024 Shop Thời Trang <b>TIÊU DAO</b></p>
    </div>
</body>
</html>
