package com.skilldistillery.JPARoster.controllers;

import org.springframework.stereotype.Controller;

import com.skilldistillery.JPARoster.data.RosterDAO;
import com.skilldistillery.JPARoster.entities.Player;

@Controller
public class RosterDAOController implements RosterDAO {

	@Override
	public Player findbyPosition(String position) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Player create(Player player) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Player update(int id, Player player) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Player cut(int id) {
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

}
