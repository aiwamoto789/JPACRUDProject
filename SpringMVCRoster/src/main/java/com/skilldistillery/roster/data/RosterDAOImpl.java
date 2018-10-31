package com.skilldistillery.roster.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.skilldistillery.roster.entities.Player;

@Transactional
@Repository
public class RosterDAOImpl implements RosterDAO {

	@PersistenceContext
	EntityManager em;

	@Override
	public Player findbyName(String name) {
		String query = "SELECT player FROM Player player WHERE player.playerName= :name";
		Player playerName = em.createQuery(query, Player.class).setParameter("name", name).getSingleResult();
		return playerName;

	}
	
	@Override
	public Player findById(int id) {
		Player player = em.find(Player.class, id);
		return player;
	}

	@Override
	public List<Player> getAllPlayers() {
		String query = "SELECT player FROM Player player";
		List<Player> players = em.createQuery(query, Player.class).getResultList();
		return players;
	}

	@Override
	public List<Player> findUpForContract(String contractYear) {
		String query = "SELECT p FROM Player p WHERE p.contractYear = :true";
		List<Player> playerContract = em.createQuery(query, Player.class)
				.setParameter("true", contractYear).getResultList();
		System.out.println(playerContract);
		return playerContract;
	}

	@Override
	public List<Player> findbyPosition(String position) {
		String query = "SELECT player FROM Player player WHERE player.position = :position";
		List<Player> playerPosition = em.createQuery(query, Player.class)
				.setParameter("position", position)
				.getResultList();

		return playerPosition;
	}

	@Override
	public Player create(Player player) {

		// start the transaction
//		em.getTransaction().begin();
		// write the actor to the database
		if (player != null) {
			System.out.println(player);
			em.persist(player);
			// update the "local" Player object
			em.flush();
			// commit the changes (actually perform the operation)
//		em.getTransaction().commit();
//		em.close();
			return player;
		} else
			return null;
	}

	@Override
	public Player update(int id, Player player) {
	
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
			managedPlayer.setContractYear(player.getContractYear());
			managedPlayer.setCollege(player.getCollege());
			em.persist(managedPlayer);
			em.flush();
		}
		return managedPlayer;
		
	}

	@Override
	public boolean cut(int id) {
		Player deletePlayer = em.find(Player.class, id);
		if (deletePlayer != null) {
			em.remove(deletePlayer);
			return true;
		} else {
			return false;
		}
	}

}
