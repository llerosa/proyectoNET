<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProyectoWeb.MiProyecto.login" MasterPageFile="~/MiProyecto/paginamaestraSA.Master" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="cuadroizq">
    <div id="mainleft">
        <!--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ZonaSegura/PideHora.aspx" Text="pagina segura"></asp:HyperLink>-->
        <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
        :
        <asp:TextBox ID="txtUsuario" runat="server" style="margin-left: 24px" Width="158px"></asp:TextBox><br />
        <asp:Label ID="lblContraseña" runat="server" Text="Contraseña"></asp:Label>
        :
        <asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btnValidar" runat="server" Text="Validar usuario" Height="35px" Width="245px" OnClick="btnValidar_Click" />
        <br />
        <asp:Label ID="lblmensaje" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>



