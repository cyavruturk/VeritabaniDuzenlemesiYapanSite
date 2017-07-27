<%@ Page Title="" Language="C#" MasterPageFile="~/aspmasterpage.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="_20170512_AspOdev.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <%-- masterpagen arasında kalacak işlem yapacağımız div açtık içerisine products tablosunun verilerini kullanabileceğimiz listbox textbox ve button ekledik --%>
     <div class="ortayandiv">
      
          Products Name: <asp:ListBox ID="lstproduct" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstproduct_SelectedIndexChanged"></asp:ListBox> <br/>
          Yeni Products Name: <asp:TextBox ID="txtproduct" runat="server"></asp:TextBox>
              <asp:Button ID="btnproduct" runat="server" Text="Güncelle" OnClick="btnproduct_Click" />
          </div>
</asp:Content>
