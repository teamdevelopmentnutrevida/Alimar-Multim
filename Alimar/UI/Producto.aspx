<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="UI.Producto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <!-- Page Heading -->
        <div class="row">
            <div class="col-12">
                <h1 class="page-header">iMac Desktop Computer</h1>
            </div>
        </div>
        <!-- /.row -->

        <div class="row">
            <div class="col-lg-6 mb-4">

                <!-- There's only One image -->  
                <div class="">
                    <div class="main-product-image">
                        <img src="https://cdnx.jumpseller.com/bootstrap/image/429446/resize/400/500?1439529839" alt="iMac Desktop Computer" class="img-fluid">
                    </div>
                </div>

            </div>

            <div class="col-lg-6">
                <form class="form-horizontal" action="/cart/add/224302" method="post" enctype="multipart/form-data" name="buy">

                    <!-- Product Price  -->
                    <div class="form-group price_elem row">
                        <label class="col-sm-3 col-md-3 form-control-label nopaddingtop">Price:</label>
                        <div class="col-sm-8 col-md-9">
                            <span class="product-form-price" id="product-form-price">$1.200.000</span>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="Quantity" class="col-sm-3 col-md-3 form-control-label">Quantity:</label>
                        <div class="col-sm-8 col-md-9">

                            <input type="number" class="qty form-control" id="input-qty" name="qty" maxlength="5" value="1">
                        </div>
                    </div>

                    <div class="form-group product-stock product-available row visible">
                        <label class="col-sm-3 col-md-3 form-control-label"></label>
                        <div class="col-sm-8 col-sm-offset-3 col-md-9 col-md-offset-3">


                            <input type="submit" class="adc btn btn-primary" value="Add to Shopping Cart" />



                            <a href="javascript:history.back()" class="btn btn-link btn-sm" title="Continue Shopping">&larr; Continue Shopping</a>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-3 col-md-3 form-control-label">Description:</label>
                        <div class="col-sm-8 col-md-9 description">
                            <p>The idea behind iMac has never wavered: to craft the ultimate desktop experience. The best display, paired with high-performance processors, graphics, and storage &mdash; all within an incredibly thin, seamless enclosure. And that commitment continues with the all-new 21.5‑inch iMac with Retina 4K display. Like the revolutionary 27‑inch 5K&nbsp;model, it delivers such spectacular image quality that everything else around you seems to disappear. Adding up to the most immersive iMac experience yet &mdash; and another big, beautiful step&nbsp;forward.</p>
                        </div>
                    </div>


                    <div class="form-group row">
                        <label class="col-sm-3 col-md-3 form-control-label">Details:</label>
                        <div class="col-sm-9 col-md-9">

                            <p>Marca: Apple</p>

                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</asp:Content>
