package com.skilldistillery.JPARoster.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RosterEntities {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int player_id;
	private String player_name;
	private String position;
}
