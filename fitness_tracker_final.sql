-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Oct 30, 2026 at 03:50 PM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness_tracker_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
CREATE TABLE IF NOT EXISTS `exercise` (
  `ExerciseID` int NOT NULL,
  `ExerciseName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MuscleGroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `EquipmentUsed` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ExerciseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`ExerciseID`, `ExerciseName`, `MuscleGroup`, `EquipmentUsed`) VALUES
(1, 'Bench Press', 'Chest', 'Barbell'),
(2, 'Lat Pulldown', 'Back', 'Cable Machine'),
(3, 'Shoulder Press', 'Shoulders', 'Dumbbells'),
(4, 'JM Press', 'Triceps', 'Smith Machine'),
(5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine'),
(6, 'Barbell Squat', 'Quads', 'Squat Rack'),
(7, 'Deadlift', 'Back', 'Barbell'),
(8, 'Leg Press', 'Hamstrings', 'Leg Machine'),
(9, 'Cable Crunch', 'Abs', 'Cable Machine'),
(10, 'Calf Raise', 'Calves', 'Smith Machine'),
(11, 'Pull Up', 'Back', 'Pull Up Bar');

-- --------------------------------------------------------

--
-- Table structure for table `import_data`
--

DROP TABLE IF EXISTS `import_data`;
CREATE TABLE IF NOT EXISTS `import_data` (
  `MemberID` int DEFAULT NULL,
  `Name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MemberHeight` int DEFAULT NULL,
  `DateJoined` date DEFAULT NULL,
  `MembershipType` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WorkoutID` int DEFAULT NULL,
  `DateOfWorkout` date DEFAULT NULL,
  `DurationOfWorkout` int DEFAULT NULL,
  `ExerciseID` int DEFAULT NULL,
  `ExerciseName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MuscleGroup` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EquipmentUsed` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SetNumber` int DEFAULT NULL,
  `Reps` int DEFAULT NULL,
  `Weight` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_data`
--

INSERT INTO `import_data` (`MemberID`, `Name`, `MemberHeight`, `DateJoined`, `MembershipType`, `WorkoutID`, `DateOfWorkout`, `DurationOfWorkout`, `ExerciseID`, `ExerciseName`, `MuscleGroup`, `EquipmentUsed`, `SetNumber`, `Reps`, `Weight`) VALUES
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 1, '2026-10-25', 55, 5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine', 1, 6, 55),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 1, '2026-10-25', 55, 5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine', 2, 7, 55),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 1, '2026-10-25', 55, 5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine', 3, 8, 55),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 1, '2026-10-25', 55, 8, 'Leg Press', 'Hamstrings', 'Leg Machine', 1, 8, 100),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 1, '2026-10-25', 55, 8, 'Leg Press', 'Hamstrings', 'Leg Machine', 2, 8, 100),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 2, '2026-10-21', 40, 4, 'JM Press', 'Triceps', 'Smith Machine', 1, 8, 40),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 2, '2026-10-21', 40, 4, 'JM Press', 'Triceps', 'Smith Machine', 2, 8, 45),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 2, '2026-10-21', 40, 4, 'JM Press', 'Triceps', 'Smith Machine', 3, 8, 50),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 2, '2026-10-21', 40, 5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine', 1, 6, 30),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 2, '2026-10-21', 40, 5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine', 2, 7, 30),
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium', 2, '2026-10-21', 40, 5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine', 3, 8, 30),
(102, 'Darwin Watterson', 155, '2026-04-02', 'Standard', 3, '2026-10-22', 60, 1, 'Bench Press', 'Chest', 'Barbell', 1, 8, 60),
(102, 'Darwin Watterson', 155, '2026-04-02', 'Standard', 3, '2026-10-22', 60, 1, 'Bench Press', 'Chest', 'Barbell', 2, 8, 60),
(102, 'Darwin Watterson', 155, '2026-04-02', 'Standard', 3, '2026-10-22', 60, 1, 'Bench Press', 'Chest', 'Barbell', 3, 6, 65),
(102, 'Darwin Watterson', 155, '2026-04-02', 'Standard', 3, '2026-10-22', 60, 3, 'Shoulder Press', 'Shoulders', 'Dumbbells', 1, 10, 20),
(102, 'Darwin Watterson', 155, '2026-04-02', 'Standard', 3, '2026-10-22', 60, 3, 'Shoulder Press', 'Shoulders', 'Dumbbells', 2, 8, 22),
(102, 'Darwin Watterson', 155, '2026-04-02', 'Standard', 4, '2026-10-26', 35, 9, 'Cable Crunch', 'Abs', 'Cable Machine', 1, 15, 20),
(102, 'Darwin Watterson', 155, '2026-04-02', 'Standard', 4, '2026-10-26', 35, 9, 'Cable Crunch', 'Abs', 'Cable Machine', 2, 15, 20),
(102, 'Darwin Watterson', 155, '2026-04-02', 'Standard', 4, '2026-10-26', 35, 9, 'Cable Crunch', 'Abs', 'Cable Machine', 3, 12, 25),
(103, 'Anais Watterson', 140, '2026-05-10', 'Student', 5, '2026-10-23', 45, 2, 'Lat Pulldown', 'Back', 'Cable Machine', 1, 10, 45),
(103, 'Anais Watterson', 140, '2026-05-10', 'Student', 5, '2026-10-23', 45, 2, 'Lat Pulldown', 'Back', 'Cable Machine', 2, 10, 45),
(103, 'Anais Watterson', 140, '2026-05-10', 'Student', 5, '2026-10-23', 45, 2, 'Lat Pulldown', 'Back', 'Cable Machine', 3, 8, 50),
(104, 'Nicole Watterson', 175, '2026-01-20', 'Premium', 6, '2026-10-24', 75, 6, 'Barbell Squat', 'Quads', 'Squat Rack', 1, 8, 80),
(104, 'Nicole Watterson', 175, '2026-01-20', 'Premium', 6, '2026-10-24', 75, 6, 'Barbell Squat', 'Quads', 'Squat Rack', 2, 8, 85),
(104, 'Nicole Watterson', 175, '2026-01-20', 'Premium', 6, '2026-10-24', 75, 6, 'Barbell Squat', 'Quads', 'Squat Rack', 3, 6, 90),
(104, 'Nicole Watterson', 175, '2026-01-20', 'Premium', 6, '2026-10-24', 75, 8, 'Leg Press', 'Hamstrings', 'Leg Machine', 1, 10, 120),
(104, 'Nicole Watterson', 175, '2026-01-20', 'Premium', 6, '2026-10-24', 75, 8, 'Leg Press', 'Hamstrings', 'Leg Machine', 2, 10, 130),
(105, 'Richard Watterson', 190, '2026-02-14', 'Basic', 7, '2026-10-26', 90, 6, 'Barbell Squat', 'Quads', 'Squat Rack', 1, 8, 70),
(105, 'Richard Watterson', 190, '2026-02-14', 'Basic', 7, '2026-10-26', 90, 6, 'Barbell Squat', 'Quads', 'Squat Rack', 2, 8, 70),
(105, 'Richard Watterson', 190, '2026-02-14', 'Basic', 7, '2026-10-26', 90, 7, 'Deadlift', 'Back', 'Barbell', 1, 5, 100),
(105, 'Richard Watterson', 190, '2026-02-14', 'Basic', 7, '2026-10-26', 90, 7, 'Deadlift', 'Back', 'Barbell', 2, 5, 110),
(105, 'Richard Watterson', 190, '2026-02-14', 'Basic', 7, '2026-10-26', 90, 7, 'Deadlift', 'Back', 'Barbell', 3, 3, 120),
(106, 'Penny Fitzgerald', 165, '2026-06-08', 'Premium', 8, '2026-10-27', 65, 5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine', 1, 10, 25),
(106, 'Penny Fitzgerald', 165, '2026-06-08', 'Premium', 8, '2026-10-27', 65, 5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine', 2, 10, 25),
(106, 'Penny Fitzgerald', 165, '2026-06-08', 'Premium', 8, '2026-10-27', 65, 5, 'Cable Hammer Curl', 'Biceps', 'Cable Machine', 3, 8, 30),
(106, 'Penny Fitzgerald', 165, '2026-06-08', 'Premium', 8, '2026-10-27', 65, 10, 'Calf Raise', 'Calves', 'Smith Machine', 1, 15, 40),
(106, 'Penny Fitzgerald', 165, '2026-06-08', 'Premium', 8, '2026-10-27', 65, 10, 'Calf Raise', 'Calves', 'Smith Machine', 2, 15, 40),
(107, 'Tobias Wilson', 172, '2026-07-01', 'Standard', 9, '2026-10-27', 50, 4, 'JM Press', 'Triceps', 'Smith Machine', 1, 8, 35),
(107, 'Tobias Wilson', 172, '2026-07-01', 'Standard', 9, '2026-10-27', 50, 4, 'JM Press', 'Triceps', 'Smith Machine', 2, 8, 40),
(107, 'Tobias Wilson', 172, '2026-07-01', 'Standard', 9, '2026-10-27', 50, 4, 'JM Press', 'Triceps', 'Smith Machine', 3, 6, 45),
(108, 'Carrie Krueger', 168, '2026-07-22', 'Standard', 10, '2026-10-28', 30, 10, 'Calf Raise', 'Calves', 'Smith Machine', 1, 15, 40),
(108, 'Carrie Krueger', 168, '2026-07-22', 'Standard', 10, '2026-10-28', 30, 10, 'Calf Raise', 'Calves', 'Smith Machine', 2, 15, 45),
(109, 'Banana Joe', 160, '2026-08-15', 'Basic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Rocky Robinson', 180, '2026-09-05', 'Student', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Krusty the Clown', 172, '2026-10-01', 'Standard', 11, '2026-10-28', 45, 11, 'Pull Up', 'Back', 'Pull Up Bar', 1, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `MemberID` int NOT NULL,
  `Name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MemberHeight` int NOT NULL,
  `DateJoined` date NOT NULL,
  `MembershipType` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`MemberID`, `Name`, `MemberHeight`, `DateJoined`, `MembershipType`) VALUES
(101, 'Gumball Watterson', 170, '2026-03-13', 'Premium'),
(102, 'Darwin Watterson', 155, '2026-04-02', 'Standard'),
(103, 'Anais Watterson', 140, '2026-05-10', 'Student'),
(104, 'Nicole Watterson', 175, '2026-01-20', 'Premium'),
(105, 'Richard Watterson', 190, '2026-02-14', 'Basic'),
(106, 'Penny Fitzgerald', 165, '2026-06-08', 'Premium'),
(107, 'Tobias Wilson', 172, '2026-07-01', 'Standard'),
(108, 'Carrie Krueger', 168, '2026-07-22', 'Standard'),
(109, 'Banana Joe', 160, '2026-08-15', 'Basic'),
(110, 'Rocky Robinson', 180, '2026-09-05', 'Student'),
(111, 'Krusty the Clown', 172, '2026-10-01', 'Standard');

-- --------------------------------------------------------

--
-- Table structure for table `workout`
--

DROP TABLE IF EXISTS `workout`;
CREATE TABLE IF NOT EXISTS `workout` (
  `WorkoutID` int NOT NULL,
  `MemberID` int NOT NULL,
  `DateOfWorkout` date NOT NULL,
  `DurationOfWorkout` int NOT NULL,
  PRIMARY KEY (`WorkoutID`),
  KEY `fk_workout_member` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workout`
--

INSERT INTO `workout` (`WorkoutID`, `MemberID`, `DateOfWorkout`, `DurationOfWorkout`) VALUES
(1, 101, '2026-10-25', 55),
(2, 101, '2026-10-21', 40),
(3, 102, '2026-10-22', 60),
(4, 102, '2026-10-26', 35),
(5, 103, '2026-10-23', 45),
(6, 104, '2026-10-24', 75),
(7, 105, '2026-10-26', 90),
(8, 106, '2026-10-27', 65),
(9, 107, '2026-10-27', 50),
(10, 108, '2026-10-28', 30),
(11, 111, '2026-10-28', 45);

-- --------------------------------------------------------

--
-- Table structure for table `workoutexercise`
--

DROP TABLE IF EXISTS `workoutexercise`;
CREATE TABLE IF NOT EXISTS `workoutexercise` (
  `WorkoutID` int NOT NULL,
  `ExerciseID` int NOT NULL,
  `SetNumber` int NOT NULL,
  `Reps` int NOT NULL,
  `Weight` int NOT NULL,
  PRIMARY KEY (`WorkoutID`,`ExerciseID`,`SetNumber`),
  KEY `fk_we_exercise` (`ExerciseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workoutexercise`
--

INSERT INTO `workoutexercise` (`WorkoutID`, `ExerciseID`, `SetNumber`, `Reps`, `Weight`) VALUES
(1, 5, 1, 6, 55),
(1, 5, 2, 7, 55),
(1, 5, 3, 8, 55),
(1, 8, 1, 8, 100),
(1, 8, 2, 8, 100),
(2, 4, 1, 8, 40),
(2, 4, 2, 8, 45),
(2, 4, 3, 8, 50),
(2, 5, 1, 6, 30),
(2, 5, 2, 7, 30),
(2, 5, 3, 8, 30),
(3, 1, 1, 8, 60),
(3, 1, 2, 8, 60),
(3, 1, 3, 6, 65),
(3, 3, 1, 10, 20),
(3, 3, 2, 8, 22),
(4, 9, 1, 15, 20),
(4, 9, 2, 15, 20),
(4, 9, 3, 12, 25),
(5, 2, 1, 10, 45),
(5, 2, 2, 10, 45),
(5, 2, 3, 8, 50),
(6, 6, 1, 8, 80),
(6, 6, 2, 8, 85),
(6, 6, 3, 6, 90),
(6, 8, 1, 10, 120),
(6, 8, 2, 10, 130),
(7, 6, 1, 8, 70),
(7, 6, 2, 8, 70),
(7, 7, 1, 5, 100),
(7, 7, 2, 5, 110),
(7, 7, 3, 3, 120),
(8, 5, 1, 10, 25),
(8, 5, 2, 10, 25),
(8, 5, 3, 8, 30),
(8, 10, 1, 15, 40),
(8, 10, 2, 15, 40),
(9, 4, 1, 8, 35),
(9, 4, 2, 8, 40),
(9, 4, 3, 6, 45),
(10, 10, 1, 15, 40),
(10, 10, 2, 15, 45),
(11, 11, 1, 8, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `workout`
--
ALTER TABLE `workout`
  ADD CONSTRAINT `fk_workout_member` FOREIGN KEY (`MemberID`) REFERENCES `member` (`MemberID`);

--
-- Constraints for table `workoutexercise`
--
ALTER TABLE `workoutexercise`
  ADD CONSTRAINT `fk_we_exercise` FOREIGN KEY (`ExerciseID`) REFERENCES `exercise` (`ExerciseID`),
  ADD CONSTRAINT `fk_we_workout` FOREIGN KEY (`WorkoutID`) REFERENCES `workout` (`WorkoutID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
