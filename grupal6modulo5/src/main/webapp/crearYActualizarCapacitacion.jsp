<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>
<head>
	<title>CREAR CAPACITACION | Asesorias Grupo 3.</title>
	<jsp:include page="header.jsp"/>
	</head>
	<body>
	
        <!--Section 1-->
       <jsp:include page="navbar.jsp"/>
<!--Section 2-->
<section id="crearCapacitacion" class="w-full px-8 text-gray-700 bg-white">
		<div class="max-w-screen-md mx-auto p-5">
			<div class="text-center mb-10">
				<h3 class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight text-gray-900">
					Crear <span class="text-indigo-600"> Capacitación</span>
				</h3>
			</div>

			<!-- Formulario -->
			<form class="w-full" action="ServletCrudCapacitacion" method="POST" id="saveCapacitacion">
				<div class="flex flex-wrap -mx-3 mb-6 mt-0">
					<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-nombre-capacitacion">
							Nombre de la Capacitación
						</label>
						<input name="nombreCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="nombreCapacitacion" type="text" placeholder="Manejo de extintores">
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>
					
					<div class="w-full md:w-1/2 px-3">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-rutCliente">
							Rut Cliente
						</label>
						<input name="rutCliente" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="rutCliente" type="text" placeholder="12.345.678-9">
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>
					
					<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-dia-capacitacion">
							Día Capacitación
						</label>
						<select name="diaCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="diaCapacitacion">
							<option value="" disabled selected>Seleccione un Día</option>
                            <option value="Lunes">Lunes</option>
							<option value="Martes">Martes</option>
							<option value="Miércoles">Miércoles</option>
							<option value="Jueves">Jueves</option>
							<option value="Viernes">Viernes</option>
							<option value="Sábado">Sábado</option>
							<option value="Domingo">Domingo</option>
						</select>
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>
					
					<div class="w-full md:w-1/2 px-3">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-hora-capacitacion">
							Hora Capacitación
						</label>
						<input name="horaCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="horaCapacitacion"  type="time" id="appt" name="appt"
                        min="09:00" max="18:00" value="">
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>
					
					<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-lugar-capacitacion">
							Lugar
						</label>
						<input name="lugarCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="lugarCapacitacion" type="text" placeholder="Sala de reuniones 1" value="">
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>
					
					<div class="w-full md:w-1/2 px-3">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-duracion-capacitacion">
							Duración (En minutos)
						</label>
						<input name="duracionCapacitacion" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="duracionCapacitacion" type="text" placeholder="40">
						<p class="hidden text-red-500 text-xs italic"></p>
					</div>
					
					<div class="w-full md:w-1/2 px-3">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-cantAsistentes-capacitacion">
							Cantidad de asistentes
						</label>
						<input name="cantidadAsistentes" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="cantidadAsistentes" type="text" placeholder="50" value="">
                        <p class="hidden text-red-500 text-xs italic"></p>
					</div>
				</div>

				<div class="flex flex-wrap -mx-3 mb-6">
					<input type="hidden" name="option" value="saveCapacitacion">
					<div class="flex justify-center w-full px-3 mt-5">
						<button id="btnSubmitCrearCapacitacion" class="shadow bg-indigo-600 hover:bg-indigo-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-6 rounded" type="submit">
							Crear Capacitación
						</button>
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