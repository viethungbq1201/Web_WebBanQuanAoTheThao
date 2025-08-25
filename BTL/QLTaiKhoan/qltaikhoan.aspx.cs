using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;

namespace BTL.QLTaiKhoan
{
    public partial class qltaikhoan : System.Web.UI.Page
    {
        private static string filePath = HttpContext.Current.Server.MapPath("~/App_Data/users.json");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserData();
            }
        }

        private void LoadUserData()
        {
            //userTable.Controls.Clear();

            List<User> users = GetUsersFromFile();

            foreach (var user in users)
            {
                HtmlTableRow row = new HtmlTableRow();

                row.Cells.Add(CreateCell(user.Id.ToString()));          
                row.Cells.Add(CreateCell(user.HoTen));                 
                row.Cells.Add(CreateCell(user.Taikhoan));              
                row.Cells.Add(CreateCell(user.SoDienThoai));           

                
                HtmlTableCell actionsCell = new HtmlTableCell();
                actionsCell.Controls.Add(CreateButton("Sửa", "sua", user.Id));
                actionsCell.Controls.Add(CreateButton("Xóa", "xoa", user.Id));
                row.Cells.Add(actionsCell);

                userTable.Controls.Add(row);
            }
        }

        private List<User> GetUsersFromFile()
        {
            if (File.Exists(filePath))
            {
                string jsonData = File.ReadAllText(filePath);
                return JsonConvert.DeserializeObject<List<User>>(jsonData) ?? new List<User>();
            }
            return new List<User>();
        }

        private void SaveUsersToFile(List<User> users)
        {
            string tempFilePath = filePath + ".tmp"; 

            if (users != null && users.Count > 0)
            {
                string jsonData = JsonConvert.SerializeObject(users, Formatting.Indented);

                
                File.WriteAllText(tempFilePath, jsonData);

                
                if (File.Exists(tempFilePath))
                {
                    File.Replace(tempFilePath, filePath, null);  
                }
            }
            else
            {
                if (File.Exists(filePath))
                {
                    File.Delete(filePath);  
                }
            }
        }


        private HtmlTableCell CreateCell(string text)
        {
            HtmlTableCell cell = new HtmlTableCell();
            cell.InnerText = text;
            return cell;
        }

        private HtmlButton CreateButton(string text, string cssClass, int userId)
        {
            HtmlButton button = new HtmlButton();
            button.InnerText = text;
            button.Attributes["class"] = cssClass;
            button.Attributes["data-id"] = userId.ToString();

            if (text == "Sửa")
                button.ServerClick += SuaButton_Click;
            else if (text == "Xóa")
                button.ServerClick += XoaButton_Click;

            return button;
        }

        protected void SuaButton_Click(object sender, EventArgs e)
        {
            HtmlButton button = (HtmlButton)sender;
            int userId = int.Parse(button.Attributes["data-id"]);

            List<User> users = GetUsersFromFile();
            User userToEdit = users.FirstOrDefault(u => u.Id == userId);

            if (userToEdit != null)
            {
                userToEdit.HoTen = Request.Form["hoTen"];
                userToEdit.Taikhoan = Request.Form["taiKhoan"];
                userToEdit.SoDienThoai = Request.Form["soDienThoai"];

                SaveUsersToFile(users);
                LoadUserData();
            }
        }

        protected void XoaButton_Click(object sender, EventArgs e)
        {
            HtmlButton button = (HtmlButton)sender;
            int userId = int.Parse(button.Attributes["data-id"]);

            List<User> users = GetUsersFromFile();

            
            User userToDelete = users.FirstOrDefault(u => u.Id == userId);
            if (userToDelete != null)
            {
                users.Remove(userToDelete);  
                Console.WriteLine("User deleted: " + userToDelete.Id); 
            }

            SaveUsersToFile(users); 
            LoadUserData();
        }

    }
}
