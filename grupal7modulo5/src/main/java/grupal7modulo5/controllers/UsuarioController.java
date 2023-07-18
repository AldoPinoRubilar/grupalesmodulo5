package grupal7modulo5.controllers;

import java.util.List;

import grupal7modulo5.controllers.interfaces.IUsuariosController;
import grupal7modulo5.models.entitys.Usuario;
import grupal7modulo5.services.UsuarioService;

public class UsuarioController implements IUsuariosController {

	UsuarioService usuarioService = new UsuarioService();

	@Override
	public List<Usuario> findAllUser() {
		return usuarioService.findAllUser();
	}

	@Override
	public Usuario saveUser(Usuario usuario) {
		Usuario savedUsuario = usuarioService.saveUser(usuario);

		if (savedUsuario != null) {
			System.out.println("User saved successfully");
		} else {
			System.out.println("Failed to save User");
		}

		return savedUsuario;
	}

	@Override
	public void deleteUser(String run) {
		boolean isDeleted = usuarioService.deleteUser(run);

		if (isDeleted) {
			System.out.println("User deleted");
		} else {
			System.out.println("Failed to delete User");
		}
	}

	@Override
	public Usuario updateUser(Usuario usuario) {
		return usuarioService.updateUser(usuario);
	}

	@Override
	public Usuario findUserRun(String run) {
		return usuarioService.findUserRun(run);
	}

	@Override
	public List<Usuario> findLastUser() {
		return usuarioService.findLastUser();
	}
}
