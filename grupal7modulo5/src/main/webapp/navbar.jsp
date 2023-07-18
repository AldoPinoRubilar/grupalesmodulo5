 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <section id="navBarCompleto" class="w-full px-8 text-gray-700 bg-gradient-to-tl from-indigo-100 to-white">
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
                                            <c:if test="${sessionScope.usuario=='ADMIN'}">
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
                                                        <a href="CrearYActualizarCapacitacion" name="crearCapacitacion"
                                                            class="text-sm hover:bg-gray-50 text-indigo-700 hover:text-teal-600 block px-4 py-2">
                                                            Crear Capacitaci&oacute;n
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
                                                <c:if test="${sessionScope.usuario=='ADMIN'}">
                                                <li>
                                                    <a href="CrearYActualizarUsuario" name="crearUsuario"
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
                                                <c:if test="${sessionScope.usuario=='ADMIN'}">
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
                                                style="white-space: nowrap;">Cerrar sesi&oacute;n
                                            </button>
                                        </form>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
    </section>