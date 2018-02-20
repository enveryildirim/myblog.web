<%@ Page Title="" Language="C#" MasterPageFile="~/www/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Anket.aspx.cs" Inherits="myblog.Admin.Anket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField SelectText="Aktif Et" ShowSelectButton="True" />
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
            &nbsp;&nbsp;
        </asp:View>
        <asp:View ID="View2" runat="server">

            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Soru</td>
                    <td>
                        <asp:TextBox ID="txtsoru" runat="server" Height="20px" MaxLength="100" Width="300px"></asp:TextBox>
                        &nbsp;anket uygulaması kullanılmıyor</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Secenek</td>
                    <td>
                        <asp:TextBox ID="txtsecenek" runat="server" Height="20px" Width="200px"></asp:TextBox>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ekle</asp:LinkButton>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="GridView2_RowDeleting">
                            <Columns>
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
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" Width="285px" OnClick="Button1_Click" />
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="İptal" Width="65px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </asp:View>
        <asp:View ID="View3" runat="server">Aktif onaylama</asp:View>&nbsp;<asp:View ID="View4" runat="server">Silme</asp:View>
    </asp:MultiView>
</asp:Content>
