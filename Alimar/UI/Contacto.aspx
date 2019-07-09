<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="UI.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<style>


input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 10px;
  background-color: #f2f2f2;
  padding: 50px;
}
	</style>


	<div class="container">

    <label for="fname">Nombre</label>
    <input type="text" id="fname" name="firstname" placeholder="Nombre..">

    <label for="email">Correo electrónico</label>
    <input type="text" id="email" name="email" placeholder="Email..">

    <label for="country">Provincia</label>
    <select id="country" name="country">
      <option value="sj">San José</option>
      <option value="al">Alajuela</option>
      <option value="he">Heredia</option>
	  <option value="car">Cartago</option>
	  <option value="pun">Puntarenas</option>
	  <option value="guana">Guanacaste</option>
	  <option value="lim">Limón</option>
    </select>

    <label for="subject">Mensaje</label>
    <textarea id="subject" name="subject" placeholder="Escriba su mensaje aquí.." style="height:200px"></textarea>

    <input type="submit" value="Enviar">
 
</div>

	


</asp:Content>
