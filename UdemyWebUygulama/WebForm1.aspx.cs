using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //bunu yazıp kaydetince web sayfamıza ogrenci repeaters altındaki eval kısmına ne yazarsan o veri databaseden çekilir
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            Repeater1.DataSource = dt.OgrenciListesi(); //repeaterin veri kaynağı dt den gelen öğrenci veri kaynağı listesi
            Repeater1.DataBind(); //veriyi bağla, veriyi getir demek
        }
    }
}