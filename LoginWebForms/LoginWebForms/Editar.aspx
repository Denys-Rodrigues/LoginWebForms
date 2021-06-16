<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Editar.aspx.cs" Inherits="LoginWebForms.Editar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">
        <h2>Editar Dados Usuários</h2>
    </div>

    <%--ID--%>
    <div class="row" style="margin-top: 15px">
        <div class="col-md-2">
            <label>ID:</label>
            <asp:TextBox ID="txtID" runat="server" CssClass="form-control"
                Enabled="false"></asp:TextBox>
        </div>

        <%--Nome--%>
        <div class="col-md-10">
            <label>Nome:</label>
            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <%--Login--%>
    <div class="row" style="margin-top: 15px">
        <div class="col-md-6">
            <label>Login:</label>
            <asp:TextBox ID="txtLogin" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <%--Senha--%>
        <div class="col-md-3">
            <label>Senha:</label>
            <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <%--Nível--%>
        <div class="col-md-3">
            <label>Nível:</label>
            <asp:DropDownList ID="ddlNivel" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True" Value=""></asp:ListItem>
                <asp:ListItem Value="A">Administrador</asp:ListItem>
                <asp:ListItem Value="O">Operador</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>

        <div class="row" style="margin-top: 15px">
            <div class="text-right col-md-12">
                <div class="col-md-12 text-right">
                    <asp:Button ID="btnVoltar" CssClass="btn btn-primary" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
                    <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                </div>
            </div>
        </div>

        <div class="row" style="margin-top: 15px">
            <div class="col-md-12 text-right">
                <asp:Label ID="lblResultado" CssClass="text-danger" runat="server" />
            </div>
        </div>
</asp:Content>