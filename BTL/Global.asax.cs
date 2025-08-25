using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using static BTL.Sanpham;

namespace BTL
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            List<Sanpham> products = new List<Sanpham>();
            products.Add(new Sanpham(1, "Áo Thun Nam Chạy Bộ Graphic Dot", "S", "red", "descripsion", "../image/anh1.png", "../image/anh1next.png", "../image/giamgia.png", 199000, 189000));    
            products.Add(new Sanpham(2, "Áo Thun Nam Chạy Bộ Graphic Dot", "S", "blue", "descripsion", "../image/anh2.png ","../image/anh2next.png", "../image/giamgia.png", 199000, 189000));
            products.Add(new Sanpham(3, "Áo Thun Nam Chạy Bộ Graphic Dot", "S", "green", "descripsion", "../image/anh3.png", "../image/anh3next.png", "../image/giamgia.png", 199000, 189000));
            products.Add(new Sanpham(4, "Áo thun thể thao Jacquard Seamless", "M", "grey", "descripsion", "../image/anh4.png", "../image/anh4next.png", "../image/giamgia.png", 199000, 189000));
            products.Add(new Sanpham(5, "Áo Tanktop thể thao Melange", "M", "black", "descripsion", "../image/anh5.png", "../image/anh5next.png", "../image/giamgia.png", 199000, 189000));
            products.Add(new Sanpham(6, "Áo thun thể thao Mesh", "M", "green", "descripsion", "../image/anh6.png", "../image/anh6next.png", "../image/giamgia.png", 199000, 189000));
            products.Add(new Sanpham(7, "Set Đồ Chạy Bộ Vent Tech 3in1", "L", "black", "descripsion", "../image/anh22.png", "../image/anh7next.png", "../image/giamgia.png", 199000, 189000));
            products.Add(new Sanpham(8, "Set Gym Comfort II", "L", "blue", "descripsion", "../image/anh81.png", "../image/anh8next.png", "../image/giamgia.png", 199000, 189000));
            products.Add(new Sanpham(9, "Áo Thun Chạy Bộ Graphic Special", "XL", "white", "descripsion", "../image/anh9.png", "../image/anh9next.png", "../image/giamgia.png", 199000, 189000));
            products.Add(new Sanpham(10, "Áo giữ nhiệt Essential Brush Poly cổ trung", "XL", "black", "descripsion", "../image/anh10.png", "../image/anh10next.png", "../image/giamgia.png", 199000, 189000));
            Application["listProducts"] = products;

            List<NgDung> ngdungs = new List<NgDung>();
            Application["dsNgDung"] = ngdungs;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            List<Sanpham> products = new List<Sanpham>();
            //List<User> users = new List<User>();
            //products.Add(new Product(1, "Item 1", "This is the description of item 1","./asset/image/img_1.jpg","nam", 1000));
            //products.Add(new Product(2, "Item 2", "This is the description of item 2","./asset/image/img_2.jpg","nu", 3000));
            Session["products"] = products;
            //Application["users"] = users;
            //ad123
            //Session["account"] = "";

        }
    }
}