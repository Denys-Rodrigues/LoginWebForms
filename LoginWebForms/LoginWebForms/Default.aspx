﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoginWebForms.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />

    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="wrapper">
            <form name="Login_Form" class="form-signin" runat="server">
                <h3 class="form-signin-heading">Bem-Vindo!</h3>
                <div class="text-black-50 text-center">
                    <asp:Label ID="lblMsg" runat="server" CssClass="text text-info"></asp:Label>
                </div>
                <hr class="colorgraph" />
                <br />

                <asp:TextBox runat="server" type="text" class="form-control" name="Username" placeholder="Usuário" required=""
                    autofocus="" />

                <asp:TextBox runat="server" type="password" class="form-control" name="Password" placeholder="Senha" required="" />

                <asp:Button runat="server" class="btn btn-lg btn-primary btn-block" name="Submit" value="Login" type="Submit"
                    Text="Acessar"></asp:Button>
            </form>
        </div>
    </div>
</body>
</html>