<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Listado de Capacitaciones | GRUPO 3</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>

    <body>
        <!-- section 1 -->
        <section class="w-full px-8 text-gray-700 bg-white">
            <div
                class="container flex flex-col flex-wrap items-center justify-between py-5 mx-auto md:flex-row max-w-7xl justify-center">
                <div class="relative flex flex-col md:flex-row">
                    <a href="home.jsp"
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
                                                        <a href="crearCapacitacion.jsp"
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
                                            <a href="contactoCliente.jsp" onclick="scrollToBottom(event)" class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 
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
        <!--section 2-->
        <section class="w-full bg-white flex justify-center">
            <div class="max-w-3xl mx-auto px-0 py-6 justify-center">
                <div class="text-center mb-16 ">

                    <h3 class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight text-gray-900">
                        Listado de <span class="text-indigo-600">Capacitaciones</span>
                    </h3>
                </div>
                <div class="pt-4 px-0 flex justify-center">
                    <table
                        class="w-full mx-auto striped sm:border sm:border-slate-200 sm:dark:border-slate-800 dark:border-slate-700">
                        <caption class="caption-bottom text-[11px] mb-2">Tabla con informacion sobre las capacitaciones.
                        </caption>
                        <thead class="hidden border-0 sm:table-header-group">
                            <tr>
                                <th
                                    class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-bold text-white-600 dark:text-white text-left text-xs sm:pl-6">
                                    Nombre Capacitacion</th>
                                <th
                                    class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
                                    Identificador</th>
                                <th
                                    class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
                                    Dia</th>
                                <th
                                    class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
                                    Hora</th>
                                <th
                                    class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
                                    Lugar</th>
                                <th
                                    class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
                                    Duracion</th>
                                <th
                                    class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
                                    Cantidad asistentes</th>
                                <th
                                    class="hidden sm:table-cell bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs sm:pr-6">
                                    Observaciones</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-slate-200 bg-white dark:divide-slate-800 dark:bg-transparent">
                            <tr
                                class="text-sm border border-slate-200 flex flex-col mb-6 py-1 divide-y divide-y-slate-50 dark:border-slate-800 sm:border-0 sm:table-row sm:mb-0 sm:py-0 dark:divide-slate-800 sm:divide-none">
                                <td data-label="Nombre Capacitacion"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    NombreCapacitacion</td>
                                <td data-label="Identificador"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Identificador</td>
                                <td data-label="Dia"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Dia</td>
                                <td data-label="Hora"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Hora</td>
                                <td data-label="Lugar"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Lugar</td>
                                <td data-label="Duracion"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Duracion</td>
                                <td data-label="Cantidad de Asistentes"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    CantidadAsistentes</td>
                                <td data-label=""
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pr-6">
                                    <a href="#"
                                        class="bg-indigo-500 dark:bg-indigo-900/50 hover:bg-indigo-100 sm:hover:bg-transparent content-center
                sm:bg-transparent py-2.5 px-3.5 sm:py-0 sm:px-0 rounded-md sm:rounded-none text-indigo-600 dark:text-indigo-900
                 shadow-sm sm:shadow-none text-center sm:text-center
                underline-offset-4 dark:text-indigo-900 hover:underline hover:text-indigo-800 hover:dark:text-indigo-400">Observaciones</a>
                                </td>
                            </tr>
                            <tr
                                class="text-sm border border-slate-200 flex flex-col mb-6 py-1 divide-y divide-y-slate-50 dark:border-slate-800 sm:border-0 sm:table-row sm:mb-0 sm:py-0 dark:divide-slate-800 sm:divide-none">
                                <td data-label="Nombre Capacitacion"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    NombreCapacitacion</td>
                                <td data-label="Identificador"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Identificador</td>
                                <td data-label="Dia"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Dia</td>
                                <td data-label="Hora"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Hora</td>
                                <td data-label="Lugar"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Lugar</td>
                                <td data-label="Duracion"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    Duracion</td>
                                <td data-label="Cantidad de Asistentes"
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pl-6">
                                    CantidadAsistentes</td>
                                <td data-label=""
                                    class="flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:font-medium sm:pr-6">
                                    <a href="#"
                                        class="bg-indigo-500 dark:bg-indigo-900/50 hover:bg-indigo-100 sm:hover:bg-transparent content-center
                    sm:bg-transparent py-2.5 px-3.5 sm:py-0 sm:px-0 rounded-md sm:rounded-none text-indigo-600 dark:text-indigo-900
                     shadow-sm sm:shadow-none text-center sm:text-center
                    underline-offset-4 dark:text-indigo-900 hover:underline hover:text-indigo-800 hover:dark:text-indigo-400">Observaciones</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                </div>
            </div>

        </section>
        <a href="home.jsp"
            class="flex items-center font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center md:mb-0">
            <span class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
                    class="text-indigo-600"> GRUPO 3</span></span>
        </a>

        <script src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>
    </body>

    </html>