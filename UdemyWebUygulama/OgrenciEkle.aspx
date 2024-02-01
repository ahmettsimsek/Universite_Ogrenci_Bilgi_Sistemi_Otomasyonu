<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="UdemyWebUygulama.OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="formal1" runat="server">
        <%--from tagları olusturduk ve arasına kodlarımızı yazıcaz--%>


        <div class="form-group ">
            <%--bir grup oluşturduk--%>
            <div>
                <asp:Label for="TxtOgrAd" runat="server" Text="Label">Öğrenci İsmi</asp:Label>
                <%-- araç kutusundan label sürükledik,  for ekliyerek textboxtan geleni atadık  --%>
                <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
                <%--araç kutusundan textbox sürükledik--%>
            </div>
            <br />
            <%--boşluk bırakmaya yarar--%>
            <div>
                <asp:Label for="TxtOgrSoyad" runat="server" Text="Label">Öğrenci Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrTelefon" runat="server" Text="Label">Öğrenci Telefonu</asp:Label>
                <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             <br />
            <div>
                <asp:Label for="TxtOgrMail" runat="server" Text="Label">Öğrenci Maili</asp:Label>
                <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             <br />
            <div>
                <asp:Label for="TxtOgrSifre" runat="server" Text="Label">Öğrenci Şifresi</asp:Label>
                <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             <br />
            <div>
                <asp:Label for="TxtOgrFoto" runat="server" Text="Label">Öğrenci Fotoğraf Linki</asp:Label>
                <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click" />



    </form>
</asp:Content>
