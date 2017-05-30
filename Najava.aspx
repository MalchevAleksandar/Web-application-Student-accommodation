<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Najava.aspx.cs" Inherits="Najava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
    <script src='js/jquery.js'></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/scripta.js"></script>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />

    <link href="css/css.css" rel="stylesheet" />
    <style>
        body {
        background-color: rgb(61,168,248);
        }
    </style>
</head>
<body >
    <div class="container">
        <div>
            <br />
            <br />

            <h2 class="text-center">Добредојдовте на системот на сместување во студентски дом </h2><br /><br />
        </div>
        <div style="margin-left:310px">
    <form id="form1" runat="server" style="width:500px" > 
    <div class="panel panel-primary " >
        <div class="panel-heading">
            <span>Најава</span>
        </div>
        <div class="panel-body">
       <asp:Label ID="Label1" runat="server" Text="Корисничко име"></asp:Label>
        <!--<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" ></asp:TextBox>-->
            <asp:TextBox ID="username"  name="username" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Внесете корисничко име" ControlToValidate="username" ForeColor="Red" ValidationGroup="najava"></asp:RequiredFieldValidator>
            <br /> 

            <asp:Label ID="Label2" runat="server" Text="Лозинка" class="form-group" ></asp:Label> <br />

            <asp:TextBox ID="password" name="password" class="form-control" runat="server" ValidationGroup="najava" TextMode="Password"></asp:TextBox>
    
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Внесете лозинка" ControlToValidate="password" ForeColor="Red" ValidationGroup="najava"></asp:RequiredFieldValidator>
    
       <br />
            <input type="checkbox" />&nbsp; Запамети ме   <br /><br />
       
            <asp:Button ID="Button1" runat="server" Text="Најави се" class="btn btn-danger" OnClick="logIn" ValidationGroup="najava" /><br />
            <asp:Label ID="error" runat="server" Font-Names="Adobe Caslon Pro" ForeColor="#B43631"></asp:Label>
            <br />
            <h4>Не сте регистрирани ?<asp:Button runat="server" class="btn btn-primary pull-right" Text="Регистрирај се " PostBackUrl="~/Registracija.aspx" ValidationGroup="registracija"></asp:Button></h4><br />
    </div>
       <div class="panel-footer">
           
          <span>&copy FinkiSystems</span>
       </div> 
    </div>
    </form> 

        </div>

    </div>
</body>
</html>
