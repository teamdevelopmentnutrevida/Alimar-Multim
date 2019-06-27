<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Pijama.aspx.cs" Inherits="UI.Pijama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <!-- pijama -->

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

               
                                    <!-- Iten mujer8 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/Pijama1.jpg"><img src="RopaAlimar/Pijama1.jpg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>

                <!-- Iten mujer9 -->
				<div class="col-lg-4 promo_col">
					<div class="promo_item">
						<div class="promo_image">
                            <a href="Producto.aspx?Valor=RopaAlimar/Pijama2.jpg"><img src="RopaAlimar/Pijama2.jpg" alt=""></a>
						</div>
						<div class="promo_link"><a href="#">Comprar ahora</a></div>
					</div>
				</div>
                
			</div>
		</div>
	</div>

</asp:Content>
