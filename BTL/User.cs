using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL
{
    public class User
    {
        public int Id { get; set; }
        public string Taikhoan { get; set; }
        public string MatKhau { get; set; }
        public string HoTen { get; set; }
        public string SoDienThoai { get; set; }


        public User() { }

        public User(int id, string taikhoan, string matKhau, string hoTen, string soDienThoai)
        {
            Id = id;
            Taikhoan = taikhoan;
            MatKhau = matKhau;
            HoTen = hoTen;
            SoDienThoai = soDienThoai;
        }
    }
}