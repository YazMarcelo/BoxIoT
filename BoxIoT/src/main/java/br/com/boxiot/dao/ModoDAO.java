package br.com.boxiot.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.boxiot.model.Item;
import br.com.boxiot.model.Local;
import br.com.boxiot.model.Modo;
import br.com.boxiot.model.Usuario;

@Repository
public class ModoDAO {

	@PersistenceContext
	private EntityManager manager;

	public void save(Modo modo) {
		if(modo.getId() != null) {
			manager.merge(modo);
		} else {
			manager.persist(modo);	
		}
	}

	public List<Modo> list() {
		return manager
				.createQuery("select distinct(m) from Modo m where m.excluido = false", Modo.class)
				.getResultList();
	}

	public Modo obterModo(int id) {
		return manager
				.createQuery("select distinct(m) from Modo m where m.id = "+id+" and m.excluido = false", Modo.class)
				.getSingleResult();
	}
	
	public void delete(Modo modo) {
		manager.remove(modo);
	}

}
