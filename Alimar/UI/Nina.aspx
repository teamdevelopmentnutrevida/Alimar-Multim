<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Nina.aspx.cs" Inherits="UI.Nina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Niña -->

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

               
                     <!-- Iten nina1 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/BlusaNiña.jpeg"><img src="RopaAlimar/BlusaNiña.jpeg" alt=""></a>
						</div>
						<div class="promo_link"><a href="Producto.aspx?Valor=RopaAlimar/BlusaNiña.jpeg">Comprar ahora</a></div>
					</div>
				</div>

                <!-- Iten nina2 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/PantalonNiña.jpg"><img src="RopaAlimar/PantalonNiña.jpg" alt=""></a>
						</div>
						<div class="promo_link"><a href="Producto.aspx?Valor=RopaAlimar/PantalonNiña.jpg">Comprar ahora</a></div>
					</div>
				</div>

                 <!-- Iten nina3 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/shortNiña.jpeg"><img src="RopaAlimar/shortNiña.jpeg" alt=""></a>
						</div>
						<div class="promo_link"><a href="Producto.aspx?Valor=RopaAlimar/shortNiña.jpeg">Comprar ahora</a></div>
					</div>
				</div>

                
			</div>
		</div>
	</div>
</asp:Content>
