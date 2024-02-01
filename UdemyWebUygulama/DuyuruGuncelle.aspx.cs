using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
             //öncelikle ilgili sayfadan ıd değerini taşımam gerek, duyurulistesinde guncelle kısmına yazdığım ile ıd değerini tasıycak diğer syfadan

                DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();

                TxtDuyuruID.Text = id.ToString(); //duyuru ıd normal ıd'den gelicek olan değer olarak seç dedik
                //yani günceleye basınca hangisine bastıysan güncelle sayfasına ıd'si seçili halde gelir

                TxtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DUYURUBASLIK;//güncelleye basınca duyurbaslıgı aynı şekil gelir
                TextArea1.Value = dt.DuyuruSec(id)[0].DUYURUICERIK;//güncelleye basınca aynı şekil gelir içerik güncelle sfsında
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//güncelle butonuna çift tıkladım
        {
            //bunu yazmadan dataset1.xsd kısmından duyurugüncelle sorgusu oluşturman lazım,UPDATE seçerek

            int id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());

            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();

            dt.DuyuruGuncelle(TxtDuyuruBaslik.Text, TextArea1.Value, Convert.ToInt32(TxtDuyuruID.Text));

            Response.Redirect("DuyuruListesi.aspx");
        }
    }
}