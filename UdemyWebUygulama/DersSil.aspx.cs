using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class DersSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
            //öncelikle ilgili sayfadan ıd değerini taşımam gerek, duyurulistesine yazdığım ile ıd değerini tasıycak diğer syfadan

            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter(); 
            dt.DersSil(id); //id değişkeninden gelen değeri sil dedik

            Response.Redirect("DersListesi.aspx"); //yönlendirme yaptırdık sile basınca yeniden duyurulistesi sf geli
        }
    }
}