<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registracija.aspx.cs" Inherits="Registracija" %>

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
        .auto-style2 {
            width: 96%;
        }
        .auto-style3 {
            width: 91px;
        }
        .auto-style4 {
            width: 107px;
        }
         body {
        background-color: rgb(61,168,248);
        }
        
    </style>
</head>
<body style="height: 408px">
    <div class="container">
        <br />
        <br />
    <form id="form1" runat="server" style="width:800px;margin-left:130px;">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <span>Регистрација</span>
        </div>
   <div class="panel-body">
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Име" class="form-group" ></asp:Label>
                </td>
                <td class="auto-style4">
                   <%-- <input id="Text1" required="" name="name" type="text" class="form-control"/>--%>
                <asp:TextBox ID="tbIme" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Внесете го вашето име" ControlToValidate="tbIme" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Презиме"></asp:Label>
                </td>
                <td class="auto-style4">
                    <%--<input id="Text2" required="" type="text" name="surname" class="form-control"/>--%>
                <asp:TextBox ID="tbPrezime" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Внесете го вашето презиме" ControlToValidate="tbPrezime" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Емаил</td>
                <td class="auto-style4">
                   <%-- <input id="Text3" type="text" name="email" class="form-control" /--%>
                <asp:TextBox ID="tbEmail" runat="server"  CssClass="form-control"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Невалидна емаил адреса" ControlToValidate="tbEmail" ForeColor="Red" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Корисничко име</td>
                <td class="auto-style4">
                    <%--<input id="Text4" type="text" name="username" class="form-control"/>--%>
                    <asp:TextBox ID="tbUsername" runat="server"  CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Внесете корисничко име" ControlToValidate="tbUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Лозинка</td>
                <td class="auto-style4">
                    <%--<input id="Password1" type="password" name="password" class="form-control"/>--%>
                <asp:TextBox ID="tbLozinka" runat="server"  CssClass="form-control" TextMode="Password"></asp:TextBox>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Внесете лозинка" ControlToValidate="tbLozinka" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
                    </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Повторете ја лозинката"></asp:Label>
                </td>
                <td class="auto-style4">
                   <%-- <input id="Password2" type="password" class="form-control" />--%>
                
                    <asp:TextBox ID="tbLozinka2" runat="server"  CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Лозинките не се совпаѓаат" ControlToCompare="tbLozinka" ControlToValidate="tbLozinka2" ForeColor="Red"></asp:CompareValidator>
                </td>
                 </tr>
            
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Регистрирај се" class="btn btn-danger" OnClick="register" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="messages" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
       </div>
        <div class="panel-footer">
            <span>&copy FinkiSystems</span>
        </div>
        </div>
    </form>
        </div>
</body>
</html>
