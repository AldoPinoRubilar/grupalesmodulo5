AOS.init();

document.addEventListener('DOMContentLoaded', function () {
    // Obtener referencias a los elementos del formulario Capacitacion
    const formCapacitacion = document.getElementById('saveCapacitacion');
    const nombreCapacitacionInput = document.getElementById('nombreCapacitacion');
    const rutClienteInput = document.getElementById('rutCliente');
    const diaCapacitacionInput = document.getElementById('diaCapacitacion');
    const horaCapacitacionInput = document.getElementById('horaCapacitacion');
    const lugarCapacitacionInput = document.getElementById('lugarCapacitacion');
    const duracionCapacitacionInput = document.getElementById('duracionCapacitacion');
    const cantidadAsistentesInput = document.getElementById('cantidadAsistentes');
    const btnSubmitCrearCapacitacion = document.getElementById('btnSubmitCrearCapacitacion');

    // Obtener referencias a los elementos del formulario Usuario
    const formUsuario = document.getElementById('saveUsuario');
    const nombreUsuarioInput = document.getElementById("nombreUsuario");
    const fechaNacimientoInput = document.getElementById("fechaNacimiento");
    const rutUsuarioInput = document.getElementById("rutUsuario");
    const btnSubmitCrearUsuario = document.getElementById('btnSubmitCrearUsuario');

    // Agregar evento de escucha para el envío del formulario Capacitacion
    formCapacitacion.addEventListener('submit', function (event) {
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

    // Agregar evento de escucha para el envío del formulario Cliente
    formUsuario.addEventListener('submit', function (event) {
        // Verificar la validez de cada campo
        let isValid = true;

        // Validación del campo Nombre
        if (nombreUsuarioInput.value.trim().length < 10 || nombreUsuarioInput.value.trim().length > 50) {
            showErrorMessage(nombreUsuarioInput, 'El campo Nombre debe tener entre 10 y 50 caracteres.');
            isValid = false;
        } else {
            hideErrorMessage(nombreUsuarioInput);
        }

        // Validación del campo Fecha de Nacimiento
        if (!/^(\d{2})\/(\d{2})\/(\d{4})$/.test(fechaNacimientoInput.value)) {
            showErrorMessage(fechaNacimientoInput, 'El campo Fecha de Nacimiento debe tener el formato DD/MM/AAAA.');
            isValid = false;
        } else {
            hideErrorMessage(fechaNacimientoInput);
        }

        // Validación del campo RUN
        const rutValue = rutUsuarioInput.value.replace(/\./g, '').replace('-', ''); // Eliminar puntos y guiones
        if (isNaN(parseInt(rutValue)) || parseInt(rutValue) >= 100000000) {
            showErrorMessage(rutUsuarioInput, 'El campo RUN debe ser un número menor a 99.999.999.');
            isValid = false;
        } else {
            hideErrorMessage(rutUsuarioInput);
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
