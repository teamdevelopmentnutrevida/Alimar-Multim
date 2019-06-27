<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Traje.aspx.cs" Inherits="UI.Traje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

          <!-- traje -->

	<div class="promo">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_title">Productos encontrados:  2   </div>
					</div>
				</div>
			</div>
			<div class="row promo_container">

               
                     <!-- Iten mujer4 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item" >
						<div class="promo_image">
                             <a href="Producto.aspx?Valor=RopaAlimar/TrajeBaño1.jpg"><img src="RopaAlimar/TrajeBaño1.jpg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

                 <!-- Iten mujer5 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/TrajeBaño2.jpeg"><img src="RopaAlimar/TrajeBaño2.jpeg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>
                
			</div>
		</div>
	</div>
</asp:Content>
