package com.skilldistillery.JPARoster.controllers;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Controller;

import com.skilldistillery.JPARoster.data.RosterDAO;
import com.skilldistillery.JPARoster.entities.Player;

@Controller
public class RosterDAOController implements RosterDAO {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("VideoStore");
	@PersistenceContext
	EntityManager em = emf.createEntityManager();
	
	@Override
	public Player create(Player player) {
		em.getTransaction().begin();
		// write the player to the database
		em.persist(player);
		// update the "local" Player object
		em.flush();
		// commit the changes (actually perform the operation)
		em.getTransaction().commit();
		return player;
	}


	@Override
	public Player update(int id, Player player) {
		em.getTransaction().begin();

		// retrieve a "managed" player entity
		Player managedPlayer = em.find(Player.class, id);

		if (managedPlayer != null) {
			// update the values of the managed Player entity
			managedPlayer.setPlayerName(player.getPlayerName());
			managedPlayer.setPosition(player.getPosition());
			managedPlayer.setRosterStatus(player.getRosterStatus());
			managedPlayer.setNumber(player.getNumber());
			managedPlayer.setHeight(player.getHeight());
			managedPlayer.setWeight(player.getWeight());
			managedPlayer.setAge(player.getAge());
			managedPlayer.setExperience(player.getExperience());
			managedPlayer.setContractYear(player.isContractYear());
			managedPlayer.setCollege(player.getCollege());
			em.getTransaction().commit();
		}
		em.close();
		return managedPlayer;

	}

	@Override
	public boolean cut(int id) {
		Player deletePlayer = em.find(Player.class, id);
		em.getTransaction().begin();
		if (deletePlayer != null){
			em.remove(deletePlayer);
			em.getTransaction().commit();
			return true;
		}
		else {
			em.getTransaction().rollback();
			return false;
		}
	}

	@Override
	public Player findbyPosition(String position) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Player findbyName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Player findUpForContract(Boolean contractYear) {
		// TODO Auto-generated method stub
		return null;
	}
	public void close() {
		emf.close();
	}

}
