package com.skilldistillery.roster.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.roster.data.RosterDAO;
import com.skilldistillery.roster.entities.Player;

@Controller
public class RosterDAOController {
	
	@Autowired
	private RosterDAO rosterDAO;
	
	@RequestMapping(path="getPlayer.do", method = RequestMethod.GET)
	public ModelAndView findByName(@RequestParam("name")String name) {
		ModelAndView mv = new ModelAndView();
		Player player = rosterDAO.findbyName(name);     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO

	    mv.addObject("player", player);
	    mv.setViewName("/WEB-INF/film/result.jsp");
	    return mv;
	}

	@RequestMapping(path="getPlayer.do", method = RequestMethod.GET)
	public ModelAndView findUpForContract(Boolean contractYear) {
		ModelAndView mv = new ModelAndView();
		List<Player> players = rosterDAO.findUpForContract("true");     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO

	    mv.addObject("player", players);
	    mv.setViewName("/WEB-INF/film/result.jsp");
	    return mv;
	}

	@RequestMapping(path="getPlayer.do", method = RequestMethod.GET)
	public ModelAndView findbyPosition(String position) {
		ModelAndView mv = new ModelAndView();
		Player player = rosterDAO.findbyPosition(position);     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO
		//getResultList()
	    mv.addObject("player", player);
	    mv.setViewName("/WEB-INF/Roster/result.jsp");
	    return mv;
	}

	@RequestMapping(path="createPlayer.do", method = RequestMethod.POST)
	public Player create(Player player) {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping(path="updatePlayer.do", method = RequestMethod.POST)
	public Player update(int id, Player player) {
		// TODO Auto-generated method stub
		return null;
	}

	@RequestMapping(path="cutPlayer.do", method = RequestMethod.POST)
	public boolean cut(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
