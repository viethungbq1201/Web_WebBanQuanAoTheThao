using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL
{
    public class NgDung
    {
        private string ten;
        private string nsinh;
        private string sothich;
        

        public NgDung()
        {

        }

        public NgDung(string ten, string nsinh, string sothich)
        {
            this.ten = ten;
            this.nsinh = nsinh;
            this.sothich = sothich;
        }

        public string Ten
        {
            get { return ten; }
            set { ten = value; }
        }
        public string Nsinh
        {
            get { return nsinh; }
            set { nsinh = value; }
        }

        public string Sothich
        {
            get { return sothich; }
            set { sothich = value; }
        }
        
    }
}