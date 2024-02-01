using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWebUygulama
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            { //ortalama hesabı yaparken tekrar sf yenilenmesin diye yazdık çünkü sınav3 falan 0 oluyo hesapla diyince


                int notttid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());

                DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();

                TxtOgrId.Text = dt.NotGetir2(notttid)[0].OGRENCIID.ToString();
                TxtOgrAdSoyad.Text = dt.NotGetir2(notttid)[0].OGRENCIADSOYAD;
                TextBoxAd.Text = dt.NotGetir2(notttid)[0].DERSAD;
                TxtSinav1.Text = dt.NotGetir2(notttid)[0].SINAV1.ToString();
                TxtSinav2.Text = dt.NotGetir2(notttid)[0].SINAV2.ToString();
                TxtSinav3.Text = dt.NotGetir2(notttid)[0].SINAV3.ToString();
                TxtOrt.Text = dt.NotGetir2(notttid)[0].ORTALAMA.ToString();
                TxtDurum.Text = dt.NotGetir2(notttid)[0].DURUM.ToString();

            }
        }

        protected void BtnHesapla_Click(object sender, EventArgs e)//hesaplama butonuna çift tıkladık
        {
            double sinav1, sinav2, sinav3;
            double ortalama;
            sinav1 = Convert.ToInt32(TxtSinav1.Text);//sınav1 değişkenimizi textbox değerinden gelen texti inte cevirerek atadık
            sinav2 = Convert.ToInt32(TxtSinav2.Text);
            sinav3 = Convert.ToInt32(TxtSinav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3;

            TxtOrt.Text = ortalama.ToString("0.00");//ortalamayı bulup textboxımıza yazdırıcaz ama text oldugu için stringe cevirip atama yap

            if(ortalama > 50 )
            {
                TxtDurum.Text = "True";
            }
            else
            {
                TxtDurum.Text = "False";
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)//güncelle butonuna çift tıkla,tasarım kısmından
        {
            int notttid = Convert.ToInt32(Request.QueryString["NOTID"].ToString());

            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();

            dt.NotGuncelle(byte.Parse(TxtSinav1.Text), byte.Parse(TxtSinav2.Text), byte.Parse(TxtSinav3.Text),
               decimal.Parse(TxtOrt.Text),bool.Parse(TxtDurum.Text), notttid);
            //byte gösteriyor sinavları tinyint kaydettik diye, byte çeviricen o yuzden dt.notguncelle ustune
            //gelince gösteriyor zaten her biri için tür

            Response.Redirect("NotListesi.aspx");
        }
    }
}