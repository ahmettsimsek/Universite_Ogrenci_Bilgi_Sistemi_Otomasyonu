<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="İstatistikler.aspx.cs" Inherits="UdemyWebUygulama.İstatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="formal1" runat="server">
        <%--from tagları olusturduk ve arasına kodlarımızı yazıcaz--%>

        <div class="form-group ">
            <%--bir grup oluşturduk--%>

            <div>

                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">Toplam Öğrenci Sayısı:136</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="False">Toplam Öğretmen Sayısı:14</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="False">toplam Ders Sayısı:17</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="False">Başarılı Ders:Matematik</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False">Sistemdeki Duyuru Sayısı:745</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="False">Matematik Ders Ortalaması:65,47</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Enabled="False">Algoritma Not Ortalaması:77,12</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Enabled="False">Türkçe Not Ortalaması:82,45</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Enabled="False">Algoritma Not Ortalaması:77,12</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" Enabled="False">Algoritma Not Ortalaması:77,12</asp:TextBox>

            </div>
            <br />
            <div>

                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" Enabled="False">Algoritma Not Ortalaması:77,12</asp:TextBox>

            </div>
            <br />
           
    </form>

   <%-- yazdıktan sonra istatistikleri dataset ile çekşcez dataset1'e gidip tableadapter ekliycen--%>

</asp:Content>
