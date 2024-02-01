<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="UdemyWebUygulama.DuyuruEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%--ilk olarak ogrenci ekle ile benzediği için ordan kopyala yapıştır yapıcaz,genel burdaki her şey orda var--%>
   <%-- sonra bunu yazdıktan sonra dataset1.xsd'e gidip ogretmenler table adepter yaptı hoca--%>
    <%--sonra kod kısmına git duyurueklenin ve veriyi çek--%>


    <form id="formal1" runat="server">
        <%--from tagları olusturduk ve arasına kodlarımızı yazıcaz--%>

        <div class="form-group ">
            <%--bir grup oluşturduk--%>

            <div>
                <asp:Label for="DropDownList1" runat="server" Text="Label">Duyuru Öğretmen</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
               <%-- öğretmen kısmı teext box olamaz çünkü seçenek şeklinde seçmemiz daha sağlıklı,dropdownlist kullancan--%>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDuyuruBaslik" runat="server" Text="Label">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextArea1" runat="server" Text="Label">Duyuru İçerik</asp:Label>
                <textarea id="TextArea1" cols="20" rows="6" Class="form-control" runat="server"></textarea>
                <%--daha güzel görünmesi için tam metin yazmak gibi textbox yerine text area kullanalım.rows kısmını artır--%>
               <%-- runat=server ile bunu backend kısmında kodda kullanmamızı saglar--%>
        </div>
            <asp:Button ID="Button1" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Button1_Click" />
    </form>

</asp:Content>
