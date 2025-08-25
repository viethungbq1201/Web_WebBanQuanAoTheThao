using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.danhmuc
{
    public partial class danhmuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hienthiDS();
        }

        private void hienthiDS()
        {
            List<Sanpham> products = (List<Sanpham>)Application["listproducts"];
            string sHtml1 = "";

            for (int i = 0; i < products.Count; i++)
            {
                if (products[i].Id >= 1 && products[i].Id <= 9)
                {
                    sHtml1 += "<div class=\"container__gridcolumn\">";                 
                    sHtml1 += $"<div class=\"img_container\">";
                    sHtml1 += $"<a href=\"../Chitiet/chitietsp.aspx?id={products[i].Id}\">";
                    sHtml1 += $"<img src=\"{products[i].Image}\" alt=\"{products[i].Name}\" class=\"ctn__grid-img\" " +
                                $"onmouseover=\"this.src='{products[i].Image2}'\" " +
                                $"onmouseout=\"this.src='{products[i].Image}'\">";
                    sHtml1 += "</a>";
                    sHtml1 += "</div>";
                    sHtml1 += $"<img src = \"{products[i].Sale}\" alt=\"giamgia\" class=\"ctn__grid-img-giamgia\">";
                    sHtml1 += $"<div class=\"ctm__grid-description\">";
                    sHtml1 += $"<button class=\"grid-descrip-btn\" style=\"background-color:{products[i].Color}\"></button>";
                    sHtml1 += $"<p class=\"descrip-size\">Size: {products[i].Size}</p>";
                    sHtml1 += $"<p class=\"grid-descrip-text\">{products[i].Name}</p>";
                    sHtml1 += $"<div class= \"grid-descrip-cost\" >";
                    sHtml1 += $"<p class= \"descrip-currcost\" >{products[i].NewPrice.ToString("N0")}đ </p>";
                    sHtml1 += $"<p class= \"descrip-discount\" > 7%</ p >";
                    sHtml1 += $"<p class= \"descrip-costori\" style = \"text-decoration:line-through; color:red \">{products[i].Price.ToString("N0")}đ </p>";
                    sHtml1 += "</div></div></div>";
                }
            }
            wrapperDS.InnerHtml = sHtml1;
        }
    }
}