using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false) { 

            DataSet1TableAdapters.TBL_OGRETMENTableAdapter dt = new DataSet1TableAdapters.TBL_OGRETMENTableAdapter();
            //yeni olusturdugumuz table adapterı kullandık

            DropDownList1.DataSource = dt.OgretmenListesi();//DATASET İLE METODUMUZU BAGLIYORUZ ONCE
            DropDownList1.DataTextField = "OGRTADSOYAD"; //TEXTFİELD, KULLANICIYA GÖRÜNÜCEK ALANIMIZIN İSMİ,DROPDOWN İÇERİSİNDE OLAN
            DropDownList1.DataValueField = "OGRTID"; //ARKAPLAN DEMEK,YANNİ A HOCASINI SECİNCE ARKAPLANDA ID'SİNİ ALSIN
            DropDownList1.DataBind(); //İLE İŞLEMİ TAMAMLAMIŞ OLURUZ
                                      //BU ŞEKİLDE ÖĞRETMEN LİSTESİNE ÖĞRETMEN İSİMLERİNİ ATAMA YAPMIŞ OLDUK
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//DUYURU EKLEDEKİ OLUŞTUR BUTONUNA ÇİFT TIKLADIK
        {
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
            //yukarıda ogretmen tablesini çagırdık bu sefer duyuru cagırıcan

            dt.DuyuruEkle(TxtDuyuruBaslik.Text, TextArea1.Value.ToString(), Convert.ToInt32(DropDownList1.SelectedValue));
            //aspx doyasında nasıl kaydettiysen o isimle alıcan
            //dropdownlisti int'e çevirdik çünkü ıd'e gore işlem yapıyor arka planda
            //textare1'ide stringe cevridik metinsel türden ötürü emin olmak için

            Response.Redirect("DuyuruListesi.aspx");//ekledikten sonra duyuru listesine yönlendirsin
        }
    }
}