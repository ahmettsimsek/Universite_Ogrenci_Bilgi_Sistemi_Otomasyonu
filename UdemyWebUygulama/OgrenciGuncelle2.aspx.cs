using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWebUygulama
{
    public partial class OgrenciGuncelle2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ogrencıwebform.cs den kopyaladık
            TextBox1.Text = Request.QueryString["Numara"]; //numara değişkenini yazdırır,numara taşımak için yazsdık
                                                           //paneliçin yazdıgımız c sharp kodundan sonra nura yzdk

            if(Page.IsPostBack == false)
            {

            }

        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciSifreGuncelle(TextBox2.Text, TextBox1.Text);

           
                Response.Redirect("OgrenciWebForm.aspx?Numara=" + TextBox1.Text);
                Response.Redirect("OgrenciWebForm.aspx");
            
        }
    }
}