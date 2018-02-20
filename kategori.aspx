<%@ Page Title="Enverin Kod Defteri||Kategori" MetaDescription="Enver Yıldırım Blog, Kodlarım,Deneyimlerim ve Araştımalarım" MetaKeywords="enver yıldırım,asp.net,c#,tsql,asp.net mvc,android" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="kategori.aspx.cs" Inherits="myblog.kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
             <div class="panel panel-default makale">
       <div class="panel-heading"><h2><a href="<%#Page.ResolveUrl("~") %><%#url_yap(Eval("makaleid").ToString(),Eval("title").ToString()) %>"><%#Eval("title") %></a></h2>
          <p><span class="glyphicon glyphicon-list"></span> <a href='<%#Page.ResolveUrl("~") %><%#url_yap_kategori(Eval("name").ToString(),Eval("categoryid").ToString()) %>'><%#Eval("name") %></a> || <span class="glyphicon glyphicon-calendar"><%#Eval("date") %></span> || <span class="glyphicon glyphicon-eye-open">  <%#Eval("hits") %>:Okundu</span> </p>
       </div>
       <div class="panel-body">
           <p><%#Eval("summary") %></p>
           <p>
              <a href="<%#Page.ResolveUrl("~") %><%#url_yap(Eval("makaleid").ToString(),Eval("title").ToString()) %>">Devamını Oku...</a>
       </div>
   </div>
        </ItemTemplate>
    </asp:ListView>
    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1">
        <Fields>
            <asp:NextPreviousPagerField FirstPageText="İlk Sayfa" LastPageText="Geri" NextPageText="İleri" PreviousPageText="Son Sayfa" />
        </Fields>
    </asp:DataPager>
</asp:Content>
