<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="PaginaInicio.aspx.cs" Inherits="UI.PaginaInicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<div class="container">
    <div class="row">
		<div class="col-md-1"></div>
	<div class="col-md-7">
		<video width="1000" autoplay="autoplay" controls="controls">
			<source type="video/mp4" src="images/vide.flv" />
		</video>
	</div>
    </div>
</div>

		<!-- Promo -->

	<div class="promo">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<div class="section_subtitle">¡Aproveche!</div>
						<div class="section_title">Precios de oferta</div>
					</div>
				</div>
			</div>
			<div class="row promo_container">

				<!-- Promo Item -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
							<img src="RopaAlimar/blusa.jpg" alt="">
							<div class="promo_content promo_content_1">
								<div class="promo_title">-30% desc</div>
								<div class="promo_subtitle">Blusas</div>
							</div>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

				<!-- Promo Item -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
							<img src="RopaAlimar/vestido.jpg" alt="">
							<div class="promo_content promo_content_1">
								<div class="promo_title">-30% desc</div>
								<div class="promo_subtitle">Vestidos</div>
							</div>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

				<!-- Promo Item -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
							<img src="RopaAlimar/deport.jpg" alt="">
							<div class="promo_content promo_content_1">
								<div class="promo_title">-25% desc</div>
								<div class="promo_subtitle">Deportiva</div>
							</div>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

			</div>
		</div>
	</div>




</asp:Content>
