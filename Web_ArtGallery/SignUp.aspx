<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Web_ArtGallery.SignUp" %>

<!DOCTYPE html>
<script runat="server">

     protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblMsg.Text = "Welcom success the create acount";
        }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 137px;
        }
        .auto-style3 {
            width: 137px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 238px;
        }
        .auto-style6 {
            width: 238px;
        }
        .auto-style7 {
            width: 137px;
            height: 40px;
        }
        .auto-style8 {
            width: 238px;
            height: 40px;
        }
        .auto-style9 {
            height: 40px;
        }
        .auto-style10 {
            height: 26px;
            width: 273px;
        }
        .auto-style11 {
            width: 273px;
        }
        .auto-style12 {
            height: 40px;
            width: 273px;
        }
        .auto-style13 {
            width: 137px;
            height: 36px;
        }
        .auto-style14 {
            width: 238px;
            height: 36px;
        }
        .auto-style15 {
            width: 273px;
            height: 36px;
        }
        .auto-style16 {
            height: 36px;
        }
        .auto-style17 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="#660066" Text="To Sign Up, Fill In all the Following Fields, Then Click Submit"></asp:Label>
        <br />
        <table class="auto-style1" style="background-color: #FFCCFF">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Fname" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="First Name:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtFname" runat="server" Height="26px" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Lname" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Last Name:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtLname" runat="server" Height="26px" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Gender" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Gender:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="rblGender" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC3399" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Email" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Email Address:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Phone" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Phone number:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPhone" runat="server" Height="26px" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Country" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Country:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="ddlCountry" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099">
                        <asp:ListItem Selected="True">Egypt</asp:ListItem>
                        <asp:ListItem>saudi</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Lebanon</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="UserName" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="UserName:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtUsename" runat="server" Height="26px" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Pss" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Password:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPass" runat="server" Height="26px" TextMode="Password" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="ConfirmPass" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Confirm Password:" Width="192px"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtConfirmPass" runat="server" Height="26px" TextMode="Password" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btnSubmit" runat="server" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#660033" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style12"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style17" colspan="4">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Brush Script MT" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
