<%@ Page Title="" Language="C#" MasterPageFile="~/www/Admin/admin.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="myblog.Admin.profil" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 126px;
    }
    .auto-style3 {
        width: 126px;
        height: 23px;
    }
    .auto-style4 {
        height: 23px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
    <tr>
        <td class="auto-style2">Kullanıcı Adı</td>
        <td>
            <asp:TextBox ID="txtkullaniciadi" runat="server" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Şifre</td>
        <td>
            <asp:TextBox ID="txtsifre" runat="server" Height="20px" Width="200px"></asp:TextBox>
        &nbsp;
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Guncelle" Width="125px" />
        </td>
    </tr>
</table>
    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl><br />
    <asp:Button ID="Button2" runat="server" Text="Guncelle" Width="350px" Height="25px" OnClick="Button2_Click" />
</asp:Content>
