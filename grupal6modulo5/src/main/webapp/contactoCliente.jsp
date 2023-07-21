<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>CONTACTO | Asesorias Grupo 3.</title>
	<jsp:include page="header.jsp"/>
        <!--Section 1-->
        </head>
        <jsp:include page="navbar.jsp"/>
	<!--Section 2-->
		<div class="max-w-screen-md mx-auto p-5 mt-1">
			<div class="text-center mb-16">

				<h3 class="text-3xl sm:text-4xl leading-normal font-extrabold tracking-tight text-gray-900">
					Envianos un <span class="text-indigo-600">Mensaje</span>
				</h3>
			</div>

			<form class="w-full mt-2" action="contactoServlet" method="POST">
				<div class="flex flex-wrap -mx-3 mb-6">
					<div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-first-name">
							Nombre
						</label>
						<input name="nombreContacto" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 
      leading-tight focus:outline-none focus:bg-white" id="grid-first-name" type="text" placeholder="Cosme Fulanito">
						<p class="hidden text-red-500 text-xs italic">Por favor, ingrese su nombre.</p>
					</div>
					<div class="w-full md:w-1/2 px-3">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-last-name">
							Telefono
						</label>
						<input name="telefonoContacto" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight 
      focus:outline-none focus:bg-white focus:border-gray-500" id="grid-last-name" type="text" placeholder="912345678">
      <p class="hidden text-red-500 text-xs italic">Por favor, ingrese su numero de telefono.</p>
					</div>
				</div>
				<div class="flex flex-wrap -mx-3 mb-6">
					<div class="w-full px-3">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-password">
							Correo
						</label>
						<input name="correoContacto" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight 
      focus:outline-none focus:bg-white focus:border-gray-500" id="grid-email" type="email"
							placeholder="correo@dominio.com">
                            <p class="hidden text-red-500 text-xs italic">Por favor, ingrese su correo.</p>
					</div>
				</div>
				<div class="flex flex-wrap -mx-3 mb-6">
					<div class="w-full px-3">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
							for="grid-password">
							Tu mensaje
						</label>
						<textarea name="mensajeContacto" rows="10"
							class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"></textarea>
					</div>
					<div class="flex justify-center w-full px-3">
						<button
							class="shadow bg-indigo-600 hover:bg-indigo-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-6 rounded"
							type="submit">
							Enviar Mensaje
						</button>
					</div>

				</div>

			</form>
		</div>
        
		<a href="ServletHome"
			class="flex items-center mb-19 font-medium text-gray-900 lg:w-auto lg:items-center lg:justify-center md:mb-0">
			<span class="mx-auto text-3xl font-black leading-none text-gray-900 select-none">ASESORIAS<span
					class="text-indigo-600"> GRUPO 3</span></span>
		</a>

		<script src="js/script.js"></script>
		<script src="https://unpkg.com/@themesberg/flowbite@1.1.1/dist/flowbite.bundle.js"></script>

	</body>

</html>