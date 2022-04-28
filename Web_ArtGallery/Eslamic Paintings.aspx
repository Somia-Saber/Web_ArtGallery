<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web_ArtGallery.index" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!DOCTYPE html>
    <meta charset="utf-8" />
    <title></title>
    <style>
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
        .auto-style5 {
            margin-top: 0px;
            margin-right: 0px;
        }
        .auto-style6 {
            margin-left: 21px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <ul>
        <li><a href="Home.aspx">Home</a>
        <li><a href="SignUp.aspx">SignUp</a> </li>
        <li><a href="Nature Paintings.aspx">Nature Paintings </a></li>
        <li><a href=" Gradual Art Murals.aspx"> Gradual Art Murals </a></li>
        <li><a href=" Eslamic Paintings.aspx"> Eslamic Paintings </a></li>
        <li><a href="Design You Wish.aspx"> Design You Wish </a></li>
        <li><a href="FeadBack.aspx">FeadBack</a></li>

        <li class="nav-right"><a href="login.aspx" class="active">Login</a></li>

    </ul>
        <p>
                <asp:Image ID="Image7" runat="server" CssClass="auto-style5" Height="192px" ImageUrl="Image6.jpeg" Width="174px" />
                </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eslamic Paintings</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price:1200 EGP</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Add to cart" BorderStyle="Solid" CssClass="auto-style6" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#660033" Height="37px" Width="223px" />
        </p>
         </form>

</body>
</html>