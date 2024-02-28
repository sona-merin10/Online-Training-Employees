<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/HR.Master" CodeBehind="Training.aspx.vb" Inherits="OnlineTrainingEmployee.Training" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 32px;
    }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            height: 27px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table align="center" style="width:50%; height: 282px;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" ForeColor="#000099" Text="Training"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Training Name"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="trtrna" runat="server" Height="27px" style="margin-left: 69px" Width="299px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Trainer "></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="traitrid" runat="server" Height="23px" style="margin-left: 71px" Width="307px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="traides" runat="server" style="margin-left: 71px" TextMode="MultiLine" Width="299px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Budget"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="traibud" runat="server" style="margin-left: 71px" Width="299px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btntraisub" runat="server" Text="SUBMIT" BackColor="#FF9900" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    
    </div>
</asp:Content>
