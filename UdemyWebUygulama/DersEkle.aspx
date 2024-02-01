<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="UdemyWebUygulama.DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%--duyuruekle kısmından aldım--%>

    <form id="formal1" runat="server">
        <%--from tagları olusturduk ve arasına kodlarımızı yazıcaz--%>

        <div class="form-group ">
            <%--bir grup oluşturduk--%>

       
            <div>
                <asp:Label for="TxtDers" runat="server" Text="Label">Ders Adı</asp:Label>
                <asp:TextBox ID="TxtDers" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
           
        </div>
        <asp:Button ID="Button1" runat="server" Text="Oluştur"  CssClass="btn btn-info"  OnClick="Button1_Click" />
    </form>

</asp:Content>
