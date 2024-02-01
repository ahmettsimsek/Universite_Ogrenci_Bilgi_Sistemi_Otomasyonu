using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                //öncelikle ilgili sayfadan ıd değerini taşımam gerek, duyurulistesinde guncelle kısmına yazdığım ile ıd değerini tasıycak diğer syfadan

                DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();

                TxtDersID.Text = id.ToString(); //duyuru ıd normal ıd'den gelicek olan değer olarak seç dedik
                //yani günceleye basınca hangisine bastıysan güncelle sayfasına ıd'si seçili halde gelir

                TxtDersAd.Text = dt.DersGetir(id)[0].DERSAD;//güncelleye basınca duyurbaslıgı aynı şekil gelir
             
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());

            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();

            dt.DersGuncelle(TxtDersAd.Text, Convert.ToInt32(TxtDersID.Text));

            Response.Redirect("DersListesi.aspx");
        }
    }
}