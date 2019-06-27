<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Nino.aspx.cs" Inherits="UI.Nino" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <!-- Niño -->

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

               
                     <!-- Iten nino1 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/CamisaNiño.jpeg"><img src="RopaAlimar/CamisaNiño.jpeg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

                <!-- Iten nino2 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/PantalonNiño.jpg"><img src="RopaAlimar/PantalonNiño.jpg" alt=""></a>
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

                
			</div>
		</div>
	</div>
</asp:Content>
