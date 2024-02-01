<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="UdemyWebUygulama.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%-- ogrenciGuncelle sayfasından kopyala aynı şey olcak hemen hemen--%>



    <form id="formal1" runat="server">
        <%--from tagları olusturduk ve arasına kodlarımızı yazıcaz--%>


        <div class="form-group ">
            <%--bir grup oluşturduk--%>
            <div>
                <asp:Label for="TextBoxAd" runat="server" Text="Label">Ders Adı</asp:Label>
                <asp:TextBox ID="TextBoxAd" runat="server" CssClass="form-control"></asp:TextBox>
                <%-- ders kısmı teext box olamaz çünkü seçenek şeklinde seçmemiz daha sağlıklı,dropdownlist kullancan--%>
                <%--ders adı ekledik en başa çünkü güncelleme ders adına göre yapılcak--%>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrId" runat="server" Text="Label">Öğrenci Id</asp:Label>
                <asp:TextBox ID="TxtOgrId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrAdSoyad" runat="server" Text="Label">Öğrencinin Adı-Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtSinav1" runat="server" Text="Label">Sınav1</asp:Label>
                <asp:TextBox ID="TxtSinav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtSinav2" runat="server" Text="Label">Sınav2</asp:Label>
                <asp:TextBox ID="TxtSinav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtSinav3" runat="server" Text="Label">Sınav3</asp:Label>
                <asp:TextBox ID="TxtSinav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOrt" runat="server" Text="Label">Ortalama</asp:Label>
                <asp:TextBox ID="TxtOrt" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div>
                <asp:Label for="TxtDurum" runat="server" Text="Label">Durum</asp:Label>
                <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="BtnHesapla" runat="server" Text="Hesapla" CssClass="btn btn-toolbar" OnClick="BtnHesapla_Click" />

        <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="BtnGuncelle_Click" />



    </form>
</asp:Content>
