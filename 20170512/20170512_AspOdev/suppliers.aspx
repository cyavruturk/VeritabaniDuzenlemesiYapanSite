<%@ Page Title="" Language="C#" MasterPageFile="~/aspmasterpage.Master" AutoEventWireup="true" CodeBehind="suppliers.aspx.cs" Inherits="_20170512_AspOdev.suppliers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <%-- masterpagen arasında kalacak işlem yapacağımız div açtık içerisine suppliers tablosunun verilerini kullanabileceğimiz listbox textbox ve button ekledik --%>
      <div class="ortayandiv">
      
            Suppliers Name: <asp:ListBox ID="lstsupp" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstsupp_SelectedIndexChanged"></asp:ListBox> <br/>
            Yeni Suppliers Name: <asp:TextBox ID="txtsupp" runat="server"></asp:TextBox>
              <asp:Button ID="btnsup" runat="server" Text="Güncelle" OnClick="btnsup_Click" />
          </div>
</asp:Content>
