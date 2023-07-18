        AOS.init();

	document.addEventListener('DOMContentLoaded', function () {
	    // Obtener referencias a los elementos del formulario
	    const form = document.getElementById('saveCapacitacion');
	    const nombreCapacitacionInput = document.getElementById('nombreCapacitacion');
	    const rutClienteInput = document.getElementById('rutCliente');
	    const diaCapacitacionInput = document.getElementById('diaCapacitacion');
	    const horaCapacitacionInput = document.getElementById('horaCapacitacion');
	    const lugarCapacitacionInput = document.getElementById('lugarCapacitacion');
	    const duracionCapacitacionInput = document.getElementById('duracionCapacitacion');
	    const cantidadAsistentesInput = document.getElementById('cantidadAsistentes');
	    const btnSubmit = document.getElementById('btnSubmit');
	  
	    // Agregar evento de escucha para el envío del formulario
	    form.addEventListener('submit', function (event) {
	      // Verificar la validez de cada campo
	      let isValid = true;
	  
	      if (nombreCapacitacionInput.value.trim() === '') {
	        showErrorMessage(nombreCapacitacionInput, 'Por favor, ingrese el nombre de la capacitación.');
	        isValid = false;
	      } else {
	        hideErrorMessage(nombreCapacitacionInput);
	      }
	  
	      if (rutClienteInput.value.trim() === '') {
	        showErrorMessage(rutClienteInput, 'Por favor, ingrese el rut del cliente.');
	        isValid = false;
	      } else {
	        hideErrorMessage(rutClienteInput);
	      }
	  
	      const diaCapacitacion = diaCapacitacionInput.value.toLowerCase();
	      const diasPermitidos = ['lunes', 'martes', 'miércoles', 'jueves', 'viernes', 'sábado', 'domingo'];
	      if (!diasPermitidos.includes(diaCapacitacion)) {
	        showErrorMessage(diaCapacitacionInput, 'Por favor, seleccione un día válido.');
	        isValid = false;
	      } else {
	        hideErrorMessage(diaCapacitacionInput);
	      }
	  
	      const horaCapacitacion = horaCapacitacionInput.value;
	      if (!isValidTime(horaCapacitacion)) {
	        showErrorMessage(horaCapacitacionInput, 'Por favor, ingrese una hora válida en formato HH:MM.');
	        isValid = false;
	      } else {
	        hideErrorMessage(horaCapacitacionInput);
	      }
	  
	      if (lugarCapacitacionInput.value.trim() === '') {
	        showErrorMessage(lugarCapacitacionInput, 'Por favor, ingrese el lugar de la capacitación.');
	        isValid = false;
	      } else if (lugarCapacitacionInput.value.trim().length < 10 || lugarCapacitacionInput.value.trim().length > 50) {
	        showErrorMessage(lugarCapacitacionInput, 'El lugar debe tener entre 10 y 50 caracteres.');
	        isValid = false;
	      } else {
	        hideErrorMessage(lugarCapacitacionInput);
	      }
	  
	      if (duracionCapacitacionInput.value.trim().length > 70) {
	        showErrorMessage(duracionCapacitacionInput, 'La duración debe tener como máximo 70 caracteres.');
	        isValid = false;
	      } else {
	        hideErrorMessage(duracionCapacitacionInput);
	      }
	  
	      const cantidadAsistentes = parseInt(cantidadAsistentesInput.value, 10);
	      if (isNaN(cantidadAsistentes) || cantidadAsistentes < 1 || cantidadAsistentes >= 1000) {
	        showErrorMessage(cantidadAsistentesInput, 'Por favor, ingrese un número entero menor a 1000.');
	        isValid = false;
	      } else {
	        hideErrorMessage(cantidadAsistentesInput);
	      }
	  
	      // Deshabilitar el envío del formulario si no es válido
	      if (!isValid) {
	        event.preventDefault();
	      }
	    });
	  
	    // Función para mostrar un mensaje de error debajo del campo
	    function showErrorMessage(input, message) {
	      const errorElement = input.nextElementSibling;
	      errorElement.textContent = message;
	      errorElement.classList.remove('hidden');
	    }
	  
	    // Función para ocultar el mensaje de error
	    function hideErrorMessage(input) {
	      const errorElement = input.nextElementSibling;
	      errorElement.textContent = '';
	      errorElement.classList.add('hidden');
	    }
	  
	    // Función para validar el formato de hora (HH:MM)
	    function isValidTime(timeString) {
	      const timeRegex = /^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/;
	      return timeRegex.test(timeString);
	    }
	  });
	  
	  