<%@ Page Title="" Language="C#" MasterPageFile="~/aspmasterpage.Master" AutoEventWireup="true" CodeBehind="shippers.aspx.cs" Inherits="_20170512_AspOdev.shippers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <%-- masterpagen arasında kalacak işlem yapacağımız div açtık içerisine shippers tablosunun verilerini kullanabileceğimiz listbox textbox ve button ekledik --%>
        <div class="ortayandiv">
      
          Shippers Name:<asp:ListBox ID="lstship" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstship_SelectedIndexChanged"></asp:ListBox> <br/>
          Yeni Shippers Name: <asp:TextBox ID="txtship" runat="server"></asp:TextBox>
              <asp:Button ID="btnship" runat="server" Text="Güncelle" OnClick="btnship_Click" />
          </div>
</asp:Content>
