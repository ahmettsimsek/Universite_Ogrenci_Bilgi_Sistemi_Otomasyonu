using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class İstatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter  ();

            TextBox1.Text="Toplam Oğrenci Sayısı: "+dt.İstatistik1().ToString();
            //her biri için datasete gifip sorgu ekle, tek seferlik veri ekliycen her seferinde isminşde 1 artırarak aynı isimler

            TextBox2.Text = "Toplam Oğretmen Sayısı: " + dt.İstatistik2().ToString();

            TextBox3.Text = "Toplam Ders Sayısı: " + dt.İstatistik3().ToString();

            TextBox4.Text = "Matematik Sınav1 De En Başarılı Ogrenci: " + dt.İstatistik4().ToString();

            TextBox8.Text = "Matematik Sınav1 ortalaması: " + dt.İstatistik8().ToString();

            TextBox9.Text = "fizik Sınav1 ortalaması: " + dt.İstatistik9().ToString();

            TextBox10.Text = "Edebiyat Sınav1 ortalaması: " + dt.İstatistik10().ToString();

            TextBox11.Text = "matematik dersi geçen öğrenci sayısı: " + dt.İstatistik10().ToString();

        }
    }
}