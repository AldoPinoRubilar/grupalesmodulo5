<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>

    <title>Listado de Usuarios | GRUPO 3</title>
    <jsp:include page="header.jsp"/>
</head>

<body>
  <!-- Section 1 -->
     <jsp:include page="navbar.jsp"/>
    <!--section 2-->
    <section class="w-full bg-white flex justify-center mt-10">
        <div class="max-w-3xl mx-auto px-0 py-6 justify-center">
            <div class="text-center mb-16 ">

                <h3 class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight text-gray-900">
                    Listado de <span class="text-indigo-600">Usuarios</span>
                </h3>
            </div>
            <div class="pt-4 px-0 flex justify-center">
                <table
                    class="w-full mx-auto striped sm:border sm:border-slate-200 sm:dark:border-slate-800 mt-1 mb-20 dark:border-slate-700">
                    <caption class="caption-bottom text-[11px] mt-4 mb-2">Tabla con informacion de los usuarios
                        registrados en el sistema.
                    </caption>
                    <thead class="hidden border-0 sm:table-header-group">
                        <tr>
                            <th
                                class="hidden sm:table-cell bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs sm:pr-6">
                                Tipo de Usuario</th>
                            <th
                                class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-bold text-white-600 dark:text-white text-left text-xs sm:pl-6">
                                Nombre de&nbsp;Usuario</th>
                            <th
                                class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
                                Rut</th>
                            <th
                                class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
                                Fecha de Nacimiento</th>
                            <th
                                class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
                                Observaciones</th>
                        </tr>
                    </thead>
                    <tbody
						class="divide-y divide-indigo-200 bg-white dark:divide-slate-800 dark:bg-transparent">
						<c:forEach var="usu" items="${usuarios}">
							<tr
								class="text-sm border border-slate-200 flex flex-col mb-6 py-1 divide-y divide-y-slate-50 dark:border-slate-800 sm:border-0 sm:table-row sm:mb-0 sm:py-0 dark:divide-slate-800 sm:divide-none">
								
								<td data-label="TipoUsuario"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.825rem] before:uppercase before:sm:pl-6">
									<span class="text-slate-800 font-semibold text-[1rem] uppercase">${usu.tipoUsuario}</span>
								</td>
								<td data-label="nombreUsuario"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
									<c:out value=""></c:out> <span
									class="text-slate-800 font-semibold">${usu.nombre}</span>

								</td>
								<td data-label="RutUsuario"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
									<span class="text-slate-800 font-semibold">${usu.run}</span>
								</td>
								<td data-label="FechaDeNacimiento"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
								<span class="text-slate-800 font-semibold">${usu.fechaNacimiento}</span>
								</td>
							</tr>
						</c:forEach>
					</tbody>
                </table>

            </div>
        </div>

    </section>
    <a href="ServletHome"
        class="flex items-center font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center mb-0 md:mb-0">
        <span class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
                class="text-indigo-600"> GRUPO 3</span></span>
    </a>

    <script src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>
</body>

</html>