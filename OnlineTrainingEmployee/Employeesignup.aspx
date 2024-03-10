<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Employeesignup.aspx.vb" Inherits="OnlineTrainingEmployee.Employeedetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 296px;
    }
    .auto-style2 {
        width: 296px;
        height: 32px;
    }
    .auto-style3 {
        height: 32px;
    }
        .auto-style4 {
            width: 296px;
            height: 37px;
        }
        .auto-style5 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align= "center" style="width:54%; height: 661px;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label11" runat="server" Text="Employee Details"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Company  "></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="empdeComid" runat="server"  Height="21px" Width="315px" style="margin-bottom: 0px" >
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style7"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtFn" runat="server" Height="21px" Width="315px"></asp:TextBox>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style7"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtln" runat="server"  Height="21px" Width="315px"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtage" runat="server"  Height="21px" Width="315px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style7"></td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:RadioButton ID="Rb1" runat="server" Text="Male" GroupName="rr" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="Rb2" runat="server" Text="Female" GroupName="rr" />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtemail1" runat="server"  Height="21px" Width="315px"></asp:TextBox>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label12" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="emppass" runat="server"  Textmode="Password" Height="21px" Width="315px"></asp:TextBox>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style7"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Designation "></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="empdesigid" runat="server"  Height="21px" Width="315px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    </td>
                <td class="auto-style5">
                    </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Department "></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="empdepartid" runat="server"  Height="21px" Width="315px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label10" runat="server" Text="Qualification "></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="empquaid" runat="server" Height="21px" Width="315px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Button ID="Btnreg" runat="server" BackColor="#66CCFF" BorderColor="Black" Text="Sign Up" />
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label13" runat="server" Text="AlreadyaUser?"></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server">SignIn</asp:LinkButton>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    <div style="height: 154px; width: 1441px">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
</asp:Content>
