window.addEventListener('DOMContentLoaded', (event) => {
    document.getElementById('nombreUsuario').focus();
});

var usuarioInput = document.getElementById("nombreUsuario");
usuarioInput.addEventListener('blur', function () {
    if (usuarioInput.value.trim() === '') {
        mensajeErrorUsuarioVacio.classList.remove("hidden");
        nombreUsuario.classList.replace("border-gray-500", "border-red-500");
    } else {
        mensajeErrorUsuarioVacio.classList.add("hidden");
        nombreUsuario.classList.replace("border-red-500", "border-indigo-500");
    }
});

var passwordInput = document.getElementById("claveUsuario");
var mensajeErrorPassword = document.getElementById("mensajeErrorClaveVacia");
passwordInput.addEventListener('blur', function () {
    if (passwordInput.value.trim() === '') {
        mensajeErrorClaveVacia.classList.remove("hidden");
        claveUsuario.classList.replace("border-gray-500", "border-red-500");
    } else {
        mensajeErrorClaveVacia.classList.add("hidden");
        claveUsuario.classList.replace("border-red-500", "border-indigo-500");
    }
});
