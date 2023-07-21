    AOS.init();

    document.addEventListener('DOMContentLoaded', function () {
        // Obtener referencias a los elementos del formulario Usuario
        const formUsuario = document.getElementById('saveUsuario');
        const nombreUsuarioInput = document.getElementById("nombreUsuario");
        const fechaNacimientoInput = document.getElementById("fechaNacimiento");
        const rutUsuarioInput = document.getElementById("rutUsuario");
        const btnSubmitCrearUsuario = document.getElementById('btnSubmitCrearUsuario');

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

            // Convertir la fecha de nacimiento al formato AAAA/MM/DD
            if (isValid) {
                const fechaNacimientoValue = fechaNacimientoInput.value;
                const fechaNacimientoFormatted = convertToAAAAMMDD(fechaNacimientoValue);
                fechaNacimientoInput.value = fechaNacimientoFormatted;
            } else {
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

        // Función para convertir la fecha al formato AAAA/MM/DD
        function convertToAAAAMMDD(dateString) {
            const parts = dateString.split('/');
            if (parts.length === 3) {
                const day = parts[0].padStart(2, '0');
                const month = parts[1].padStart(2, '0');
                const year = parts[2];
                return `${year}/${month}/${day}`;
            } else {
                return dateString; // Si la fecha no está en el formato esperado, se devuelve tal cual
            }
        }
    });
