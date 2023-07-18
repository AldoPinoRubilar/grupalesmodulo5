package grupal7modulo5.controllers.interfaces;

import java.util.List;

import grupal7modulo5.models.entitys.Usuario;

public interface IUsuariosController {
	
	//Listar Usuarios
	public List<Usuario> findAllUser();
	//Mostrar el ultimo usuario registrado
	public List<Usuario> findLastUser();
	//Crear Usuario
	public Usuario saveUser(Usuario usuario);
	//Eliminar usuario por rut
	public void deleteUser(String run);
	//Actualizar Usuario
	public Usuario updateUser(Usuario usuario);
	//Buscar usuario por rut
	public Usuario findUserRun(String run);
}
