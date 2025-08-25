document.addEventListener("DOMContentLoaded", function () {
    console.log("Trang đặt hàng đã sẵn sàng");
    hienThiSanPham();
    tinhTongTien();
});

function hienThiSanPham() {
    const cartItems = JSON.parse(localStorage.getItem("cart")) || [];
    const productContainer = document.querySelector(".container");
    let htmlContent = "";
    let totalPrice = 0;

    cartItems.forEach((item) => {
        const itemTotalPrice = item.price * item.quantity;
        totalPrice += itemTotalPrice;

        htmlContent += `
            <div class="product-card">
                <img src="${item.image}" alt="Hình ảnh sản phẩm" class="product-image">
                <div class="product-info">
                    <h2>${item.name}</h2>
                    <p>Đơn giá: ${item.price.toLocaleString('vi-VN')} VNĐ</p>
                    <p>Số lượng: ${item.quantity}</p>
                    <p>Thành tiền: ${itemTotalPrice.toLocaleString('vi-VN')} VNĐ</p>
                </div>
            </div>
        `;
    });

    htmlContent += `
    <div class="payment-section">
        <h3>Phương thức thanh toán</h3>
        <select id="payment-method" name="payment-method" class="payment-method" style="height: 30px;">
            <option value="cash-on-delivery">Thanh toán khi nhận hàng</option>
            <option value="credit-card">Thẻ tín dụng</option>
            <option value="atm-card">Thẻ ATM</option>
            <option value="internet-banking">Internet Banking</option>
        </select>
    </div>
    <div class="address-section">
        <h3>Thông tin người nhận:</h3>
        <div class="input-group">
            <label for="recipient-name">Tên người nhận:</label>
            <input type="text" id="recipient-name" name="recipient-name" placeholder="Nhập tên người nhận" required>
            <span id="recipient-name-error" class="error-message"></span>
        </div>
        <div class="input-group">
            <label for="recipient-phone">Số điện thoại:</label>
            <input type="tel" id="recipient-phone" name="recipient-phone" placeholder="Nhập số điện thoại" required>
            <span id="recipient-phone-error" class="error-message"></span>
        </div>
        <h3>Địa chỉ nhận hàng:</h3>
        <input type="text" id="delivery-address" name="delivery-address" placeholder="Nhập địa chỉ" required>
        <span id="delivery-address-error" class="error-message"></span>
    </div>
    <p>Tổng tiền tất cả sản phẩm: <span class="total-price">${totalPrice.toLocaleString("vi-VN")} VNĐ</span></p>
    <button type="button" class="order-btn" onclick="submitOrder();">Đặt Hàng</button>
    `;


    productContainer.innerHTML = htmlContent;
}

function tinhTongTien() {
    const cartItems = JSON.parse(localStorage.getItem("cart")) || [];
    let totalPrice = 0;

    cartItems.forEach(item => {
        totalPrice += item.price * item.quantity;
    });

    const totalDisplay = document.querySelector(".total-price");
    totalDisplay.textContent = totalPrice.toLocaleString('vi-VN') + " VNĐ";
}

function submitOrder() {
    const recipientName = document.getElementById("recipient-name").value.trim();
    const recipientPhone = document.getElementById("recipient-phone").value.trim();
    const deliveryAddress = document.getElementById("delivery-address").value.trim();

    const nameError = document.getElementById("recipient-name-error");
    const phoneError = document.getElementById("recipient-phone-error");
    const addressError = document.getElementById("delivery-address-error");

    let isValid = true;

    if (!recipientName) {
        nameError.textContent = "Vui lòng nhập tên người nhận.";
        isValid = false;
    } else {
        nameError.textContent = "";
    }

    if (!recipientPhone) {
        phoneError.textContent = "Vui lòng nhập số điện thoại.";
        isValid = false;
    } else if (!/^0\d{9}$/.test(recipientPhone)) {
        phoneError.textContent = "Số điện thoại phải có đủ 10 chữ số và bắt đầu bằng số 0.";
        isValid = false;
    } else {
        phoneError.textContent = "";
    }

    if (!deliveryAddress) {
        addressError.textContent = "Vui lòng nhập địa chỉ nhận hàng.";
        isValid = false;
    } else {
        addressError.textContent = "";
    }

    if (isValid) {
        window.location.href = "OrderSuccess.aspx";
    }
    localStorage.removeItem("cart");

}