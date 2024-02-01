using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class OgrenciWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TextBox1.Text = Request.QueryString["Numara"]; //numara değişkenini yazdırır,numara taşımak için yazsdık
            //paneliçin yazdıgımız c sharp kodundan sonra nura yzdk


            //bunun yerine aşaıdakini kullandık

            TextBox1.Text = Session["NUMARA"].ToString(); //login panelden sonra session için bunu ekledik

            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

            TextBox2.Text = "AD SOYAD:" + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRAD + " " +
                dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSOYAD;
            TextBox3.Text = "MAİL ADRESİ:" + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRMAIL;
            TextBox6.Text = "ŞİFRE:" + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRSİFRE;
            TextBox5.Text = "TELEFON:" + dt.OgrenciPaneliGetir(TextBox1.Text)[0].OGRTELEFON;
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.aspx?Numara=" + TextBox1.Text);
        }
    }
}