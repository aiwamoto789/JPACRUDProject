package com.skilldistillery.roster.data;

import java.util.List;

import com.skilldistillery.roster.entities.Player;

public interface RosterDAO {
	public Player findbyName(String name);
	public List<Player> findUpForContract(String contractYear);
	public List<Player> findbyPosition(String position);
	public Player create(Player player);
	public Player update(int id, Player player);
	public boolean cut(int id);
	public List<Player> getAllPlayers();
	Player findById(int id);
}
