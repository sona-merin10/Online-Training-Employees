<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HR.Master" CodeBehind="Venue.aspx.vb" Inherits="OnlineTrainingEmployee.Venue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width:43%; height: 205px;">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" ForeColor="#3366FF" Text="Venue"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:TextBox ID="venname" runat="server" Height="16px" Width="174px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:TextBox ID="venaddress" runat="server" Height="16px" Width="174px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddvenuetype" runat="server" Height="16px" Width="174px">
                        <asp:ListItem>Internal</asp:ListItem>
                        <asp:ListItem>External</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnvensub" runat="server" BackColor="#6666FF" Text="SUBMIT" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
