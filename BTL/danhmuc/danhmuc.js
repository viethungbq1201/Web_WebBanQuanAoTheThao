// Định nghĩa hàm tạo đối tượng sản phẩm
function Sanpham(id, name, size, color, description, image, image2, sale, price, newPrice) {
    return {
        id: id,
        name: name,
        size: size,
        color: color,
        description: description,
        image: image,
        image2: image2,
        sale: sale,
        price: price,
        newPrice: newPrice
    };
}

// Khởi tạo mảng products
const products = [
    Sanpham(1, "Áo Thun Nam Chạy Bộ Graphic Dot", "S", "red", "description", "../image/anh1.png", "../image/anh1next.png", "../image/giamgia.png", 199000, 189000),
    Sanpham(2, "Áo Thun Nam Chạy Bộ Graphic Dot", "S", "blue", "description", "../image/anh2.png", "../image/anh2next.png", "../image/giamgia.png", 199000, 189000),
    Sanpham(3, "Áo Thun Nam Chạy Bộ Graphic Dot", "S", "green", "description", "../image/anh3.png", "../image/anh3next.png", "../image/giamgia.png", 199000, 189000),
    Sanpham(4, "Áo thun thể thao Jacquard Seamless", "M", "grey", "description", "../image/anh4.png", "../image/anh4next.png", "../image/giamgia.png", 199000, 189000),
    Sanpham(5, "Áo Tanktop thể thao Melange", "M", "black", "description", "../image/anh5.png", "../image/anh5next.png", "../image/giamgia.png", 199000, 189000),
    Sanpham(6, "Áo thun thể thao Mesh", "M", "green", "description", "../image/anh6.png", "../image/anh6next.png", "../image/giamgia.png", 199000, 189000),
    Sanpham(7, "Set Đồ Chạy Bộ Vent Tech 3in1", "L", "black", "description", "../image/anh22.png", "../image/anh7next.png", "../image/giamgia.png", 199000, 189000),
    Sanpham(8, "Set Gym Comfort II", "L", "blue", "description", "../image/anh81.png", "../image/anh8next.png", "../image/giamgia.png", 199000, 189000),
    Sanpham(9, "Áo Thun Chạy Bộ Graphic Special", "XL", "white", "description", "../image/anh9.png", "../image/anh9next.png", "../image/giamgia.png", 199000, 189000),
];

// Hàm lọc theo kích cỡ
function locSize(size) {
    const filteredProducts = products.filter(product => product.size === size);
    const button = event.target;

    button.classList.toggle('active');

    if (button.classList.contains('active')) {
        locSP(filteredProducts);
    } else {
        button.blur();
        locSP(products);
    }
}

// Hàm lọc theo màu sắc
function locMau(color) {
    const filteredProducts = products.filter(product => product.color === color);
    const button = event.target;

    button.classList.toggle('active');

    if (button.classList.contains('active')) {
        locSP(filteredProducts);
    } else {
        button.blur();
        locSP(products);
    }
}

// Function to update product display based on filtered list
function locSP(fillProducts) {
    const hienthiDS = document.getElementById("wrapperDS");

    // Clear existing content
    hienthiDS.innerHTML = ""; // Use hienthiDS to clear the content
    let sHtml = "";
    for (let i = 0; i < fillProducts.length; i++) {
        sHtml += "<div class=\"container__gridcolumn\">";
        sHtml += "<div class=\"img_container\">";
        sHtml += "<img src=\" " + fillProducts[i].image + "\" alt=\" " + fillProducts[i].name + "\" class=\"ctn__grid-img\" " +
            "onmouseover=\"src=' " + fillProducts[i].image2 + "'\" " +
            "onmouseout=\"src=' " + fillProducts[i].image + "'\">";
        sHtml += "</div>";
        sHtml += "<img src = \" " + fillProducts[i].sale + "\" alt=\"giamgia\" class=\"ctn__grid-img-giamgia\">";
        sHtml += "<div class=\"ctm__grid-description\">";
        sHtml += "<button class=\"grid-descrip-btn\" style=\"background-color: " + fillProducts[i].color + "\"></button>";
        sHtml += "<p class=\"descrip-size\">Size:  " + fillProducts[i].size + "</p>";
        sHtml += "<p class=\"grid-descrip-text\"> " + fillProducts[i].name + "</p>";
        sHtml += "<div class= \"grid-descrip-cost\" >";
        sHtml += "<p class= \"descrip-currcost\" > " + fillProducts[i].newPrice.toLocaleString("vi-VN") + "đ </p>";
        sHtml += "<p class= \"descrip-discount\" > 7%</p>";
        sHtml += "<p class= \"descrip-costori\" style = \"text-decoration:line-through; color:red \"> " + fillProducts[i].price.toLocaleString("vi-VN") + "đ </p>";
        sHtml += "</div></div></div>";
    }
    hienthiDS.innerHTML = sHtml;
}
