<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>CREAR USUARIO | Asesorias Grupo 3.</title>
<jsp:include page="header.jsp" />
</head>
<body>

	<!--Section 1-->
	<jsp:include page="navbar.jsp" />
	<!--Section 2-->
	<section id="crearCapacitacion.jsp"
		class="w-full px-8 text-gray-700 bg-white">
		<div class="max-w-screen-md mx-auto p-5">
			<div class="text-center mb-10">
				<h3
					class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight text-gray-900">
					Crear Nuevo<span class="text-indigo-600"> Usuario</span>
				</h3>
			</div>

			<!-- Formulario -->
			<form class="w-full" action="ServletCrudUsuario" method="POST"
				id="saveUser">
				<div class="flex flex-wrap -mx-3 mb-6 mt-0">
					<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
						<label
							class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-nombre"> Nombre </label> 
							<input name="nombreusuario"
							class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
							id="nombreusuario" type="text"
							placeholder="Isabella González">
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>

					<div class="w-full md:w-1/2 px-3">
						<label
							class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-rut"> Rut </label> 
							<input name="run"
							class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
							id="rut" type="text" placeholder="12.345.678-9">
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>

					<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
						<label
							class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-fecha-nacimiento"> Fecha Nacimiento </label> 
							<input
							type="date" name="fechanacimiento"
							class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
							id="fechanacimiento">
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>


					<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
						<label
							class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-tipo-usuario"> Tipo de usuario </label> 
							<select
							name="tipousuario"
							class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
							id="tipousuario">
							<option value="" disabled selected>Seleccione el tipo de
								usuario</option>
							<option value="cliente">Cliente</option>
							<option value="profesional">Profesional</option>
							<option value="administrativo">Administrativo</option>
						</select>
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>
				</div>
				<div class="flex flex-wrap -mx-3 mb-6">
					<input type="hidden" name="option" value="saveUser">
					<div class="flex justify-center w-full px-3 mt-5">
						<button id="btnSubmit"
							class="shadow bg-indigo-600 hover:bg-indigo-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-6 rounded"
							type="submit">Crear Usuario</button>
					</div>
				</div>
			</form>
		</div>
	</section>

	<a href="ServletHome"
		class="flex items-center mb-19 font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center md:mb-0">
		<span
		class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
			class="text-indigo-600"> GRUPO 3</span></span>
	</a>

	<script src="js/script.js"></script>
	<script
		src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>

</body>

</html>