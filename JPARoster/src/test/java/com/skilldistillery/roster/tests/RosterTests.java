package com.skilldistillery.roster.tests;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.roster.entities.Player;

class RosterTests {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Player player;
	
	@BeforeAll
	static void setUpEmf() {
		emf = Persistence.createEntityManagerFactory("RosterDB");
	}
	
	@AfterAll
	static void tearDownEmf() throws Exception {
		emf.close();
	}
	
	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		player = em.find(Player.class, 39);
		System.out.println(player);
	}
	@AfterEach
	void tearDown() throws Exception{
		em.close();
	}

	@Test
	void test() {
		assertEquals("Von Miller", player.getPlayerName());
	}

}
