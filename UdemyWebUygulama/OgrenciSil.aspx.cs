using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class OgrenciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            //öncelikle ilgili sayfadan ıd değerini taşımam gerek, convert yapmassan hata verir veritabanında int tuttuk bu id bilgisibi

            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

            dt.OgrenciSil(id); //id değişkeninden gelen değeri sil dedik

            Response.Redirect("WebForm1.aspx"); // anasayfay yönlendirsin sonra bizi
        }
    }
}