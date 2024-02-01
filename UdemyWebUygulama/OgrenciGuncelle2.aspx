<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle2.aspx.cs" Inherits="UdemyWebUygulama.OgrenciGuncelle2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="formal1" runat="server">
        <%--from tagları olusturduk ve arasına kodlarımızı yazıcaz--%>

        <div class="form-group ">
            <%--bir grup oluşturduk--%>

            <%--sadece şifreye güncelleme yapabilicez oyle yaptık--%>

            <div>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>

            </div>
            <br />

            <div>

                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="True">Şifre</asp:TextBox>

            </div>
            <br />

            <div>

                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="True">Şifre Tekrar</asp:TextBox>

            </div>
            <br />



            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />

        </div>
    </form>


</asp:Content>
