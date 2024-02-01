using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.PeerToPeer.Collaboration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class NotListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OgrNotlarTableAdapter dt =new DataSet1TableAdapters.OgrNotlarTableAdapter();
            //şimdi dataset1.xsd gidip yeni bir table adapter ekliycen, sonra yukardaki gibi yazıcan yeni tableadapteri
            //--DATSETTE TABLE ADAPTER OLUSTURUKEN BU SEFER FARKLI OLARAK SAKLI YORDAM KULLAN SECİP PROCEDURUMUZU EKLEDİK!!!!!!-- %>
            
            Repeater1.DataSource = dt.NotlarıGetir(); //repeaterin veri kaynağını dt den gelen duyuru veri kaynağı listesi
            Repeater1.DataBind();//veriyi bağla, veriyi getir demek
        }
    }
}