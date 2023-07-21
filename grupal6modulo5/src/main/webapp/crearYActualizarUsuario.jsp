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

        <!-- Section 1 -->
     <section id="navBarCompleto" class="w-full px-8 text-gray-700 bg-white bg-gradient-to-tl from-indigo-100 to-white">
        <div
            class="container flex flex-col flex-wrap items-center justify-between py-5 mx-auto md:flex-row max-w-7xl justify-center">
            <div class="relative flex flex-col md:flex-row">
                <a href="ServletHome"
                    class="flex items-center mb-9 font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center md:mb-0">
                    <span class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
                            class="text-indigo-600"> GRUPO 3</span></span>
                </a>
                <div class="max-w-2xl mb-1">
                    <nav
                        class="flex flex-wrap items-center mb-1 text-base md:mb-0 md:pl-8 md:ml-8 md:border-l md:border-gray-200 text-center">
                        <div class="container mx-auto flex flex-wrap items-center justify-between">

                            <button data-collapse-toggle="mobile-menu" type="button"
                                class="md:hidden ml-1 text-gray-400 hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 rounded-lg inline-flex items-center justify-center"
                                aria-controls="mobile-menu-2" aria-expanded="false">
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
                                        <a href="ServletHome" class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 
                    block pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0">Inicio</a>
                                    </li>
                                    <li>
                                        <button id="dropdownNavbarLink" name="menuListar"
                                            data-dropdown-toggle="dropdownNavbar"
                                            class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 py-2 md:hover:text-indigo-700
                                             md:p-0 font-medium flex items-center justify-between w-full md:w-auto">Listar
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
                                                <!--FUNCIONES LISTAR CLIENTE-->
                                                <c:if test="${sessionScope.usuario=='CLIENTE'}">
                                                    <li>
                                                        <a href="ServletListarCapacitacion" name="listarCapacitacion"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                           Listado de Capacitaciones
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <!--FIN FUNCIONES LISTAR CLIENTE-->
                                                <!--FUNCIONES LISTAR PROFESIONAL-->
                                                <c:if test="${sessionScope.usuario=='PROFESIONAL'}">
                                                <li>
                                                    <a href="ServletSitioEnDesarrollo" name="listarAsesorias"
                                                        class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                       Listado de Asesorias
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="ServletSitioEnDesarrollo" name="listarVisitas"
                                                        class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                       Listado de Visitas
                                                    </a>
                                                </li>
                                                </c:if>
                                                <!--FIN FUNCIONES LISTAR PROFESIONAL-->
                                                <!--FUNCIONES LISTAR ADMIN--->
                                            <c:if test="${sessionScope.usuario=='ADMINISTRATIVO'}">
                                                <li>
                                                    <a href="ServletListarUsuarios" name="listarUsuarios"
                                                        class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                       Listado de Usuarios
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="ServletSitioEnDesarrollo" name="listarPagos"
                                                        class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                       Listado de Pagos
                                                    </a>
                                                </li>
                                            </c:if>
                                            <!--FIN FUNCIONES LISTAR ADMIN-->
                                            </ul>
                                    </li>
                                    <li>
                                        <button id="dropdownNavbarLink" data-dropdown-toggle="dropdownNavbar1"
                                            class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0 
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
                                                <!--FUNCIONES CREAR 'CLIENTE'-->
                                                <c:if test="${sessionScope.usuario=='CLIENTE'}">
                                                    <li>
                                                        <a href="ServletCrearCapacitacion" name="crearCapacitacion"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Crear Capacitación
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <!--FIN FUNCIONES CREAR 'CLIENTE'-->
                                                <!--FUNCIONES CREAR 'PROFESIONAL'-->
                                                <c:if test="${sessionScope.usuario=='PROFESIONAL'}">
                                                    <li>
                                                        <a href="ServletSitioEnDesarrollo" name="crearAsesorias"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Crear Asesorias
                                                        </a>
                                                    </li>
                                                </c:if>
                                                <!--FIN FUNCIONES CREAR 'PROFESIONAL'-->
                                                <!--FUNCIONES CREAR 'ADMIN'-->
                                                <c:if test="${sessionScope.usuario=='ADMINISTRATIVO'}">
                                                <li>
                                                    <a href="ServletCrearUsuario" name="crearUsuario"
                                                        class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                        Crear Usuario
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="ServletSitioEnDesarrollo" name="crearPago"
                                                        class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                        Crear Pago
                                                    </a>
                                                </li>
                                                </c:if>
                                                <!--FIN FUNCIONES CREAR 'ADMIN'-->
                                            </ul>
                                    </li>
                                    <li>
                                        <button id="dropdownNavbarLink" data-dropdown-toggle="dropdownNavbar2"
                                            class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 
                                            py-2 md:hover:text-indigo-700 md:p-0 font-medium flex items-center justify-between w-full md:w-auto">
                                            Gest/Admin
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
                                                <!--FUNCIONES GEST/ADMIN 'CLIENTE'-->
                                                <c:if test="${sessionScope.usuario=='CLIENTE'}">
                                                    <li>
                                                        <a href="ServletSitioEnDesarrollo" name="adminAsistentes"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Administrar Asistentes</a>
                                                    </li>
                                                    <li>
                                                        <a href="ServletSitioEnDesarrollo" name="gestAccidentes"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Gestionar Accidentes</a>
                                                    </li>
                                                </c:if>
                                                <!--FIN FUNCIONES GEST/ADMIN 'CLIENTE'-->
                                                <!--FUNCIONES GEST/ADMIN 'PROFESIONAL'-->
                                                <c:if test="${sessionScope.usuario=='PROFESIONAL'}">
                                                    <li>
                                                        <a href="ServletSitioEnDesarrollo" name="responderCheckList"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Responder CheckList</a>
                                                    </li>
                                                    <li>
                                                        <a href="ServletSitioEnDesarrollo" name="reportes"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Reportes</a>
                                                    </li>
                                                </c:if>
                                                <!--FIN FUNCIONES GEST/ADMIN 'PROFESIONAL'-->
                                                <!--FUNCIONES GEST/ADMIN 'ADMIN'-->
                                                <c:if test="${sessionScope.usuario=='ADMINISTRATIVO'}">
                                                    <li>
                                                        <a href="ServletSitioEnDesarrollo" name="editarAdministrativo"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Editar Administrativo</a>
                                                    </li>
                                                    <li>
                                                        <a href="ServletSitioEnDesarrollo" name="editarCliente"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Editar Cliente</a>
                                                    </li>
                                                    <li>
                                                        <a href="ServletSitioEnDesarrollo" name="editarProfesional"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Editar Profesional</a>
                                                    </li>
                                                    <li>
                                                        <a href="ServletSitioEnDesarrollo" name="adminChequeos"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Administrar Chequeos</a>
                                                    </li>
                                                </c:if>
                                            <!--FIN FUNCIONES GEST/ADMIN 'ADMIN'-->
                                            </ul>
                                    </li>
                                    <c:if test="${sessionScope.usuario=='CLIENTE'}">
                                        <li>
                                            <a href="ServletContacto" class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 
                        block pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0">Contacto</a>
                                        </li>
                                    </c:if>
                                    <li>
                                        <a href="#acercaDe" class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 
                    block pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0" style="white-space: nowrap;">Acerca de</a>
                                    </li>
                                    <li>
                                        <span class="uppercase text-bold text-indigo-700 border-b border-gray-100 md:hover:bg-transparent md:border-0 
                    block pl-3 pr-4 py-2 md:p-0" style="white-space: nowrap;">
                                            <c:if test="${not empty sessionScope.usuario}">${sessionScope.usuario}
                                            </c:if>
                                        </span>
                                    </li>
                                    <li>
                                        <form action="ServletLogout" method="post">
                                            <button type="submit" class="text-red-600 font-semibold rounded-md 
                                                     hover:text-red-400
                                                     block pl-3 pr-4 py-2 md:p-0 w-full h-full"
                                                style="white-space: nowrap;">Cerrar sesión
                                            </button>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
    </section>
		<!--Section 2-->
		<section id="CrearUsuario" class="w-full px-8 text-gray-700 bg-white">
			<div class="max-w-screen-md mx-auto p-5">
				<div class="text-center mb-10">
					<h3 class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight text-gray-900">
						Crear Nuevo<span class="text-indigo-600"> Usuario</span>
					</h3>
				</div>

				<!-- Formulario -->
				<form class="w-full" action="ServletCrudUsuario" method="POST" id="saveUser">
					<div class="flex flex-wrap -mx-3 mb-6 mt-0">
						<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-nombre"> Nombre </label>
							<input name="nombreusuario"
								class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
								id="nombreusuario" type="text" placeholder="Isabella González">
							<p class="hidden text-red-500 text-xs italic"></p>
						</div>

						<div class="w-full md:w-1/2 px-3">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-rut"> Rut </label>
							<input name="run"
								class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
								id="rut" type="text" placeholder="12.345.678-9">
							<p class="hidden text-red-500 text-xs italic"></p>
						</div>

						<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-fecha-nacimiento"> Fecha Nacimiento </label>
							<input type="date" name="fechanacimiento"
								class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
								id="fechanacimiento">
							<p class="hidden text-red-500 text-xs italic"></p>
						</div>


						<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
							<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
								for="grid-tipo-usuario"> Tipo de usuario </label>
							<select name="tipousuario"
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
			<span class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
					class="text-indigo-600"> GRUPO 3</span></span>
		</a>

		<script src="js/script.js"></script>
		<script src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>

	</body>

	</html>