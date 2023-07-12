<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Sitio en Desarrollo | Asesorias Grupo 3.</title>
	<jsp:include page="header.jsp"/>
	</head>
<body>

   <jsp:include page="navbar.jsp"/>
<!--Section 2-->
    <section class="bg-white px-8">
        <div class="container mx-auto max-w-screen-md p-5">
            <div class="text-center mb-10">
                <div class="text-5xl font-black leading-none text-orange-500 select-none">
                    Lo sentimos<br>
                    Este sitio est&aacute; en <span class="text-slate-800">Construcción</span>
                </div>
            </div>
            <!-- Boton volver -->
            <div class="flex flex-col items-center mb-9">
                <img src="img/enDesarrollo.gif" class="w-full max-w-sm mb-4 lg:w-full">
                <a href="ServletHome" class="w-full max-w-sm inline-block">
                    <button class="w-full px-6 py-2 font-bold text-white bg-indigo-600 rounded shadow hover:bg-indigo-400 focus:outline-none focus:shadow-outline">
                        Volver al Home
                    </button>
                </a>
            </div>
        </div>
    </section>

    <a href="ServletHome" class="flex items-center mb-19 font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center md:mb-0">
        <span class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span class="text-indigo-600"> GRUPO 3</span></span>
    </a>
    <script src="script.js"></script>
    <script src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>
</body>
</html>