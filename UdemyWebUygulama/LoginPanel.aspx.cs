using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;   //Bu ve altındaki kütühaneyi ekle
using System.Data.SqlClient;
using System.Windows.Forms;

namespace UdemyWebUygulama
{
    public partial class LoginPanel : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection("Data Source = AHMET; Initial Catalog = UdemySiteDB; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            baglanti.Open(); //command içindekini sql tablosundaki isme göre yapıcan
            SqlCommand komut = new SqlCommand("select * from Tbl_Ogrencı where Numara =@p1 and OgrSifre = @p2", baglanti);

            komut.Parameters.AddWithValue("@p1", TxtNumara.Text); //bu şekilde numara ve şifrenın uyup uymadıgını kontrol edicek
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);

            SqlDataReader dr = komut.ExecuteReader(); //bunu komutla ilişkilendşrdim

            if (dr.Read()) //eğer okuma işlemi başarılı ise
            {
                //Response.Redirect("OgrenciWebForm.aspx?Numara="+TxtNumara.Text); --bunun yerine session kullancaz

                Session.Add("Numara",TxtNumara.Text); //numara alanına oturum ekledik, bu alan txtnumaradan gelcek
                Response.Redirect("OgrenciWebForm.aspx");//oturum başarılı olursa şu sayfaya yönlendir dedik
                                                    //ogrenciwebform sayfasına git ve orda da değişiklil yap
            }
            else
            {
                TxtSifre.Text = "hatalı şifre!!!!";
             
            }

            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            baglanti.Open(); 
            SqlCommand komut = new SqlCommand("select * from TBL_OGRETMEN where OGRTNUMARA =@p1 and OGRTSIFRE = @p2", baglanti);

            komut.Parameters.AddWithValue("@p1", TxtNumara.Text); 
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);

            SqlDataReader dr = komut.ExecuteReader(); 

            if (dr.Read()) 
            {
                Session.Add("OGRTNUMARA", TxtNumara.Text); 
                Response.Redirect("WebForm1.aspx");                                                        
            }
            else
            {
                TxtSifre.Text = "hatalı şifre!!!!";

            }

            baglanti.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciEkle.aspx");
        }
    }
}