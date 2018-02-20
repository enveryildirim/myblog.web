<%@ Page Title="Enverin Kod Defteri||İletişim" MetaDescription="Enver Yıldırım Blog, Kodlarım,Deneyimlerim ve Araştımalarım" MetaKeywords="enver yıldırım,asp.net,c#,tsql,asp.net mvc,android" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="myblog.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-8">
        <div class="panel panel-default">
        <div class="panel-title"><h3 class="text-center text-danger">İletişim Formu</h3>
        </div>
        <div class="panel-body">
        <div  class="form-horizontal"  role="form">
        <div class="form-group">
        <label class="col-lg-2 control-label" for="inputName">İsim</label>
                <br/>
        <div class="col-lg-8"> <asp:TextBox ID="txtisim" runat="server" placeholder="İsminiz"  CssClass="form-control" ValidationGroup="a" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtisim" ErrorMessage="İsim Girin" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </div>
        </div>
        <div class="form-group">
        <label class="col-lg-2 control-label" for="inputEmail1">Email</label>
                <br/>
        <div class="col-lg-8">
             <asp:TextBox ID="txtemail" runat="server" placeholder="Email Adresiniz"  CssClass="form-control" ValidationGroup="a"  ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Doğru Email Girin"  ValidationGroup="a" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300">*</asp:RegularExpressionValidator>
        
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Girin" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
        
                </div>
        </div>
      <div class="form-group">
                <label class="col-lg-2 control-label" for="inputPassword1">WebSite</label>
                <br/>
        <div class="col-lg-8">
            <asp:TextBox ID="txtwebsite" runat="server" placeholder="Web Adresiniz..." CssClass="form-control" TextMode="SingleLine" ValidationGroup="a" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Doğru Web Adresi girin" ControlToValidate="txtwebsite" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" ValidationGroup="a" ForeColor="#FF3300">*</asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtwebsite" ErrorMessage="Web Adresi Girin" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
    
                </div>
            </div>
        <div class="form-group">
        <label class="col-lg-2 control-label" for="inputPassword1">Mesaj</label>
                <br/>
        <div class="col-lg-8">
            <asp:TextBox ID="txtmesaj" runat="server" placeholder="Mesajınız...." rows="5" CssClass="form-control" TextMode="MultiLine" ValidationGroup="a" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mesaj Girin!!" ControlToValidate="txtmesaj" ForeColor="#FF3300" ValidationGroup="a">*</asp:RequiredFieldValidator>
                </div>
        </div>
          
                <div class="form-group">
        <label class="col-lg-2 control-label" for="inputPassword1"><asp:Image ID="Image1" runat="server" ImageUrl="~/cresim.aspx" /></label>
                <br/>
        <div class="col-lg-8">
         
    <asp:TextBox ID="txtguvenlik" runat="server" placeholder="Guvenlik Kodunu Giriniz "  CssClass="form-control" ValidationGroup="a"  ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Güvenlik Kodunu Girin!" ControlToValidate="txtguvenlik" ValidationGroup="a" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </div>
        </div>
        <div class="form-group">
        <div class="col-lg-offset-2 col-lg-6">
            <asp:Button ID="Button1" runat="server" Text=" Mesajı Gönder" CssClass="btn btn-default" OnClick="Button1_Click" ValidationGroup="a" />
                </div>
        </div>
            <div class="form-group"> 
                <asp:Label ID="lbl_durum" runat="server" Text="" CssClass="control-label col-lg-offset-2"></asp:Label>
            </div>
        </div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="a" ShowSummary="false" ShowMessageBox="true" />
        </div>
        </div>
        </div>
  </asp:Content>
