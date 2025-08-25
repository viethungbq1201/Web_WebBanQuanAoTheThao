<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thi01.aspx.cs" Inherits="BTL.Thi01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thi</title>
    <script>
        function checkDangnhap() {
            event.preventDefault();
            var tk = document.getElementById("tk").value;
            var pass = document.getElementById("pass").value;
            var birth = document.getElementById("ngaysinh").value;
            const checkboxs = document.querySelectorAll('input[name=sothich]')


            document.getElementById("tk-error").textContent = "";
            document.getElementById("pass-error").textContent = "";
            document.getElementById("ns-error").textContent = "";

            var isValid = true;

            /*
            hoten = /^[a-zA-Z]{8,50}$/
            pass = /^[0-9]$/

            if (!hoten.test(tk)) {
                document.getElementById("tk-error").textContent = "Vui lòng nhập họ tên hợp lệ.";
                isValid = false;
            }
            */
            if (pass.trim() === "") {
                document.getElementById("pass-error").textContent = "Vui lòng nhập mật khẩu.";
                isValid = false;
            }

            if (birth.trim() === "") {
                document.getElementById("ns-error").textContent = "Vui lòng nhập ngày sinh.";
                isValid = false;
            }
            /*
            if (checkboxs.length < 1 || checkboxs.length > 3) {
                document.getElementById("sothich-error").textContent = "Bạn chỉ được chọn tối đa 1-3 sở thích.";
                isValid = false;
            }
            return isValid; 
            */
            
        }


    </script>
<style>
            body{
    background-color:rgba(0, 0, 0, .7); 
}
.error-message {
    color: red;
    font-size: 12px;
}
.container{
    background-color: #ffffff;
    width: 560px;
    border: 30px;
    position: relative;
    height: 500px;
    margin: auto;
    margin-top: 10%;
    border-radius: 10px;
}
#btn_exit{
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
#btn_exit:hover{
    cursor: pointer;
    transform: scale(1.25);
}
.lable{
    position: absolute;


}
.lable_text{
    background-color: rgb(0, 72, 255);
    padding: 10px;
    border-radius: 5px;
    width:130px;
    color: #ffffff;
    font-size: 25px;
    margin-left: 30px;
    font-weight: 800;
}
.lable_content{
    margin-top: -10px;
    margin-left: 30px;
    font-size: 20px;
    font-weight: bold;
    color: var(--text-color);
}
.Voucher{
    position: absolute;
    margin-top: 90px;
}
.Voucher__img{
  height: 65px;
  margin: 30px;
}

.login{
    position: absolute;
    margin-top: 230px;
    display: block;
    height: 130px;
    width: 500px;
    margin-left: 30px;
}
.loin_tk{
    display: block;
     width: 100%;

}
#tk{
    display: block;
    width: 97%;
    height:40px;
    border-radius: 50px;
    border: solid #989898 1px;
    padding-left: 10px;
    outline: none;
     
}
#tk:focus{
    border: solid #0026ff 1px;

}
#pass{
    margin-top: 20px;
    display: block;
    width: 97%;
    height:40px;
    border-radius: 50px;
    border: solid #989898 1px;
    padding-left: 10px;
    outline: none;
}
#pass:focus{
    border: solid #0026ff 1px;

}

#sb{
    color: #ffffff;
    font-size: 20px;
    background-color: black;
    margin-top: 20px;
    display: block;
    width: 100%;
    height:50px;
    border-radius: 50px;
    padding-left: 10px;
    border: none;
}
#sb:hover{
    background-color: rgba(160, 159, 159, 0.7);
    cursor: pointer;
}
.register{
    position: absolute;
    margin-top: 420px;
    width: 100%;
    display: flex;
    justify-content: space-between;
}
.register__dk{
    text-decoration: none;
    color: #0026ff;
    font-size: 20px;

}
.register__forgot{
    text-decoration: none;
    color: #0026ff;
    font-size: 20px;

}
</style>
</head>
<body>
    <form id="form1" runat="server" method="post">
    <div class="container"> 
        <button id="btn_exit" type="button">X</button>
        <div class="lable">
            <p class="lable_text">TIÊU DAO</p>
            <p class="lable_content">Rất nhiều đặc quyền và quyền lợi mua sắm đang chờ bạn</p>
        </div>
        <div class="login">
        <div class="loin_tk">
            <input type="text" name="tk" id="tk" placeholder="Họ và tên"/>
            <div id="tk-error" class="error-message"></div> 
            <input type="password" name="pass" id="pass" placeholder="Mật khẩu"/>
            <div id="pass-error" class="error-message"></div> 
            Ngày sinh: <input type="date" name="ngaysinh" id="ngaysinh" value="" />
            <div id="ns-error" class="error-message"></div>
            <input type="checkbox" name="sothich" value="thethao" />Thể thao
            <input type="checkbox" name="sothich" value="giaitri" />Giải trí
            <input type="checkbox" name="sothich" value="caulong" />Cầu lông
            <input type="checkbox" name="sothich" value="taptheduc" />Tập thể dục
            <input type="checkbox" name="sothich" value="game" />Game
            <div id="sothich-error" class="error-message"></div>
            <input type="submit" name="sb" id="sb" value="Đăng nhập" onclick=" return checkDangnhap()"/>
        </div>
        </div>
        <div class="register">
            <a href="../dangky/dangky.aspx" class="register__dk">Đăng ký</a>
        </div>
    </div>
    </form>
</body>
</html>
