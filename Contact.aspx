<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Контакт</title>
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/cssdom.css"/>
    <script  src= 'js/jquery.js'></script>
    <script   src="js/jquery-ui.js"></script>
    <script  src="js/bootstrap.js"></script>
    <script src="js/scriptadom.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />

    <link href="css/cssdom.css" rel="stylesheet" />
    <style>
      
        .social { list-style:none; margin:10px auto; padding-left: 0px; width:464px; }
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
        
        .col-md-3 {
            width: auto;
        }

    </style>

</head>
<body>
   <nav id="navbar"class="navbar  navbar-top">


    <div class="container" style="width:1700px;">


        <div style="width: 250px;padding-top: 10px;padding-bottom: 10px;" class="pull-left">
            <div class="input-group" >
                <input class="form-control" type="text" id="search" placeholder="Search club" />
                        <span class="input-group-btn ">
                            <button class="btn btn-default" type="button" id="btn-search">
                                <span class="glyphicon glyphicon-search"></span>
                            </button>
                        </span>
            </div>

        </div>
    </div>
    <div class="container" style="height: 60px;padding-top: 7px; width:1700px;">
        
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
<!--END OF NAV-->
<div class="container" style="width:1700px;" >

    <div class="well" style="background-color: rgb(255,255,204)">
        <div class="row" style="padding-left: 20px;">
        <h2 class="page-header">Контакт</h2>
       
        <div class="row" style="margin-bottom: 30px;">
            <div class="col-md-3">
                <img src="Sliki/ace.JPG" class="img-responsive img-circle" style="width: 200px; height: 200px;" />
            </div>
            <div class="col-md-9">
                <h3>Aleksandar Malchev</h3>
                <div class="pull-left">
                <ul class="social" id="jquery" >

                    <li class="facebook">
                        <a href="https://www.facebook.com/malcevaleksandar?fref=ts"><strong>Facebook</strong></a>
                    </li>

                    <li class="instagram">
                        <a href="https://www.instagram.com/malcevaleksandar/"><strong>Instagram</strong></a>
                    </li>

                </ul></div>
               <br /><br><br>
                <h4>eksandarmalchev@yahoo.com</h4>
                <button class="btn btn-primary " type="button" data-toggle="modal" data-target="#myModal">Испрати меил</button>
                </div>
            </div>
             <div class="row" style="margin-bottom: 30px; ">
            <div class="col-md-3">
                <img src="Sliki/dajana.JPG" class="img-responsive img-circle" style="width: 200px; height: 200px;">
            </div>
            <div class="col-md-9">
                <h3>Dajana Ilieva</h3>
                <div class="pull-left">
                <ul class="social" id="jquery" >

                    <li class="facebook">
                        <a href="https://www.facebook.com/dajana.ilieva1?fref=ts"><strong>Facebook</strong></a>
                    </li>

                    <li class="instagram">
                        <a href="https://www.instagram.com/malcevaleksandar/"><strong>Instagram</strong></a>
                    </li>

                </ul></div>
               <br><br><br>
                <h4>dajanailieva@yahoo.com</h4>
                <button class="btn btn-primary " type="button" data-toggle="modal" data-target="#myModal">Испрати меил</button>

            </div>

          </div>
               <div class="row" style="margin-bottom: 30px; ">
            <div class="col-md-3">
                <img src="Sliki/nenad.JPG" class="img-responsive img-circle" style="width: 200px; height: 200px;">
            </div>
            <div class="col-md-9">
                <h3>Nenad Jovanoski</h3>
                <div class="pull-left">
                <ul class="social" id="jquery" >

                    <li class="facebook">
                        <a href="https://www.facebook.com/log.nenad?fref=ts"><strong>Facebook</strong></a>
                    </li>

                    <li class="instagram">
                        <a href="https://www.instagram.com/malcevaleksandar/"><strong>Instagram</strong></a>
                    </li>

                </ul></div>
               <br><br><br>
                <h4>nenadjovanoski@yahoo.com</h4>
                <button class="btn btn-primary " type="button" data-toggle="modal" data-target="#myModal">Испрати меил</button>

            </div>

          </div>
        <div class="row" style="margin-bottom: 30px;">
            <div class="col-md-3">
                <img src="Sliki/" class="img-responsive img-circle" style="width: 200px; height: 200px;">
            </div>
            <div class="col-md-9">
                <h3>David Zahkov</h3>
                <div class="pull-left">
                <ul class="social" id="jquery" >

                    <li class="facebook">
                        <a href="https://www.facebook.com/davidzahkov?fref=ts"><strong>Facebook</strong></a>
                    </li>

                    <li class="instagram">
                        <a href="https://www.instagram.com/malcevaleksandar/"><strong>Instagram</strong></a>
                    </li>

                </ul></div>
               <br><br><br>
                <h4>davidzahkov@yahoo.com</h4>
                <button class="btn btn-primary " type="button" data-toggle="modal" data-target="#myModal">Испрати меил</button>

            </div>
        
        </div>
            <div class="modal fade" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Испрати порака до Night Life</h4>
                        </div>
                        <div class="modal-body">

                            <form action="MAILTO:malcevaleksandar@yahoo.com" method="get" enctype="text/plain" >
                                <p style="color:black;">Име и презиме</p>
                                <input  id="name" class="form-control" name="name" type="text" value="" size="40" style="margin-bottom: 5px;">
                                <p style="color: black">e-mail адреса</p>
                                <input id="email" class="form-control" name="email" type="text" value="" size="40" style="margin-bottom: 5px;">

                                <p style="color: black">Вашата порака</p>
                                <textarea id="poraka" class="form-control" name="poraka" rows="10" cols="50"  ></textarea>
                                <br>
                                <input id="submit" type="submit" value="Испрати" class="btn btn-primary">
                            </form>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>

                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div>

    </div>
</div>
</div>

<!-- FOOTHER -->

<div class="container" style="width:1700px;">

    <div id="footer" class="navbar navbar-bottom">


    <div class="pull-left">
        <ul class="social" id="jquery">

            <li class="facebook">
                <a href="http://www.facebook.com/"><strong>Facebook</strong></a>
            </li>
            <li class="twitter">
                <a href="http://twitter.com/"><strong>Twitter</strong></a>
            </li>
            <li class="instagram">
                <a href="http://instagram.com/"><strong>Instagram</strong></a>
            </li>
            <li class="snapchat">
                <a href="http://snapchat.com/"><strong>Snapchat</strong></a>
            </li>
        </ul>
    </div>
        <div class="pull-right">

        <a id="kopcetop" href="#" class="back-to-top" style="display: inline;">

            <i class="fa fa-arrow-circle-up"></i>

        </a>
    </div>
    </div>

</div>

</body>
</html>
