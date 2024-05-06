-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2024 at 08:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `author_name`, `price`) VALUES
(1, 'Things Fall Apart', 'Chinua Achebe', 0.41),
(2, 'Fairy tales', 'Hans Christian Andersen', 5.00),
(3, 'The Divine Comedy', 'Dante Alighieri', 5.00),
(4, 'The Epic Of Gilgamesh', 'Unknown', 6.00),
(5, 'The Book Of Job', 'Unknown', 5.00),
(6, 'One Thousand and One Nights', 'Unknown', 5.00),
(7, 'Njál\'s Saga', 'Unknown', 6.00),
(8, 'Pride and Prejudice', 'Jane Austen', 6.00),
(9, 'Le Père Goriot', 'Honoré de Balzac', 5.00),
(10, 'Molloy, Malone Dies, The Unnamable, the trilogy', 'Samuel Beckett', 5.00),
(11, 'The Decameron', 'Giovanni Boccaccio', 6.00),
(12, 'Ficciones', 'Jorge Luis Borges', 5.00),
(13, 'Wuthering Heights', 'Emily Brontë', 5.00),
(14, 'The Stranger', 'Albert Camus', 5.00),
(15, 'Poems', 'Paul Celan', 5.00),
(16, 'Journey to the End of the Night', 'Louis-Ferdinand Céline', 5.00),
(17, 'Don Quijote De La Mancha', 'Miguel de Cervantes', 5.00),
(18, 'The Canterbury Tales', 'Geoffrey Chaucer', 6.00),
(19, 'Stories', 'Anton Chekhov', 5.00),
(20, 'Nostromo', 'Joseph Conrad', 6.00),
(21, 'Great Expectations', 'Charles Dickens', 5.00),
(22, 'Jacques the Fatalist', 'Denis Diderot', 5.00),
(23, 'Berlin Alexanderplatz', 'Alfred Döblin', 6.00),
(24, 'Crime and Punishment', 'Fyodor Dostoevsky', 6.00),
(25, 'The Idiot', 'Fyodor Dostoevsky', 6.00),
(26, 'The Possessed', 'Fyodor Dostoevsky', 6.00),
(27, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 6.00),
(28, 'Middlemarch', 'George Eliot', 6.00),
(29, 'Invisible Man', 'Ralph Ellison', 6.00),
(30, 'Medea', 'Euripides', 5.00),
(31, 'Absalom, Absalom!', 'William Faulkner', 6.00),
(32, 'The Sound and the Fury', 'William Faulkner', 6.00),
(33, 'Madame Bovary', 'Gustave Flaubert', 6.00),
(34, 'Sentimental Education', 'Gustave Flaubert', 6.00),
(35, 'Gypsy Ballads', 'Federico García Lorca', 5.00),
(36, 'One Hundred Years of Solitude', 'Gabriel García Márquez', 6.00),
(37, 'Love in the Time of Cholera', 'Gabriel García Márquez', 5.00),
(38, 'Faust', 'Johann Wolfgang von Goethe', 6.00),
(39, 'Dead Souls', 'Nikolai Gogol', 6.00),
(40, 'The Tin Drum', 'Günter Grass', 6.00),
(41, 'The Devil to Pay in the Backlands', 'João Guimarães Rosa', 6.00),
(42, 'Hunger', 'Knut Hamsun', 5.00),
(43, 'The Old Man and the Sea', 'Ernest Hemingway', 6.00),
(44, 'Iliad', 'Homer', 6.00),
(45, 'Odyssey', 'Homer', 6.00),
(46, 'A Doll\'s House', 'Henrik Ibsen', 6.00),
(47, 'Ulysses', 'James Joyce', 6.00),
(48, 'Stories', 'Franz Kafka', 6.00),
(49, 'The Trial', 'Franz Kafka', 5.00),
(50, 'The Castle', 'Franz Kafka', 5.00),
(51, 'The recognition of Shakuntala', 'Kālidāsa', 5.00),
(52, 'The Sound of the Mountain', 'Yasunari Kawabata', 6.00),
(53, 'Zorba the Greek', 'Nikos Kazantzakis', 5.00),
(54, 'Sons and Lovers', 'D. H. Lawrence', 5.00),
(55, 'Independent People', 'Halldór Laxness', 6.00),
(56, 'Poems', 'Giacomo Leopardi', 5.00),
(57, 'The Golden Notebook', 'Doris Lessing', 6.00),
(58, 'Pippi Longstocking', 'Astrid Lindgren', 6.00),
(59, 'Diary of a Madman', 'Lu Xun', 5.00),
(60, 'Children of Gebelawi', 'Naguib Mahfouz', 5.00),
(61, 'Buddenbrooks', 'Thomas Mann', 5.00),
(62, 'The Magic Mountain', 'Thomas Mann', 6.00),
(63, 'Moby Dick', 'Herman Melville', 6.00),
(64, 'Essays', 'Michel de Montaigne', 5.00),
(65, 'History', 'Elsa Morante', 6.00),
(66, 'Beloved', 'Toni Morrison', 6.00),
(67, 'The Tale of Genji', 'Murasaki Shikibu', 5.00),
(68, 'The Man Without Qualities', 'Robert Musil', 6.00),
(69, 'Lolita', 'Vladimir Nabokov', 5.00),
(70, 'Nineteen Eighty-Four', 'George Orwell', 6.00),
(71, 'Metamorphoses', 'Ovid', 5.00),
(72, 'The Book of Disquiet', 'Fernando Pessoa', 6.00),
(73, 'Tales', 'Edgar Allan Poe', 6.00),
(74, 'In Search of Lost Time', 'Marcel Proust', 5.00),
(75, 'Gargantua and Pantagruel', 'François Rabelais', 6.00),
(76, 'Pedro Páramo', 'Juan Rulfo', 6.00),
(77, 'The Masnavi', 'Rumi', 5.00),
(78, 'Midnights Children', 'Salman Rushdie', 6.00),
(79, 'Bostan', 'Saadi', 5.00),
(80, 'Season of Migration to the North', 'Tayeb Salih', 6.00),
(81, 'Blindness', 'José Saramago', 5.00),
(82, 'Hamlet', 'William Shakespeare', 5.00),
(83, 'King Lear', 'William Shakespeare', 6.00),
(84, 'Othello', 'William Shakespeare', 5.00),
(85, 'Oedipus the King', 'Sophocles', 5.00),
(86, 'The Red and the Black', 'Stendhal', 5.00),
(87, 'The Life And Opinions of Tristram Shandy', 'Laurence Sterne', 6.00),
(88, 'Confessions of Zeno', 'Italo Svevo', 6.00),
(89, 'Gullivers Travels', 'Jonathan Swift', 5.00),
(90, 'War and Peace', 'Leo Tolstoy', 6.00),
(91, 'Anna Karenina', 'Leo Tolstoy', 6.00),
(92, 'The Death of Ivan Ilyich', 'Leo Tolstoy', 6.00),
(93, 'The Adventures of Huckleberry Finn', 'Mark Twain', 5.00),
(94, 'Ramayana', 'Valmiki', 6.00),
(95, 'The Aeneid', 'Virgil', 5.00),
(96, 'Mahabharata', 'Vyasa', 6.00),
(97, 'Leaves of Grass', 'Walt Whitman', 6.00),
(98, 'Mrs Dalloway', 'Virginia Woolf', 5.00),
(99, 'To the Lighthouse', 'Virginia Woolf', 6.00),
(100, 'Memoirs of Hadrian', 'Marguerite Yourcenar', 5.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
