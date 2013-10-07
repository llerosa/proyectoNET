<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PideHora.aspx.cs" Inherits="ProyectoWeb.MiProyecto.PideHora" MasterPageFile="~/MiProyecto/paginamaestraSA.Master"%>



<asp:Content ID="Content1" runat="server" contentplaceholderid="cuadroizq">
    <div id="mainleft">
        
            <table>
            <tr>
                <td><asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label> </td>
                <td><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblApe" runat="server" Text="Apellidos: "></asp:Label> </td>
                <td><asp:TextBox ID="txtApe" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblMat" runat="server" Text="Matricula: "></asp:Label> </td>
                <td><asp:TextBox ID="txtMat" runat="server"></asp:TextBox> </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblDNI" runat="server" Text="DNI: "></asp:Label> </td>
                <td><asp:TextBox ID="txtDNI" runat="server"></asp:TextBox> </td>
            </tr>
            </table>
       
        <br />
        
        <!--                 CALENDARIO         -->
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="Calendar1_SelectionChanged">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>

        <!--                 BOTON              -->
        <div align="left"><asp:Button ID="consulta" runat="server" Height="35px" OnClick="Button1_Click" Text="Consultar Horas Disponibles" Width="350px" BackColor="#E48818" />
            
            
        </div>
        <asp:ListBox ID="listahoras" runat="server" OnSelectedIndexChanged="listahoras_SelectedIndexChanged" Height="143px">
            
        </asp:ListBox>
        <br />
        <div align="left">    <asp:Button ID="Solicita" runat="server" Text="Solicitar" Height="50px" Width="350px" OnClick="Solicita_Click" BackColor="#E48818"/></div>
        <div id="escribe">

        </div>
       
    </div>
</asp:Content>




<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="container NaranjaOscuro clearfix">
    <!--lightbluebg-->
                <div id="menucont" class="clearfix">
                    <div class="menu">
                        <ul>
                            <li ><a title="" href="principal.aspx">Inicio</a></li>
                            <li><a title="" href="#">Quienes somos</a></li>
                            <li><a title="" href="#">Servicios</a></li>
                            <!--<li><a title="" href="#">Blog</a></li>-->
                            <li><a title="" href="#">Contacto</a></li>
                        </ul>
                    </div>
    </div>
</div>
</asp:Content>












