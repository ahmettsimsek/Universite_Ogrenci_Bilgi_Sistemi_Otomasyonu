<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GidenMesajlar.aspx.cs" Inherits="UdemyWebUygulama.GidenMesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

            <table class="table table-bordered table-hover">
    <%--table hover ile satırın ustune gelince karartma işlemi yapar, birnevi seç gibi--%>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">ALICI</th>
        <th scope="col">BAŞLIK</th>
        <th scope="col">İÇERİK</th>  
        <th scope="col">TARİH</th>
      
   
    </tr>

    <tbody>

        <asp:Repeater ID="Repeater1" runat="server">
            <%-- repeater bizim tekrarlıyıcımız veritabanından tekrarlı bir şekilde veri çekmek için--%>

            <ItemTemplate>
                <%--verileri eklemek için ekle ıtemtemplateyi--%>

                <tr>
               
                    <td><%#Eval("MESAJID")%></td>
                    <td><%#Eval("ALICI")%></td>
                    <td><%#Eval("BASLIK")%></td>                   
                    <td><%#Eval("ICERIK")%></td>
                    <td><%#Eval("TARIH")%></td>
                   
       <%--            <td>
                       
                        <asp:HyperLink NavigateUrl='<%#"~/DuyuruSil.aspx?DUYURUID="+ Eval("DUYURUID") %>' 
                            ID="HyperLink1"  runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                    
                        <asp:HyperLink NavigateUrl='<%#"~/DuyuruGuncelle.aspx?DuyuruID="+ Eval("DuyuruID") %>' 
                            ID="HyperLink2" runat="server"  CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>                        
            

                    </td>--%>


                </tr>
                <%--  sayfayı yenilesende gelmez kodlar çünkü backend ksımını da kod yazman lazım--%>
                <%-- sağ tık -> kodu görüntüle ile c# kod kımına gidelim backend--%>
            </ItemTemplate>

        </asp:Repeater>
    </tbody>
</table>

</asp:Content>
