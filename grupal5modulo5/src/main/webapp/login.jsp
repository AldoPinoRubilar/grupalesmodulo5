<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>LOGIN | Asesorias Grupo 3.</title>
	<jsp:include page="header.jsp"/>
    </head>
    
    <script>
    alert("Los Usuarios Disponibles para iniciar sesion:\n- user: cliente, clave: 1234\n- user: profesional, clave: 1234\n- user: admin, clave: 1234");
    </script>    

	<body>    

		<section class="w-full px-8 text-gray-700 bg-white">
			<div
				class="container flex flex-col flex-wrap items-center justify-between py-5 mx-auto md:flex-row max-w-7xl justify-center">
				<div class="relative flex flex-col md:flex-row">
					<a href="#_"
						class="flex items-center mb-9 font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center md:mb-0">
						<span class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
								class="text-indigo-600"> GRUPO 3</span></span>
					</a>
		</section>

		<div class="max-w-screen-md mx-auto p-5 mt-5">
			<div class="text-center mb-6">

				<h3 class="text-4xl sm:text-4xl leading-normal font-extrabold tracking-tight text-gray-900">
					Inicio de <span class="text-indigo-600">Sesion</span>
				</h3>
			</div>
			<section id="formLogin" class="px-2 py-10 bg-white md:px-0">
				<div class="container items-center max-w-6xl px-8 mx-auto xl:px-5">
					<div class="flex flex-wrap items-center sm:-mx-3">
						<div class="w-full md:w-1/2 md:px-3">
							<div class="w-full pb-6 space-y-6 sm:max-w-md lg:max-w-lg md:space-y-4 lg:space-y-8 
		  xl:space-y-9 sm:pr-5 lg:pr-0 md:pb-0">
								<form id="form-login" class="w-full">
									<div class="mb-6">
										<label
											class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
											for="grid-user-name">
											Nombre de Usuario
										</label>
										<input name="usuario" class="appearance-none block w-full md:w-3/4 bg-gray-200 text-gray-700 
										border border-red-500 rounded py-3 px-4 mb-3 
				  leading-tight focus:outline-none focus:bg-white" id="user" type="text" placeholder="Cosme Fulanito">
										<p id="mensajeErrorUsuarioVacio" class="hidden text-red-500 text-xs italic">Por favor, ingrese nombre de usuario.</p>
										
									</div>
									<div class="mb-6">
										<label
											class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
											for="grid-password">
											Clave
										</label>
										<input name="password" class="appearance-none block w-full md:w-3/4 bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight 
				  focus:outline-none focus:bg-white focus:border-gray-500" id="password" type="password" placeholder="****">
										<p id="mensajeErrorClaveVacia" class="hidden text-red-500 text-xs italic">Por favor, ingrese la clave.</p>
									</div>
									<div class="flex items-center w-full">
										<button
											class="shadow bg-indigo-600 hover:bg-indigo-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-6 rounded"
											type="submit">
											Iniciar Sesion
										</button>
									</div>
									<p class="hidden text-red-500 text-xs-bold italic">Datos incorrectos, intente nuevamente.
									</p>
								</form>
							</div>
						</div>
						<div class="w-full md:w-1/2">
							<div class="w-full h-auto overflow-hidden rounded-md shadow-xl sm:rounded-xl"
								data-aos="fade-left" data-aos-duration="2000">
								<img src="img/imgLogin.jpg">
							</div>
						</div>
					</div>
				</div>

		</div>
		<a href="#"
			class="flex items-center font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center md:mb-0">
			<span class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
					class="text-indigo-600"> GRUPO 3</span></span>
		</a>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script src="js/script.js"></script>
		<script src="js/app.js"></script>
		<script src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>
		</body>

</html>