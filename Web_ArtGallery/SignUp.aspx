<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Web_ArtGallery.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Art Gallery</td>
                    <td>Sign Up</td>
                    <td>Sign In</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" style="font-family: Arial, Helvetica, sans-serif">
                        <asp:Label ID="Label1" runat="server" Font-Size="Medium" ForeColor="#CC00CC" Text="First Name:"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="#CC00CC" Text="Last Name:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="#CC00CC" Text="Gender:"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
