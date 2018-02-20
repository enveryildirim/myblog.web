<%@ Page Title="" Language="C#" MasterPageFile="~/www/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Makale.aspx.cs" Inherits="myblog.Admin.Makale" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 452px;
        }
        .auto-style6 {
            width: 191px;
        }
        .auto-style7 {
            width: 137px;
            height: 30px;
        }
        .auto-style8 {
            width: 452px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:CommandField SelectText="Duzenle" ShowSelectButton="True" />
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
            Ekleme
            <asp:MultiView ID="MultiView2" runat="server">
                <asp:View ID="View3" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style10">Kategori</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="drpcategori" runat="server" Height="20px" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:Label ID="lbl_durum" runat="server" ForeColor="#006600"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Başlık</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtbaslik" runat="server" Height="20px" MaxLength="50" ValidationGroup="a" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbaslik" ErrorMessage="Baslik Girin" ValidationGroup="a">**</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Özeti</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtozet" runat="server" Height="29px" MaxLength="50" TextMode="MultiLine" ValidationGroup="a" Width="375px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtozet" ErrorMessage="Ozet  Girin" ValidationGroup="a">**</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="a" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Etiketler</td>
                            <td class="auto-style3">
                                <asp:CheckBoxList ID="chcetiket" runat="server" RepeatColumns="8">
                                </asp:CheckBoxList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Dili</td>
                            <td class="auto-style3">
                                <asp:DropDownList ID="drpdil" runat="server" OnSelectedIndexChanged="drpdil_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">Site Baslıgı</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txttitle" runat="server" Height="20px" MaxLength="250" Width="200px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txttitle" ErrorMessage="Baslık Girin" ValidationGroup="a">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="auto-style9"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">(icerik ile alakalı cumle)Description</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtdesc" runat="server" MaxLength="250" TextMode="MultiLine" Width="420px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdesc" ErrorMessage="Description girin" ValidationGroup="a">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">Anahtar Kelime(KeyWord) araları virgullu</td>
                            <td class="auto-style3">
                                <asp:TextBox ID="txtkey" runat="server" MaxLength="250" TextMode="MultiLine" Width="420px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtkey" ErrorMessage="Keyword girin" ValidationGroup="a">*</asp:RequiredFieldValidator>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td class="auto-style3">
                                <asp:Button ID="Button2" runat="server" Text="İleri" Width="100px" OnClick="Button2_Click" ValidationGroup="a" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <asp:Button ID="Button3" runat="server" Text="Geri" Width="100px" OnClick="Button3_Click" />
                    &nbsp;Makale de önemli yerleri kalnı bold yap seoya yardımıcı olur
                    <hr />
                    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server"></CKEditor:CKEditorControl>
                    <hr />
                    <asp:Button ID="Button1" runat="server" Text="Kaydet" Height="30px" Width="300px" OnClick="Button1_Click" />
                    <asp:Button ID="Button5" runat="server" Height="30px" OnClick="Button5_Click" Text="Guncelle" Visible="False" Width="300px" />
                </asp:View>
            </asp:MultiView>
        </asp:View>
        <asp:View ID="View5" runat="server">
            Duzenleme
        </asp:View>
        <asp:View ID="View6" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">Silinecek Makale id</td>
                    <td>
                        <asp:Label ID="lbl_sil_id" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Baslık </td>
                    <td>
                        <asp:Label ID="lbl_sil_baslik" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Sil" Width="100px" />
                        &nbsp;<asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="İptal" Width="100px" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>
