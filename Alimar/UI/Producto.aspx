<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="UI.Producto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <!-- Page Heading -->
        <div class="row">
            <div class="col-12">
                <h1 class="page-header">
                    <asp:Label ID="lbHead" runat="server" Text="iMac Desktop Computer"></asp:Label> 
                </h1>
            </div>
        </div>
        <!-- /.row -->

        <div class="row">
            <div class="col-lg-6 mb-4">

                <!-- There's only One image -->
                <div class="">
                    <div class="main-product-image">
                        <asp:Image ID="imgProducto" runat="server" src="https://conacyemtoluca.files.wordpress.com/2012/05/ropa-21.jpg" alt="iMac Desktop Computer" CssClass="img-fluid" />
                    </div>
                </div>

            </div>

            <div class="col-lg-6">
                <form runat="server" class="form-horizontal" name="buy">

                    <!-- Product Price  -->
                    <div class="form-group price_elem row">
                        <asp:Label runat="server" CssClass="col-sm-3 col-md-3 form-control-label nopaddingtop">Precio:</asp:Label>
                        <div class="col-sm-8 col-md-9">
                            <asp:Label ID="lbPrecio" CssClass="product-form-price" runat="server" Text="$1.200.000"></asp:Label>
                        </div>
                    </div>

                    <div class="form-group row">
                        <asp:Label runat="server" for="Quantity" CssClass="col-sm-3 col-md-3 form-control-label">Cantidad:</asp:Label>
                        <div class="col-sm-8 col-md-9">
                            <asp:TextBox ID="txtCantidad" type="number" min="1" oninput="validity.valid||(value='');" max="999" value="1" CssClass="qty form-control" runat="server"></asp:TextBox>
                            <%--<input type="number" class="qty form-control" id="input-qty" name="qty"  min="1" oninput="validity.valid||(value='');" max="999" value="1">--%>
                        </div>
                    </div>

                    <div class="form-group product-stock product-available row visible">
                        <asp:Label runat="server" class="col-sm-3 col-md-3 form-control-label"></asp:Label>
                        <div class="col-sm-8 col-sm-offset-3 col-md-9 col-md-offset-3">

                            <asp:Button ID="btnAgregar" runat="server" class="adc btn btn-primary" Text="Agregar a carrito" />

                            <a href="#" class="btn btn-link btn-sm" title="Continuar comprando">&larr; Continuar comprando</a>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-3 col-md-3 form-control-label">Descripción:</label>
                        <div class="col-sm-8 col-md-9 description">
                            <asp:Label ID="lbDescripcion" runat="server" Text="The idea behind iMac has never wavered: to craft the ultimate desktop experience. The best display, paired with high-performance processors, graphics, and storage &mdash; all within an incredibly thin, seamless enclosure. And that commitment continues with the all-new 21.5‑inch iMac with Retina 4K display. Like the revolutionary 27‑inch 5K&nbsp;model, it delivers such spectacular image quality that everything else around you seems to disappear. Adding up to the most immersive iMac experience yet &mdash; and another big, beautiful step&nbsp;forward."></asp:Label>
                        </div>
                    </div>


                    <div class="form-group row">
                        <asp:Label runat="server" class="col-sm-3 col-md-3 form-control-label">Género:</asp:Label>
                        <div class="col-sm-9 col-md-9">
                            <asp:Label ID="lbGenero" runat="server" Text="Marca: Apple"></asp:Label>

                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</asp:Content>
