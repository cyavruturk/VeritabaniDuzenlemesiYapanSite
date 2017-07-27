<%@ Page Title="" Language="C#" MasterPageFile="~/aspmasterpage.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="_20170512_AspOdev.orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <%-- masterpagen arasında kalacak işlem yapacağımız div açtık içerisine orders tablosunun verilerini kullanabileceğimiz listbox textbox ve button ekledik --%>

       <div class="ortayandiv">
      
           Orders Name: <asp:ListBox ID="lstorder" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstorder_SelectedIndexChanged"></asp:ListBox> <br/>
           Yeni Orders Name:<asp:TextBox ID="txtorder" runat="server"></asp:TextBox>
              <asp:Button ID="btnorder" runat="server" Text="Güncelle" OnClick="btnorder_Click" />
          </div>

</asp:Content>
