package com.skilldistillery.JPARoster.data;

import com.skilldistillery.JPARoster.entities.Player;

public interface RosterDAO {
	public Player findbyName(String name);
	public Player findUpForContract(Boolean contractYear);
	public Player findbyPosition(String position);
	public Player create(Player player);
	public Player update(int id, Player player);
	public Player cut(int id);
}
