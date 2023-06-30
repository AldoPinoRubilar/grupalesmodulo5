package grupal4modulo5.controllers.interfaces;

import java.util.List;

import grupal4modulo5.models.entitys.Usuario;

public interface IUserController {

	public List<Usuario> findAllUsers();

	// crear
	public Usuario saveUser(Usuario usuario);

	// eliminar
	public void deleteUserById(int id);

	// actualizar
	public Usuario updateUser(Usuario usuario);

	// para poder buscar a un user
	public Usuario findByIdUser(int id);

}