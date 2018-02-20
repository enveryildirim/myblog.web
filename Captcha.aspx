<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Captcha.aspx.cs" Inherits="myblog.Captcha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1"  ImageUrl="~/cresim.aspx" runat="server" /><br /><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Doğrula" OnClick="Button1_Click" /><br />
        <asp:Label ID="lbl_durum" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
