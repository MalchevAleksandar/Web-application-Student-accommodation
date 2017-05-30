<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prijava.aspx.cs" Inherits="Prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <script src='js/jquery.js'></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/scriptadom.js"></script>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />

    <link href="css/cssdom.css" rel="stylesheet" />
    <style type="text/css">
         body {
         background-color:darkred;
         color:rgb(255,255,204);
         }
        .auto-style2 {
            width: 340px;
        }
        .auto-style3 {
            width: 340px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
       
        td {
        padding-bottom:22px;
        }

        .auto-style5 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }

        .auto-style6 {
            width: 49%;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
     <nav id="navbar"class="navbar   navbar-top" >
    

    <div class="container " style="width: 1700px;">


        <div style="width: 250px;padding-top: 10px; padding-bottom: 10px;" class="pull-left">
            <div class="input-group" >
                <input class="form-control" type="text" id="search" placeholder="Search club" />
                        <span class="input-group-btn ">
                            <button class="btn btn-default" type="button" id="btn-search">
                                <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </span>
            </div>

        </div>
        <div class="pull-right">
            <ul>
                 <li><asp:HyperLink id="username" runat="server"><span class="glyphicon glyphicon-user"></span></asp:HyperLink></li>
                 <li><asp:LinkButton id="logInOutButton"  onclick="logEvent" runat="server"><span class="glyphicon glyphicon-log-in"></span>LinkButton</asp:LinkButton></li>
                 
    </ul>
        </div>
       </div>
         <div class="container" style="width: 1700px; height: 60px; padding-top: 7px;">
        <ul id="meni">
  <li style="margin-left:30%"><a href="Home.aspx">Почетна</a></li>
  <li class="dropdown1">
    <a href="javascript:void(0)" class="dropbtn">Студентски домови</a>
    <div class="dropdown-content">
      <a href="Stiv.html">Стив Наумов</a>
      <a href="Goce.html">Гоце Делчев</a>
      <a href="Pelagonija.html">Пелагонија</a>
          <a href="Kuzman.html">Кузман Јосифовски Питу</a>
    </div>
  </li>
 <li><a href="Smestuvanje.aspx">Сместување</a></li>   
  <li><a href="Contact.aspx">Контакт</a></li>       
</ul>


         </div>
</nav>
    <div class="container" style="padding-top:50px; width:1672px; background-color:rgb(255,255,204);color:black;">
    
    <div>
    
        <table class="auto-style6">
            <tr>
                <td class="auto-style3">Изберете универзитет</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem>Изберете универзитет</asp:ListItem>
                        <asp:ListItem>Св.Кирил и Методиј Скопје</asp:ListItem>
                        <asp:ListItem>Гоце Делчев Штип</asp:ListItem>
                        <asp:ListItem>Св. Климент Охридски Битола</asp:ListItem>
                        <asp:ListItem>Св. Апостол Павле Охрид</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Изберете факултет</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem>Изберете факултет</asp:ListItem>
                        <asp:ListItem>ФИНКИ</asp:ListItem>
                        <asp:ListItem>ФЕИТ</asp:ListItem>
                        <asp:ListItem>Машински факултет</asp:ListItem>
                        <asp:ListItem>Правен факултет</asp:ListItem>
                        <asp:ListItem>Економски факултет</asp:ListItem>
                        <asp:ListItem>Земјоделски факултет</asp:ListItem>
                        <asp:ListItem>Градежен факултет</asp:ListItem>
                        <asp:ListItem>Медицински факултет</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

           

            <tr>
                <td class="auto-style2">Внесете година на студии</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Width="341px"  ></asp:TextBox >
                </td>
            </tr>
             <tr>
                <td>Внесете број на членови во потесно семејство</td>
                 <td><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="341px"  TextMode="Number"></asp:TextBox ></td>
            </tr>
            <tr>
                <td class="auto-style2">Дали сте апсолвент</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" > 
                        <asp:ListItem>Да</asp:ListItem> 
                        <asp:ListItem>Не</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnPrijava" runat="server" Text="Поднеси пријава" class="btn btn-danger" OnClick="btnPrijava_Click"/>
                </td>
            </tr>
        </table>
    
    </div>
    

    </div>
        </form>
</body>
</html>
