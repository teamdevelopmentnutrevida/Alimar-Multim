﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="UI.InicioSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
/*body {font-family: Arial, Helvetica, sans-serif;}*/

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;  


}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 45%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
    

    <script>
        function cargar() {
            document.getElementById('id01').style.display='block';
        }
    </script>
        
  
	<div class="container">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4" style="background-color:#f1f1f1">
			<div>
  
  <%--<form  runat="server">--%>
    <div class="imgcontainer">
       <h3>Bienvenido</h3>
    </div>

    <div class="container">
      <label for="uname"><b>Usuario</b></label>
		<asp:TextBox ID="txtCorr" placeholder="Correo" runat="server"></asp:TextBox>

      <label for="psw"><b>Contraseña</b></label>
      <asp:TextBox runat="server" type="password" placeholder="Contraseña" ID="txtContras"></asp:TextBox>
		<asp:Button CssClass="btn btn-success" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
     <br /><br />
		 <label>
        <input type="checkbox" checked="checked" name="remember"/> Recuerdame
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
		<asp:Button ID="Button1" onclick="btnCancel_Click" runat="server" CssClass="btn btn-danger" Text="Cancelar" />
    
      <span class="psw">Olvidó la <a href="#">contraseña?</a></span>
    </div>
<%--  </form>--%>
</div>
        </div>
        <div class="col-sm-4"></div>
    </div>
</div>
  


    
</asp:Content>
