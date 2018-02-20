<%@ Page Title="" Language="C#" MasterPageFile="~/www/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="myblog.Admin.Kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #islem 
        {
            display:block;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 101px;
        }
        .auto-style4 {
            width: 101px;
            height: 61px;
        }
        .auto-style5 {
            height: 61px;
        }
        .auto-style6 {
            width: 141px;
        }
        .auto-style7 {
            width: 141px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 141px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="islem">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Kategoriler</asp:LinkButton>&nbsp; <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Ekle</asp:LinkButton>
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting">
                    <Columns>
                        <asp:CommandField SelectText="Guncelle" ShowSelectButton="True" />
                        <asp:CommandField DeleteText="Sil" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </asp:View>
            <asp:View ID="View2" runat="server">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Adı</td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" Height="20px" MaxLength="50" ValidationGroup="a" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Adı girin" ValidationGroup="a">**</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Resim İsmi</td>
                        <td>
                            <asp:TextBox ID="txtimgurl" runat="server" Height="20px" MaxLength="50" ValidationGroup="a" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtimgurl" ErrorMessage="İmg Url Gir" ValidationGroup="a">**</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="a" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kaydet" ValidationGroup="a" Width="162px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:Label ID="lbl_hata" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>

            </asp:View>
            <asp:View ID="View3" runat="server">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">Adı</td>
                        <td>
                            <asp:TextBox ID="txtduzenlename" runat="server" Height="20px" MaxLength="50" ValidationGroup="a" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtduzenlename" ErrorMessage="Adı girin" ValidationGroup="b">**</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Resim İsmi</td>
                        <td>
                            <asp:TextBox ID="txtduzenleimgurl" runat="server" Height="20px" MaxLength="50" ValidationGroup="a" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtduzenleimgurl" ErrorMessage="İmg Url Gir" ValidationGroup="b">**</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                        <td class="auto-style5">
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="b" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Guncelle" ValidationGroup="b" Width="162px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td>
                            <asp:Label ID="lbl_duzenlehata" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>

            </asp:View>
            <asp:View ID="View4" runat="server">
                 <table class="auto-style1">
                <tr>
                    <td class="auto-style9">Değiştirilecek kategori</td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="drpkategori" runat="server" Height="20px" Width="200px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                     <tr>
                         <td class="auto-style6">İD</td>
                         <td>
                             <asp:Label ID="lblid" runat="server" ForeColor="Red"></asp:Label>
                         </td>
                         <td>&nbsp;</td>
                     </tr>
                <tr>
                    <td class="auto-style6">Silenecek</td>
                    <td>
                        <asp:Label ID="lbl_kategori" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Sil &amp; Değiştir" />
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </asp:View>
        </asp:MultiView>
    </div>

</asp:Content>
