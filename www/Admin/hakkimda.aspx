<%@ Page Title="" Language="C#" MasterPageFile="~/www/Admin/admin.Master" AutoEventWireup="true" CodeBehind="hakkimda.aspx.cs" Inherits="myblog.Admin.hakkimda" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Güncelle" Height="30px" OnClick="Button1_Click" Width="300px" /><hr />
    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>

</asp:Content>
