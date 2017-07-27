<%@ Page Title="" Language="C#" MasterPageFile="~/aspmasterpage.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="_20170512_AspOdev.categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%-- masterpagen arasında kalacak işlem yapacağımız div açtık içerisine categories tablosunun verilerini kullanabileceğimiz listbox textbox ve button ekledik --%>
    <div class="ortayandiv">
      
         Category Name: <asp:ListBox ID="lstcategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstcategory_SelectedIndexChanged"></asp:ListBox> <br/>
         Yeni Category Name: <asp:TextBox ID="txtcategory" runat="server"></asp:TextBox>
              <asp:Button ID="btncategory" runat="server" Text="Güncelle" OnClick="btncategory_Click" />
          </div>
</asp:Content>
