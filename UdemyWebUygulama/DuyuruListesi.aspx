<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="UdemyWebUygulama.DuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

<%--!!!!!!!!!!!arayüz olarak webform1 ile aynı olucagı için gittik ordan kopyaladık--%>
  <%--  !!!!!!!!!!
    !!!!!!!!!--%>


    <table class="table table-bordered table-hover">
    <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">BAŞLIK</th>
        <th scope="col">İÇERİK</th>
        <th scope="col">ÖĞRETMEN</th>
        <th scope="col">İŞLEMLER</th>
   
    </tr>

    <tbody>

        <asp:Repeater ID="Repeater1" runat="server">
            <%-- repeater bizim tekrarlıyıcımız veritabanından tekrarlı bir şekilde veri çekmek için--%>

            <ItemTemplate>
                <%--verileri eklemek için ekle ıtemtemplateyi--%>

                <tr>
                <%--EVAL ile veritabanından ilgili tablo sütunun cekmeye yarar,NASIL YAZDIYSAN AYNI İSİMLE YAZ,DATSET1'E BAK--%>
                    <td><%#Eval("DUYURUID")%></td>
                    <td><%#Eval("DUYURUBASLIK")%></td>
                    <td><%#Eval("DUYURUICERIK")%></td>
                    <td><%#Eval("DUYURUOGRT")%></td>
                   
                    <td>
                        <%--  //ARAÇ KUTUSUNDAN YÖNLENDİRME İÇİN HYPERLİNK EKLEDİK--%>
        <%--navigation sonrasındaki kod ile anasayfada sile basınca bastıgın ilgili ID i sil sayfasına yonlendirir Ve uste sectiğin ıd olur url ksmında--%>
                        <asp:HyperLink NavigateUrl='<%#"~/DuyuruSil.aspx?DUYURUID="+ Eval("DUYURUID") %>' 
                            ID="HyperLink1"  runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                        <%--<%#"~/NEREYE YÖNLENDİRSİN?İD'Sİ =\"+ Eval(\"NERDEN GELEN DEĞERİ SİLSİN\") %>
 --%>
                        <asp:HyperLink NavigateUrl='<%#"~/DuyuruGuncelle.aspx?DuyuruID="+ Eval("DuyuruID") %>' 
                            ID="HyperLink2" runat="server"  CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>                        
              <%-- guncelle işleminde de bastığında ilk ıp alması için navigation koşulunu yazdık cunku where kosulu ıp'e göre--%>

                    </td>


                </tr>
                <%--  sayfayı yenilesende gelmez kodlar çünkü backend ksımını da kod yazman lazım--%>
                <%-- sağ tık -> kodu görüntüle ile c# kod kımına gidelim backend--%>
            </ItemTemplate>

        </asp:Repeater>
    </tbody>
</table>

</asp:Content>

<%--
NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+ Eval("OGRID") %>'--%>
