using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL
{
    public partial class Thi01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string ten;
            string ngsinh;
            string sothich;
            ten = Request.Form["tk"].ToString();
            ngsinh = Request.Form["ngaysinh"].ToString();
            sothich = Request.Form["sothich"].ToString();

            List<NgDung> ngdung = (List<NgDung>)Application["dsNgDung"];
            ngdung.Add(new NgDung(ten,ngsinh, sothich));
            Application["dsNgDung"] = ngdung;
            for (int i = 0; i < ngdung.Count; i++)
            {
                Response.Write("Ten" + ngdung[i].Ten + "NgSInh" + ngdung[i].Nsinh + "Sothich" + ngdung[i].Sothich);
            }
            

        }
    }
}