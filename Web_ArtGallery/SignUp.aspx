﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Web_ArtGallery.SignUp" %>
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
        //7-save user profile picture
        if (fupPic.HasFile)
            fupPic.SaveAs(Server.MapPath("UserPic") + "\\" + txtUsename.Text + "jpg");
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 76%;
            height: 589px;
            margin-left: 230px;
            margin-right: 0px;
            margin-top: 45px;
        }
        .auto-style10 {
            height: 26px;
            width: 273px;
        }
        .auto-style11 {
            width: 273px;
        }
        .auto-style15 {
            width: 273px;
            height: 36px;
        }
        .auto-style17 {
            height: 32px;
        }
        .auto-style20 {
            width: 273px;
            height: 35px;
        }
        .auto-style24 {
            height: 8px;
            width: 273px;
        }
         h1 {
            text-align: center;
            color: deeppink;
            text-transform: uppercase;
            font-size: 32px;
            background-color: rgb(255, 196, 208);
            font-family: Arial, Helvetica, sans-serif;
        }

        .class {
            text-align: center;
            color: rgb(255, 80, 203) solid;
            text-transform: uppercase;
            font-size: 32px;
            background-color: rgb(255, 247, 248);
            font-family: Arial, Helvetica, sans-serif;
        }

        #id {
            text-align: center;
            color: rgb(245, 42, 154);
            text-transform: uppercase;
            font-size: 32px;
            background-color: rgb(255, 247, 248);
            font-family: Arial, Helvetica, sans-serif;
        }

        h3 {
            text-align: center;
            color: rgb(255, 59, 180);
            text-transform: lowercase;
            font-size: 32px;
            background-color: rgb(255, 247, 248);
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            background-image: url(https://pbs.twimg.com/media/EXT-mS4WkAAl9D7.jpg);
            background-repeat: no-repeat;
            background-size: 60cm;
            background-position: center;
        }

        ul {
            list-style-type: none;
            border: 1px solid #a7a7a7;
            background-color: #ffffff;
            overflow: hidden;
            padding: 0px;
            margin: 0px;
        }

        li {
            float: left;
        }

        a {
            text-decoration: none;
            color: #008CBA;
        }

        li a {
            display: block;
            color: #666;
            padding-left: 14px;
            padding-right: 14px;
            padding-top: 14px;
            padding-bottom: 14px;
        }

            li a:hover {
                background-color: #eeeeee
            }

        .nav-right {
            float: right;
        }

        li a.active {
            background-color: deeppink;
            color: white;
        }

        
            
          
        thead {
            background-color: deeppink;
            color: rgb(255, 255, 255);
        }

        #bs tr:nth-child(even) {
            background-color: rgb(255, 196, 208);
        }

        form {
            font-size: 20px;
        }

        body {
            font-family: helvetica;
            background-color: whitesmoke;
        }

        .text {
            background-color: deeppink;
            border: none;
            border-radius: 6px;
            font-size: 21px;
            line-height: 48px;
            padding: 0 16px;
            width: 332px;
        }

        .font {
            border-radius: 6px;
            font-size: 21px;
            padding: 0px 16px;
            line-height: 48px;
            width: 332px;
            border: 1px solid rgba(128, 128, 128, 431);
        }

        #best {
            text-align: center;
            font-size: 20px;
        }

        .bad {
            background-color: #ff7ddf;
            border: none;
            border-radius: 6px;
            font-size: 21px;
            line-height: 48px;
            padding: 0 16px;
            width: 332px;
        }

        .done {
            margin: 80px auto;
            padding: 40px;
            background-color: #fff;
            box-shadow: 0 2px 6px rgb(245, 121, 189),0 2px 6px rgb(255, 87, 185);
            border-radius: 20px;
        }

        .toz {
            font-size: 45px;
            color: deeppink;
            font-weight: bolder;
            cursor: pointer;
        }

        .button {
            border: none;
            padding: 15px 30px;
            background-color: deeppink;
            color: white;
            font-size: 15px;
            display: inline-block;
        }

        input[type=text], [type=date], [type=tel], select, textarea {
            width: 50%;
            padding: 10px 15px;
            margin: 8px;
            font-size: 15px;
            border-radius: 6px;
            border: 1px solid rgba(128, 128, 128, 431);
        }

        fieldset {
            margin: 20px;
        }

        p {
            font-family: 'Times New Roman', Times, serif;
            letter-spacing: 1px;
            margin: 15px;
        }

        .searchicon {
            padding-top: 0px;
            fill: #a7a7a7;
            width: 20px;
            height: 20px;
            cursor: pointer;
        }
        .auto-style25 {
            height: 26px;
            width: 210px;
        }
        .auto-style26 {
            width: 210px;
        }
        .auto-style27 {
            width: 210px;
            height: 36px;
        }
        .auto-style28 {
            width: 210px;
            height: 35px;
        }
        .auto-style29 {
            height: 8px;
            width: 210px;
        }
        .auto-style32 {
            height: 36px;
        }
        .auto-style33 {
            height: 35px;
        }
        .auto-style34 {
            height: 8px;
        }
        .auto-style36 {
            height: 26px;
            width: 282px;
        }
        .auto-style37 {
            width: 282px;
        }
        .auto-style38 {
            width: 282px;
            height: 36px;
        }
        .auto-style39 {
            width: 282px;
            height: 35px;
        }
        .auto-style40 {
            height: 8px;
            width: 282px;
        }
        .auto-style42 {
            height: 68px;
        }
        .auto-style43 {
            width: 282px;
            height: 68px;
        }
        .auto-style44 {
            width: 273px;
            height: 68px;
        }
        .auto-style45 {
            width: 210px;
            height: 68px;
        }
        .auto-style46 {
            height: 26px;
        }
    </style>
</head>
<body>
     <ul>
        <li><a href="Home.html">Home</a>
        <li><a href="SignUp.aspx">SignUp</a> </li>
        <li><a href="Login1.aspx">Login </a></li>
        <li class="nav-right"><a href="login.html" class="active">Login</a></li>


    </ul>
    <form id="form1" runat="server">
        <br />
        <table class="auto-style1" style="border-style: none; border-color: #CC0099; background-color: #FFFFFF">
            <tr>
                <td class="auto-style17" colspan="4">
        <asp:Label ID="label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Monotype Corsiva" Font-Size="X-Large" ForeColor="#660066" Text="To Sign Up, Fill In all the Following Fields, Then Click Submit"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style46">
                    <asp:Label ID="Fname" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="First Name:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtFname" runat="server" Height="26px" Width="228px" placeholder=" Ex:Somia or Abd Alrahman"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style25">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFname" ErrorMessage="Invalid First name Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style42">
                    <asp:Label ID="Lname" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Last Name:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style43">
                    <asp:TextBox ID="txtLname" runat="server" Height="26px" Width="228px" placeholder=" Ex:Somia or Abd Alrahman"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style45">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLname" ErrorMessage="Invalid Last name Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="([A-Z][a-z]*\s[A-Z][a-z]*)|([A-z][a-z]*)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Gender" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Gender:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style37">
                    <asp:RadioButtonList ID="rblGender" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC3399" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="F">Female</asp:ListItem>
                        <asp:ListItem Value="M">Male</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Email" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Email Address:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style37">
                    <asp:TextBox ID="txtEmail" runat="server" Height="26px" Width="228px" placeholder=" Ex:20195372@fue.edu.eg"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Phone" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Phone number:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style37">
                    <asp:TextBox ID="txtPhone" runat="server" Height="26px" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid Mobile number !" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="[0][1][0-2][0-24-9]\s\d{7}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Country" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Country:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style37">
                    <asp:DropDownList ID="ddlCountry" runat="server" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099">
                        <asp:ListItem Selected="True">Egypt</asp:ListItem>
                        <asp:ListItem>saudi</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                        <asp:ListItem>Lebanon</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style26">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <asp:Label ID="UserName" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="UserName:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtUsename" runat="server" Height="26px" Width="228px" placeholder=" Ex:Somia2019"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUsename" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtUsename" ErrorMessage="Should be 8 characters at least !" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Pss" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Password:" Width="137px"></asp:Label>
                </td>
                <td class="auto-style37">
                    <asp:TextBox ID="txtPass" runat="server" Height="26px" TextMode="Password" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style26">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPass" ErrorMessage="RegularExpressionValidator" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,15}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">
                    <asp:Label ID="ConfirmPass" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Confirm Password:" Width="192px"></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtConfirmPass" runat="server" Height="26px" TextMode="Password" Width="228px"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmPass" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style27">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConfirmPass" ErrorMessage="No matching , Retype !" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style46">
                    <asp:Label ID="ConfirmPass0" runat="server" BorderStyle="None" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#CC0099" Text="Upload Profile Pic:" Width="192px" Height="28px"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:FileUpload ID="fupPic" runat="server" Height="31px" />
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Button ID="btnSubmit" runat="server" BorderStyle="Solid" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#660033" OnClick="btnSubmit_Click" Text="Submit" Height="51px" Width="115px" />
                </td>
                <td class="auto-style39"></td>
                <td class="auto-style20"></td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style34">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style40"></td>
                <td class="auto-style24"></td>
                <td class="auto-style29"></td>
            </tr>
            <tr>
                <td class="auto-style17" colspan="4">
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Brush Script MT" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
                </td>
            </tr>
            <tr>
                
                <td class="auto-style37"></td>
                <td class="auto-style11"></td>
                <td class="auto-style26"></td>
            </tr>
        </table>
    </form>

</body>
</html>
