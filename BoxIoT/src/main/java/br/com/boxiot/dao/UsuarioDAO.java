package br.com.boxiot.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.boxiot.model.Usuario;

@Repository
public class UsuarioDAO {

	@PersistenceContext
	private EntityManager manager;

	public void save(Usuario usuario) {
		manager.persist(usuario);
	}

	public List<Usuario> list() {
		return manager
				.createQuery("select distinct(u) from Usuario u", Usuario.class)
				.getResultList();
	}

	public Usuario obterUsuario(int id) {
		return manager
				.createQuery("select distinct(u) from Usuario u where u.id = "+id, Usuario.class)
				.getSingleResult();
	}

}
