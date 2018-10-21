package com.skilldistillery.roster.controllers;

import java.sql.SQLException;
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

	@RequestMapping(path="getPlayers.do", method = RequestMethod.GET)
	public ModelAndView findUpForContract(Boolean contractYear) {
		ModelAndView mv = new ModelAndView();
		List<Player> players = rosterDAO.findUpForContract("true");     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO

	    mv.addObject("player", players);
	    mv.setViewName("/WEB-INF/film/result.jsp");
	    return mv;
	}

	@RequestMapping(path="getPlayers.do", method = RequestMethod.GET)
	public ModelAndView findbyPosition(String position) {
		ModelAndView mv = new ModelAndView();
		List<Player> players = rosterDAO.findbyPosition(position);     
	    // film is unmanaged after it is outside of the transaction that exists in the DAO
		//getResultList()
	    mv.addObject("player", players);
	    mv.setViewName("/WEB-INF/Roster/result.jsp");
	    return mv;
	}

	@RequestMapping(path="createPlayer.do", method = RequestMethod.POST)
	public ModelAndView create(Player player) throws SQLException{
		rosterDAO.create(player);
		ModelAndView mv = new ModelAndView();
		mv.addObject(player);
		mv.setViewName("WEB-INF/views/result.jsp");

		return mv;
	}

	@RequestMapping(path="updatePlayer.do", method = RequestMethod.POST)
	public ModelAndView update(int id, Player player) throws SQLException{
		Player updated = rosterDAO.update(id, player);
		ModelAndView mv = new ModelAndView();
		String msg;
		if (updated != null) {
			msg = "Player was successfuly updated";
		} else {
			msg = "Player was not successfuly updated";
		}
		mv.addObject("message", msg);
		mv.setViewName("WEB-INF/views/editResult.jsp");
		return mv;
	}

	@RequestMapping(path="cutPlayer.do", method = RequestMethod.POST)
	public ModelAndView cut(int id) throws SQLException{
		boolean deleted = rosterDAO.cut(id);
		ModelAndView mv = new ModelAndView();
		String msg;
		if (deleted) {
			msg = "Player is no longer on roster";
		} else {
			msg = "Player was not successfully cut";
		}
		mv.addObject("message", msg);
		mv.setViewName("WEB-INF/views/delete.jsp");
		return mv;
	}

}
