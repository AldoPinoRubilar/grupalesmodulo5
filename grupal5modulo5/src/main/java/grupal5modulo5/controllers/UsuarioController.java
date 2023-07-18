package grupal5modulo5.controllers;

import java.util.List;

import grupal5modulo5.controllers.interfaces.IUsuarioController;
import grupal5modulo5.models.entitys.Usuario;
import grupal5modulo5.services.UsuarioService;

public class UsuarioController implements IUsuarioController {

	UsuarioService usuarioService = new UsuarioService();

	@Override
	public List<Usuario> findAllUsuarios() {
		return usuarioService.findAllUsuarios();
	}

	@Override
	public Usuario saveUsuario(Usuario usuario) {
		Usuario savedUsuario = usuarioService.saveUsuario(usuario);

		if (savedUsuario != null) {
			System.out.println("Usuario saved successfully");
		} else {
			System.out.println("Failed to save Usuario");
		}

		return savedUsuario;
	}

	@Override
	public void deleteUsuarioById(int id) {
		boolean isDeleted = usuarioService.deleteUsuarioById(id);

		if (isDeleted) {
			System.out.println("Usuario deleted");
		} else {
			System.out.println("Failed to delete Usuario");
		}

	}

	@Override
	public Usuario updateUsuario(Usuario usuario) {
		return usuarioService.updateUsuario(usuario);
	}

	@Override
	public Usuario findUsuarioById(int id) {
		return usuarioService.findUsuarioById(id);
	}

}