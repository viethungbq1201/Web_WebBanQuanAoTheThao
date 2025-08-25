using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL
{
    public class Sanpham
    {
       
            private int id;
            private string name;
            private string size;
            private string color;
            private string description;
            private string image;
            private string image2;
            private string sale; 
            private long price;
            private long newPrice;


            public Sanpham(int id, string name, string size, string color, string description, string image, string image2, string sale, long price, long newPrice)
            {
                this.id = id;
                this.name = name;
                this.size = size;
                this.color = color;
                this.description = description;
                this.image = image;
                this.image2 = image2;
                this.sale = sale;
                this.price = price;
                this.newPrice = newPrice;
            }

            public int Id { get => id; set => id = value; }
            public string Name { get => name; set => name = value; }
            public string Size { get => size; set => size = value; }
            public string Color { get => color; set => color = value; }
            public string Description { get => description; set => description = value; }
            public string Image { get => image; set => image = value; }
            public string Image2 { get => image2; set => image2 = value; }
            public string Sale { get => sale; set => sale = value; }
            public long Price { get => price; set => price = value; }
            public long NewPrice { get => newPrice; set => newPrice = value; }
        }
        public class Banner
        {
            public string Link { get; set; }
            public string ImageUrl { get; set; }
            public string Title { get; set; }
            public string Description { get; set; }
            public string LinkText { get; set; }

            public Banner(string link, string imageUrl, string title, string description, string linkText)
            {
                Link = link;
                ImageUrl = imageUrl;
                Title = title;
                Description = description;
                LinkText = linkText;
            }
        }
}