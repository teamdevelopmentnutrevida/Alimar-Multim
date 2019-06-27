<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Hombre.aspx.cs" Inherits="UI.Hombre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Hombre -->

	<div class="promo">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_title">Productos encontrados:  3   </div>
					</div>
				</div>
			</div>
			<div class="row promo_container">

               
                     <!-- Iten hombre1 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/CamisaHombre.jpeg"><img src="RopaAlimar/CamisaHombre.jpeg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

                <!-- Iten hombre2 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
							<img src="RopaAlimar/PantalonHombre.jpeg" alt="">
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

                 <!-- Iten hombre3 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
							<img src="RopaAlimar/shortHombre.jpeg" alt="">
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

                
			</div>
		</div>
	</div>

</asp:Content>
