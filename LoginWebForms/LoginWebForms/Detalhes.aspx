<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="LoginWebForms.Detalhes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center text-primary">
        <h2>Consultar Usuários</h2>
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
            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"
                Enabled="false"></asp:TextBox>
        </div>
    </div>

    <%--Login--%>
    <div class="row" style="margin-top: 15px">
        <div class="col-md-10">
            <label>Login:</label>
            <asp:TextBox ID="txtLogin" runat="server" CssClass="form-control"
                Enabled="false"></asp:TextBox>
        </div>

        <%--Nível--%>
        <div class="col-md-2">
            <label>Nível:</label>
            <asp:TextBox ID="txtNivel" runat="server" CssClass="form-control"
                Enabled="false"></asp:TextBox>
        </div>
    </div>

    <%--Botão Voltar--%>
    <div class="row" style="margin-top: 15px">
        <div class="text-right col-md-12">
            <div class="col-md-12 text-right">
                <asp:Button ID="btnVoltar" CssClass="btn btn-primary" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
            </div>
        </div>
    </div>

    <%--Label Resultado--%>
    <div class="row" style="margin-top: 15px">
        <div class="col-md-12 text-right">
            <asp:Label ID="lblResultado" CssClass="text-danger" runat="server" />
        </div>
    </div>
</asp:Content>