using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.Chitiet
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();

            }
        }
        private void LoadProducts()
        {
 
            int id;
            if (Request.QueryString["id"] == null || !int.TryParse(Request.QueryString["id"], out id))
            {
                id = 1; 
            }

            LoadProductById(id); 
        }
        private void LoadProductById(int id)
        {
     
            List<Sanpham> products = (List<Sanpham>)Application["listProducts"];
            if (products == null)
            {
                productInfo.InnerHtml = "<p>Không có sản phẩm nào lúc này.</p>";
                return;
            }
            string sHTML = "";
            foreach (Sanpham product in products)
            {
                if (product.Id == id)
                {
                    sHTML += $"<div class='product-gallery'><div class='main-image'>"
                             + $"<img src='{product.Image}' alt='Main Image'/></div></div>"
                             + $"<div class='product-info'>"
                             + $"<h1 class='product-title'>{product.Name}</h1>"
                             + $"<div class='rating'><span class='stars'>⭐⭐⭐⭐⭐</span>"
                             + $"<span class='rating-score'>(4.8)</span></div>"
                             + $"<div class='price'>"
                             + $"<span class='original-price'>{product.Price.ToString("N0")} đ</span>"
                             + $"<span class='discount-price'>{product.NewPrice.ToString("N0")} đ</span>"
                             + $"<span class='discount'>-10%</span></div>"
                             + $"<div class='product-color'><h3>Màu sắc:</h3>"
                             + $"<div class='color-options'><div class='color-box' style='background-color: {product.Color};' title='{product.Color}'></div></div></div>"
                             + $"<div class='size-options'><h3>Kích cỡ:</h3><button class='size-btn'>{product.Size}</button></div>"
                             + $"<div class='cart-section'><div class='quantity'><button class='quantity-btn' onclick='onDecrementHandler()'>-</button>"
                             + $"<span class='itemQuantity'>1</span><button class='quantity-btn' onclick='onIncrementHandler()'>+</button></div>"
                             + $"<button class='add-to-cart' data-id='{product.Id}' data-name='{product.Name}' data-image='{product.Image}' "
                             + $"data-color='{product.Color}' data-size='{product.Size}' data-price='{product.Price}' data-newPrice='{product.NewPrice}' onclick='themgiohang(this)'>Thêm vào giỏ hàng</button></div>"
                             + $"<div class='additional-info'><p><strong>Đổi trả:</strong> Miễn phí giao hàng cho đơn từ 500k. Chính sách đổi trả trong 60 ngày.</p>"
                             + $"<p><strong>Hỗ trợ khách hàng:</strong> Hỗ trợ hoặc chat trực tiếp từ 8:30 AM - 10:00 PM</p><p><strong>Giao hàng:</strong> Đến tận nơi nhận hàng trả, hoàn tiền trong 24h</p></div></div>";
                    break;
                }
            }

            if (string.IsNullOrEmpty(sHTML))
            {
                sHTML = "<p>Không tìm thấy sản phẩm.</p>";
            }

            productInfo.InnerHtml = sHTML;
        }

    }
}