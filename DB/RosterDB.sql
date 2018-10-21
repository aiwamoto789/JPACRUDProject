-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema RosterDB
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `RosterDB` ;

-- -----------------------------------------------------
-- Schema RosterDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RosterDB` DEFAULT CHARACTER SET utf8 ;
USE `RosterDB` ;

-- -----------------------------------------------------
-- Table `Roster`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Roster` ;

CREATE TABLE IF NOT EXISTS `Roster` (
  `player_id` INT NOT NULL AUTO_INCREMENT,
  `player_name` VARCHAR(45) NOT NULL,
  `position` VARCHAR(45) NOT NULL,
  `roster_status` VARCHAR(45) NOT NULL,
  `number` INT NULL,
  `height` DOUBLE NOT NULL,
  `weight` INT NOT NULL,
  `age` INT NOT NULL,
  `experience` VARCHAR(30) NOT NULL,
  `contract_year` VARCHAR(45) BINARY NOT NULL,
  `college` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`player_id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS RosterUser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'RosterUser'@'localhost' IDENTIFIED BY 'braintrauma';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'RosterUser'@'localhost';
GRANT SELECT, ALTER, CREATE, INSERT, INDEX, DELETE, UPDATE ON TABLE `RosterDB`.`Roster` TO 'RosterUser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Roster`
-- -----------------------------------------------------
START TRANSACTION;
USE `RosterDB`;
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (1, 'Shaquil Barrett', 'OLB', 'Active', 48, 6.2, 250, 25, '5', 'true', 'Colorado State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (2, 'Keishawn Bierria', 'ILB', 'Active', 40, 6.0, 230, 23, 'R', 'false', 'Washington');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (3, 'Garret Bolles', 'OT', 'Active', 72, 6.5, 297, 26, '3', 'false', 'Utah');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (4, 'Devontae Booker', 'RB', 'Active', 23, 5.11, 219, 26, '3', 'false', 'Utah');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (5, 'Tramaine Brock', 'DB', 'Active', 22, 5.10, 188, 30, '9', 'true', 'North Carolina State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (6, 'Jake Butt', 'TE', 'IR', 80, 6.6, 250, 23, '1', 'false', 'Michigan');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (7, 'Jamal Carter', 'S', 'IR', 20, 6.1, 215, 24, '2', 'false', 'Miami (Fla.)');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (8, 'Bradley Chubb', 'OLB', 'Active', 55, 6.4, 269, 22, 'R', 'false', 'North Carolina State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (9, 'Su\'a Cravens', 'S', 'IR', 21, 6.1, 224, 23, '2', 'false', 'USC');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (10, 'Todd Davis', 'ILB', 'Active', 51, 6.1, 230, 26, '5', 'false', 'Sacramento State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (11, 'Royce Freeman', 'RB', 'Active', 28, 6.0, 229, 22, 'R', 'false', 'Oregon');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (12, 'Troy Fumagalli', 'TE', 'IR', 84, 6.5, 247, 23, 'R', 'false', 'Wisconsin');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (13, 'Max Garcia', 'OG', 'Active', 76, 6.4, 309, 26, '4', 'true', 'Florida');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (14, 'Jerrol Garcia-Williams', 'ILB', 'IR', 52, 6.2, 235, 24, '2', 'true', 'Hawaii');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (15, 'Adam Gotsis', 'DE', 'Active', 99, 6.4, 287, 26, '3', 'false', 'Georgia Tech');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (16, 'DaeSean Hamilton', 'WR', 'Active', 17, 6.1, 203, 23, 'R', 'false', 'Penn State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (17, 'Chris Harris Jr.', 'CB', 'Active', 25, 5.10, 199, 29, '8', 'false', 'Kansas');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (18, 'Shelby Harris', 'NT', 'Active', 96, 6.2, 290, 27, '4', 'true', 'Illinois State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (19, 'Jeff Heuerman', 'TE', 'Active', 82, 6.5, 255, 25, '4', 'true', 'Ohio State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (20, 'Kevin Hogan', 'QB', 'Active', 9, 6.3, 218, 26, '3', 'true', 'Stanford');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (21, 'Andy Janovich', 'FB', 'Active', 32, 6.1, 238, 25, '3', 'false', 'Nebraska');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (22, 'Josey Jewell', 'ILB', 'Active', 47, 6.1, 234, 23, 'R', 'false', 'Iowa');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (23, 'Alexander Johnson', 'LB', 'Active', 45, 6.2, 245, 26, 'R', 'false', 'Tennessee');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (24, 'Adam Jones', 'CB', 'Active', 24, 5.10, 185, 35, '12', 'true', 'West Virginia');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (25, 'Joe Jones', 'ILB', 'Active', 43, 6.0, 240, 24, '2', 'true', 'Northwestern');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (26, 'Sam Jones', 'OG', 'Active', 70, 6.5, 305, 22, 'R', 'true', 'Arizona State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (27, 'Case Keenam', 'QB', 'Active', 4, 6.0, 215, 30, '6', 'false', 'Houston');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (28, 'Marquette King', 'P', 'IR', 1, 6.0, 195, 30, '7', 'false', 'Fort Valley State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (29, 'Chad Kelly', 'QB', 'Active', 6, 6.2, 224, 24, '1', 'false', 'Ole Miss');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (30, 'Zach Kerr', 'DE', 'Active', 92, 6.2, 334, 28, '5', 'true', 'Delaware');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (31, 'Casey Kreiter', 'LS', 'Active', 42, 6.1, 250, 28, '3', 'true', 'Iowa');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (32, 'Matt LaCosse', 'TE', 'Active', 83, 6.6, 255, 26, '3', 'true', 'Illinois');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (33, 'Ron Leary', 'OG', 'Active', 65, 6.3, 320, 29, '7', 'false', 'Memphis');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (34, 'Phillip Lindsay', 'RB', 'Active', 30, 5.8, 190, 24, 'R', 'true', 'Colorado');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (35, 'Brandon Marshall', 'ILB', 'Active', 54, 6.1, 250, 29, '7', 'false', 'Nevada');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (36, 'Connor McGovern', 'OG', 'Active', 60, 6.4, 306, 25, '3', 'false', 'Missouri');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (37, 'Brandon McManus', 'K', 'Active', 8, 6.3, 201, 27, '5', 'false', 'Temple');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (38, 'Deiontrez Mount', 'LB', 'IR', 53, 6.5, 253, 25, '3', 'true', 'Louisville');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (39, 'Von Miller', 'OLB', 'Active', 58, 6.3, 250, 29, '8', 'false', 'Texas A&M');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (40, 'Matt Paradis', 'C', 'Active', 61, 6.3, 300, 29, '4', 'true', 'Boise State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (41, 'Brian Parker', 'TE', 'Active', 89, 6.4, 265, 26, '2', 'true', 'Albany');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (42, 'Will Parks', 'S', 'Active', 34, 6.1, 194, 24, '3', 'false', 'Arizona');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (43, 'Tim Patrick', 'WR', 'Active', 81, 6.5, 210, 24, '1', 'true', 'Utah');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (44, 'Domata Peko Sr.', 'NT', 'Active', 94, 6.3, 325, 33, '13', 'true', 'Michigan State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (45, 'Shane Ray', 'OLB', 'Active', 56, 6.3, 245, 25, '4', 'true', 'Missouri');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (46, 'Bradley Roby', 'CB', 'Active', 29, 5.11, 194, 26, '5', 'true', 'Ohio State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (47, 'Emmanuel Sanders', 'WR', 'Active', 10, 5.11, 180, 31, '9', 'false', 'Southern Methodist');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (48, 'Justin Simmons', 'S', 'Active', 31, 6.2, 202, 25, '3', 'false', 'Boston College');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (49, 'Darian Stewart', 'S', 'Active', 26, 5.11, 214, 30, '9', 'false', 'South Carolina');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (50, 'Courtland Sutton', 'WR', 'Active', 14, 6.3, 218, 23, 'R', 'false', 'Southern Methodist');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (51, 'Demaryius Thomas', 'WR', 'Active', 88, 6.3, 229, 30, '9', 'false', 'Georgia Tech');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (52, 'Dymonte Thomas', 'S', 'Active', 35, 6.2, 199, 24, '1', 'true', 'Michigan');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (53, 'Shamarko Thomas', 'S', 'Active', 38, 5.9, 205, 27, '6', 'true', 'Syracuse');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (54, 'Billy Turner', 'G/T', 'Active', 77, 6.5, 310, 27, '5', 'false', 'North Dakota State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (55, 'Jared Veldheer', 'OT', 'Active', 66, 6.8, 321, 31, '9', 'true', 'Hillsdale College');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (56, 'Colby Wadman', 'P', 'Active', 3, 6.1, 213, 23, 'R', 'true', 'California-Davis');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (57, 'DeMarcus Walker', 'DE', 'Active', 57, 6.4, 280, 24, '2', 'fase', 'Florida State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (58, 'Elijah Wilkinson', 'OT', 'Active', 68, 6.4, 329, 23, '2', 'true', 'Massachusetts');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (59, 'Derek Wolfe', 'DE', 'Active', 95, 6.5, 285, 28, '7', 'false', 'Cincinnati');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (60, 'Isaac Yiadom', 'CB', 'Active', 41, 6.1, 190, 22, 'R', 'false', 'Boston College');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (61, 'Jordan Taylor', 'WR', 'PUP', 87, 6.5, 210, 26, '3', 'true', 'Rice');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (62, 'River Cracraft', 'WR', 'Practice Squad', 11, 6.0, 198, 23, '1', 'true', 'Washington State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (63, 'Avery Gennesy', 'OT', 'Practice Squad', 67, 6.3, 318, 24, '1', 'true', 'Texas A&M');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (64, 'Temarrick Hemingway', 'TE', 'Practice Squad', 85, 6.5, 246, 25, '3', 'true', 'South Carolina State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (65, 'Jeff Holland', 'OLB', 'Practice Squad', 46, 6.2, 249, 21, 'R', 'true', 'Auburn');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (66, 'Brendan Langley', 'CB', 'Practice Squad', 27, 6.0, 199, 24, '2', 'true', 'Lamar');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (67, 'Trey Marshall', 'S', 'Practice Squad', 36, 6.0, 207, 22, 'R', 'true', 'Florida State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (68, 'Isaiah McKenzie', 'WR', 'Practice Squad', 16, 5.7, 173, 23, '2', 'true', 'Georgia');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (69, 'Jeremy McNichols', 'RB', 'Practice Squad', 33, 5.9, 212, 22, '1', 'true', 'Boise State');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (70, 'Austin Schlottman', 'OG', 'Practice Squad', 71, 6.6, 300, 23, 'R', 'true', 'Texas Christian');
INSERT INTO `Roster` (`player_id`, `player_name`, `position`, `roster_status`, `number`, `height`, `weight`, `age`, `experience`, `contract_year`, `college`) VALUES (71, 'Niles Scott', 'DL', 'Practice Squad', 91, 6.3, 280, 23, 'R', 'true', 'Frostburg State');

COMMIT;

