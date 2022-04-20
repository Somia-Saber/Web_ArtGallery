<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Web_ArtGallery.SignUp" %>
<%@ Import Namespace="System.Data.SqlClient" %>


<!DOCTYPE html>
<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //1-Create connection object
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|ArtGallery.mdf;Integrated Security=True";

        //2-create insert statment
       // string strInsert = String.Format("INSERT INTO Member VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}')", txtFname.Text, txtLname.Text, rblGender.SelectedValue, txtEmail.Text, txtPhone.Text, ddlCountry.SelectedValue, txtUsename.Text, txtPass.Text);

        string strInsert = String.Format("INSERT INTO Member VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')",txtFname.Text,txtLname.Text,rblGender.SelectedValue,txtEmail.Text,txtPhone.Text,ddlCountry.SelectedValue,txtUsename.Text,txtPass.Text);
       /* string strInsert="INSERT INTO Member"+
            "VALUES('"+txtFname.Text+"','"
            + txtLname.Text + "','"
            + rblGender.SelectedValue + "','"
            + txtEmail.Text + "','"
            + txtPhone.Text + "','"
            + ddlCountry.SelectedValue + "','"
            + txtUsename.Text + "','"
            + txtPass.Text + "')";*/
       /////////////////////////////////////////////////////////////////////////

        //3-create SQL command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

        //4-open database
        conn.Open();

        //5-execute the sql command
        cmdInsert.ExecuteNonQuery();

        //6-close database
        conn.Close();

            lblMsg.Text = "Welcome " + txtFname.Text + ", Your Account has been Successfully Created!!";
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
        .auto-style10 {
            height: 26px;
            width: 273px;
        }
        .auto-style11 {
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
        .auto-style18 {
            width: 137px;
            height: 35px;
        }
        .auto-style19 {
            width: 238px;
            height: 35px;
        }
        .auto-style20 {
            width: 273px;
            height: 35px;
        }
        .auto-style21 {
            height: 35px;
        }
        .auto-style22 {
            width: 137px;
            height: 8px;
        }
        .auto-style23 {
            height: 8px;
            width: 238px;
        }
        .auto-style24 {
            height: 8px;
            width: 273px;
        }
        .auto-style25 {
            height: 8px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="#660066" Text="To Sign Up, Fill In all the Following Fields, Then Click Submit"></asp:Label>
        <br />
        <table class="auto-style1" style="border: thick double #CC0099; background-color: #FFCCFF">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Fname" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="First Name:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtFname" runat="server" Height="26px" Width="228px" placeholder=" Ex:Somia or Abd Alrahman"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Invalid First name Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Lname" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Last Name:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtLname" runat="server" Height="26px" Width="228px" placeholder=" Ex:Somia or Abd Alrahman"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid Last name Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
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
                    <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="228px" placeholder=" Ex:20195372@fue.edu.eg"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Phone" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Phone number:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPhone" runat="server" Height="26px" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid Mobile number !" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="[0][1][0-2][0-24-9]\s\d{7}"></asp:RegularExpressionValidator>
                </td>
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
                <td class="auto-style13">
                    <asp:Label ID="UserName" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="UserName:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtUsename" runat="server" Height="26px" Width="228px" placeholder=" Ex:Somia2019"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUsename" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style16">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtUsename" ErrorMessage="Should be 8 characters at least !" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Pss" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Password:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtPass" runat="server" Height="26px" TextMode="Password" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPass" ErrorMessage="RegularExpressionValidator" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,15}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="ConfirmPass" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Confirm Password:" Width="192px"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtConfirmPass" runat="server" Height="26px" TextMode="Password" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmPass" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style16">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" ErrorMessage="No matching , Retype !" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Button ID="btnSubmit" runat="server" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#660033" OnClick="btnSubmit_Click" Text="Submit" Height="51px" Width="115px" />
                </td>
                <td class="auto-style19"></td>
                <td class="auto-style20"></td>
                <td class="auto-style21"></td>
            </tr>
            <tr>
                <td class="auto-style22">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style17" colspan="4">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Brush Script MT" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5"></td>
                <td class="auto-style10"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style6"></td>
                <td class="auto-style11"></td>
                <td></td>
            </tr>
        </table>
    </form>

</body>
</html>
