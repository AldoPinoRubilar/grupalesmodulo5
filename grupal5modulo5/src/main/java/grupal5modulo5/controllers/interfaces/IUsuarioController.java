package grupal5modulo5.controllers.interfaces;

import java.util.List;

import grupal5modulo5.models.entitys.Usuario;

public interface IUsuarioController {

	public List<Usuario> findAllUsuarios();

	// crear
	public Usuario saveUsuario(Usuario usuario);

	// eliminar por id
	public void deleteUsuarioById(int id);

	// actualizar
	public Usuario updateUsuario(Usuario usuario);

	// para poder buscar por id
	public Usuario findUsuarioById(int id);

}
