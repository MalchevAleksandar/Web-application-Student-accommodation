<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <link rel="stylesheet" href="css/logInOut.css" />
    <link rel="stylesheet" href="css/cssdom.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />
    <link href="css/cssdom.css" rel="stylesheet" />
    <script src='js/jquery.js'></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/scriptadom.js"></script>
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
         body {
         background-color:darkred;
         }
         .sidebarLeft {
             text-align:left;
             font-size: 16px;
             color:rgb(255,255,204);
             width:260px;
         }

</style>
</head>
<body>
     <nav id="navbar"class="navbar navbar-top" >

    <div class="container" style="width: 1700px;">

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
                 <!--Корисничко име - Најава/Одјава-->
                 <form runat="server">
                     <ul>
                 <li><asp:HyperLink id="username" runat="server" NavigateUrl="~/Profil.aspx"><span class="glyphicon glyphicon-user"></span></asp:HyperLink></li>
                 <li><asp:LinkButton id="logInOutButton"  onclick="logEvent" runat="server"><span class="glyphicon glyphicon-log-in"></span>LinkButton</asp:LinkButton></li>
                </ul>
                      </form>
                 <!--END-->
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
   <div class="container" style="width: 1700px;">
     <div class="row">
         <div class="col-md-2">
                <div >
                  <a href="Home.aspx"> <img src="Sliki/logo4.png" class="img-responsive" alt="slika -logo"/></a>
                    <br />
                    <br />
                    <br />
                <ul style="padding-left: 5px; " >
                   <li ><a class="sidebarLeft" href="events.html"> Електронско аплицирање за студентите кои не се прва година на студии <br /> <img src="reklami/calendar.png" class="kal"><span> 18.07.2-17 - 18.08.2016  </span></a></li>
                          
                   <li ><a class="sidebarLeft" href="events.html"> Поднесување документи <br /> <img src="reklami/calendar.png" class="kal"><span> 20.08.2-17 - 28.08.2016  </span></a></li>
                          
                   <li ><a class="sidebarLeft" href="events.html"> Објавување резултати  <br /> <img src="reklami/calendar.png" class="kal"><span> 18.07.2-17 - 18.08.2016  </span></a></li>
                          
                   <li ><a class="sidebarLeft" href="events.html"> Сместување во дом <br /> <img src="reklami/calendar.png" class="kal"><span> 18.07.2-17 - 18.08.2016  </span></a></li>
                          
                   <li ><a class="sidebarLeft" href="events.html"> Електронско аплицирање за студентите кои се прва година на студии <br /> <img src="reklami/calendar.png" class="kal"><span> 18.07.2-17 - 18.08.2016  </span></a></li>
                          
                   <li ><a class="sidebarLeft" href="events.html"> Поднесување документи <br /> <img src="reklami/calendar.png" class="kal"><span> 18.07.2-17 - 18.08.2016  </span></a></li>
                          
                   <li ><a class="sidebarLeft" href="events.html"> Објавување резултати <br /> <img src="reklami/calendar.png" class="kal"><span> 18.07.2-17 - 18.08.2016  </span></a></li>
                     
                    <li ><a class="sidebarLeft" href="events.html"> Сместување во дом  <br /> <img src="reklami/calendar.png" class="kal"><span> 18.07.2-17 - 18.08.2016  </span></a></li>
                    </ul> 
                    <br />
                                        
                    
          

                     <a href="http://setec.mk/"><img src="reklami/setec.jpg" class="img-responsive" style="padding-top:195px;"/></a>
                    <a href="http://prospera.com.mk/"> <img src="reklami/prospera.jpg" class="img-responsive" /></a>             
                    
                </div>
         </div>
         <div class="col-md-8">

 	<div class="well">
        <div class="row" >
            <!-- Carousel -->
             <div class="col-md-12">
	<div id="carousel" class="row carousel-holder">
                
                   
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" >
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                                 <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                            </ol>

                            <div class="carousel-inner" id="in" >
                                <div class="item active" style="height:650px;">
                                    <img class="slide-image " src="Slider/goce1.jpg" alt="" />

                                </div>
                                <div class="item" style="height:650px;">
                                    <img class="slide-image" src="Slider/stiv3.jpg" alt="" />
                                </div>
                                <div class="item" style="height:650px;">
                                    <img class="slide-image" src="Slider/pelagonija5.jpg" alt="" />
                                </div>
                                <div class="item" style="height:650px;">
                                    <img class="slide-image" src="Slider/goce2.jpg" alt="" />
                                </div>
                                <div class="item" style="height:650px;">
                                    <img class="slide-image" src="Slider/pelagonija3.jpg" alt="" />
                                </div>
                                <div class="item" style="height:650px;">
                                    <img class="slide-image" src="Slider/kuzman1.jpg" alt="" />
                                </div>
                            </div>
                            <a class="left carousel-control" href="#" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

            </div>
            <!-- END CAROUSEL -->


           
            <!-- GALERY EVENT --> 
            <!--
            <div class="col-md-4">
                <div class="row">
                    <a id="galery1" href="galery.html" style="color: #b38600">
                        <button  style="background:url('Sliki/cinema/7.jpg');width: 100%;height:100%; display:table;

            -webkit-background-size: cover;
             -moz-background-size: cover;
             background-size: cover;
             -o-background-size: cover;padding-top: 151px; "  >
                            <h1>Galery &raquo; </h1>

                        </button>
                    </a>
                </div>
                <div class="row">

                    <div  class="row carousel-holder"  style="margin-left: 2px; width:auto">


                        <div id="carousel-example" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example" data-slide-to="1"></li>
                                <li data-target="#carousel-example" data-slide-to="2"></li>
                                <li data-target="#carousel-example" data-slide-to="3"></li>
                                <li data-target="#carousel-example" data-slide-to="4"></li>
                            </ol>

                            <div class="carousel-inner"  style="width: 362px; height: 225px;" id="in2">
                                <div class="item active">
                                    <img class="slide-image " src="Event/Cinema1.jpg" alt="" >
                                    <div class="carousel-caption" >
                                       <a href="events.html" style="color: #b38600 "> <h1>Event &raquo; </h1></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="slide-image " src="Event/Havana1.jpg" alt="">
                                    <div class="carousel-caption">
                                        <a href="events.html"style="color: #b38600 "> <h1 >Event &raquo; </h1></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="slide-image " src="Event/Marakana1.jpg" alt="">
                                    <div class="carousel-caption">
                                        <a href="events.html"style="color: #b38600 "> <h1 >Event &raquo; </h1></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="slide-image " src="Event/Ciao2.jpg" alt="">
                                    <div class="carousel-caption">
                                        <a href="events.html" style="color: #b38600 "> <h1 >Event &raquo; </h1></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="slide-image " src="Event/Stobi2.jpg" alt="">
                                    <div class="carousel-caption">
                                        <a href="events.html" style="color: #b38600 "> <h1>Event &raquo; </h1></a>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="Event/Midnight1.jpg" alt="">
                                    <div class="carousel-caption">
                                        <a href="events.html" style="color: #b38600 "> <h1 >Event &raquo; </h1></a>
                                    </div>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>


        </div>
       
                -->
        <!-- END GALERY -->
 </div>
        <div class="row">
            <div class="jumbotron" style="background-color: rgb(255,255,204);  ">
                <h1 class="text-center" style='color: #b38600; font-family: "Times New Roman", Times, serif;'>Добродојдовте на сајтот на Наше Име</h1>
                <h3 class='text-center  ' style='font-family: "Times New Roman", Times, serif; padding-top: 30px; '>Место каде што  може да ги најдете сите информации за студентските домови во Скопје и сместување во нив</h3>

            </div>
        </div>
    <!-- KLUBOVI -->

 	<div class="row" style="margin-top: -30px;">
 		<div class="col-md-6">
 			<a href="Goce.html" style="color:black">
              <div style="background-image: url(Sliki/goce1.jpg)">
 			        <h2 id="cinema" class="text-center" style="padding-top:10px;  color:#b38600">Студентски дом Гоце Делчев </h2>
 			  </div>
 		</a>
 		</div>

 			<div class="col-md-6">
 				<a href="Stiv.html" style="color:black">
                      <div style="background-image:url(Sliki/stiv1.jpg)">
 			                 <h2 id="midnight" class="text-center" style="padding-top:10px;color:#b38600" >Студентски дом Стив Наумов </h2>
 			            </div>
 		
 	            </a>
 		</div>
 		
 		
 </div>
 		
    <div class="row">
        <div class="col-md-6">
 			<a href="Pelagonija.html" style="color:black">
                 <div style="background-image:url(Sliki/pelagonija5.jpg); ">
 			<h2 id="XO"  class="text-center" style="padding-top:10px; color:#b38600">Студентски дом Пелагонија</h2>
 		        </div>

 			</a>
 		</div>
        <div class="col-md-6">
       <a href="Kuzman.html" style="color:black">
                 <div style="background-image:url(Sliki/kuzman1.jpg); ">
 			<h2 id="XO"  class="text-center" style="padding-top:10px; color:#b38600">Студентски дом Кузман Јосифовски Питу</h2>
        </div>
           </a>
      </div> 

    </div>
         </div>
    </div>
         <div class="col-md-2">
             <div>
               <a href="http://www.anhoch.com/"> <img src="reklami/anhoch.jpg" class="img-responsive" style="width: 100%" /></a>
               
                 <a href="http://dnevnik.mk/"><img src="reklami/dnevnik.JPG" class="img-responsive" style="width: 100%;height: 330px;" /></a>
                 
                 <a href="http://www.dnevnik.mk/?ItemID=1C42A212162D274581B748F824108316"><img src="reklami/antena.JPG" class="img-responsive" style="width: 100%" /></a>
                 <a href="http://www.amc.mk/"><img src="reklami/amc.jpg" class="img-responsive" style="height: 100%" /></a>
                 <a><img src="reklami/zdravje.JPG" style="width:100%"/></a>
              <!--     -->
             </div>
         </div>
     </div>
     <!-- END WELL -->
</div>
    <div  class="container" style="width:1700px;">
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

        <a id="kopcetop" href="#" class="back-to-top pull-right" style="display: inline;">

            <i class="fa fa-arrow-circle-up"></i>

        </a>

    </div>
</div>
</body>
</html>
