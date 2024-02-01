using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class DersListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
               DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
            //şimdi dataset1.xsd gidip yeni bir table adapter ekliycen, sonra yukardaki gibi yazıcan yeni tableadapteri

            Repeater1.DataSource = dt.DersListesi(); //repeaterin veri kaynağını dt den gelen duyuru veri kaynağı listesi
            Repeater1.DataBind();//veriyi bağla, veriyi getir demek

            //burdan sonra ogretmen.mastera gidip dersler kısmındaki href yerine link yazıcaan yani derslistesi.aspx yaz
        }
    }
}