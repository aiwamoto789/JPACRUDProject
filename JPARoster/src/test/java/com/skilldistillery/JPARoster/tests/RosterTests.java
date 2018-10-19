package com.skilldistillery.JPARoster.tests;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.BeforeClass;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class RosterTests {
	private EntityManagerFactory emf;
	private EntityManager em;
	
	@BeforeAll
	void setUpEmf() {
		emf = Persistence.createEntityManagerFactory("JPARoster");
	}
	
	@AfterAll
	void tearDownEmf() throws Exception {
		em.close();
	}
	
	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
	}

	@Test
	void test() {
		fail("Not yet implemented");
	}

}
