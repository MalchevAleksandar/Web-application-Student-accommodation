<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Smestuvanje.aspx.cs" Inherits="Smestuvanje" %>

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

    <link rel="stylesheet" href="css/smestuvanje.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />

    <link href="css/cssdom.css" rel="stylesheet" />
     <style>
    .kal {
             width: 50px;
             height:50px;
         }
    .social { list-style:none; margin-top:10px;  padding-left: 0px;  width:464px; }
    .social li { display:inline; float:left; background-repeat:no-repeat; padding-left: 5px;}
    .social li a { display:block; width:48px; height:48px; padding-right:10px; position:relative; text-decoration:none; }
    .social li a strong { font-weight:normal; position:absolute; left:20px; top:-1px; color:#fff; padding:3px; z-index:9999;
        text-shadow:1px 1px 0 rgba(0, 0, 0, 0.75); background-color:rgba(0, 0, 0, 0.7);
        -moz-border-radius:3px; -moz-box-shadow: 0 0 5px rgba(0, 0, 0, 0.5); -webkit-border-radius:3px; -webkit-box-shadow: 0 0 5px rgba(0, 0, 0, 0.5); border-radius:3px; box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
    }


    li.facebook { background-image:url("images/facebook.png"); }
    li.twitter { background-image:url("images/twitter.png"); }
    li.instagram { background-image:url("images/Instagram.jpg"); }
    li.snapchat { background-image:url("images/snapchat.jpg"); }

</style>
</head>
<body>
    
    <nav id="navbar"class="navbar navbar-top" >
    
    <div class="container" style="width: 1670px;padding-bottom: 30px;">
    <form runat="server" id="forma">    
    

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
             <ul class="nav navbar-nav navbar-right">                 
                 <li><asp:HyperLink id="username" runat="server" NavigateUrl="~/Profil.aspx"><span class="glyphicon glyphicon-user"></span></asp:HyperLink></li>
                 <li><asp:LinkButton id="logInOutButton"  onclick="logEvent" runat="server"><span class="glyphicon glyphicon-log-in"></span></asp:LinkButton></li>
    </ul>
        </div>
       </div>
         <div class="container" style="width: 1700px; height:60px;padding-top: 7px;">

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
<div class="container" style="width:1670px; background-color:rgb(255,255,204); padding-bottom: 50px;">

<div class="all-offers" style="margin-left: 69px;">
    <div style="margin-left: -10px;">
<div class="offers">
    <img src="Sliki/goce1.jpg" style="width:343px;height:200px;"/>
    <h3 class="offer-title">Гоце Делчев</h3>
    <div class="=info" style=" margin-left: 10px; margin-right: 10px;">
    <p><b>Населба:</b> Карпош 4</p>
    <p><b>Капацитет:</b> 1324 легла</p>
    <p><b>Факултети во близина:</b> ФИНКИ, ФЕИТ, Машински ,ТМФ и тн.</p>
    </div>
   
    <asp:Button ID="btnGoce" runat="server" Text="Слободни соби" cssClass="btn-offer" OnClick="btnAvailableRooms_Click"  />
    
</div>

<div class="offers">
    <img src="Sliki/kuzman1.jpg" style="width:343px;height:200px;"/>
    <h3 class="offer-title">Кузман Јосифовски Питу</h3>
    <div class="=info" style=" margin-left: 10px; margin-right: 10px;">
    <p><b>Населба:</b> Центар</p>
    <p><b>Капацитет:</b> 496 легла</p>
    <p><b>Факултети во близина:</b> Архитектонски, Градежен, Стоматолошки и тн.</p>
    </div>
   
    <asp:Button ID="btnKuzman" runat="server" Text="Слободни соби" cssClass="btn-offer" OnClick="btnAvailableRooms_Click"  />
    
</div>

<div class="offers">
    <img src="Sliki/pelagonija3.jpg" style="width:343px;height:200px;"/>
    <h3 class="offer-title">Пелагонија</h3>
    <div class="=info" style=" margin-left: 10px; margin-right: 10px;">
    <p><b>Населба:</b> Кисела Вода</p>
    <p><b>Капацитет:</b> 950 легла</p>
    <p><b>Факултети во близина:</b> Медицински, Економски, Филолошки, Стоматолошки и тн.</p>
    </div>
   
    <asp:Button ID="btnPelagonija" runat="server" Text="Слободни соби" cssClass="btn-offer" OnClick="btnAvailableRooms_Click" />
    
</div>

<div class="offers">
    <img src="Sliki/stiv1.jpg" style="width:343px;height:200px;"/>
    <h3 class="offer-title">Стив Наумов</h3>
    <div class="=info" style=" margin-left: 10px; margin-right: 10px;">
    <p><b>Населба:</b> Автокоманда
        </p>
    <p><b>Капацитет:</b> 1226 легла</p>
    <p><b>Факултети во близина:</b> Правен, Економски, ПМФ, Земјоделски и тн.</p>
    </div>
      
    <asp:Button ID="btnStiv" runat="server" Text="Слободни соби" cssClass="btn-offer" OnClick="btnAvailableRooms_Click" />
    
</div>
    </div>
        

</div>
    </form>
   <!-- <div> <a href="Prijava.aspx" class="btn btn-primary">prijava</a></div> -->
    </div>
</body>
</html>
