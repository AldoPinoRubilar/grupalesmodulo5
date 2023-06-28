<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>CREAR CAPACITACION | ASESORIAS GRUPO 3</title>
		<script src="https://cdn.tailwindcss.com"></script>
		<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
	</head>

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
					<div class="max-w-2xl mb-1">

						<nav
							class="flex flex-wrap items-center mb-1 text-base md:mb-0 md:pl-8 md:ml-8 md:border-l md:border-gray-200 text-center">
							<div class="container mx-auto flex flex-wrap items-center justify-between">

								<button data-collapse-toggle="mobile-menu" type="button" class="md:hidden ml-1 text-gray-400 hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 rounded-lg inline-flex 
            items-center justify-center" aria-controls="mobile-menu-2" aria-expanded="false">
									<span class="sr-only">Main Menu</span>
									<spann class="mr-12 text-black text-bold">Menu</spann>
									<svg class="w-8 h-8" fill="currentColor" viewBox="0 0 20 20"
										xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd"
											d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
											clip-rule="evenodd">
										</path>
									</svg>
									<svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20"
										xmlns="http://www.w3.org/2000/svg">
										<path fill-rule="evenodd"
											d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
											clip-rule="evenodd">
										</path>
									</svg>
								</button>
								<div class="hidden md:block w-full md:w-auto" id="mobile-menu">
									<ul
										class="flex-col md:flex-row flex md:space-x-8 mt-4 md:mt-0 md:text-sm md:font-medium">
										<li>
											<a href="home.jsp" class="bg-indigo-700 md:bg-transparent text-white block pl-3 pr-4 py-2 md:text-indigo-700 md:p-0 
                rounded focus:outline-none" aria-current="page">Inicio</a>
										</li>
										<li>
											<button id="dropdownNavbarLink" data-dropdown-toggle="dropdownNavbar" class="text-gray-700 hover:bg-gray-50 
                    border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0 
                    font-medium flex items-center justify-between w-full md:w-auto">Listar
												<svg class="w-4 h-4 ml-1" fill="currentColor" viewBox="0 0 20 20"
													xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd"
														d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
														clip-rule="evenodd">
													</path>
												</svg>
											</button>
											<!-- Dropdown menu -->
											<div id="dropdownNavbar"
												class="hidden bg-white text-base z-10 list-none divide-y divide-gray-100 rounded shadow my-4 w-44">
												<ul class="py-1" aria-labelledby="dropdownLargeButton">
													<li>
														<a href="listarCapacitacion.jsp"
															class="text-sm hover:bg-gray-100 text-gray-700 block px-4 py-2">Listar
															Capacitaciones</a>
													</li>
												</ul>
										</li>
										<li>
											<button id="dropdownNavbarLink" data-dropdown-toggle="dropdownNavbar1"
												class="text-gray-700 hover:bg-gray-50 
                    border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0 
                    font-medium flex items-center justify-between w-full md:w-auto">Crear
												<svg class="w-4 h-4 ml-1" fill="currentColor" viewBox="0 0 20 20"
													xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd"
														d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
														clip-rule="evenodd">
													</path>
												</svg>
											</button>
											<!-- Dropdown menu -->
											<div id="dropdownNavbar1"
												class="hidden bg-white text-base z-10 list-none divide-y divide-gray-100 rounded shadow my-4 w-44">
												<ul class="py-1" aria-labelledby="dropdownLargeButton">
													<li>
														<a href="crearCapacitacion.jsp" onclick="scrollToBottom(event)"
															class="text-sm hover:bg-gray-100 text-gray-700 block px-4 py-2">Crear
															Capacitación</a>
													</li>
												</ul>
										</li>
										<li>
											<button id="dropdownNavbarLink" data-dropdown-toggle="dropdownNavbar2"
												class="text-gray-700 hover:bg-gray-50 
                    border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0 
                    font-medium flex items-center justify-between w-full md:w-auto">Gest/Admin
												<svg class="w-4 h-4 ml-1" fill="currentColor" viewBox="0 0 20 20"
													xmlns="http://www.w3.org/2000/svg">
													<path fill-rule="evenodd"
														d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
														clip-rule="evenodd">
													</path>
												</svg>
											</button>
											<!-- Dropdown menu -->
											<div id="dropdownNavbar2"
												class="hidden bg-white text-base z-10 list-none divide-y divide-gray-100 rounded shadow my-4 w-44">
												<ul class="py-1" aria-labelledby="dropdownLargeButton">
													<li>
														<a href="#"
															class="text-sm hover:bg-gray-100 text-gray-700 block px-4 py-2">Gestionar
															Accidente</a>
													</li>
												</ul>
										</li>
										<li>
											<a href="contactoCliente.jsp" class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 
                block pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0">Contacto</a>
										</li>
										<li>
											<a href="home.jsp#acercaDe" class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 
                    block pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0">Acerca de</a>
										</li>
									</ul>
								</div>
							</div>
						</nav>
					</div>
		</section>
		<section id="crearCapacitacion.jsp" class="w-full px-8 text-gray-700 bg-white">
			<div class="max-w-screen-md mx-auto p-5">
				<div class="text-center mb-10">

					<h3 class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight text-gray-900">
						Crear <span class="text-indigo-600"> Capacitaci&oacute;n</span>
					</h3>
				</div>
				<!-- Formulario -->
				<form class="w-full" action="CapacitacionServlet" method="POST">
					<div class="flex flex-wrap -mx-3 mb-6 mt-0">
						<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-nombre-capacitacion">
								Nombre de la Capacitacion
							</label>
							<input name="nombreCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 
      leading-tight focus:outline-none focus:bg-white" id="grid-nombre-capacitacion" type="text"
								placeholder="Manejo de extintores">
							<p class="text-red-500 text-xs italic">Por favor, ingrese el nombre de la capacitacion.</p>
						</div>
						<div class="w-full md:w-1/2 px-3">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-identificador-capacitacion">
								Identificador
							</label>
							<input name="idCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight 
      focus:outline-none focus:bg-white focus:border-gray-500" id="grid-identificador-capacitacion" type="text"
								placeholder="154653">
							<p class="text-red-500 text-xs italic">Por favor, ingrese un identificador.</p>
						</div>
					</div>
					<div class="flex flex-wrap -mx-3 mb-6">
						<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-dia-capacitacion">
								Dia Capacitacion
							</label>
							<input name="diaCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 
      leading-tight focus:outline-none focus:bg-white" id="grid-dia-capacitacion" type="text" placeholder="Jueves">
							<p class="text-red-500 text-xs italic">Por favor, ingrese el dia de la capacitacion.</p>
						</div>
						<div class="w-full md:w-1/2 px-3">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-hora-capacitacion">
								Hora Capacitacion
							</label>
							<input name="horaCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight 
      focus:outline-none focus:bg-white focus:border-gray-500" id="grid-hora-capacitacion" type="text"
								placeholder="HH:MM">
							<p class="text-red-500 text-xs italic">Por favor, ingrese un identificador.</p>
						</div>
					</div>
					<div class="flex flex-wrap -mx-3 mb-6">
						<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-lugar-capacitacion">
								Lugar
							</label>
							<input name="lugarCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 
      leading-tight focus:outline-none focus:bg-white" id="grid-lugar-capacitacion" type="text"
								placeholder="Sala de reuniones 1">
							<p class="text-red-500 text-xs italic">Por favor, el lugar donde se realizara la
								capacitacion.</p>
						</div>
						<div class="w-full md:w-1/2 px-3">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-duracion-capacitacion">
								Duracion (En minutos)
							</label>
							<input name="duracionCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight 
      focus:outline-none focus:bg-white focus:border-gray-500" id="grid-duracion-capacitacion" type="number"
								placeholder="40"">
      <p class=" text-red-500 text-xs italic">Por favor, ingrese la duracion de la capacitacion.</p>
						</div>
					</div>
					<div class="flex flex-wrap -mx-3 mb-6">
						<div class="w-full px-3">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-cantAsistentes-capacitacion">
								Cantidad de asistentes
							</label>
							<input name="cantidadAsistentes" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight 
      focus:outline-none focus:bg-white focus:border-gray-500" id="grid-cantAsistentes-capacitacion" type="number"
								placeholder="50">
						</div>
					</div>
					<div class="flex flex-wrap -mx-3 mb-6">
						<div class="w-full px-3">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-observaciones">
								Observaciones
							</label>
							<textarea name="observacionesCapacitacion" rows="10" id="grid-observaciones" class="placeholder-gray-500 appearance-none block w-full bg-gray-200 
      text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none 
      focus:bg-white focus:border-gray-500"
								placeholder="Ej: El asistente 1 necesita asistencia para silla de ruedas..."></textarea>
						</div>
						<div class="flex justify-center w-full px-3 mt-5">
							<button
								class="shadow bg-indigo-600 hover:bg-indigo-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-6 rounded"
								type="submit">
								Crear Capacitacion
							</button>
						</div>

					</div>
				</form>
			</div>
		</section>
		<a href="#_"
			class="flex items-center mb-19 font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center md:mb-0">
			<span class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
					class="text-indigo-600"> GRUPO 3</span></span>
		</a>

		<script src="script.js"></script>
		<script src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>

	</body>
	
</html>