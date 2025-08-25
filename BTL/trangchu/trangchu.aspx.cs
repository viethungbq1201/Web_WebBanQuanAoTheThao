using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.trangchu
{
    public partial class trangchu : System.Web.UI.Page
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


            List<Sanpham> products = (List<Sanpham>)Application["listProducts"];

            string inner = "";
            foreach (Sanpham product in products)
            {
                if (product.Id < 6)
                {

                    inner += "<div class=\"container__gridcolumn\">";
                    inner += $"<a href=\"../Chitiet/chitietsp.aspx?id={product.Id}\">";
                    inner += $"<img src=\"{product.Image}\" alt=\"{product.Name}\" class=\"ctn__grid-img\" " +
                             $"onmouseover=\"this.src='{product.Image2}'\" " +
                             $"onmouseout=\"this.src='{product.Image}'\">";
                    inner += "</a>";
                    inner += $"<img src=\"{product.Sale}\" alt=\"giamgia\" class=\"ctn__grid-img-giamgia\">";
                    inner += "<div class=\"ctm__grid-description\">";
                    inner += $"<button class=\"grid-descrip-btn-{product.Color}\"></button>";
                    inner += $"<p class=\"descrip-size\">Size :{product.Size}</p>";
                    inner += $"<p class=\"grid-descrip-text\">{product.Name}</p>";
                    inner += "<div class=\"grid-descrip-cost\">";
                    inner += $"<p class=\"descrip-currcost\">{product.NewPrice} đ</p>";
                    inner += $"<p class=\"descrip-discount\">7%</p>";
                    inner += $"<p class=\"descrip-costori\" style=\"text-decoration: line-through; color: red;\">{product.Price} đ</p>";
                    inner += "</div></div></div>";
                }


            }

            idwrapper_DS1.InnerHtml = inner;

            string inner2 = "";

            foreach (Sanpham product in products)
            {
                if (product.Id < 11 && product.Id > 5)
                {

                    inner2 += "<div class=\"container__gridcolumn\">";
                    inner2 += $"<a href=\"../Chitiet/chitietsp.aspx?id={product.Id}\">";
                    inner2 += $"<img src=\"{product.Image}\" alt=\"{product.Name}\" class=\"ctn__grid-img\" " +
                             $"onmouseover=\"this.src='{product.Image2}'\" " +
                             $"onmouseout=\"this.src='{product.Image}'\">";
                    inner2 += "</a>";
                    inner2 += $"<img src=\"{product.Sale}\" alt=\"giamgia\" class=\"ctn__grid-img-giamgia\">";
                    inner2 += "<div class=\"ctm__grid-description\">";
                    inner2 += $"<button class=\"grid-descrip-btn-{product.Color}\"></button>";
                    inner += $"<p class=\"descrip-size\">Size :{product.Size}</p>";
                    inner2 += $"<p class=\"grid-descrip-text\">{product.Name}</p>";
                    inner2 += "<div class=\"grid-descrip-cost\">";
                    inner2 += $"<p class=\"descrip-currcost\">{product.NewPrice} đ</p>";
                    inner2 += $"<p class=\"descrip-discount\">7%</p>";
                    inner2 += $"<p class=\"descrip-costori\" style=\"text-decoration: line-through; color: red;\">{product.Price} đ</p>";
                    inner2 += "</div></div></div>";
                }


            }
            idwrapper_DS2.InnerHtml = inner2;
        }
      
    }
}