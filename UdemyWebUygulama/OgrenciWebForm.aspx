<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciWebForm.aspx.cs" Inherits="UdemyWebUygulama.OgrenciWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <%--istatistikler kısmından kopyala bunu--%>
    <form id="formal1" runat="server">
        <%--from tagları olusturduk ve arasına kodlarımızı yazıcaz--%>

        <div class="form-group ">
            <%--bir grup oluşturduk--%>

            <div>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="False">Ad Soyad</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="False">Mail</asp:TextBox>

            </div>
            <br />
        
            <div>

                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False">telefon</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="False">Şifre</asp:TextBox>

            </div>
            <br />
         

            <asp:Button ID="Button1" runat="server" Text="Şifre Değiştir" CssClass="btn btn-primary" OnClick="Button1_Click" />

        </div>
    </form>

</asp:Content>
