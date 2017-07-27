<%@ Page Title="" Language="C#" MasterPageFile="~/aspmasterpage.Master" AutoEventWireup="true" CodeBehind="employees.aspx.cs" Inherits="_20170512_AspOdev.employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%-- masterpagen arasında kalacak işlem yapacağımız div açtık içerisine employees tablosunun verilerini kullanabileceğimiz listbox textbox ve button ekledik --%>
     <div class="ortayandiv">
      
         Employees Name: <asp:ListBox ID="lstemp" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstemp_SelectedIndexChanged"></asp:ListBox> <br/>
         Yeni Employees Name:<asp:TextBox ID="txtemp" runat="server"></asp:TextBox>
              <asp:Button ID="btnemp" runat="server" Text="Güncelle" OnClick="btnemp_Click" />
          </div>
</asp:Content>
