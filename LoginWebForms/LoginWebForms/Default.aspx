<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoginWebForms.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Portal do Usuário</title>
    <%--Exemplo Professor--%>
    <%--    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Style.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.6.0.min.js"></script>--%> <%--Código--%>

    <%--Nova Tela de Login--%>
    <link href="Content/bootstrap.min.css" rel="stylesheet"/>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.6.0.min.js"></script>

    <!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" 
        integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous" />

    <!--Custom styles-->
    <link href="Style.css" rel="stylesheet" />

</head>
<body>
    <%--Exemplo Professor--%>
    <%--<div class="container">
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
    </div>--%> <%--Código--%>

    <%--Nova Tela de Login--%>
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3>Login</h3>
                    <div class="d-flex justify-content-end social_icon">
                        <span><i class="fab fa-facebook-square"></i></span>
                        <span><i class="fab fa-instagram"></i></span>
                        <%--<span><i class="fab fa-google-plus-square"></i></span>--%>
                        <%--<span><i class="fab fa-twitter-square"></i></span>--%>
                    </div>
                </div>
                <div class="card-body">
                    <form runat="server">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <asp:TextBox ID="txtUsuario" type="text" class="form-control"
                                placeholder="Usuário" runat="server" />

                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox ID="txtSenha" type="password" class="form-control"
                                placeholder="Senha" runat="server" />
                        </div>
                        <div class="row align-items-center remember">
                            <input type="checkbox" />Lembrar de mim
                        </div>
                        <div class="form-group">
                            <br />
                            <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            <asp:Button ID="btnAcessar" type="submit" Text="Acessar"
                                class="btn float-right login_btn" runat="server" OnClick="btnAcessar_Click" />
                        </div>
                    </form>
                </div>
<%--                <div class="card-footer">
                    <div class="d-flex justify-content-center links">
                        Não tem uma conta?<a href="#">Cadastre-se</a>
                    </div>
                    <div class="d-flex justify-content-center">
                        <a href="#">Esqueceu a senha?</a>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
</body>
</html>
