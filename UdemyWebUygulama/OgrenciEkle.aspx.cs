using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) //kaydet butonuna çift tıkladık tasarım bölümünden
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciEkle(TxtOgrAd.Text,TxtOgrSoyad.Text,TxtOgrTelefon.Text,TxtOgrMail.Text,TxtOgrSifre.Text,TxtOgrFoto.Text);
            Response.Redirect("WebForm1.aspx"); //komutu yönlendir demek en son olarak webform.aspx sfmıza yönlendirdik bunu yazdık
        }
    }
}