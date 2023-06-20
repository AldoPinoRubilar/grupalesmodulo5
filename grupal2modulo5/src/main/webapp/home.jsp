<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Asesorias Grupo 3 | CLIENTE.</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>

    <body>
        <script>
            AOS.init();
        </script>
        <!-- Section 1 -->
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
                                            <button id="dropdownNavbarLink" data-dropdown-toggle="dropdownNavbar"
                                                class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0 font-medium flex items-center justify-between w-full md:w-auto">Listar
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
                                                class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0 font-medium flex items-center justify-between w-full md:w-auto">Crear
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
                                                class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0 font-medium flex items-center justify-between w-full md:w-auto">Gest/Admin
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
                                            <a href="#acercaDe" class="text-gray-700 hover:bg-gray-50 border-b border-gray-100 md:hover:bg-transparent md:border-0 
                block pl-3 pr-4 py-2 md:hover:text-indigo-700 md:p-0">Acerca de</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                    </div>
        </section>

        <!-- Section 2 -->
        <section id="section2" class="px-2 py-20 bg-white md:px-0">
            <div class="container max-w-6xl px-8 mx-auto xl:px-5">
                <div class="flex flex-wrap items-center sm:-mx-3">
                    <div class="w-full md:w-1/2 md:px-3">
                        <div class="w-full pb-6 space-y-6 sm:max-w-md lg:max-w-lg md:space-y-4 lg:space-y-8 
        xl:space-y-9 sm:pr-5 lg:pr-0 md:pb-0">
                            <h1 class="text-4xl font-extrabold tracking-tight text-gray-900 
          sm:text-5xl md:text-4xl lg:text-5xl xl:text-6xl">
                                <span class="block xl:inline">¡Bienvenido al portal de</span>
                                <span class="block text-indigo-600 xl:inline">asesor&iacute;as en prevenci&oacute;n de
                                    riesgos!</span>
                            </h1>
                            <p class="mx-auto text-base text-gray-700 sm:max-w-md lg:text-xl md:max-w-3xl">
                                Te ayudamos
                                a gestionar eficientemente
                                los procesos<br> de <span class="font-bold text-black">prevenci&oacute;n de
                                    riesgos</span>
                                en tu empresa.
                            </p>
                        </div>
                    </div>
                    <div class="w-full md:w-1/2">
                        <div class="w-full h-auto overflow-hidden rounded-md shadow-xl sm:rounded-xl"
                            data-aos="fade-left" data-aos-duration="2000">
                            <img
                                src="https://images.unsplash.com/photo-1498049860654-af1a5c566876?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80">
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Section 3 -->
        <section class="w-full bg-white pt-7 pb-7 md:pt-20 md:pb-24">
            <div
                class="box-border flex flex-col items-center content-center px-8 mx-auto leading-6 text-black border-0 border-gray-300 border-solid md:flex-row max-w-7xl lg:px-16">

                <!-- Image -->
                <div
                    class="box-border relative w-full max-w-md px-4 mt-5 mb-4 -ml-5 text-center bg-no-repeat bg-contain border-solid md:ml-0 md:mt-0 md:max-w-none lg:mb-0 md:w-1/2 xl:pl-10">
                    <img src="https://cdn.devdojo.com/images/december2020/productivity.png"
                        class="p-2 pl-6 pr-5 xl:pl-16 xl:pr-20 ">
                </div>

                <!-- Content -->
                <div class="box-border order-first w-full text-black border-solid md:w-1/2 md:pl-10 md:order-none">
                    <h2
                        class="m-0 text-xl font-semibold leading-tight border-0 border-gray-300 lg:text-3xl md:text-2xl">
                        Calidad de Trabajo
                    </h2>
                    <p
                        class="pt-4 pb-8 m-0 leading-7 text-gray-700 border-0 border-gray-300 sm:pr-12 xl:pr-32 lg:text-lg">
                        Aquí encontrarás una amplia gama de servicios y herramientas para ayudarte a gestionar
                        eficientemente los principales procesos relacionados con la prevención de riesgos en tu empresa.
                    </p>
                    <ul class="p-0 m-0 leading-6 border-0 border-gray-300">
                        <li class="box-border relative py-1 pl-0 text-left text-gray-500 border-solid">
                            <span
                                class="inline-flex items-center justify-center w-6 h-6 mr-2 text-white bg-yellow-300 rounded-full"><span
                                    class="text-sm font-bold">✓</span></span> Maximiza la productividad de tu empresa.
                        </li>
                        <li class="box-border relative py-1 pl-0 text-left text-gray-500 border-solid">
                            <span
                                class="inline-flex items-center justify-center w-6 h-6 mr-2 text-white bg-yellow-300 rounded-full"><span
                                    class="text-sm font-bold">✓</span></span> Ve m&aacute;s all&aacute; de tu
                            competencia.
                        </li>
                        <li class="box-border relative py-1 pl-0 text-left text-gray-500 border-solid">
                            <span
                                class="inline-flex items-center justify-center w-6 h-6 mr-2 text-white bg-yellow-300 rounded-full"><span
                                    class="text-sm font-bold">✓</span></span>Calidad de Software.
                        </li>
                    </ul>
                </div>
                <!-- End  Content -->
            </div>
            <div
                class="box-border flex flex-col items-center content-center px-8 mx-auto mt-2 leading-6 text-black border-0 border-gray-300 border-solid md:mt-20 xl:mt-0 md:flex-row max-w-7xl lg:px-16">

                <!-- Content -->
                <div class="box-border w-full text-black border-solid md:w-1/2 md:pl-6 xl:pl-32">
                    <h2
                        class="m-0 text-xl font-semibold leading-tight border-0 border-gray-300 lg:text-3xl md:text-2xl">
                        Funciones extra rapidas
                    </h2>
                    <p class="pt-4 pb-8 m-0 leading-7 text-gray-700 border-0 border-gray-300 sm:pr-10 lg:text-lg">
                        Ahorre tiempo y dinero con nuestros revolucionarios servicios. Somos los líderes en la
                        industria.
                    </p>
                    <ul class="p-0 m-0 leading-6 border-0 border-gray-300">
                        <li class="box-border relative py-1 pl-0 text-left text-gray-500 border-solid">
                            <span
                                class="inline-flex items-center justify-center w-6 h-6 mr-2 text-white bg-yellow-300 rounded-full"><span
                                    class="text-sm font-bold">✓</span></span>Manejo de datos.
                        </li>
                        <li class="box-border relative py-1 pl-0 text-left text-gray-500 border-solid">
                            <span
                                class="inline-flex items-center justify-center w-6 h-6 mr-2 text-white bg-yellow-300 rounded-full"><span
                                    class="text-sm font-bold">✓</span></span> Listar, Crear, Administrar.
                        </li>
                        <li class="box-border relative py-1 pl-0 text-left text-gray-500 border-solid">
                            <span
                                class="inline-flex items-center justify-center w-6 h-6 mr-2 text-white bg-yellow-300 rounded-full"><span
                                    class="text-sm font-bold">✓</span></span> Otras fantasticas integraciones.
                        </li>
                    </ul>
                </div>
                <!-- End  Content -->

                <!-- Image -->
                <div
                    class="box-border relative w-full max-w-md px-4 mt-10 mb-4 text-center bg-no-repeat bg-contain border-solid md:mt-0 md:max-w-none lg:mb-0 md:w-1/2">
                    <img src="https://cdn.devdojo.com/images/december2020/settings.png"
                        class="pl-4 sm:pr-10 xl:pl-10 lg:pr-32">
                </div>
            </div>
        </section>

        <!-- Section 4 -->
        <section id="acercaDe" class="py-20 bg-gray-50">
            <div class="container items-center max-w-6xl px-4 px-10 mx-auto sm:px-20 md:px-32 lg:px-16">
                <div class="flex flex-wrap items-center -mx-3">
                    <div class="order-1 w-full px-3 lg:w-1/2 lg:order-0">
                        <div class="w-full lg:max-w-md">
                            <h2 class="mb-4 text-3xl font-bold leading-tight tracking-tight sm:text-4xl font-heading">
                                Hola, somos el <span class="indigo-text">Grupo 3.</span></h2>
                            <p class="mb-4 font-medium tracking-tight text-gray-400 xl:mb-6">Nuestro Principal objetivo
                                es brindar software de calidad para diferentes requerimientos en las empresas.</p>
                            <ul>
                                <li class="flex items-center py-2 space-x-4 xl:py-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" class="w-6 h-6">
                                        <path
                                            d="M12 2a5.9 5.9 0 0 1 6 6c0 3.314-2.686 6-6 6s-6-2.686-6-6a5.9 5.9 0 0 1 6-6zm0 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4zM21 21v-2a4 4 0 0 0-4-4H7a4 4 0 0 0-4 4v2">
                                        </path>
                                    </svg>
                                    <span class="font-medium text-gray-500">Aldo Pino Rubilar.</span>
                                </li>
                                <li class="flex items-center py-2 space-x-4 xl:py-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" class="w-6 h-6">
                                        <path
                                            d="M12 2a5.9 5.9 0 0 1 6 6c0 3.314-2.686 6-6 6s-6-2.686-6-6a5.9 5.9 0 0 1 6-6zm0 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4zM21 21v-2a4 4 0 0 0-4-4H7a4 4 0 0 0-4 4v2">
                                        </path>
                                    </svg>
                                    <span class="font-medium text-gray-500">Freddy Yevenes Carrasco.</span>
                                </li>
                                <li class="flex items-center py-2 space-x-4 xl:py-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" class="w-6 h-6">
                                        <path
                                            d="M12 2a5.9 5.9 0 0 1 6 6c0 3.314-2.686 6-6 6s-6-2.686-6-6a5.9 5.9 0 0 1 6-6zm0 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4zM21 21v-2a4 4 0 0 0-4-4H7a4 4 0 0 0-4 4v2">
                                        </path>
                                    </svg>
                                    <span class="font-medium text-gray-500">Sebastian Hernandez Tellez.</span>
                                </li>
                                <li class="flex items-center py-2 space-x-4 xl:py-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none"
                                        stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                        stroke-linejoin="round" class="w-6 h-6">
                                        <path
                                            d="M12 2a5.9 5.9 0 0 1 6 6c0 3.314-2.686 6-6 6s-6-2.686-6-6a5.9 5.9 0 0 1 6-6zm0 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4zM21 21v-2a4 4 0 0 0-4-4H7a4 4 0 0 0-4 4v2">
                                        </path>
                                    </svg>
                                    <span class="font-medium text-gray-500">Nestor Leyton Latorre.</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="w-full px-3 mb-12 lg:w-1/2 order-0 lg:order-1 lg:mb-0"><img
                            class="mx-auto sm:max-w-sm lg:max-w-full"
                            src="https://cdn.devdojo.com/images/november2020/feature-graphic.png" alt="feature image">
                    </div>
                </div>
            </div>
        </section>
        <!-- Section 5 -->
        <section class="bg-white">
            <div class="max-w-screen-xl px-4 py-12 mx-auto space-y-8 overflow-hidden sm:px-6 lg:px-8">
                <nav class="flex flex-wrap justify-center -mx-5 -my-2">
                    <div class="px-5 py-2">
                        <a href="#" class="text-base leading-6 text-gray-500 hover:text-gray-900">
                            About
                        </a>
                    </div>
                    <div class="px-5 py-2">
                        <a href="#" class="text-base leading-6 text-gray-500 hover:text-gray-900">
                            Blog
                        </a>
                    </div>
                    <div class="px-5 py-2">
                        <a href="#" class="text-base leading-6 text-gray-500 hover:text-gray-900">
                            Team
                        </a>
                    </div>
                    <div class="px-5 py-2">
                        <a href="#" class="text-base leading-6 text-gray-500 hover:text-gray-900">
                            Pricing
                        </a>
                    </div>
                    <div class="px-5 py-2">
                        <a href="#" class="text-base leading-6 text-gray-500 hover:text-gray-900">
                            Contact
                        </a>
                    </div>
                    <div class="px-5 py-2">
                        <a href="#" class="text-base leading-6 text-gray-500 hover:text-gray-900">
                            Terms
                        </a>
                    </div>
                </nav>
                <div class="flex justify-center mt-8 space-x-6">
                    <a href="#" class="text-gray-400 hover:text-gray-500">
                        <span class="sr-only">Facebook</span>
                        <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd"
                                d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z"
                                clip-rule="evenodd"></path>
                        </svg>
                    </a>
                    <a href="" class="text-gray-400 hover:text-gray-500">
                        <span class="sr-only">Instagram</span>
                        <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd"
                                d="M12.315 2c2.43 0 2.784.013 3.808.06 1.064.049 1.791.218 2.427.465a4.902 4.902 0 011.772 1.153 4.902 4.902 0 011.153 1.772c.247.636.416 1.363.465 2.427.048 1.067.06 1.407.06 4.123v.08c0 2.643-.012 2.987-.06 4.043-.049 1.064-.218 1.791-.465 2.427a4.902 4.902 0 01-1.153 1.772 4.902 4.902 0 01-1.772 1.153c-.636.247-1.363.416-2.427.465-1.067.048-1.407.06-4.123.06h-.08c-2.643 0-2.987-.012-4.043-.06-1.064-.049-1.791-.218-2.427-.465a4.902 4.902 0 01-1.772-1.153 4.902 4.902 0 01-1.153-1.772c-.247-.636-.416-1.363-.465-2.427-.047-1.024-.06-1.379-.06-3.808v-.63c0-2.43.013-2.784.06-3.808.049-1.064.218-1.791.465-2.427a4.902 4.902 0 011.153-1.772A4.902 4.902 0 015.45 2.525c.636-.247 1.363-.416 2.427-.465C8.901 2.013 9.256 2 11.685 2h.63zm-.081 1.802h-.468c-2.456 0-2.784.011-3.807.058-.975.045-1.504.207-1.857.344-.467.182-.8.398-1.15.748-.35.35-.566.683-.748 1.15-.137.353-.3.882-.344 1.857-.047 1.023-.058 1.351-.058 3.807v.468c0 2.456.011 2.784.058 3.807.045.975.207 1.504.344 1.857.182.466.399.8.748 1.15.35.35.683.566 1.15.748.353.137.882.3 1.857.344 1.054.048 1.37.058 4.041.058h.08c2.597 0 2.917-.01 3.96-.058.976-.045 1.505-.207 1.858-.344.466-.182.8-.398 1.15-.748.35-.35.566-.683.748-1.15.137-.353.3-.882.344-1.857.048-1.055.058-1.37.058-4.041v-.08c0-2.597-.01-2.917-.058-3.96-.045-.976-.207-1.505-.344-1.858a3.097 3.097 0 00-.748-1.15 3.098 3.098 0 00-1.15-.748c-.353-.137-.882-.3-1.857-.344-1.023-.047-1.351-.058-3.807-.058zM12 6.865a5.135 5.135 0 110 10.27 5.135 5.135 0 010-10.27zm0 1.802a3.333 3.333 0 100 6.666 3.333 3.333 0 000-6.666zm5.338-3.205a1.2 1.2 0 110 2.4 1.2 1.2 0 010-2.4z"
                                clip-rule="evenodd"></path>
                        </svg>
                    </a>
                    <a href="" class="text-gray-400 hover:text-gray-500">
                        <span class="sr-only">Twitter</span>
                        <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24">
                            <path
                                d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84">
                            </path>
                        </svg>
                    </a>
                    <a href="" class="text-gray-400 hover:text-gray-500">
                        <span class="sr-only">GitHub</span>
                        <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd"
                                d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
                                clip-rule="evenodd"></path>
                        </svg>
                    </a>
                    <a href="" class="text-gray-400 hover:text-gray-500">
                        <span class="sr-only">Dribbble</span>
                        <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd"
                                d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10c5.51 0 10-4.48 10-10S17.51 2 12 2zm6.605 4.61a8.502 8.502 0 011.93 5.314c-.281-.054-3.101-.629-5.943-.271-.065-.141-.12-.293-.184-.445a25.416 25.416 0 00-.564-1.236c3.145-1.28 4.577-3.124 4.761-3.362zM12 3.475c2.17 0 4.154.813 5.662 2.148-.152.216-1.443 1.941-4.48 3.08-1.399-2.57-2.95-4.675-3.189-5A8.687 8.687 0 0112 3.475zm-3.633.803a53.896 53.896 0 013.167 4.935c-3.992 1.063-7.517 1.04-7.896 1.04a8.581 8.581 0 014.729-5.975zM3.453 12.01v-.26c.37.01 4.512.065 8.775-1.215.25.477.477.965.694 1.453-.109.033-.228.065-.336.098-4.404 1.42-6.747 5.303-6.942 5.629a8.522 8.522 0 01-2.19-5.705zM12 20.547a8.482 8.482 0 01-5.239-1.8c.152-.315 1.888-3.656 6.703-5.337.022-.01.033-.01.054-.022a35.318 35.318 0 011.823 6.475 8.4 8.4 0 01-3.341.684zm4.761-1.465c-.086-.52-.542-3.015-1.659-6.084 2.679-.423 5.022.271 5.314.369a8.468 8.468 0 01-3.655 5.715z"
                                clip-rule="evenodd"></path>
                        </svg>
                    </a>
                </div>
                <p class="mt-8 text-base leading-6 text-center text-gray-400">
                    © 2023 GRUPO 3, All rights reserved.
                </p>
            </div>
        </section>
        <script src="script.js"></script>
        <script src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>

    </body>

    </html>