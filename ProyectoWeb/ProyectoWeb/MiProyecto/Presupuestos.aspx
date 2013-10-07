<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Presupuestos.aspx.cs" Inherits="ProyectoWeb.MiProyecto.Presupuestos" MasterPageFile="~/MiProyecto/paginamaestraSA.Master" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="cuadroizq">
    <div id="mainleft">
        <figure>  
            <img src="images/revisionesGrande.jpg" alt="revisiones" style="width:100%;height:auto" />
            <figcaption>  
                <p>This is an image of something interesting. </p>  
            </figcaption>  
        </figure>

        <figure style="float:left">  
            <img src="images/anticongelante.jpg" />
            <figcaption>  
                <p>This is an image of something interesting. </p>  
            </figcaption>  
        </figure>
        <figure style="float:left">  
           <img src="images/liquidofrenos.jpg" />
            <figcaption>  
                <p>This is an image of something interesting. </p>  
            </figcaption>  
        </figure>
        
        <figure style="float:left">  
             <img src="images/kitsfrenos.jpg" />
            <figcaption>  
                <p>This is an image of something interesting. </p>  
            </figcaption>  
        </figure>
        
        <figure style="float:left">  
            <img src="images/kitsdistribucion.jpg" />
            <figcaption>  
                <p>This is an image of something interesting. </p>  
            </figcaption>  
        </figure>
        
        
       
       
    </div>
</asp:Content>




<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <div id="mainright">
        
        <ul class="otherlinks clearfix">
            <li><a title="" href="#" rel="external">Cómo llegar</a></li>
            <li><a title="" href="#" rel="external">Sugerencias</a></li>
                <!--<li><a title="" href="#" rel="external">Side Link 3</a></li>-->
            </ul>
        <div class="sidecont clearfix">
            <div class="sidesection clearfix">
                <h4><a title="" href="PideHora.aspx">Pedir Hora</a></h4>
                <div class="sidetop">
                    <a class="hoverlink" title="" href="PideHora.aspx">
                    <img alt="" src="images/clock_350.jpg" /><div class="overlay link">
                    </div>
                    </a>
                </div>
                <div class="sidebottom">
                    <p>
                        Pide hora Online</p>
                </div>
            </div>
            <div class="sidesection clearfix">
                <h4><a title="" href="Presupuestos.aspx">Presupuestos Básicos</a></h4>
                <div class="sidetop">
                    <a class="hoverlink" title="" href="Presupuestos.aspx">
                    <img alt="" src="images/revisiones_350_150.jpg" /><div class="overlay link">
                    </div>
                    </a>
                </div>
                <div class="sidebottom">
                    <p>
                        Consulta nuestros presupuestos</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>





