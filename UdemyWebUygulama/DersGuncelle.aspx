<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersGuncelle.aspx.cs" Inherits="UdemyWebUygulama.DersGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   <%-- duyuruguncelle den aldım kopyala-yapıştır--%>

    <form id="formal1" runat="server">

    <div class="form-group ">
        <%--bir grup oluşturduk--%>

        <div>
            <asp:Label for="TxtDersID" runat="server" Text="Label">Ders ID</asp:Label>
            <asp:TextBox ID="TxtDersID" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Label for="TxtDersAd" runat="server" Text="Label">Ders Adı</asp:Label>
            <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
     
    </div>

        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" />
    <%--BUTTON SONUNCDA CLİCK KISMI VAR ONU MAHAKAK KALDIR--%>

</form>


</asp:Content>
