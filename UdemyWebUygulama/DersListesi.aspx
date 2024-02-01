<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="UdemyWebUygulama.DersListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%--duyuru listesine benzediği için ordan kopyalıycan--%>



    <table class="table table-bordered table-hover">
        <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
        <tr>
            <th scope="col">DERS ID</th>
            <th scope="col">DERS ADI</th>
            <th scope="col">İŞLEMLER</th>

        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <%-- repeater bizim tekrarlıyıcımız veritabanından tekrarlı bir şekilde veri çekmek için--%>

                <ItemTemplate>
                    <%--verileri eklemek için ekle ıtemtemplateyi--%>

                    <tr>
                        <%--EVAL ile veritabanından ilgili tablo sütunun cekmeye yarar,NASIL YAZDIYSAN AYNI İSİMLE YAZ,DATSET1'E BAK--%>
                        <td><%#Eval("DERSID")%></td>
                        <td><%#Eval("DERSAD")%></td>


                        <td>
                            <%--  //ARAÇ KUTUSUNDAN YÖNLENDİRME İÇİN HYPERLİNK EKLEDİK--%>
                            <%--navigation sonrasındaki kod ile anasayfada sile basınca bastıgın ilgili ID i sil sayfasına yonlendirir Ve uste sectiğin ıd olur url ksmında--%>
                            <asp:HyperLink NavigateUrl='<%#"~/DersSil.aspx?DERSID="+ Eval("DERSID") %>'
                                ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <%--<%#"~/NEREYE YÖNLENDİRSİN?İD'Sİ =\"+ Eval(\"NERDEN GELEN DEĞERİ SİLSİN\") --%>


                            <asp:HyperLink NavigateUrl='<%#"~/DersGuncelle.aspx?DERSID="+ Eval("DERSID") %>'
                                ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>

                        </td>


                    </tr>
                </ItemTemplate>

            </asp:Repeater>
        </tbody>
    </table>

     <asp:HyperLink ID="HyperLink3"  runat="server" NavigateUrl="~/DersEkle.aspx"  CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
<%-- duyuru ekleme için table altına, HYPERLİNK koycan--%>

</asp:Content>
