<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="myblog.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="robots" content="noindex,nofollow" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel panel-default col-lg-8 col-lg-offset-2">
            <div class="panel-body">

        
          <div  class="form-horizontal"  role="form">
        <div class="form-group">
        <label class="col-lg-2 control-label" for="inputName">Kullanıcı Adı</label>
                <br/>
        <div class="col-lg-8"> <asp:TextBox ID="txtkullaniciadi" runat="server" placeholder="Kullanıcı Adınız"  CssClass="form-control" ValidationGroup="a" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtkullaniciadi" ErrorMessage="KullanıcıAdı Girin" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </div>
        </div>
        <div class="form-group">
        <label class="col-lg-2 control-label" for="inputEmail1">Şifre</label>
                <br/>
        <div class="col-lg-8">
             <asp:TextBox ID="txtsifre" runat="server" placeholder="Şifreniz"  TextMode="Password" CssClass="form-control" ValidationGroup="a"  ></asp:TextBox>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsifre" ErrorMessage="Şifre Girin" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
        
                </div>
        </div>
     
        <div class="form-group">
        <div class="col-lg-offset-2 col-lg-6">
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-default"  ValidationGroup="a" OnClick="Button1_Click" />
                </div>
        </div>
            <div class="form-group"> 
                <asp:Label ID="lbl_durum" runat="server" Text="" CssClass="control-label col-lg-offset-2"></asp:Label>
            </div>
        </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="a" ShowSummary="false" ShowMessageBox="true" />
      
                    </div>
        </div>
    </form>
</body>
</html>
