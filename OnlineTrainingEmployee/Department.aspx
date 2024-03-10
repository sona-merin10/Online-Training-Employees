<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HR.Master" CodeBehind="Department.aspx.vb" Inherits="OnlineTrainingEmployee.Department" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table align="center" style="width:45%; height: 171px;">
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" ForeColor="#3333CC" Text="Department"></asp:Label>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Department Name" Height="21px" Width="315px"></asp:Label>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtdepartname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" BackColor="#FFCC00" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
