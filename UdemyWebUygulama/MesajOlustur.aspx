<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="UdemyWebUygulama.MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%--duyuru ekle sf dan aldık--%>


    <form id="formal1" runat="server">
        <%--from tagları olusturduk ve arasına kodlarımızı yazıcaz--%>

        <div class="form-group ">
            <%--bir grup oluşturduk--%>

            <div>
                <asp:Label for="TxtGonderen" runat="server" Text="Label">Göderen</asp:Label>
                <asp:TextBox ID="TxtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label for="TxtAlıcı" runat="server" Text="Label">Alıcı</asp:Label>
                <asp:TextBox ID="TxtAlıcı" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtbBaslik" runat="server" Text="Label">Mesaj Başlık</asp:Label>
                <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtIcerik" runat="server" Text="Label">Mesaj İçerik</asp:Label>
                <textarea id="TxtIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
                <%--daha güzel görünmesi için tam metin yazmak gibi textbox yerine text area kullanalım.rows kısmını artır--%>
                <%-- runat=server ile bunu backend kısmında kodda kullanmamızı saglar--%>
            </div>
        </div>

        <asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="BtnGonder_Click" />
    </form>

</asp:Content>
