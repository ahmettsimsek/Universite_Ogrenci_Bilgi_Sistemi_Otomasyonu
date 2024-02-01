<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPanel.aspx.cs" Inherits="UdemyWebUygulama.LoginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="arkaPlan.jpg">
<head runat="server">

    <%--doysalar1->bootstrap.min.css ekle buraya,amacımız ıstediğimiz formatta görünmesi--%>
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
        <div style="width: 700px; margin: auto">
            <br />
            <%-- boyutunu ayarladık textboxun vs,margin ile sf'nın tam ortasına aldık--%>
            <h2 class="auto style1"><span class="newStyle1">SINAV NOT GİRİŞ SİSTEMİ </span> </h2>
            <br />
            <br />
            <br />

            <div style="margin: auto; text-align: center;">
                <%--resmi ortalamak için yazdık--%>
                <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl="imagePanel.png" />
                <br />
                <br />
            </div>

            <div>
                <%--  dersekle.aspxden aldım burayı--%>
                <asp:Label for="TxtNumara" runat="server" Text="Label">Kullanıcı Adı</asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
            </div>
            <br />

            <div>
                <asp:Label for="TxtSifre" runat="server" Text="Label">Şifre</asp:Label>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />


            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClas="btn btn-warning" Width="700px" OnClick="Button1_Click" />
            
             

            <asp:Button ID="Button2" runat="server" Text="Öğretmen Girişi" CssClas="btn btn-danger" Width="200px" OnClick="Button2_Click" />

            <asp:Button ID="Button3" runat="server" Text="Yeni Öğrenci Girişi" CssClas="btn btn-default" Width="300px" OnClick="Button3_Click" />

             

        </div>
    </form>
</body>
</html>
