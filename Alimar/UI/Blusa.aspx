<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Blusa.aspx.cs" Inherits="UI.Blusa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- blusa -->

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

               
                     <!-- Iten nina1 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/BlusaNiña.jpeg"><img src="RopaAlimar/BlusaNiña.jpeg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

                     <!-- Iten mujer1 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
							<a href="Producto.aspx?Valor=RopaAlimar/blusa.jpg"><img src="RopaAlimar/blusa.jpg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>
                
			</div>
		</div>
	</div>

</asp:Content>
