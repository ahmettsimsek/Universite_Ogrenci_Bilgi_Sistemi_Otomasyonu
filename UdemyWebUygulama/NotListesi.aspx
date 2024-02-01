<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="UdemyWebUygulama.NotListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   <%-- anasayfanın kodun kopyasını aldık (webform1)'in çünkü aynı düzen hemen hemen --%>
    <%--DATSETTE TABLE ADAPTER OLUSTURUKEN BU SEFER FARKLI OLARAK SAKLI YORDAM KULLAN SECİP PROCEDURUMUZU EKLEDİK!!!!!!--%>



     <table class="table table-bordered table-hover">
     <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
     <tr>
<%--bu kısımda sql de yazdığın procedureyi çalıştır, select kısmından sec çalıştır ve sonra çıkan tabloda sutunları sıraıyla yaz--%>
         <%--BURASI TABLO BAŞLIK KISMI--%>
         <th scope="col">ÖĞRENCİ ID</th>
         <th scope="col">AD SOYAD</th>
         <th scope="col">DERS ADI</th>
         <th scope="col">SINAV1</th>
         <th scope="col">SINAV2</th>
         <th scope="col">SINAV3</th>
         <th scope="col">ORTALAMA</th>
         <th scope="col">DURUM</th>
         <th scope="col">GÜNCELLE</th>
     </tr>

     <tbody>

         <asp:Repeater ID="Repeater1" runat="server">
           <%-- repeater bizim tekrarlıyıcımız veritabanından tekrarlı bir şekilde veri çekmek için--%>

             <ItemTemplate>
               <%--verileri eklemek için ekle ıtemtemplateyi--%>

                 <tr>
                      <%--BURASI TABLO İÇERİĞİ KISMI--%>
                      <%--EVAL ile veritabanından ilgili tablo sütunun cekmeye yarar--%>
                     <td><%#Eval("OGRENCIID")%></td> <%--NOTLAR TABLOSUNA GÖRE GİDİYORUZ, bu kod ile ogrenci ıd'leri sayfamıza gelir 1 den 16'a--%>
                     <td><%#Eval("OGRENCIADSOYAD")%></td>
                     <td><%#Eval("DERSAD")%></td>
                     <td><%#Eval("SINAV1")%></td>
                     <td><%#Eval("SINAV2")%></td>
                     <td><%#Eval("SINAV3")%></td>
                     <td><%#Eval("ORTALAMA")%></td>
                     <td><%#Eval("DURUM")%></td>

                     <td>     
                         <asp:HyperLink NavigateUrl='<%#"~/NotGuncelle.aspx?NOTID="+ Eval("NOTID") %>' ID="HyperLink2"
                         runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                         <%--burda silme olmuycak sadece güncelleme olucak--%>        
  <%--not id ekledik çünkü bir kişi birden fazla ders alıyor kişinin not id'si kaçsa onu günceller yoksa kişi id'sine göre alması yanliş olur karıştırır--%>
                     </td>


                 </tr>
    
             </ItemTemplate>

         </asp:Repeater>
     </tbody>
 </table>



</asp:Content>
