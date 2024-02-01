<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="UdemyWebUygulama.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered  table-hover">
        <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
       <%-- table-border ile kutucukları ayırdı çizgilerle--%>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">NUMARA</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">MAIL</th>
            <th scope="col">ŞİFRE</th>
            <th scope="col">İŞLEMLER</th>
        </tr>

        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">
                <%-- repeater bizim tekrarlıyıcımız veritabanından tekrarlı bir şekilde veri çekmek için--%>

                <ItemTemplate>
                    <%--verileri eklemek için ekle ıtemtemplateyi--%>

                    <tr>
                        <%--EVAL ile veritabanından ilgili tablo sütunun cekmeye yarar--%>
                        <td><%#Eval("OGRID")%></td>
                        <td><%#Eval("NUMARA")%></td>
                        <td><%#Eval("OGRAD")%></td>
                        <td><%#Eval("OGRSOYAD")%></td>
                        <td><%#Eval("OGRTELEFON")%></td>
                        <td><%#Eval("OGRMAIL")%></td>
                        <td><%#Eval("OGRSİFRE")%></td>
                        <td>
                            <%--  //ARAÇ KUTUSUNDAN YÖNLENDİRME İÇİN HYPERLİNK EKLEDİK--%>
            <%--navigation sonrasındaki kod ile anasayfada sile basınca bastıgın ilgili ID i sil sayfasına yonlendirir e uste sectiğin ıd olur url ksmında--%>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+ Eval("OGRID") %>' runat="server"
                                CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+ Eval("OGRID") %>'
                                CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
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


<%-- <th scope="row">1</th> --%>
<%--row1 satır 1 demek--%>
<%--th =  teable header demek,sütün başlıklarını oluşturur--%>
<%--td=  teable date demek datayı kullanmak için--%>
<%--tr=  satırın direk kendisi tr, satır oluşturur--%>
<%--satırbaşlığı gibi düşün th'i, ilgili alanın başlığı,sütün başlığı gibi--%>
<%--    td içindeki seyler verilerimiz bizim, td ile datalarımızı girmiş olduk--%>
<%--body-body arasındaki kısım tablo içeriğimizdie bizim--%>