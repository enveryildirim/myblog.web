<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="makale.aspx.cs" Inherits="myblog.makale" MaintainScrollPositionOnPostback="true" %>
<%@ OutputCache Duration="3600" VaryByParam="makaleid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="row">
<div class="panel panel-default">
        <div class="panel-heading">
          <h1 id="baslik" runat="server"></h1>
          <p><span class="glyphicon glyphicon-list"></span> <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>|| <span class="glyphicon glyphicon-calendar" id="tarih" runat="server"></span> || <span class="glyphicon glyphicon-eye-open" runat="server" id="hits"></span> </p>
           <p><span class="glyphicon glyphicon-tags"></span>
               <asp:Repeater ID="rptetiket" runat="server"><ItemTemplate><a href='<%#Page.ResolveUrl("~") %><%#url_yap_etiket(Eval("name").ToString(),Eval("id").ToString()) %>'>#<%#Eval("name") %></a></ItemTemplate></asp:Repeater>
           </p>
        </div>
        <div id="m" class="panel-body" runat="server">
            
        </div>
    </div>
    </div>
    <div class="row"><div class="panel panel-default"><div class="panel-body">
                <div class="container">
                    <h4>Makale Değerlendirmeniz?</h4>
                    <div class="col-lg-2"> <span class="glyphicon glyphicon-thumbs-down"></span> <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-danger" OnClick="LinkButton1_Click">Yararlı Değil</asp:LinkButton></div>
                    <div class=" col-lg-2"><span class="glyphicon glyphicon-hand-right"></span>  <asp:LinkButton ID="LinkButton2" runat="server" CssClass="text-muted" OnClick="LinkButton2_Click">Yararlı</asp:LinkButton></div>
                    <div class="col-lg-2"> <span class="glyphicon glyphicon-thumbs-up"></span>  <asp:LinkButton ID="LinkButton3" runat="server" CssClass="text-success"  OnClick="LinkButton3_Click">Çok Yararlı</asp:LinkButton></div>
                </div>
        </div></div>
    </div>
 <div class="row">
     <div class="panel panel-default" role="form">
         <div class="panel-body">
            <div role="form">
  <div class="form-group">
   <span class="glyphicon glyphicon-user text-danger">  Adınız</span>
      <asp:TextBox ID="txtad" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Adınızı Girin" ControlToValidate="txtad" Text="*" ValidationGroup="a"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <span class="glyphicon glyphicon-envelope text-danger">  Emailiniz</span>
    <asp:TextBox ID="txtemail" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email Giriniz" ControlToValidate="txtemail" Text="*" ValidationGroup="a"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Doğru Email Giriniz" ValidationGroup="a" Text="*" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </div>
 <div class="form-group">
      <span class="glyphicon glyphicon-pencil text-danger">  Yorumunuz</span>
     <asp:TextBox ID="txtyorum" runat="server"  TextMode="MultiLine" MaxLength="500"  Rows="2" CssClass="form-control"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Yorum Giriniz" Text="*" ControlToValidate="txtyorum" ValidationGroup="a"></asp:RequiredFieldValidator>
 </div> 
                <hr />
 <div class="form-group">
     <asp:Image ID="Image1" runat="server" ImageUrl="~/cresim.aspx" />&nbsp;&nbsp; <span class="text-danger">Kodunuz</span><asp:TextBox ID="txtguvenlik" runat="server" CssClass="form-control"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Guvenlik Kodu" ControlToValidate="txtguvenlik" ValidationGroup="a" Text="*"></asp:RequiredFieldValidator>
 </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server"  CssClass="form-control btn-success" Text="Gonder" ValidationGroup="a" />
                    <p id="mesaj" runat="server"></p>
                </div>
                 <div class="form-group">
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="a" ShowMessageBox="True" ShowSummary="False" />
                 </div>
</div>
    
        </div>
 </div>
   </div>
    <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="well well-lg">
                    <p>
                      <h3><%#Eval("name") %></h3>
                        <small class="text-muted"><%#Eval("tarih") %></small>
                        <p class="bg-warning"><%#Eval("yorum") %></p>
                    </p>

                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
