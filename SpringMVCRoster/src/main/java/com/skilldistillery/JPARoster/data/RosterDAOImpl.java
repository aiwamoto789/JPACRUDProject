package com.skilldistillery.JPARoster.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.skilldistillery.JPARoster.entities.Player;

@Transactional
@Repository
public class RosterDAOImpl implements RosterDAO {

	@PersistenceContext
	EntityManager em;

	@Override
	public Player findbyName(String name) {
		Player playerName = em.find(Player.class, name);
		if (playerName != null) {
		}
		return playerName;
	}

	@Override
	public Player findUpForContract(Boolean contractYear) {
		Player playerContract = em.find(Player.class, contractYear);
		if (playerContract != null) {
		}
		return playerContract;
	}

	@Override
	public Player findbyPosition(String position) {
		Player playerPosition = em.find(Player.class, position);
		if (playerPosition != null) {
		}
		return playerPosition;
	}

	@Override
	public Player create(Player player) {
		// start the transaction
		em.getTransaction().begin();
		// write the actor to the database
		em.persist(player);
		// update the "local" Actor object
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
		if (deletePlayer != null) {
			em.remove(deletePlayer);
			return true;
		} else {
			em.getTransaction().rollback();
			return false;
		}
	}

}
