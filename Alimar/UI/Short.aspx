<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Short.aspx.cs" Inherits="UI.Short" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                <!-- shor -->

	<div class="promo">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_title">Productos encontrados:  4   </div>
					</div>
				</div>
			</div>
			<div class="row promo_container">

               

                 <!-- Iten mujer3 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/shortMujer.jpg"><img src="RopaAlimar/shortMujer.jpg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>


                                 <!-- Iten nina3 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/shortNiña.jpeg"><img src="RopaAlimar/shortNiña.jpeg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

                
                 <!-- Iten nino3 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/shortNiño.jpeg"><img src="RopaAlimar/shortNiño.jpeg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>


                                 <!-- Iten hombre3 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/shortHombre.jpeg"><img src="RopaAlimar/shortHombre.jpeg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

			</div>
		</div>
	</div>

</asp:Content>
