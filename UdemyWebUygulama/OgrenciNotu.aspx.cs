using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class OgrenciNotu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();

            Repeater1.DataSource = dt.OgrenciNotu("1254");//herhangibir ogrencinin numarasını yaz, O NUMARAYA AİT ÖĞRENCİNİN OGRENCİNOTU TABLOSUNDAKİ
                                                           //TÜM SINAV,ORT VS GETİRİR.
            Repeater1.DataBind();
        }
    }
}