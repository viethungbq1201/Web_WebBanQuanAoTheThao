using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL.dangnhap
{
    public partial class dangnhap : System.Web.UI.Page
    {
        private static string filePath = HttpContext.Current.Server.MapPath("~/App_Data/users.json"); // Đường dẫn đến file JSON
        private Json<User> jsonUser = new Json<User>(filePath);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var tenDangNhap = Request.Form["tk"];
                var matKhau = Request.Form["pass"];


                var users = jsonUser.LoadToList();


                var existingUser = users.Find(u => u.Taikhoan == tenDangNhap && u.MatKhau == matKhau);

                if (existingUser != null)
                {
                    Session["UserName"] = true;
                    Response.Write("<script>alert('Đăng nhập thành công!');</script>");
                    Response.Redirect("../trangchu/trangchu.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Tên đăng nhập hoặc mật khẩu không đúng.');</script>");
                }
            }
        }
    }
}