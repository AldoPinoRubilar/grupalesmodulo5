/*codigo para iniciar data - AOS*/
AOS.init();

/*funcion para cargar la pagina haciendo focus en el input usuario*/
window.addEventListener('DOMContentLoaded', (event) => {
    document.getElementById('nombreUsuario').focus();
});
/*FIN funcion focus*/

/*funcion simple para validar usuario vacio*/
var usuarioInput = document.getElementById("nombreUsuario");
usuarioInput.addEventListener('blur', function () {
    if (usuarioInput.value.trim() === '') {
        mensajeErrorUsuarioVacio.classList.remove("hidden");
        nombreUsuario.classList.replace("border-gray-500", "border-red-500");
        return false;
    } else {
        mensajeErrorUsuarioVacio.classList.add("hidden");
        return true;
    }
});

/*funcion simple para validar clave vacia*/
var passwordInput = document.getElementById("claveUsuario");
/*Evento blur: se dispara cuando el campo de entrada de usuario pierde el enfoque*/
passwordInput.addEventListener('blur', function () {
    if (passwordInput.value.trim() === '') {
        mensajeErrorClaveVacia.classList.remove("hidden");
        claveUsuario.classList.replace("border-gray-500", "border-red-500");
        return false;
    } else {
        mensajeErrorClaveVacia.classList.add("hidden");
        return true;
    }
});