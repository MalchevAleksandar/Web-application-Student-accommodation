<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Profil.aspx.cs" Inherits="Profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Мој профил</title>
          <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
   
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />
   
    <script src='js/jquery.js'></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.js"></script>
    
      <style>
            #change1, #change2, #change3, #change4, #change5,
            #Button1, #Button2, #Button3, #Button4, #Button5 ,#Button6 {
            background-color: dodgerblue;
             color: black;
           //  border: 2px solid  #e7e7e7 /* Green */
            }

            #change1:hover, #change2:hover, #change3:hover, #change4:hover, #change5:hover,
            #Button1:hover, #Button2:hover, #Button3:hover, #Button4:hover, #Button5:hover, #Button6:hover {
             background-color: red;
             color: black;
           //  border: 2px solid  #f44336;
            }
          body {
        background-color: rgb(61,168,248);
        }
        </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="container" style="width:800px">

       
    <div class="panel panel-primary" style="margin-top:120px;">
        
            <div class="panel-heading"><span>Овде можете да ги промените вашите лични податоци</span></div>

        <div class="panel-body">
                <asp:Label ID="name" runat="server" Text="Име"  Width="120px"></asp:Label>
                <asp:Label ID="nameLabel" runat="server" Text=""></asp:Label><input id="Button1" type="button" value="Промени"  />

              <br />
        
             <div id="field1" style="margin-top:10px;margin-bottom:10px">
            <asp:Label ID="new1" runat="server" Text="Внесете ново име"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"  ValidationGroup="ime"   Width="250px"></asp:TextBox>
        &nbsp;
            <asp:Button ID="change1" runat="server" Text="Потврди" OnClick="change1_Click" ValidationGroup="ime" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Невалидно поле" ValidationGroup="ime"></asp:RequiredFieldValidator>
        
            </div>
        
     

      
       
            <asp:Label ID="surname" runat="server" Text="Презиме" Width="120px"></asp:Label>
        
        <asp:Label ID="surnameLabel" runat="server" Text=""></asp:Label>
       
            <input id="Button2" type="button" value="Промени" />
       
       
       
        <br />
        <div id="field2" style="margin-top:10px;margin-bottom:10px">
            <asp:Label ID="new2" runat="server" Text="Внесете ново презиме"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="prezime" Width="250px"></asp:TextBox>
        &nbsp;<asp:Button ID="change2" runat="server" Text="Потврди" OnClick="change2_Click" ValidationGroup="prezime" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Невалидно поле" ValidationGroup="prezime"></asp:RequiredFieldValidator>
            </div>
        
        <asp:Label ID="username" runat="server" Text="Корисничко име" Width="120px"></asp:Label>
        
        <asp:Label ID="usernameLabel" runat="server" Text=""></asp:Label>
        
        <input id="Button3" type="button" value="Промени" />
        <br />
        <div id="field3" style="margin-top:10px;margin-bottom:10px">
            <asp:Label ID="new3" runat="server" Text="Внесете ново корисничко име"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="username" Width="250px"></asp:TextBox>
        &nbsp;
            <asp:Button ID="change3" runat="server" Text="Потврди" OnClick="change3_Click" ValidationGroup="username" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Невалидно поле" ValidationGroup="username"></asp:RequiredFieldValidator>
            </div>
        
        <asp:Label ID="password" runat="server" Text="Лозинка" Width="120px"></asp:Label>
        
        <asp:Label ID="passwordLabel" runat="server" Text=""></asp:Label>
       
        <input id="Button4" type="button" value="Промени" />
        <br />
        <div id="field4" style="margin-top:10px;margin-bottom:10px">
            <asp:Label ID="new4" runat="server" Text="Внесете нова лозинка"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="password" Width="250px"></asp:TextBox>
            <asp:Button ID="change4" runat="server" Text="Потврди" OnClick="change4_Click" ValidationGroup="password" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Невалидно поле" ValidationGroup="password"></asp:RequiredFieldValidator>
        <br />
            </div>
        <asp:Label ID="email" runat="server" Text="Е-маил" Width="120px"></asp:Label>
   
        <asp:Label ID="emailLabel" runat="server" Text=""></asp:Label>
    
        <input id="Button5" type="button" value="Промени" />
        <br />
         <div id="field5" style="margin-top:10px;margin-bottom:10px">
            <asp:Label ID="Label5" runat="server" Text="Внесете нова е-маил адреса"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" ValidationGroup="email" Width="250px"></asp:TextBox>
            <asp:Button ID="change5" runat="server" Text="Потврди" OnClick="change5_Click" ValidationGroup="email" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Невалидно поле" ValidationGroup="email"></asp:RequiredFieldValidator>
             <br />
 </div>
                <asp:Button ID="Button6" runat="server" PostBackUrl="~/Home.aspx" Text="Зачувај" />

               
             
            </div>
             <div class="panel-footer">
           
          <span>&copy FinkiSystems</span>
       </div> 
    </div>
        <script type="text/javascript">
            $("#field1").css("display", "none");
            $("#field2").css("display", "none");
            $("#field3").css("display", "none");
            $("#field4").css("display", "none");
            $("#field5").css("display", "none");
        $("#Button1").click(function() {
          $( "#field1" ).fadeToggle( "slow", "linear" );
        });
        $("#Button2").click(function () {
            $("#field2").fadeToggle("slow", "linear");
        });
        $("#Button3").click(function () {
            $("#field3").fadeToggle("slow", "linear");
        });
        $("#Button4").click(function () {
            $("#field4").fadeToggle("slow", "linear");
        });
        $("#Button5").click(function () {
            $("#field5").fadeToggle("slow", "linear");
        });
        </script>
      
             </div>
    </form>
</body>
</html>
