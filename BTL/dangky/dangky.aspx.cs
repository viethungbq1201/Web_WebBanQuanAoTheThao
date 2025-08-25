using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.dangky
{
    public partial class dangky : System.Web.UI.Page
    {
        private static string filePath = HttpContext.Current.Server.MapPath("~/App_Data/users.json");
        private Json<User> jsonUser = new Json<User>(filePath);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var hoTen = Request.Form["name"];
                var matKhau = Request.Form["pass"];
                var taiKhoan = Request.Form["tk"];
                var soDienThoai = Request.Form["SDT"];

                // Kiểm tra xem tài khoản đã tồn tại chưa
                var users = jsonUser.LoadToList();
                if (users.Any(u => u.Taikhoan == taiKhoan))
                {
                    // Tài khoản đã tồn tại, thông báo cho người dùng
                    Response.Write("<script>alert('Tài khoản đã tồn tại. Vui lòng chọn tài khoản khác.');</script>");
                }
                else
                {
                    // Tạo Id mới bằng cách tìm Id lớn nhất hiện tại và cộng thêm 1
                    int newId = users.Count > 0 ? users.Max(u => u.Id) + 1 : 1;

                    // Tạo người dùng mới với Id
                    var newUser = new User
                    {
                        Id = newId,
                        Taikhoan = taiKhoan,
                        MatKhau = matKhau,
                        HoTen = hoTen,
                        SoDienThoai = soDienThoai
                    };

                    // Thêm người dùng mới vào danh sách và lưu lại vào file JSON
                    users.Add(newUser);
                    jsonUser.SaveToFileJson(users);

                    // Chuyển hướng sau khi đăng ký thành công
                    Response.Redirect("../trangchu/trangchu.aspx");
                }
            }
        }
    }
}
