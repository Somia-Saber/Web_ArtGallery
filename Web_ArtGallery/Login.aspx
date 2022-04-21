﻿<!DOCTYPE html>
<html>
<head>
    <title>Art Gallery</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style >
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

        div:not(.searchbar) {
            border: 3px deeppink;
            border-radius: 15px;
            box-shadow: 5px 5px 0px pink;
        }

        .searchbar {
            width: 35%;
            padding: 0px;
            margin: 0px 0px 8px 8px;
            border-radius: 15px;
            border: 1px;
            border-style: solid;
            border-color: rgb(255, 119, 214);
        }

            .searchbar:hover {
                box-shadow: 5px 3px 5px rgb(255, 81, 110);
            }

        .searchbox {
            padding: 9px 9px;
            margin: 0px 2px;
            width: 100%;
            border: none;
            outline: none;
            border-radius: 15px;
        }

        table#fam {
            width: 100%;
            border-collapse: collapse;
        }

        tr {
            text-align: center;
            font-size: 25px;
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
        .auto-style1 {
            margin-left: 0px;
            margin-right: 155px;
            margin-top: 0px;
        }
        .auto-style2 {
            width: 401px;
        }
    </style>
</head>

<body>

    <nav>
        <ul>
            <li><a href="Home.aspx">Home</a>
            <li><a href="SignUp.aspx">SignUp</a> </li>
            <li><a href="Login1.aspx">Login </a></li>
            <li class="nav-right"><a href="login.html" class="active">Login</a></li>


        </ul>


        <hr>
        <nav>
            <body>


                <form id="form1" runat="server">

                    <table class="done">
                        <tr><td class="auto-style2"><p class="toz">Art Gallery</p></td></tr>
                        <tr>
                            <td class="auto-style2">&nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="auto-style1" placeholder="Email address" Width="337px" Height="32px"></asp:TextBox>
                                <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtPass" runat="server" Height="32px" CssClass="auto-style1" placeholder=" password" Width="337px"></asp:TextBox>
                                <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="This is a required field!!" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPass" ErrorMessage="RegularExpressionValidator" Font-Names="Arial" Font-Size="Small" ForeColor="#CC0000" ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,15}$"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Button  ID="btnLogin"  CssClass="text" runat="server" Text="Login" PostBackUrl="~/index.html" />&nbsp;</td>

                        </tr>
                        <tr>

                            <td id="best" class="auto-style2"><a href="forgptten.html">Forrgotten password?</a></td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Button ID="btnAccount" runat="server" CssClass="bad" Text="Create New Account" />
                            </td>

                        </tr>
                    </table>

                </form>


            </body>

            </head>
</html>