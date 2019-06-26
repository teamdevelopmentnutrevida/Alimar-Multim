﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="UI.InicioSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
        
  

    <%--<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Inicio Sesión</button>--%>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="/action_page.php" runat="server">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Cerrar Modal">&times;</span>
      <h3>Bienvenido</h3>
    </div>

    <div class="container">
      <label for="uname"><b>Usuario</b></label>
      <asp:TextBox runat="server" type="text" placeholder="Correo" name="uname" ID="txtCorreo"></asp:TextBox>

      <label for="psw"><b>Contraseña</b></label>
      <asp:TextBox runat="server" type="password" placeholder="Contraseña" name="psw" ID="txtContras"></asp:TextBox>
      <button type="submit" onclick="Ingresar()">Login</button>
      <%--<asp:Button runat="server"  OnClick="btnIngresar_Click" Text="Ingresar"></asp:Button>--%>
      <label>
        <input type="checkbox" checked="checked" name="remember"/> Recuerdame
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Olvidó la <a href="#">contraseña?</a></span>
    </div>
  </form>
</div>

     <script>
         function Ingresar() {
             alert("Entro");
             num = document.getElementById('txtCorreo');
             $.ajax({
                 type: "POST",
                 url: '/InicioSesion.aspx/Redirigir_Click',
                 data: '{correo:' + num + '}',
                 contentType: "application/json; charset=utf-8",
                 dataType: "json",
                 async: true,
                 success: function () {
                    location.href = "Administrador.aspx";
                 },
                 error: function () {
                    alert("No funciona");
                 }
             });
         }
    </script>
    
<script>
    // Get the modal
    var modal = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</asp:Content>
