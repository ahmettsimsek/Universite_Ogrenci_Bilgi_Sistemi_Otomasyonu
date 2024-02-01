using Azure.Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //!!!!!!!!!!
            // İLK OLARAK BOŞ DEĞER OLDUGU İÇİN FOTOGRAF KISMINDA FOTO HARİC HER YERİ DOLDURDUK,
            //SİSTEME KAYIT EDERKEN İLK ETAPTA FOTO HARİÇ TÜM DEĞERLERİ KAYDEDİCEZ SONRA FOTO KAYDEDİCEZ
            //BUNU YAPMASSAK HATA ALIR


            if (!IsPostBack)
            {  //BUNUN İLE GUNCELLEYE HER BASTIGINDA SF YENİLENİCEK, YENİLENMESİNİN ONUNE GECİCEK

                try
                {
                    int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                    //öncelikle ilgili sayfadan ıd değerini taşımam gerek yazdırıyım istiyom, veriden gangi id gelirse işim kolay olsun diye id değişkenine atyom

                    TxtOgrId.Text = id.ToString();
                    //güncelle butonuna basınca tıkladıgınn id gelsin güncelleme sayfasında ama diğer kısımlar bos gelir sadece id

                    DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

                    TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                    //güncelle butonuna basınca bu komut sayesinde id numarasını getir diyor(biz değişkene atadık kolay olsun diye)
                    //köşeli parantez ile hafızaya aldığı kaçıncı değeri getiricek 0. index dedik, yani ilk değer
                    //peki bu ilk değerin neyini getiricek adını getiricek

                    TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                    TxtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                    TxtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                    TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSİFRE;
                    TxtOgrFoto.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF;

                }
                catch (Exception)
                {

                    TxtOgrFoto.Text = "LİNK GİRİNİZ!";
                    //DEDİK Kİ SORUN YOKSA (TRY ) İŞLEMLERİNİ GERÇEKLEŞTİR,
                    //SORUN VARSA (CATCH) KISMINA GEL ORAYA ŞU DEĞERİ ATA BİZ LİNK YAZDIK,
                    //YANİ GÜNCELLE BUTONUNA BASTIGINDA HATA ALMAMASI İÇİN HER ŞEYİ ALIR SİFREYE KADAR, FOTO KISMINA DA LİNK GİR YAZR
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//GUNCELLE BUTONUNA CİFT TIKLADIK TASARIMDAN
        {
            int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());

            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

            dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text,
                TxtOgrFoto.Text,Convert.ToInt32(TxtOgrId.Text));
            //dataset1'e nasıl kaydettiysen oyle alcan, ogrıd int oldugu için kabul etmedi convert yazdık

            Response.Redirect("WebForm1.aspx");
            //güncelleye batıktan sonra bir şeyleri değiştirip ana sayfaya atsın bizi
        }
    }
}


// int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString()); için tanımı;

//Request.QueryString["DUYURUID"]: Bu ifade, sayfa isteği (request) içindeki sorgu dizesi parametrelerine erişmek için kullanılır.
//Bu durumda, "DUYURUID" adlı bir sorgu dizesi parametresini almaya çalışıyoruz.

//.ToString(): Bu ifade, sorgu dizesi parametresini alındıktan sonra onu bir stringe dönüştürür.
//"DUYURUID" sorgu dizesi zaten bir string türündedir, ancak bu ifade genellikle güvenli olması açısından eklenir.

//Convert.ToInt32(...): Bu ifade, bir string ifadeyi int türüne dönüştürmeye çalışır.
//Ancak, bu ifade içinde ToString() metodu kullanıldığı için aslında bir string ifadeyi başka bir string ifadeye dönüştürüyor. 
//Bu, Convert.ToInt32'nin bir string ifade üzerinde çalışmasını sağlar.



