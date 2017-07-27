<%@ Page Title="" Language="C#" MasterPageFile="~/aspmasterpage.Master" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="_20170512_AspOdev.customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <%-- masterpagen arasında kalacak işlem yapacağımız div açtık içerisine customer tablosunun verilerini kullanabileceğimiz listbox textbox ve button ekledik --%>
    
        <div class="ortayandiv">
      
          Customer Name: <asp:ListBox ID="lstcustomer" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstcustomer_SelectedIndexChanged"></asp:ListBox> <br/>
          Yeni Customer Name:<asp:TextBox ID="txtcustomer" runat="server"></asp:TextBox>
              <asp:Button ID="btncustomer" runat="server" Text="Güncelle" OnClick="btncustomer_Click" />
          </div>
</asp:Content>
