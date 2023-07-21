<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="grupal6modulo5.models.entitys.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<title>LISTADO DE CAPACITACIONES | Asesorias Grupo 3.</title>
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
					Listado de <span class="text-indigo-600">Capacitaciones</span>
				</h3>
			</div>
			<div class="pt-4 px-0 flex justify-center">
				<table
					class="w-full mx-auto striped sm:border border-b sm:border-slate-200 sm:dark:border-slate-800 mt-1 mb-20 dark:border-slate-700">
					<caption class="caption-bottom text-[11px] mt-4 mb-2">Tabla
						con informacion sobre las capacitaciones.</caption>
					<thead class="hidden border-0 sm:table-header-group">
						<tr>
							<th
								class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
								Nombre Capacitacion</th>
							<th
								class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
								Identificador</th>
							<th
								class="bg-slate-100 px-4 py-2 tracking-widest dark:bg-indigo-800 border-0 border-b border-slate-100 dark:border-slate-700 uppercase font-medium text-slate-600 dark:text-white text-left text-xs">
								Rut Cliente</th>
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
						</tr>
					</thead>
					<tbody
						class="divide-y divide-indigo-200 bg-white dark:divide-slate-800 dark:bg-transparent">
						<c:forEach var="cap" items="${capacitaciones}">
							<tr
								class="text-sm border border-slate-200 flex flex-col mb-6 py-1 divide-y divide-y-slate-50 dark:border-slate-800 sm:border-0 sm:table-row sm:mb-0 sm:py-0 dark:divide-slate-800 sm:divide-none">
								
								<td data-label="Nombre"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.825rem] before:uppercase before:sm:pl-6">
									<span class="text-slate-800 font-semibold text-[1rem] uppercase">${cap.nombreCapacitacion}</span>
								</td>
								<td data-label="Identificador"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
									<c:out value=""></c:out> <span
									class="text-slate-800 font-semibold">${cap.id}</span>

								</td>
								<td data-label="Rut Cliente"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
									<span class="text-slate-800 font-semibold">${cap.rutCliente}</span>
								</td>
								<td data-label="Dia"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
								<span class="text-slate-800 font-semibold">${cap.dia}</span>
								</td>
								<td data-label="Hora"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
								<span class="text-slate-800 font-semibold">${cap.hora}</span>
								</td>
								<td data-label="Lugar"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
					<span class="text-slate-800 font-semibold">${cap.lugar}</span>
								</td>
								<td data-label="duracion"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">

									<span class="text-slate-800 font-semibold">${cap.duracion}</span>
								</td>
								<td data-label="Cantidad de Asistentes"
									class="text-indigo-700 font-bold flex flex-col px-4 py-2 sm:table-cell sm:py-4 lg:table-cell before:content-[attr(data-label)] sm:before:content-none before:text-[0.625rem] before:uppercase before:sm:pl-6">
									<span class="text-slate-800 font-semibold">${cap.cantidadAsistentes}</span>
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
		<span
		class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
			class="text-indigo-600"> GRUPO 3</span></span>
	</a>

	<script
		src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>
</body>

</html>