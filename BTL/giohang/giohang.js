document.addEventListener("DOMContentLoaded", function () {
    console.log("DOM đã sẵn sàng");
    capNhatDon();
    tongTien();
});

function tangSL(id) {
    const itemQuantity = document.querySelector(`.itemQuantity_${id}`);

    const itemPrice = document.querySelector(`.price_${id}`);
    if (+itemQuantity.innerHTML === 20) {
        return;
    } else {
        itemQuantity.innerHTML = +itemQuantity.innerHTML + 1;
        itemPrice.innerHTML = (+itemQuantity.innerHTML * itemPrice.dataset.price).toLocaleString('vi-VN') + "đ";
        tongTien();
        capNhatSoLuongMoiSP(id, +itemQuantity.innerHTML);
    }
}
function giamSL(id) {
    const itemQuantity = document.querySelector(`.itemQuantity_${id}`);

    const itemPrice = document.querySelector(`.price_${id}`);
    if (+itemQuantity.innerHTML === 1) {
        return;
    } else {
        itemQuantity.innerHTML = +itemQuantity.innerHTML - 1;
        itemPrice.innerHTML = (+itemQuantity.innerHTML * itemPrice.dataset.price).toLocaleString('vi-VN') + "đ";
        tongTien();
        capNhatSoLuongMoiSP(id, +itemQuantity.innerHTML);
    }
}

function tongTien() {
    const tt = document.querySelector(".cart__summary");
    const arrItems = document.querySelectorAll(".cart__item-price");

    const arrPrices = [];
    arrItems.forEach((item) => {
        const priceString = item.innerHTML.replace(/[đ.]/g, '').trim();
        const price = parseInt(priceString, 10);
        arrPrices.push(price);
    });

    const totalPrice = arrPrices.reduce((pre, next) => pre + next, 0);

    tt.innerHTML = `<p> Thành tiền: <span class="cart__total">${totalPrice.toLocaleString('vi-VN')}đ</span></p>
    <a href="../TrangDatHang/TrangDatHang.aspx"><button class="cart__checkout">Đặt hàng</button></a>`;
}

function xoaSP(id) {
    const listCartItems = JSON.parse(localStorage.getItem("cart"));
    const filterItem = listCartItems.filter((item) => item.id !== id);
    localStorage.setItem("cart", JSON.stringify(filterItem));
    capNhatDon();
    tongTien();
}

function capNhatDon() {
    const listCartItems = JSON.parse(localStorage.getItem("cart"));

    let sHtml = "";
    if (listCartItems) {
        for (var i = 0; i < listCartItems.length; i++) {

            sHtml += "<div class=\"cart__item\">";
            sHtml += "<input type=\"checkbox\" class=\"cart__item-checkbox\">";
            sHtml += "<img src='" + listCartItems[i].image + "' class=\"cart__item-img\">";
            sHtml += "<div class=\"cart__item-details\">";
            sHtml += "<h2 class=\"cart__item-name\">" + listCartItems[i].name + "</h2>";
            sHtml += "<span class='cart__item-price price_" + listCartItems[i].id + "' data-price='" + listCartItems[i].price + "'>" + (listCartItems[i].price * listCartItems[i].quantity).toLocaleString("vi-VN") + "đ</span>";
            sHtml += "</div>";
            sHtml += "<div class=\"cart__item-quantity\">";
            sHtml += "<button class=\"cart__item-bt\" onclick=\"giamSL(" + listCartItems[i].id + ")\">-</button>";
            sHtml += "<span class='cart__item-quantity-value itemQuantity_" + listCartItems[i].id + "'>" + listCartItems[i].quantity + "</span>";
            sHtml += "<button class=\"cart__item-bt\" onclick=\"tangSL(" + listCartItems[i].id + ")\">+</button>";
            sHtml += "</div>";
            sHtml += "<button class=\"cart__item-remove\" onclick=\"xoaSP(" + listCartItems[i].id + ")\">Xóa</button>";
            sHtml += "</div>";
        }
    }

    const cartContainer = document.querySelector(".cart__items");
    cartContainer.innerHTML = sHtml;
}

function capNhatSoLuongMoiSP(id, quantity) {
    const listCartItems = JSON.parse(localStorage.getItem("cart"));
    listCartItems.forEach((item) => {
        if (item.id === id) {
            item.quantity = quantity;
        }
    });

    localStorage.setItem("cart", JSON.stringify(listCartItems));
}
