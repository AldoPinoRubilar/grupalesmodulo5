<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="grupal7modulo5.models.entitys.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<title>USUARIO REGISTRADO | Asesorias Grupo 3.</title>
	<jsp:include page="header.jsp"/>
	</head>
<body>
	<!-- section 1 -->
	<jsp:include page="navbar.jsp"/>
	<!--section 2-->
	<section class="w-full bg-white flex justify-center mt-10 px-8">
		<div class="max-w-3xl mx-auto px-0 py-6 justify-center">
			<div class="text-center mb-16 ">

				<h3
					class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight text-gray-900">
					Usuario <span class="text-indigo-600">Registrado</span>
				</h3>
			</div>
			<div class="pt-4 px-0 flex justify-center">
				<table
					class="w-full mx-auto striped sm:border border-b sm:border-slate-200 sm:dark:border-slate-800 mt-1 mb-20 dark:border-slate-700">
					<caption class="caption-bottom text-[11px] mt-4 mb-2">Tabla
						con informacion sobre los Usuarios.</caption>
					<thead class="hidden border-0 sm:table-header-group">
						<tr>
							<th
								class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
								Nombre</th>
							<th
								class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
								Run</th>
							<th
								class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
								Fecha Nacimiento</th>
							<th
								class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
								Tipo de Usuario</th>
							<th
								class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
								Opciones</th>
						</tr>
					</thead>
					<tbody
						class="divide-y divide-indigo-200 bg-white dark:divide-slate-800 dark:bg-transparent">
						<c:forEach var="user" items="${usuarios}">
							<tr
								class="text-sm border border-slate-200 flex flex-col mb-6 py-1 divide-y divide-y-slate-50 dark:border-slate-800 sm:border-0 sm:table-row sm:mb-0 sm:py-0 dark:divide-slate-800 sm:divide-none">

								<td data-label="Nombre"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.825rem] before:uppercase before:sm:pl-6">
									<span
									class="text-slate-800 font-semibold text-[1rem] uppercase">${user.nombreUsuario}</span>
								</td>
								<td data-label="run"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
									<c:out value=""></c:out> <span
									class="text-slate-800 font-semibold">${user.run}</span>

								</td>
								<td data-label="fechaNacimiento"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
									<span class="text-slate-800 font-semibold">${user.fechaNacimiento}</span>
								</td>
								<td data-label="tipoUsuario"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
									<span class="text-slate-800 font-semibold">${user.tipoUsuario}</span>
								<td data-label="opciones"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
									<a href="#"
									class="text-slate-800 font-semibold hover:underline hover:text-indigo-900">opciones</a>
								</td>

							</tr>
						</c:forEach>
					</tbody>

				</table>

			</div>
						
            <div class="flex flex-col items-center mb-9">
                <a href="ServletHome" class="w-full max-w-sm inline-block">
                    <button class="w-full px-6 py-2 font-bold text-white bg-indigo-600 rounded shadow hover:bg-indigo-400 focus:outline-none focus:shadow-outline">
                        Volver al Home
                    </button>
                </a>
            </div>
		</div>

	</section>
	<a href="ServletHome"
		class="flex items-center font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center mb-0 md:mb-0">
		<span
		class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
			class="text-indigo-600"> GRUPO 3</span></span>
	</a>

	<script
		src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>
</body>

</html>