<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="TrainingRequest.aspx.vb" Inherits="OnlineTrainingEmployee.TrainingRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 125px;
        }
        .auto-style5 {
            width: 319px;
        }
        .auto-style7 {
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width:53%; height: 297px;" border: 1px solid black;">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" ForeColor="#0000CC" Text="TrainingRequest"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Employee "></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="traireqempid" runat="server" Height="21px" Width="168px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Training "></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="traireqtrid" runat="server" Height="21px" Width="168px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Request Date"></asp:Label>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style5">
                    <asp:TextBox ID="traireqdate" runat="server" Height="21px" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="traireqstatus" runat="server" Height="21px" Width="168px">
                        <asp:ListItem>Pending</asp:ListItem>
                        <asp:ListItem>Approved</asp:ListItem>
                        <asp:ListItem>Rejected</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btntrareqsub" runat="server" BackColor="#6666FF" Text="SUBMIT" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;
    
</asp:Content>
