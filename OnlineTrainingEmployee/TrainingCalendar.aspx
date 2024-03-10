<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HR.Master" CodeBehind="TrainingCalendar.aspx.vb" Inherits="OnlineTrainingEmployee.TrainingCalender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
        height: 32px;
        width: 198px;
    }
    .auto-style6 {
        width: 198px;
    }a
        .auto-style7 {
            width: 229px;
            height: 32px;
        }
        .auto-style9 {
            width: 95px;
        }
        .auto-style10 {
            width: 160px;
        }
        .auto-style11 {
            height: 32px;
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  align="center" style="width:52%; height: 371px;">
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="Label4" runat="server" ForeColor="#3333CC" Text="Training Calendar" Font-Italic="True" Font-Overline="False" Font-Underline="True"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Text="Training "></asp:Label>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="Caltrainingid" runat="server" Height="21px" Width="168px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Text="Venue "></asp:Label>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style6">
                    <asp:DropDownList ID="Calvenueid" runat="server" Height="21px" Width="168px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label7" runat="server" Text="Start Date"></asp:Label>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtstdate" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label8" runat="server" Text="End Date"></asp:Label>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtendate" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="Btntrcal" runat="server" BackColor="#6666FF" Text="SUBMIT" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style11"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
