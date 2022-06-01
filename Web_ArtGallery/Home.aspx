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
        .auto-style1 {
            margin-left: 5px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 1455px;
            height: 103px;
        }
        .auto-style4 {
            width: 90%;
        }
        .auto-style5 {
            margin-left: 52px;
            margin-top: 0px;
        }
        .auto-style6 {
            height: 53px;
            margin-left: 0px;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            float: right;
            width: 74px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <ul class="auto-style6">
        <li><asp:Image ID="Image2" runat="server" ImageUrl="Image2.jpeg" CssClass="auto-style2" Height="49px" Width="63px"/></li>
        <li class="auto-style7"><a href="Home.aspx">Home</a>
        <li><a href="SignUp.aspx">SignUp</a> </li>
        <li><a href="Nature Paintings.aspx">Nature Paintings </a></li>
         <li><a href=" Gradual Art Murals.aspx"> Gradual Art Murals </a></li>
         <li><a href=" Eslamic Paintings.aspx"> Eslamic Paintings </a></li>
         <li><a href="Design You Wish.aspx"> Design You Wish </a></li>
         <li><a href="FeadBack.aspx">FeadBack</a></li>

        
        <li class="auto-style8"><a href="login.aspx" class="active">Login</a></li>

    </ul>
       <div data-v-1fa55048="" id="top-horizontal-menu" class="col-md-12 webmenu z-header-main-menu" style="overflow: visible;"><div data-v-1fa55048="" class="webmenu-main"><div data-v-1fa55048="" id="primary_nav_wrap"><div data-v-1fa55048="" class="container-fluid main-menu"><!----> <!----> <!----> <div data-v-1fa55048="" class="col-md-12 announcement-bar-new" style="background-color: rgb(255, 207, 62); color: rgb(28, 131, 113);"><div class="announcement-bar-text"><span>
                    ✔ الأسعار تشمل قيمة الضريبة المضافة 15% + تكلفة الشحن و التوصيل
                </span> <span id="top-announcement-bar-close" class="announcement-bar-close"><span style="color: rgb(255, 255, 255) !important;">×</span></span></div>
           </div>
           <div data-v-1fa55048="" class="logo-bar" style="display: flex;"><!----> <a data-v-1fa55048="" href="/" class="flex-all-center router-link-exact-active router-link-active" id="header-store-logo">&nbsp;</a><br />
               <asp:Image ID="Image8" runat="server" ImageUrl="art.jpg" Height="619px" Width="1695px" />
           </div>
        </div>
        <input data-v-1fa55048="" type="text" id="search" name="search" placeholder="ابحث في المتجر" autocomplete="off" class="auto-style4"><!----></div></div><div data-v-1fa55048="" id="top-horizontal-menu" class="col-md-12 webmenu z-header-main-menu" style="overflow: visible;"><div data-v-1fa55048="" class="webmenu-main"><div data-v-1fa55048="" id="primary_nav_wrap"><ul data-v-1fa55048="" id="menuHorizontalLinks" class="auto-style3"><li data-v-1fa55048="" class="item-home-page"><a data-v-1fa55048="" href="/" class="router-link-exact-active router-link-active"> الصفحة الرئيسية<a data-v-1fa55048="" href="/products" class="item-all-products">جميع المنتجات</a></li> <li data-v-1fa55048="" style="display: list-item;"><a data-v-1fa55048="" href="/categories/287498/لوحات-جدارية-بجميع-المقاسات" class="">
                                اختر حسب المقاس
                                <span data-v-1fa55048="">&nbsp;<i data-v-1fa55048="" class="icon-caret-circle-down-primary"></i></span></a> <span data-v-1fa55048="" class="fix-border-top"></span> <div data-v-1fa55048="" class="second-level-menu-div" style="height: 427px;"><ul data-v-1fa55048="" class="second-level-menu"><li data-v-1fa55048=""><a data-v-1fa55048="" href="/categories/346409/لوحات-جدارية-صغيرة" class="">
                                        لوحات جدارية صغيرة
                                        <!----></a> <!----></li><li data-v-1fa55048=""><a data-v-1fa55048="" href="/categories/346408/لوحات-جدارية-متوسطة" class="">
                                        لوحات جدارية متوسطة
                                        <!----></a> <!----></li><li data-v-1fa55048=""><a data-v-1fa55048="" href="/categories/346406/لوحات-جدارية-كبيرة" class="">
                                        لوحات جدارية كبيرة
                                        <!----></a> <!----></li></ul></div></li><li data-v-1fa55048="" style="display: list-item;"><a data-v-1fa55048="" href="/categories/288822/لوحات-جدارية-جاهزة" class="">
                                اختر حسب البرواز
                                <span data-v-1fa55048="">&nbsp;<i data-v-1fa55048="" class="icon-caret-circle-down-primary"></i></span></a> <span data-v-1fa55048="" class="fix-border-top"></span> <div data-v-1fa55048="" class="second-level-menu-div" style="height: 427px;"><ul data-v-1fa55048="" class="second-level-menu"><li data-v-1fa55048=""><a data-v-1fa55048="" href="/categories/347152/لوحات-ببرواز-أسود" class="">
                                        لوحات ببرواز أسود
                                        <!----></a> <!----></li><li data-v-1fa55048=""><a data-v-1fa55048="" href="/categories/346415/لوحات-ببرواز-شامبين" class="">
                                        لوحات ببرواز شامبين
                                        <!----></a> <!----></li><li data-v-1fa55048=""><a data-v-1fa55048="" href="/categories/346414/لوحات-بدون-برواز" class="">
                                        لوحات بدون برواز
                                        <!----></a> <!----></li></ul></div></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/181970/لوحات-جدارية-إسلامية" class="">
                                لوحات جدارية إسلامية
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/260354/لوحات-جدارية-مودرن" class="">
                                لوحات جدارية مودرن
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/10935/لوحات-فن-تجريدي" class="">
                                لوحات فن تجريدي
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/289957/لوحات-مدن-عالمية" class="">
                                لوحات مدن عالمية
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/10936/لوحات-الوان-مائية" class="">
                                لوحات الوان مائية
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/10934/لوحات-طبيعة" class="">
                                لوحات طبيعة
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/10940/لوحات-جدارية-كلاسيك" class="">
                                لوحات جدارية كلاسيك
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/287719/تاريخي" class="">
                                لوحات جدارية تاريخية
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/280968/لوحات-جدارية-بعروض-خصم-للجميع" class="">
                                عروض التخفيض
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/287837/لوحات-جدارية-طولية-فنية-من-لوحتي" class="">
                                لوحات جدارية طولية
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/287823/لوحات-جدارية-فنية-مربعة-من-لوحتي" class="">
                                لوحات جدارية مربعة
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/287838/لوحات-جدارية-فنية-عرضية-من-لوحتي" class="">
                                لوحات جدارية عرضية
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/287798/لوحات-حائط-ثلاثية-فنية" class="">
                                طقم لوحات جدارية
                                <!----></a> <!----> <!----></li><li data-v-1fa55048="" style="display: none;"><a data-v-1fa55048="" href="/categories/287791/لوحات-جدارية-مقسمة-من-لوحتي" class="">
                                لوحات جدارية مقسمة
                                <!----></a> <!----> <!----></li> <li data-v-1fa55048="" style="display: list-item;"><a data-v-1fa55048="" href="/categories" class="item-all-categories">جميع التصنيفات</a></li></ul></div> </div></div> </div></div> </div></div>
                    
                </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Large" ForeColor="#660033" Text="◈ Choose the look of your board ◈"></asp:Label>
        </p>
        <p>
                <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="194px" ImageUrl="Image1.jpeg" Width="185px" />
                <asp:Image ID="Image3" runat="server" CssClass="auto-style5" Height="194px" ImageUrl="Image4.jpeg" Width="178px" />
                <asp:Image ID="Image4" runat="server" CssClass="auto-style5" Height="194px" ImageUrl="Image3.jpeg" Width="178px" />
                <asp:Image ID="Image5" runat="server" CssClass="auto-style5" Height="194px" ImageUrl="Image66.jpeg" Width="178px" />
                <asp:Image ID="Image6" runat="server" CssClass="auto-style5" Height="194px" ImageUrl="Image6.jpeg" Width="178px" />
                <asp:Image ID="Image7" runat="server" CssClass="auto-style5" Height="192px" ImageUrl="Image44.jpeg" Width="191px" />
                </p>
   
       
       

   
        <p>
                &nbsp;</p>
    </form>
    </form>

</body>
</html>