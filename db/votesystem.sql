-- -- phpMyAdmin SQL Dump
-- -- version 5.0.2
-- -- https://www.phpmyadmin.net/
-- --
-- -- Host: 127.0.0.1
-- -- Generation Time: May 27, 2021 at 02:28 PM
-- -- Server version: 10.4.14-MariaDB
-- -- PHP Version: 7.4.9

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";


-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8mb4 */;

-- --
-- -- Database: `votesystem`
-- --

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `admin`
-- --

-- CREATE TABLE `admin` (
--   `id` int(11) NOT NULL,
--   `username` varchar(50) NOT NULL,
--   `password` varchar(60) NOT NULL,
--   `firstname` varchar(50) NOT NULL,
--   `lastname` varchar(50) NOT NULL,
--   `photo` varchar(150) NOT NULL,
--   `created_on` date NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `admin`
-- --

-- INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
-- (1, 'crce', '$2y$10$kLqXG4BAJrPbsOjJ/.B4eeZn6oojNhAb8l5/cb9eZvFnYU.pz2qni', 'CRCE', 'Admin', 'WhatsApp Image 2021-05-27 at 17.55.34.jpeg', '2018-04-02');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `candidates`
-- --

-- CREATE TABLE `candidates` (
--   `id` int(11) NOT NULL,
--   `position_id` int(11) NOT NULL,
--   `firstname` varchar(30) NOT NULL,
--   `lastname` varchar(30) NOT NULL,
--   `photo` varchar(150) NOT NULL,
--   `platform` text NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `positions`
-- --

-- CREATE TABLE `positions` (
--   `id` int(11) NOT NULL,
--   `description` varchar(50) NOT NULL,
--   `max_vote` int(11) NOT NULL,
--   `priority` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `voters`
-- --

-- CREATE TABLE `voters` (
--   `id` int(11) NOT NULL,
--   `voters_id` varchar(15) NOT NULL,
--   `password` varchar(60) NOT NULL,
--   `firstname` varchar(30) NOT NULL,
--   `lastname` varchar(30) NOT NULL,
--   `photo` varchar(150) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `votes`
-- --

-- CREATE TABLE `votes` (
--   `id` int(11) NOT NULL,
--   `voters_id` int(11) NOT NULL,
--   `candidate_id` int(11) NOT NULL,
--   `position_id` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Indexes for dumped tables
-- --

-- --
-- -- Indexes for table `admin`
-- --
-- ALTER TABLE `admin`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `candidates`
-- --
-- ALTER TABLE `candidates`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `positions`
-- --
-- ALTER TABLE `positions`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `voters`
-- --
-- ALTER TABLE `voters`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `votes`
-- --
-- ALTER TABLE `votes`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `admin`
-- --
-- ALTER TABLE `admin`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --
-- -- AUTO_INCREMENT for table `candidates`
-- --
-- ALTER TABLE `candidates`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

-- --
-- -- AUTO_INCREMENT for table `positions`
-- --
-- ALTER TABLE `positions`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

-- --
-- -- AUTO_INCREMENT for table `voters`
-- --
-- ALTER TABLE `voters`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --
-- -- AUTO_INCREMENT for table `votes`
-- --
-- ALTER TABLE `votes`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
-- COMMIT;

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 02:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: votesystem

-- --------------------------------------------------------

-- Table structure for table admin
CREATE TABLE admin (
  id int(11) NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(60) NOT NULL,
  firstname varchar(50) NOT NULL,
  lastname varchar(50) NOT NULL,
  photo varchar(150) NOT NULL,
  created_on date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table admin
INSERT INTO admin (id, username, password, firstname, lastname, photo, created_on) VALUES
(1, 'crce', '$2y$10$kLqXG4BAJrPbsOjJ/.B4eeZn6oojNhAb8l5/cb9eZvFnYU.pz2qni', 'VARSHA', 'VIJAYALAKSHMI', 'WhatsApp Image 2021-05-27 at 17.55.34.jpeg', '2018-04-02');

-- --------------------------------------------------------

-- Table structure for table candidates
CREATE TABLE candidates (
  id int(11) NOT NULL,
  position_id int(11) NOT NULL,
  firstname varchar(30) NOT NULL,
  lastname varchar(30) NOT NULL,
  photo varchar(150) NOT NULL,
  platform text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Table structure for table positions
CREATE TABLE positions (
  id int(11) NOT NULL,
  description varchar(50) NOT NULL,
  max_vote int(11) NOT NULL,
  priority int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Table structure for table voters
CREATE TABLE voters (
  id int(11) NOT NULL,
  voters_id varchar(15) NOT NULL,
  password varchar(60) NOT NULL,
  firstname varchar(30) NOT NULL,
  lastname varchar(30) NOT NULL,
  photo varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Table structure for table votes
CREATE TABLE votes (
  id int(11) NOT NULL,
  voters_id int(11) NOT NULL,
  candidate_id int(11) NOT NULL,
  position_id int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Indexes for dumped tables
ALTER TABLE admin ADD PRIMARY KEY (id);
ALTER TABLE candidates ADD PRIMARY KEY (id);
ALTER TABLE positions ADD PRIMARY KEY (id);
ALTER TABLE voters ADD PRIMARY KEY (id);
ALTER TABLE votes ADD PRIMARY KEY (id);

-- AUTO_INCREMENT for dumped tables
ALTER TABLE admin MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE candidates MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
ALTER TABLE positions MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
ALTER TABLE voters MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
ALTER TABLE votes MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

-- Triggers for duplicate entries and validation

DELIMITER $$

-- Trigger: Prevent duplicate votes for the same position
CREATE TRIGGER trg_prevent_duplicate_votes
BEFORE INSERT ON votes
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM votes 
        WHERE voters_id = NEW.voters_id AND position_id = NEW.position_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A voter cannot vote more than once for the same position.';
    END IF;
END$$

-- Trigger: Check candidate validity before vote
CREATE TRIGGER trg_validate_candidate_vote
BEFORE INSERT ON votes
FOR EACH ROW
BEGIN
    DECLARE position_valid BOOLEAN;
    SET position_valid = (
        SELECT COUNT(*) > 0
        FROM candidates
        WHERE id = NEW.candidate_id AND position_id = NEW.position_id
    );

    IF NOT position_valid THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid candidate for the specified position.';
    END IF;
END$$

-- Trigger: Prevent duplicate voter based on firstname and lastname with alert message
CREATE TRIGGER trg_prevent_duplicate_voters
BEFORE INSERT ON voters
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM voters 
        WHERE firstname = NEW.firstname AND lastname = NEW.lastname
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Alert: A voter with the same first name and last name already exists. Please check the voter details.';
    END IF;
END$$

-- Trigger: Prevent duplicate candidates for the same position based on first name and last name
CREATE TRIGGER trg_prevent_duplicate_candidates
BEFORE INSERT ON candidates
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM candidates
        WHERE firstname = NEW.firstname AND lastname = NEW.lastname AND position_id = NEW.position_id
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Alert: A candidate with the same first name and last name already exists for this position.';
    END IF;
END$$

DELIMITER ;

-- Functions and Procedures

-- Procedure: Add a new vote
DELIMITER $$
CREATE PROCEDURE AddVote(IN p_voters_id INT, IN p_candidate_id INT, IN p_position_id INT)
BEGIN
    INSERT INTO votes (voters_id, candidate_id, position_id) 
    VALUES (p_voters_id, p_candidate_id, p_position_id);
END$$
DELIMITER ;

-- Function: Count the total number of votes for a given candidate
DELIMITER $$
CREATE FUNCTION CountVotesForCandidate(p_candidate_id INT) RETURNS INT
BEGIN
    DECLARE vote_count INT;
    SELECT COUNT(*) INTO vote_count 
    FROM votes 
    WHERE candidate_id = p_candidate_id;
    RETURN vote_count;
END$$
DELIMITER ;

-- Nested Queries and Complex Queries

-- Nested Query: Get Candidates and Total Votes for Each Candidate
SELECT 
    c.firstname AS CandidateFirstName,
    c.lastname AS CandidateLastName,
    p.description AS Position,
    (SELECT COUNT(*) FROM votes WHERE candidate_id = c.id) AS TotalVotes
FROM candidates c
INNER JOIN positions p ON c.position_id = p.id;

-- Nested Query: Get Voters Who Have Not Voted Yet
SELECT 
    v.firstname AS VoterFirstName,
    v.lastname AS VoterLastName,
    v.voters_id AS VoterID
FROM voters v
WHERE v.id NOT IN (SELECT DISTINCT voters_id FROM votes);

-- Nested Query: Get the Position with the Most Votes
SELECT 
    p.description AS Position,
    MAX(vote_count) AS MaxVotes
FROM (
    SELECT position_id, COUNT(*) AS vote_count
    FROM votes
    GROUP BY position_id
) AS vote_summary
INNER JOIN positions p ON vote_summary.position_id = p.id;

-- Nested Query: Voter Participation Rate by Position
SELECT 
    p.description AS Position,
    (SELECT COUNT(DISTINCT voters_id) FROM votes WHERE position_id = p.id) AS VotersWhoVoted,
    (SELECT COUNT(*) FROM voters) AS TotalVoters,
    ROUND((SELECT COUNT(DISTINCT voters_id) FROM votes WHERE position_id = p.id) * 100.0 / (SELECT COUNT(*) FROM voters), 2) AS ParticipationRate
FROM positions p;