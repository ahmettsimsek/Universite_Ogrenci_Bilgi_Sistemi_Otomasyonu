<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="UdemyWebUygulama.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="formal1" runat="server">

        <div class="form-group ">
            <%--bir grup oluşturduk--%>

            <div>
                <asp:Label for="TxtDuyuruID" runat="server" Text="Label">Duyuru ID</asp:Label>
                <asp:TextBox ID="TxtDuyuruID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDuyuruBaslik" runat="server" Text="Label">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TextArea1" runat="server" Text="Label">Duyuru İçerik</asp:Label>
                <textarea ID="TextArea1" cols="20" rows="6" class="form-control" runat="server"></textarea>
                <%--daha güzel görünmesi için tam metin yazmak gibi textbox yerine text area kullanalım.rows kısmını artır--%>
                <%-- runat=server ile bunu backend kısmında kodda kullanmamızı saglar--%>
            </div>
        </div>

        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />
        <%--BUTTON SONUNCDA CLİCK KISMI VAR ONU MAHAKAK KALDIR--%>

    </form>
</asp:Content>

<%--bu koddan soonra dataset1.sxd gitti hoca duyurular kısmına sorgu açtı DuyuruSec diye, select which çünkü 
ilgili duyuruyu diğer formlara taşıması gerekiyor. yaptıktan sonrada guncellenin kod goruntule ile cs kod kısmına gitti--%>
