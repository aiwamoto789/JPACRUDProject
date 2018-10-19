package com.skilldistillery.JPARoster.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Player {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="player_id")
	private int playerId;
	@Column(name="player_name")
	private String playerName;
	private String college;
	private String position;
	@Column(name="roster_status")
	private String rosterStatus;
	private int number;
	private double height;
	private int weight;
	private int age;
	private String experience;
	@Column(name="contract_year")
	private boolean contractYear;
	public int getPlayerId() {
		return playerId;
	}
	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}
	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getRosterStatus() {
		return rosterStatus;
	}
	public void setRosterStatus(String rosterStatus) {
		this.rosterStatus = rosterStatus;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public boolean isContractYear() {
		return contractYear;
	}
	public void setContractYear(boolean contractYear) {
		this.contractYear = contractYear;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + age;
		result = prime * result + ((college == null) ? 0 : college.hashCode());
		result = prime * result + (contractYear ? 1231 : 1237);
		result = prime * result + ((experience == null) ? 0 : experience.hashCode());
		long temp;
		temp = Double.doubleToLongBits(height);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + number;
		result = prime * result + playerId;
		result = prime * result + ((playerName == null) ? 0 : playerName.hashCode());
		result = prime * result + ((position == null) ? 0 : position.hashCode());
		result = prime * result + ((rosterStatus == null) ? 0 : rosterStatus.hashCode());
		result = prime * result + weight;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Player other = (Player) obj;
		if (age != other.age)
			return false;
		if (college == null) {
			if (other.college != null)
				return false;
		} else if (!college.equals(other.college))
			return false;
		if (contractYear != other.contractYear)
			return false;
		if (experience == null) {
			if (other.experience != null)
				return false;
		} else if (!experience.equals(other.experience))
			return false;
		if (Double.doubleToLongBits(height) != Double.doubleToLongBits(other.height))
			return false;
		if (number != other.number)
			return false;
		if (playerId != other.playerId)
			return false;
		if (playerName == null) {
			if (other.playerName != null)
				return false;
		} else if (!playerName.equals(other.playerName))
			return false;
		if (position == null) {
			if (other.position != null)
				return false;
		} else if (!position.equals(other.position))
			return false;
		if (rosterStatus == null) {
			if (other.rosterStatus != null)
				return false;
		} else if (!rosterStatus.equals(other.rosterStatus))
			return false;
		if (weight != other.weight)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Player [playerId=" + playerId + ", playerName=" + playerName + ", college=" + college + ", position="
				+ position + ", rosterStatus=" + rosterStatus + ", number=" + number + ", height=" + height
				+ ", weight=" + weight + ", age=" + age + ", experience=" + experience + ", contractYear="
				+ contractYear + "]";
	}
	
}
