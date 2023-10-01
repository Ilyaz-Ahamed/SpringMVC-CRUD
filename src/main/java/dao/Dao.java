package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.web.bind.annotation.ModelAttribute;

import dto.Dto;

public class Dao {
EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
EntityManager em=emf.createEntityManager();
EntityTransaction et=em.getTransaction();

	public void insert(@ModelAttribute  Dto dto) {
		et.begin();
		em.persist(dto);
		et.commit();
		
	}

	public String delete(int id) {
		Dto dt=em.find(Dto.class, id);
		if(dt!=null) {
		et.begin();
		em.remove(dt);
		et.commit();
		return "data deleted";
		}else {
			return "data not found";
		}
	}

public List<Dto> fetchall() {
	return em.createQuery("select data from Dto data ").getResultList();
	
}

public Dto fetchid(int id) {
	return em.find(Dto.class, id);
	
}

public void update(Dto d) {
	et.begin();
	em.merge(d);
	et.commit();
	
}
	
}
