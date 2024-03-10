<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="ApplyforTraining.aspx.vb" Inherits="OnlineTrainingEmployee.ApplyforTraining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 177px;
        }
        .auto-style2 {
            width: 167px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width:51%; height: 144px;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" ForeColor="#333399" Text="Apply for Training"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Training "></asp:Label>
                </td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="Aptraiid" runat="server" Height="21px" Width="315px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;<asp:Label ID="Label2" runat="server" Text="Employee "></asp:Label>
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style5">
                    <asp:DropDownList ID="Apempid" runat="server" Height="21px" Width="315px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Venue "></asp:Label>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="Apvenid" runat="server" Height="21px" Width="315px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">
                    <asp:Button ID="Btnap" runat="server" BackColor="#9966FF" style="margin-left: 17px" Text="SUBMIT" Width="120px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
