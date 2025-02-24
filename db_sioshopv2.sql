-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 03 fév. 2025 à 14:44
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db_sioshopv2`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `Num_client` int(255) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`Num_client`, `nom`, `prenom`, `adresse`, `mail`, `tel`) VALUES
(1, 'Stone', 'Marcia', '5614 Blandit St.', 'quis.pede.Praesent@Duiscursus.co.uk', '02 38 15 02 78'),
(2, 'Rogers', 'Lea', 'P.O. Box 965, 6567 Tempus, Rd.', 'lobortis@in.com', '02 64 91 17 26'),
(3, 'Mooney', 'Haley', '6346 Proin Rd.', 'metus.Aenean.sed@sit.net', '08 44 72 23 23'),
(4, 'Thompson', 'Tyrone', 'P.O. Box 124, 3641 Ut Av.', 'Annte@Maurisvestibulum.edu', '06 35 12 11 23'),
(5, 'Stout', 'Kelly', '695-1753 Fusce Ave', 'lectus.rutrum@aliquetmolestie.edu', '09 96 79 27 27'),
(6, 'Gutierrez', 'Dylan', 'P.O. Box 889, 9626 Adipiscing Rd.', 'nibh.dolor@quamCurabitur.net', '04 97 74 63 88'),
(7, 'Dalton', 'Cedric', '551-7282 Donec St.', 'metus.urna@ametornare.net', '06 43 41 16 09'),
(8, 'Walker', 'Virginia', 'Ap #548-759 Risus. Street', 'ipsum@ullamcorper.edu', '03 08 43 95 66'),
(9, 'Stout', 'Erasmus', '873-1369 Id, St.', 'lacinia.orci.consectetuer@seddictumeleifend.com', '05 01 41 38 00'),
(10, 'Tanner', 'Chase', '895-6748 Odio. Rd.', 'mi.ac@adlitoratorquent.edu', '05 14 97 42 14'),
(11, 'Vincent', 'Hedley', '8354 Tellus, Road', 'fermentum.risus@odioNaminterdum.edu', '05 67 26 61 69'),
(12, 'Finley', 'Raja', 'Ap #302-2269 Eget, Ave', 'lacinia.orci@temporestac.com', '06 06 81 66 86'),
(13, 'Pitts', 'Jonah', 'Ap #758-3520 Maecenas Av.', 'Duis@nunc.net', '02 89 20 01 07'),
(14, 'Reeves', 'Amity', 'P.O. Box 808, 1731 Nonummy. St.', 'eget.varius.ultrices@quisdiamPellentesque.org', '02 17 63 26 59'),
(15, 'Aguirre', 'Clayton', 'P.O. Box 939, 5202 Fusce St.', 'bibendum.Donec.felis@ridiculusmusProin.com', '08 12 73 25 14'),
(16, 'Sherman', 'Rinah', '605-144 Pharetra, Ave', 'massa.Suspendisse@mattisvelit.co.uk', '08 42 74 90 91'),
(17, 'Turner', 'Ulla', 'Ap #706-5353 A Avenue', 'pharetra.nibh.Aliquam@egestas.org', '05 50 72 41 03'),
(18, 'Davis', 'Gray', '721-3712 Vitae Rd.', 'venenatis@ac.net', '03 25 84 50 04'),
(19, 'Barry', 'Naida', 'P.O. Box 566, 266 Aenean Rd.', 'natoque.penatibus.et@fringillaeuismod.com', '08 29 76 33 78'),
(20, 'Langley', 'Noelle', '152-1637 Dui Ave', 'per.inceptos.hymenaeos@ligula.com', '03 29 57 89 36'),
(21, 'Lindsay', 'Joel', '325-3029 Nec Rd.', 'augue.eu.tellus@montes.co.uk', '01 84 77 62 98'),
(22, 'Lamb', 'Shoshana', 'P.O. Box 724, 553 Elit Av.', 'semper.tellus.id@sedturpisnec.net', '06 32 13 01 42'),
(23, 'Mullen', 'Tiger', 'Ap #535-5335 Cum Avenue', 'per.inceptos.hymenaeos@magnisdis.com', '03 72 53 50 96'),
(24, 'Beasley', 'Macaulay', 'P.O. Box 405, 8214 Integer Ave', 'scelerisque.dui.Suspendisse@diamPellentesque.org', '01 67 30 93 08'),
(25, 'Hawkins', 'Tate', 'Ap #355-948 Amet, St.', 'vitae.semper@venenatis.edu', '06 06 90 19 61'),
(26, 'Daugherty', 'Tasha', 'P.O. Box 291, 794 Luctus. Avenue', 'mauris.Integer@Mauris.edu', '01 15 70 96 64'),
(27, 'Foley', 'Jessamine', '739-9963 Dictum Street', 'porttitor.scelerisque@bibendum.co.uk', '07 94 77 97 06'),
(28, 'Cortez', 'Elton', 'P.O. Box 345, 706 Mauris St.', 'ut.cursus.luctus@sitametluctus.com', '02 89 28 35 58'),
(29, 'Lynn', 'Avram', '528-7419 Phasellus Avenue', 'Integer.id@Aenean.co.uk', '05 73 17 84 07'),
(30, 'Washington', 'Dominique', 'P.O. Box 655, 9375 Eu Rd.', 'justo.faucibus.lectus@egestasurna.org', '09 36 57 19 34'),
(31, 'Howard', 'Brent', '9710 Sodales Rd.', 'nulla.ante.iaculis@NullafacilisiSed.com', '01 63 82 28 48'),
(32, 'Coffey', 'Bert', '968-7568 Mattis St.', 'elit.pretium@molestie.co.uk', '09 56 99 68 94'),
(33, 'Pratt', 'Velma', '2469 Ante, Rd.', 'gravida.nunc.sed@maurisMorbinon.net', '05 16 19 06 52'),
(34, 'Ortega', 'Hiroko', '176-6418 Cursus Street', 'faucibus.orci.luctus@iaculislacus.net', '09 64 99 94 90'),
(35, 'Pruitt', 'Elvis', '315-3296 Sed St.', 'arcu.Nunc@felisorci.net', '03 24 25 95 70'),
(36, 'Trevino', 'Tallulah', '249-3575 Placerat. Street', 'sem.semper.erat@estNunclaoreet.ca', '03 18 75 71 73'),
(37, 'Buchanan', 'Galena', 'Ap #280-3206 Convallis Rd.', 'vitae@arcuvel.net', '07 17 05 32 61'),
(38, 'Skinner', 'Rogan', 'Ap #494-6399 Et Road', 'magnis@utsem.edu', '05 95 59 16 33'),
(39, 'Rush', 'Carly', '2692 Aliquet Av.', 'litora.torquent.per@faucibuslectusa.ca', '06 67 43 84 96'),
(40, 'Tanner', 'Elizabeth', 'P.O. Box 935, 879 Arcu. St.', 'Cras.eu@liberoDonecconsectetuer.ca', '06 40 94 61 52'),
(41, 'Walls', 'Martina', '3905 Duis Road', 'volutpat.nunc.sit@diamDuismi.ca', '04 40 60 20 50'),
(42, 'Holcomb', 'Madonna', 'Ap #432-9156 Tempus St.', 'mollis.vitae@ProinmiAliquam.com', '01 78 40 82 53'),
(43, 'Miles', 'Angelica', 'P.O. Box 297, 6573 Orci Ave', 'nisi.magna.sed@quispede.ca', '07 79 46 17 69'),
(44, 'Chan', 'Uriel', 'P.O. Box 595, 7999 In, Ave', 'fermentum.fermentum@Lorem.net', '05 63 94 61 71'),
(45, 'Raymond', 'Bethany', 'Ap #694-8461 Arcu. Ave', 'felis.orci.adipiscing@nuncestmollis.org', '01 52 09 08 66'),
(46, 'Andrews', 'Geoffrey', 'Ap #567-7689 Vivamus Street', 'est.Nunc@nonsapien.com', '04 07 92 92 41'),
(47, 'Cross', 'Grace', 'Ap #126-5094 Nec Rd.', 'mollis.lectus.pede@pede.co.uk', '04 60 05 86 54'),
(48, 'Cooke', 'Orlando', '500-261 Consequat Ave', 'a.tortor.Nunc@elementum.com', '04 25 13 21 75'),
(49, 'Sears', 'Maxwell', '8983 Arcu Avenue', 'Donec.felis.orci@arcuVivamussit.org', '05 71 07 86 64'),
(50, 'Rosa', 'MacKenzie', 'Ap #143-7828 Gravida. Rd.', 'nec.mollis.vitae@liberolacus.org', '04 72 72 37 02'),
(51, 'Carey', 'Hammett', 'P.O. Box 368, 2434 Eu Rd.', 'facilisis@parturientmontes.co.uk', '04 57 21 40 60'),
(52, 'Ortega', 'Shafira', 'P.O. Box 721, 4318 Enim. Rd.', 'tellus@tincidunt.net', '05 37 57 11 35'),
(53, 'Greene', 'Imogene', '879-4493 Convallis Rd.', 'sed@vitae.co.uk', '03 61 93 74 25'),
(54, 'Humphrey', 'Connor', '850-4178 Enim. Street', 'penatibus@duinec.ca', '07 08 11 17 73'),
(55, 'Ramos', 'Martha', 'Ap #115-7448 Nunc Street', 'lacus@lobortis.org', '02 66 06 98 22'),
(56, 'Wall', 'Wylie', 'Ap #227-6492 Lectus Avenue', 'nulla@aliquetProin.ca', '02 42 32 07 17'),
(57, 'Wilkins', 'Cassidy', '318-3137 Odio Av.', 'augue.eu@elit.com', '07 67 55 05 36'),
(58, 'Rodgers', 'Lance', '468 Suspendisse Street', 'porttitor.scelerisque@consequat.co.uk', '02 90 06 80 58'),
(59, 'Mccray', 'Dominic', 'P.O. Box 465, 8652 Turpis. Ave', 'faucibus@in.edu', '05 39 70 90 26'),
(60, 'Torres', 'Ronan', '3998 Etiam Road', 'congue@Sednunc.co.uk', '03 95 18 01 49'),
(61, 'Riley', 'Garrett', '238-8255 Curabitur Street', 'in.hendrerit@tellusnon.edu', '07 07 86 46 42'),
(62, 'Brown', 'Bradley', '2569 Lobortis Rd.', 'lacinia.vitae.sodales@seddolor.com', '08 35 19 26 23'),
(63, 'Hogan', 'Kai', 'P.O. Box 407, 3876 Aliquam Av.', 'in.hendrerit.consectetuer@sociisnatoque.ca', '03 61 67 73 84'),
(64, 'Cruz', 'Griffith', '2734 Nonummy Ave', 'fringilla@MorbimetusVivamus.org', '09 76 81 48 55'),
(65, 'Wall', 'Brody', '905-6070 Adipiscing Av.', 'eget.massa.Suspendisse@eratvolutpat.co.uk', '01 87 09 24 56'),
(66, 'Maldonado', 'Germane', 'P.O. Box 770, 249 Odio Ave', 'eget.lacus.Mauris@Curabitur.ca', '01 30 40 56 00'),
(67, 'Ellis', 'Ryan', '401-5201 Nisi Avenue', 'scelerisque.mollis.Phasellus@massarutrum.co.uk', '06 98 82 15 31'),
(68, 'Manning', 'Erica', 'P.O. Box 636, 2867 Feugiat St.', 'ante.iaculis@Duisdignissim.co.uk', '06 69 44 86 22'),
(69, 'Freeman', 'Helen', 'Ap #701-8120 Justo Avenue', 'luctus@antedictum.com', '04 66 99 99 33'),
(70, 'England', 'Leilani', '191-4664 Netus Road', 'mus.Proin.vel@enimnonnisi.com', '03 47 18 51 27'),
(71, 'Flowers', 'Sydney', '251-1842 Fermentum Ave', 'sed.est.Nunc@metuseuerat.ca', '07 39 40 50 28'),
(72, 'Kelly', 'Skyler', 'Ap #631-1419 At, Av.', 'ligula.tortor@vulputate.ca', '04 71 62 39 74'),
(73, 'Edwards', 'Gwendolyn', '670-1485 Condimentum Rd.', 'nunc@nequesedsem.net', '01 05 61 78 85'),
(74, 'Harris', 'Ina', '3203 Fermentum Av.', 'orci.luctus.et@nequevitaesemper.net', '04 40 49 78 36'),
(75, 'Bradshaw', 'Aiko', 'P.O. Box 262, 1854 Non Road', 'erat.volutpat.Nulla@tincidunttempus.org', '04 09 65 70 33'),
(76, 'Hendrix', 'Basia', '4176 Eget, St.', 'mauris@ac.com', '03 05 45 84 68'),
(77, 'House', 'Francesca', '8057 Elementum Av.', 'Cum@Donecfringilla.edu', '08 31 79 55 83'),
(78, 'Jackson', 'Ebony', 'P.O. Box 418, 7886 Cum Road', 'ipsum.cursus.vestibulum@Etiamligulatortor.ca', '03 38 31 48 56'),
(79, 'Le', 'Yvonne', '1862 Nullam Street', 'semper.et@lectus.co.uk', '06 77 92 97 89'),
(80, 'Herman', 'Elton', '1273 Ac Avenue', 'magna.sed@malesuada.net', '05 26 37 88 45'),
(81, 'Irwin', 'Shoshana', 'P.O. Box 528, 964 Duis Avenue', 'blandit.at.nisi@turpisIncondimentum.com', '09 59 35 24 52'),
(82, 'Sutton', 'Barrett', 'Ap #261-3363 Sed Rd.', 'egestas.Aliquam.fringilla@ut.net', '06 80 60 00 16'),
(83, 'Cook', 'Ivory', 'Ap #100-1588 Mi Av.', 'molestie.tellus@nequevenenatislacus.ca', '07 38 11 67 14'),
(84, 'George', 'Signe', 'P.O. Box 600, 5628 Non, Road', 'mauris.Integer.sem@dictumaugue.ca', '07 18 39 83 53'),
(85, 'Fulton', 'Zelenia', '210-8757 Eu Av.', 'sed.sapien.Nunc@lorem.com', '01 55 75 47 92'),
(86, 'Bell', 'Lillith', 'P.O. Box 872, 599 Consectetuer St.', 'egestas@bibendum.org', '03 67 33 93 18'),
(87, 'Shannon', 'Rhea', '2771 Vestibulum St.', 'non.dapibus.rutrum@Curabitur.co.uk', '04 20 06 13 26'),
(88, 'Santiago', 'Irma', '7173 Nulla. St.', 'luctus@faucibusorciluctus.ca', '03 77 96 75 85'),
(89, 'Rowe', 'Plato', '955-9562 Odio, Av.', 'nascetur.ridiculus@Nam.org', '05 30 44 07 49'),
(90, 'Strickland', 'Zephania', 'P.O. Box 581, 1151 Et, St.', 'lacus.Quisque@amagna.net', '03 80 64 10 56'),
(91, 'Huff', 'Ebony', '1205 Risus Rd.', 'morbi@ultricesVivamus.com', '03 58 04 64 90'),
(92, 'Mack', 'Jada', '352-8020 Sagittis. St.', 'augue.id.ante@consequatnec.net', '07 39 11 49 52'),
(93, 'Bowers', 'Channing', 'Ap #435-3201 Sem Avenue', 'eu@augueSedmolestie.edu', '03 83 88 46 59'),
(94, 'Savage', 'Anthony', 'Ap #582-649 Nunc Av.', 'arcu@scelerisque.co.uk', '01 84 84 06 31'),
(95, 'Lambert', 'Daryl', 'Ap #708-9932 Feugiat Avenue', 'libero@Maurisvelturpis.net', '04 32 20 89 56'),
(96, 'Pacheco', 'Eaton', '729-4634 Neque. St.', 'elit@sapien.org', '09 42 42 30 00'),
(97, 'Carey', 'Ella', '2513 Ultrices St.', 'molestie.in.tempus@lectusante.org', '02 14 66 24 79'),
(98, 'King', 'Keefe', '285-3308 Elit. Street', 'turpis@volutpatnuncsit.co.uk', '01 87 39 43 16'),
(99, 'Pacheco', 'Anjolie', '337-6590 Sed, St.', 'egestas.urna@Maurisnondui.com', '04 00 79 73 45'),
(100, 'Davis', 'Samuel', '441-636 Consectetuer, Road', 'dolor@suscipitestac.net', '09 76 99 30 64'),
(101, 'Keller', 'Isabelle', '4335 At, Av.', 'ultrices@In.co.uk', '04 77 13 69 69'),
(102, 'Hahn', 'Maxwell', '401-3846 Mollis. Rd.', 'bibendum.fermentum.metus@rutrum.edu', '02 19 87 22 56'),
(103, 'Allison', 'Baker', 'Ap #570-5559 Nonummy. Street', 'eu@aliquam.com', '02 16 62 21 14'),
(104, 'Warren', 'Brenda', 'Ap #760-3019 Ac Avenue', 'Donec.egestas@adipiscingMauris.co.uk', '06 70 17 49 24'),
(105, 'Merrill', 'Iliana', 'P.O. Box 381, 6054 Metus. Road', 'lacinia@sollicitudinadipiscingligula.org', '08 70 64 23 45'),
(106, 'Chaney', 'Deacon', '6020 Tellus. Av.', 'condimentum@SednequeSed.org', '09 17 46 28 04'),
(107, 'Fernandez', 'Paki', 'Ap #976-3093 Lacus Street', 'vitae.diam@mauris.org', '07 80 70 34 90'),
(108, 'Dodson', 'Molly', '759-2826 Amet, Ave', 'et.magnis@montesnascetur.ca', '09 60 26 96 34'),
(109, 'Mitchell', 'Slade', 'P.O. Box 502, 9860 Turpis Av.', 'risus.Nunc.ac@etnetuset.co.uk', '06 16 83 92 71'),
(110, 'Lynch', 'Wilma', 'P.O. Box 529, 9148 Et Road', 'Ut.sagittis@velitSed.net', '09 01 99 09 28'),
(111, 'Ingram', 'Yvette', '9220 Iaculis Av.', 'vulputate.risus.a@egestasrhoncusProin.co.uk', '08 20 15 83 58'),
(112, 'Anderson', 'David', '467 Ipsum. Av.', 'nibh.Aliquam.ornare@felispurus.org', '04 75 89 91 23'),
(113, 'Holland', 'Hall', '1119 Dolor. Road', 'arcu.Aliquam.ultrices@urnaNuncquis.co.uk', '09 75 09 47 19'),
(114, 'Meyer', 'Malcolm', '261-6597 Nisl. St.', 'quis@tinciduntnibh.ca', '03 53 77 95 00'),
(115, 'Reyes', 'Tanya', 'Ap #228-8944 Velit. Ave', 'semper@nonarcu.com', '09 63 76 00 33'),
(116, 'Long', 'Mohammad', 'P.O. Box 521, 4469 Risus. Road', 'elit.a@fringillaporttitor.org', '03 20 46 76 32'),
(117, 'Hood', 'Palmer', 'Ap #933-8152 Erat Rd.', 'Quisque@necante.net', '06 10 37 22 12'),
(118, 'Strong', 'Geraldine', 'Ap #482-3610 Tortor Street', 'eget.nisi@malesuadafames.net', '01 79 42 48 04'),
(119, 'Lyons', 'Zahir', '9638 Libero St.', 'felis.ullamcorper@lobortisauguescelerisque.edu', '07 27 53 67 20'),
(120, 'Scott', 'Armando', 'P.O. Box 315, 6231 Ullamcorper Av.', 'leo.in@malesuadavelconvallis.ca', '07 29 87 26 30'),
(121, 'Dupont', 'Nicolas', '9 allée des pommes', 'ndupont@gmail.com', '02 45 17 48 96'),
(122, 'Poirier', 'jerome', '9 rue du general', 'jrm@gmail.com', '03 22 44 78 10');

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `matricule` varchar(255) NOT NULL,
  `login` varchar(255) DEFAULT NULL,
  `mdp` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`matricule`, `login`, `mdp`, `nom`, `prenom`, `adresse`, `mail`, `tel`) VALUES
('0000', 'admin', 'admin', 'admin', 'admin', 'admin', 'admin', 'admin'),
('08609DCF-5A14-1870-F81D-FB491773B400', 'EMP4', 'abcd', 'Boyle', 'Athena', 'P.O. Box 601, 5845 Adipiscing Road', 'nunc@Aenean.org', '08 54 41 76 75'),
('38BE1DDD-A56E-93B1-F1AC-2D85E753D83B', 'EMP41578i', 'CTD26KOS9MW', 'Beasley', 'Kim', 'P.O. Box 646, 6912 Vel St.', 'primis@Cras.co.uk', '09 70 50 96 59'),
('8EB79C05-7675-BA1C-6EE0-C884D015A356', 'EMP41602i', 'LBB91BSE8ZZ', 'Craig', 'Charity', 'P.O. Box 607, 8770 Pede. Street', 'nulla.at.sem@Cras.ca', '03 62 64 08 83'),
('97825FFB-5243-EAE1-9184-F0F0EB7A55B8', 'EMP41598i', 'FZL71VIY8NQ', 'Hodges', 'Carlos', 'P.O. Box 219, 5502 Lobortis. Rd.', 'a@quisdiam.ca', '01 10 49 13 42'),
('B54A8142-24DB-C039-039C-14A13AFE2B1C', 'EMP41582i', 'EFH18MYF7HC', 'Webb', 'Chanda', 'Ap #622-7008 Massa. Ave', 'Proin.vel@PhasellusnullaInteger.com', '04 47 97 87 08'),
('F2486B95-620B-1132-A237-836DCF9F7509', 'EMP41586i', 'INC10TFT5JE', 'Jefferson', 'Nerea', 'P.O. Box 591, 901 Gravida Ave', 'vitae.nibh.Donec@aliquet.edu', '03 85 96 46 19'),
('F7C01166-D186-C6E1-F607-05751DD0E5BF', 'EMP41590i', 'MFG04QVS6DQ', 'Harvey', 'Damon', '835-5523 Donec St.', 'Phasellus.dolor@pedePraesenteu.co.uk', '05 81 35 41 67');

-- --------------------------------------------------------

--
-- Structure de la table `pdt_achete`
--

CREATE TABLE `pdt_achete` (
  `id_achat` int(11) NOT NULL,
  `Num_client` int(11) NOT NULL,
  `REFERENCE` int(11) NOT NULL,
  `date_achat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `pdt_achete`
--

INSERT INTO `pdt_achete` (`id_achat`, `Num_client`, `REFERENCE`, `date_achat`) VALUES
(1, 80, 1332, '2011-05-27'),
(2, 14, 976, '2005-12-25'),
(3, 111, 936, '2014-01-09'),
(4, 104, 636, '2012-09-18'),
(5, 115, 1502, '2014-05-03'),
(6, 111, 672, '2008-12-08'),
(7, 32, 1378, '2014-02-04'),
(8, 44, 1150, '2001-07-25'),
(9, 5, 152, '2018-04-07'),
(10, 116, 1177, '2020-05-16'),
(11, 101, 1115, '2002-01-01'),
(12, 72, 1555, '2012-04-23'),
(13, 57, 1174, '2014-02-02'),
(14, 101, 955, '2002-06-07'),
(15, 47, 1411, '2020-09-09'),
(16, 64, 1047, '2007-09-02'),
(17, 97, 843, '2003-10-24'),
(18, 64, 330, '2011-04-10'),
(19, 93, 444, '2007-08-06'),
(20, 28, 1128, '2008-09-04'),
(21, 66, 150, '2013-04-28'),
(22, 106, 809, '2006-12-23'),
(23, 1, 340, '2001-09-15'),
(24, 13, 1249, '2003-07-24'),
(25, 113, 241, '2010-12-14'),
(26, 108, 1419, '2018-11-11'),
(27, 29, 812, '2012-10-09'),
(28, 26, 1380, '2010-09-30'),
(29, 55, 750, '2003-08-28'),
(30, 85, 1005, '2012-12-19'),
(31, 62, 796, '2017-08-13'),
(32, 66, 1452, '2011-01-28'),
(33, 52, 170, '2018-07-17'),
(34, 80, 780, '2016-03-11'),
(35, 37, 322, '2016-01-27'),
(36, 107, 224, '2010-08-01'),
(37, 107, 915, '2013-12-09'),
(38, 101, 1258, '2006-03-31'),
(39, 75, 476, '2006-09-14'),
(40, 56, 1467, '2019-08-07'),
(41, 40, 69, '2009-01-24'),
(42, 111, 1542, '2004-06-19'),
(43, 13, 541, '2014-09-21'),
(44, 99, 1531, '2013-11-16'),
(45, 74, 985, '2002-09-08'),
(46, 36, 927, '2001-12-14'),
(47, 103, 134, '2003-04-26'),
(48, 109, 184, '2019-12-27'),
(49, 84, 508, '2013-03-28'),
(50, 3, 193, '2013-04-30'),
(51, 117, 1465, '2017-09-15'),
(52, 2, 526, '2012-03-23'),
(53, 102, 362, '2019-10-15'),
(54, 22, 863, '2001-11-25'),
(55, 69, 259, '2017-06-16'),
(56, 15, 1480, '2014-05-12'),
(57, 80, 231, '2012-08-31'),
(58, 57, 1046, '2021-05-10'),
(59, 112, 1125, '2008-06-12'),
(60, 54, 61, '2015-12-29'),
(61, 59, 459, '2005-05-24'),
(62, 97, 1038, '2015-01-19'),
(63, 57, 99, '2021-03-19'),
(64, 74, 1356, '2004-02-11'),
(65, 2, 204, '2018-11-25'),
(66, 108, 1157, '2009-08-29'),
(67, 109, 542, '2010-06-18'),
(68, 62, 1372, '2020-08-15'),
(69, 67, 1238, '2021-09-03'),
(70, 116, 132, '2009-08-20'),
(71, 50, 1475, '2007-06-06'),
(72, 95, 885, '2021-08-28'),
(73, 107, 1424, '2005-07-19'),
(74, 61, 261, '2010-10-20'),
(75, 42, 1271, '2021-06-19'),
(76, 90, 1195, '2019-11-13'),
(77, 100, 461, '2013-12-01'),
(78, 100, 627, '2007-11-20'),
(79, 25, 625, '2007-03-06'),
(80, 116, 292, '2005-01-17'),
(81, 65, 248, '2008-02-20'),
(82, 104, 789, '2005-07-20'),
(83, 34, 1206, '2014-11-02'),
(84, 41, 1208, '2002-01-23'),
(85, 54, 994, '2013-12-16'),
(86, 1, 1014, '2016-01-17'),
(87, 43, 259, '2002-06-03'),
(88, 55, 459, '2003-02-27'),
(89, 89, 752, '2004-02-05'),
(90, 68, 305, '2007-08-16'),
(91, 15, 18, '2011-08-06'),
(92, 118, 1353, '2013-03-02'),
(93, 81, 808, '2008-08-13'),
(94, 4, 115, '2018-04-04'),
(95, 40, 35, '2005-01-01'),
(96, 105, 1103, '2011-09-20'),
(97, 47, 920, '2002-05-03'),
(98, 117, 1455, '2008-10-31'),
(99, 109, 348, '2004-07-05'),
(100, 31, 1061, '2013-01-27'),
(101, 5, 1494, '2008-04-11'),
(102, 108, 462, '2017-09-04'),
(103, 85, 833, '2007-11-19'),
(104, 86, 87, '2015-11-27'),
(105, 31, 718, '2012-01-13'),
(106, 60, 707, '2017-07-01'),
(107, 9, 79, '2020-08-01'),
(108, 96, 1087, '2014-01-17'),
(109, 84, 893, '2002-01-30'),
(110, 104, 250, '2012-01-26'),
(111, 103, 983, '2010-01-07'),
(112, 47, 377, '2007-06-24'),
(113, 103, 1526, '2019-12-21'),
(114, 115, 777, '2007-04-02'),
(115, 13, 590, '2016-01-26'),
(116, 90, 702, '2006-05-25'),
(117, 81, 801, '2007-03-19'),
(118, 23, 1317, '2014-05-12'),
(119, 91, 719, '2010-04-04'),
(120, 100, 849, '2003-12-07'),
(121, 64, 148, '2007-03-05'),
(122, 4, 260, '2013-10-09'),
(123, 26, 807, '2017-04-02'),
(124, 65, 561, '2007-10-04'),
(125, 111, 1086, '2013-09-20'),
(126, 68, 1333, '2012-02-20'),
(127, 22, 1553, '2002-07-12'),
(128, 112, 1037, '2021-02-22'),
(129, 82, 145, '2007-11-13'),
(130, 48, 1205, '2020-08-13'),
(131, 46, 223, '2021-08-14'),
(132, 55, 198, '2010-06-05'),
(133, 94, 242, '2019-03-12'),
(134, 83, 190, '2009-12-19'),
(135, 68, 1057, '2019-03-08'),
(136, 30, 982, '2018-08-24'),
(137, 72, 901, '2004-06-19'),
(138, 102, 1542, '2001-05-11'),
(139, 29, 407, '2017-11-11'),
(140, 11, 21, '2009-05-01'),
(141, 73, 1468, '2010-08-18'),
(142, 101, 177, '2008-11-24'),
(143, 48, 610, '2016-11-11'),
(144, 111, 28, '2017-01-31'),
(145, 41, 113, '2009-12-18'),
(146, 78, 1168, '2007-11-30'),
(147, 98, 1146, '2007-08-07'),
(148, 97, 1546, '2014-03-17'),
(149, 21, 452, '2013-06-29'),
(150, 53, 130, '2010-03-26'),
(151, 6, 476, '2003-06-09'),
(152, 82, 482, '2020-02-05'),
(153, 38, 35, '2008-12-10'),
(154, 85, 183, '2001-04-15'),
(155, 80, 151, '2003-01-18'),
(156, 21, 686, '2010-01-23'),
(157, 54, 445, '2003-08-27'),
(158, 34, 366, '2002-08-12'),
(159, 48, 559, '2002-12-21'),
(160, 35, 128, '2020-08-26'),
(161, 6, 1571, '2015-03-27'),
(162, 6, 50, '2017-10-02'),
(163, 74, 668, '2016-08-27'),
(164, 36, 281, '2016-10-26'),
(165, 70, 332, '2010-01-27'),
(166, 117, 1363, '2001-11-10'),
(167, 97, 196, '2014-10-18'),
(168, 44, 577, '2018-05-23'),
(169, 64, 488, '2015-02-04'),
(170, 95, 899, '2021-03-09'),
(171, 20, 855, '2006-08-03'),
(172, 32, 1112, '2017-07-05'),
(173, 13, 724, '2006-04-05'),
(174, 94, 1276, '2002-10-25'),
(175, 5, 181, '2014-09-30'),
(176, 26, 402, '2016-12-21'),
(177, 77, 863, '2018-05-09'),
(178, 46, 1072, '2016-06-10'),
(179, 17, 255, '2007-09-19'),
(180, 91, 647, '2012-06-08'),
(181, 50, 183, '2006-10-26'),
(182, 82, 114, '2014-10-01'),
(183, 16, 915, '2020-06-28'),
(184, 108, 1457, '2009-11-14'),
(185, 67, 707, '2013-02-12'),
(186, 10, 1175, '2010-06-12'),
(187, 91, 1496, '2003-11-19'),
(188, 103, 1114, '2005-04-07'),
(189, 6, 521, '2015-01-03'),
(190, 91, 426, '2018-05-09'),
(191, 48, 447, '2011-01-09'),
(192, 18, 722, '2011-11-12'),
(193, 21, 1364, '2012-04-29'),
(194, 49, 1082, '2018-08-09'),
(195, 48, 236, '2007-10-25'),
(196, 20, 1, '2015-01-03'),
(197, 68, 474, '2004-02-21'),
(198, 26, 630, '2002-12-16'),
(199, 43, 315, '2018-10-16'),
(200, 9, 849, '2014-12-28'),
(201, 1, 543, '2016-11-20'),
(202, 109, 695, '2015-03-06'),
(203, 14, 537, '2011-06-29'),
(204, 13, 181, '2002-02-11'),
(205, 5, 495, '2016-04-29'),
(206, 115, 187, '2016-03-04'),
(207, 68, 1564, '2001-08-04'),
(208, 84, 651, '2016-01-06'),
(209, 31, 276, '2019-09-11'),
(210, 42, 889, '2002-03-26'),
(211, 56, 400, '2020-06-18'),
(212, 13, 683, '2003-05-21'),
(213, 66, 1503, '2002-10-04'),
(214, 67, 1551, '2018-08-17'),
(215, 10, 1150, '2010-07-05'),
(216, 27, 919, '2018-05-08'),
(217, 37, 288, '2010-06-22'),
(218, 46, 37, '2008-09-03'),
(219, 19, 266, '2013-05-12'),
(220, 112, 1511, '2021-06-15'),
(221, 2, 755, '2011-06-21'),
(222, 35, 340, '2016-01-14'),
(223, 80, 933, '2006-08-18'),
(224, 31, 92, '2002-04-30'),
(225, 45, 1463, '2012-03-23'),
(226, 69, 981, '2003-12-28'),
(227, 63, 937, '2005-06-21'),
(228, 108, 271, '2012-03-27'),
(229, 15, 197, '2014-01-21'),
(230, 2, 444, '2015-11-24'),
(231, 52, 1248, '2012-10-04'),
(232, 67, 1287, '2017-07-15'),
(233, 68, 1372, '2006-08-05'),
(234, 44, 738, '2015-01-26'),
(235, 106, 1384, '2015-11-28'),
(236, 61, 1414, '2015-04-09'),
(237, 106, 706, '2015-12-12'),
(238, 28, 274, '2014-09-19'),
(239, 13, 1303, '2021-10-23'),
(240, 11, 495, '2009-08-14'),
(241, 100, 1198, '2012-11-19'),
(242, 60, 1159, '2004-04-17'),
(243, 71, 204, '2008-12-19'),
(244, 113, 331, '2001-06-04'),
(245, 49, 1351, '2017-04-30'),
(246, 108, 758, '2019-04-26'),
(247, 47, 832, '2013-07-04'),
(248, 90, 852, '2016-09-14'),
(249, 81, 979, '2013-01-15'),
(250, 32, 110, '2006-03-09'),
(251, 107, 1001, '2004-08-16'),
(252, 48, 779, '2015-10-29'),
(253, 23, 311, '2002-10-15'),
(254, 7, 668, '2016-05-04'),
(255, 120, 1259, '2005-02-16'),
(256, 8, 762, '2014-09-03'),
(257, 7, 1162, '2005-10-07'),
(258, 91, 227, '2012-06-19'),
(259, 86, 665, '2001-07-24'),
(260, 71, 1105, '2007-12-07'),
(261, 89, 341, '2009-05-10'),
(262, 74, 1322, '2012-12-08'),
(263, 72, 504, '2017-05-06'),
(264, 90, 328, '2013-01-14'),
(265, 6, 954, '2020-07-06'),
(266, 86, 358, '2010-07-26'),
(267, 24, 436, '2010-11-17'),
(268, 70, 263, '2019-04-11'),
(269, 14, 1556, '2019-10-09'),
(270, 87, 46, '2021-08-18'),
(271, 35, 653, '2009-06-27'),
(272, 37, 27, '2016-01-13'),
(273, 100, 351, '2002-01-15'),
(274, 86, 207, '2013-08-06'),
(275, 34, 758, '2014-12-05'),
(276, 59, 684, '2009-02-02'),
(277, 66, 396, '2014-10-05'),
(278, 31, 982, '2008-10-26'),
(279, 17, 449, '2021-04-15'),
(280, 22, 1511, '2013-08-06'),
(281, 80, 521, '2018-05-08'),
(282, 65, 857, '2004-03-03'),
(283, 7, 501, '2008-03-11'),
(284, 38, 374, '2007-06-09'),
(285, 43, 1051, '2010-10-25'),
(286, 6, 554, '2015-01-30'),
(287, 68, 1239, '2010-05-27'),
(288, 88, 1459, '2012-07-15'),
(289, 58, 1357, '2017-04-13'),
(290, 106, 1144, '2012-05-11'),
(291, 24, 518, '2014-06-15'),
(292, 96, 1383, '2002-02-20'),
(293, 25, 328, '2008-08-26'),
(294, 103, 1148, '2012-01-24'),
(295, 79, 1133, '2016-10-07'),
(296, 12, 446, '2018-05-03'),
(297, 45, 34, '2009-06-26'),
(298, 8, 147, '2012-03-20'),
(299, 103, 1498, '2009-07-04'),
(300, 94, 846, '2007-12-17'),
(301, 85, 411, '2009-07-23'),
(302, 13, 889, '2019-07-06'),
(303, 85, 519, '2008-10-28'),
(304, 50, 1157, '2002-05-25'),
(305, 73, 1312, '2002-10-23'),
(306, 6, 1228, '2020-04-25'),
(307, 76, 1405, '2020-09-17'),
(308, 32, 1431, '2017-04-26'),
(309, 59, 245, '2017-11-25'),
(310, 55, 399, '2013-09-14'),
(311, 1, 560, '2011-08-30'),
(312, 84, 734, '2017-09-07'),
(313, 50, 489, '2017-07-10'),
(314, 20, 26, '2016-11-04'),
(315, 2, 818, '2004-09-16'),
(316, 56, 747, '2013-02-15'),
(317, 84, 302, '2008-06-28'),
(318, 14, 1354, '2010-11-28'),
(319, 52, 803, '2017-06-11'),
(320, 37, 307, '2003-11-02'),
(321, 96, 829, '2013-07-24'),
(322, 60, 951, '2007-10-26'),
(323, 19, 1066, '2003-08-28'),
(324, 31, 1027, '2007-04-17'),
(325, 98, 1480, '2010-02-07'),
(326, 23, 17, '2008-06-25'),
(327, 97, 1138, '2021-11-22'),
(328, 41, 776, '2001-12-08'),
(329, 4, 65, '2002-03-13'),
(330, 55, 1225, '2021-05-09'),
(331, 42, 421, '2020-10-23'),
(332, 62, 410, '2021-03-06'),
(333, 41, 1000, '2007-12-24'),
(334, 70, 26, '2010-05-11'),
(335, 110, 826, '2017-05-26'),
(336, 22, 757, '2002-05-11'),
(337, 99, 371, '2014-01-15'),
(338, 117, 1208, '2006-06-19'),
(339, 35, 1109, '2009-10-13'),
(340, 17, 1170, '2003-03-06'),
(341, 74, 1311, '2013-03-30'),
(342, 116, 217, '2019-01-12'),
(343, 36, 820, '2014-03-28'),
(344, 10, 184, '2009-12-16'),
(345, 75, 1506, '2004-04-26'),
(346, 49, 1500, '2012-09-24'),
(347, 20, 1573, '2008-04-25'),
(348, 8, 930, '2010-05-15'),
(349, 108, 1025, '2010-03-02'),
(350, 119, 534, '2012-03-19'),
(351, 70, 773, '2011-08-18'),
(352, 96, 1396, '2005-05-19'),
(353, 11, 263, '2010-12-12'),
(354, 6, 1573, '2006-01-26'),
(355, 65, 891, '2007-09-29'),
(356, 79, 340, '2016-08-10'),
(357, 49, 335, '2013-06-10'),
(358, 29, 43, '2002-01-26'),
(359, 5, 589, '2014-12-26'),
(360, 40, 809, '2021-08-29'),
(361, 89, 336, '2011-08-22'),
(362, 67, 1351, '2004-04-15'),
(363, 11, 1437, '2021-07-30'),
(364, 32, 258, '2020-11-17'),
(365, 16, 914, '2012-08-15'),
(366, 36, 550, '2008-04-09'),
(367, 96, 270, '2013-08-26'),
(368, 77, 173, '2011-03-09'),
(369, 8, 322, '2015-05-17'),
(370, 72, 1535, '2012-12-25'),
(371, 88, 133, '2001-10-22'),
(372, 112, 591, '2013-09-14'),
(373, 108, 738, '2007-08-13'),
(374, 74, 1031, '2018-09-28'),
(375, 62, 524, '2016-06-02'),
(376, 49, 4, '2004-08-30'),
(377, 78, 766, '2003-05-13'),
(378, 52, 387, '2009-10-26'),
(379, 49, 654, '2016-12-04'),
(380, 106, 940, '2011-05-28'),
(381, 96, 824, '2005-08-26'),
(382, 24, 14, '2010-01-23'),
(383, 79, 919, '2003-11-18'),
(384, 42, 567, '2007-11-05'),
(385, 98, 862, '2018-02-18'),
(386, 64, 423, '2010-06-08'),
(387, 109, 188, '2004-07-10'),
(388, 73, 304, '2003-07-10'),
(389, 79, 222, '2019-05-04'),
(390, 24, 434, '2009-05-01'),
(391, 55, 462, '2015-04-10'),
(392, 85, 394, '2003-02-13'),
(393, 54, 1185, '2010-05-31'),
(394, 120, 49, '2021-02-27'),
(395, 12, 67, '2002-10-13'),
(396, 5, 972, '2019-01-20'),
(397, 91, 618, '2020-06-14'),
(398, 112, 1099, '2009-03-20'),
(399, 106, 290, '2018-07-18'),
(400, 30, 382, '2003-09-28'),
(401, 81, 468, '2015-04-18'),
(402, 106, 894, '2006-08-23'),
(403, 80, 517, '2019-03-16'),
(404, 2, 596, '2005-02-02'),
(405, 27, 143, '2010-10-09'),
(406, 102, 1114, '2020-10-06'),
(407, 36, 247, '2014-07-22'),
(408, 104, 1383, '2009-02-10'),
(409, 109, 595, '2015-12-20'),
(410, 60, 1018, '2019-02-28'),
(411, 66, 890, '2021-03-21'),
(412, 24, 122, '2012-12-30'),
(413, 72, 1536, '2014-09-07'),
(414, 46, 1539, '2007-02-09'),
(415, 32, 554, '2017-05-19'),
(416, 51, 1417, '2018-01-02'),
(417, 86, 845, '2016-09-22'),
(418, 61, 1408, '2001-08-08'),
(419, 14, 749, '2016-06-10'),
(420, 50, 781, '2013-09-26'),
(421, 99, 1227, '2009-10-06'),
(422, 43, 800, '2004-04-16'),
(423, 5, 751, '2012-04-06'),
(424, 59, 1408, '2004-08-03'),
(425, 39, 674, '2013-08-31'),
(426, 49, 29, '2018-08-20'),
(427, 58, 637, '2021-02-12'),
(428, 14, 610, '2014-03-10'),
(429, 35, 734, '2010-08-08'),
(430, 30, 407, '2003-05-20'),
(431, 83, 392, '2008-10-21'),
(432, 40, 870, '2009-08-07'),
(433, 60, 349, '2003-01-24'),
(434, 72, 987, '2015-05-21'),
(435, 11, 761, '2021-05-06'),
(436, 50, 577, '2012-11-02'),
(437, 7, 492, '2013-10-27'),
(438, 27, 436, '2013-03-11'),
(439, 6, 1241, '2012-11-10'),
(440, 14, 883, '2014-03-02'),
(441, 7, 877, '2012-12-23'),
(442, 6, 273, '2015-10-05'),
(443, 30, 1432, '2018-02-22'),
(444, 112, 965, '2012-09-03'),
(445, 108, 727, '2020-01-27'),
(446, 79, 602, '2019-10-30'),
(447, 71, 1274, '2011-11-25'),
(448, 52, 1516, '2001-06-03'),
(449, 75, 292, '2015-05-15'),
(450, 79, 573, '2016-02-23'),
(451, 51, 621, '2020-10-23'),
(452, 45, 1121, '2011-06-21'),
(453, 34, 738, '2014-11-26'),
(454, 106, 985, '2005-09-02'),
(455, 27, 1410, '2012-05-29'),
(456, 9, 636, '2003-11-16'),
(457, 55, 972, '2011-01-02'),
(458, 93, 1087, '2007-03-01'),
(459, 108, 1065, '2007-02-26'),
(460, 43, 157, '2003-04-04'),
(461, 63, 108, '2007-11-19'),
(462, 14, 1082, '2011-01-12'),
(463, 76, 731, '2011-04-26'),
(464, 68, 933, '2003-10-11'),
(465, 53, 545, '2001-04-27'),
(466, 116, 867, '2005-08-06'),
(467, 102, 1500, '2016-07-30'),
(468, 94, 201, '2019-10-04'),
(469, 39, 173, '2007-01-14'),
(470, 26, 1054, '2019-04-10'),
(471, 100, 1353, '2013-06-24'),
(472, 69, 705, '2016-05-04'),
(473, 81, 646, '2019-02-13'),
(474, 42, 158, '2004-06-03'),
(475, 115, 863, '2016-12-30'),
(476, 106, 1270, '2001-03-04'),
(477, 102, 631, '2012-08-26'),
(478, 54, 803, '2010-09-16'),
(479, 99, 177, '2002-06-15'),
(480, 12, 1074, '2020-01-30'),
(481, 49, 1074, '2015-01-12'),
(482, 2, 899, '2019-02-04'),
(483, 61, 378, '2008-10-03'),
(484, 56, 589, '2014-05-01'),
(485, 72, 411, '2008-02-14'),
(486, 104, 1554, '2004-01-26'),
(487, 1, 1225, '2013-07-31'),
(488, 48, 1150, '2011-06-13'),
(489, 86, 906, '2008-04-02'),
(490, 11, 739, '2007-12-24'),
(491, 63, 779, '2006-09-19'),
(492, 43, 637, '2006-08-07'),
(493, 9, 926, '2003-04-24'),
(494, 87, 339, '2021-04-26'),
(495, 110, 80, '2020-04-10'),
(496, 96, 160, '2004-11-07'),
(497, 15, 1355, '2012-10-23'),
(498, 107, 121, '2008-10-27'),
(499, 45, 1157, '2008-12-21'),
(500, 113, 283, '2008-05-30'),
(501, 7, 11, '2021-11-17'),
(502, 121, 1047, '2021-11-17'),
(503, 1, 1, '2021-11-18'),
(504, 122, 802, '2021-11-22'),
(505, 6, 4, '2021-11-22'),
(506, 4, 4, '2021-11-22'),
(507, 4, 4, '2021-11-22'),
(508, 5, 7, '2021-11-22'),
(509, 20, 9, '2021-11-23'),
(510, 11, 852, '2021-11-23'),
(511, 121, 1112, '2021-11-23'),
(512, 15, 16, '2021-11-23'),
(513, 35, 1491, '2021-11-23'),
(514, 121, 911, '2021-11-23');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `reference` int(11) NOT NULL,
  `marque` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `produit`
--
INSERT INTO produit VALUES ("1", "AIWAYS", "U5", "24262", "4");
INSERT INTO produit VALUES ("2", "ALEKO", "2141", "12498", "17");
INSERT INTO produit VALUES ("3", "ALFA ROMEO", "1300", "25403", "7");
INSERT INTO produit VALUES ("4", "ALFA ROMEO", "1600", "22408", "0");
INSERT INTO produit VALUES ("5", "ALFA ROMEO", "164", "17167", "8");
INSERT INTO produit VALUES ("6", "ALFA ROMEO", "1750", "10621", "7");
INSERT INTO produit VALUES ("7", "ALFA ROMEO", "2000", "37370", "0");
INSERT INTO produit VALUES ("8", "ALFA ROMEO", "4C", "15608", "11");
INSERT INTO produit VALUES ("9", "ALFA ROMEO", "ALFA 145", "24055", "14");
INSERT INTO produit VALUES ("10", "ALFA ROMEO", "ALFA 146", "24818", "15");
INSERT INTO produit VALUES ("11", "ALFA ROMEO", "ALFA 147", "30924", "8");
INSERT INTO produit VALUES ("12", "ALFA ROMEO", "ALFA 155", "35756", "15");
INSERT INTO produit VALUES ("13", "ALFA ROMEO", "ALFA 156", "32428", "19");
INSERT INTO produit VALUES ("14", "ALFA ROMEO", "ALFA 159", "20604", "8");
INSERT INTO produit VALUES ("15", "ALFA ROMEO", "ALFA 159 SW", "39776", "20");
INSERT INTO produit VALUES ("16", "ALFA ROMEO", "ALFA 166", "28762", "12");
INSERT INTO produit VALUES ("17", "ALFA ROMEO", "ALFA 33", "28368", "9");
INSERT INTO produit VALUES ("18", "ALFA ROMEO", "ALFA 6", "37459", "1");
INSERT INTO produit VALUES ("19", "ALFA ROMEO", "ALFA 75", "21739", "10");
INSERT INTO produit VALUES ("20", "ALFA ROMEO", "ALFA 90", "30923", "7");
INSERT INTO produit VALUES ("21", "ALFA ROMEO", "ALFA GT", "39824", "11");
INSERT INTO produit VALUES ("22", "ALFA ROMEO", "ALFA GTV", "31210", "15");
INSERT INTO produit VALUES ("23", "ALFA ROMEO", "ALFA-SUD", "22857", "4");
INSERT INTO produit VALUES ("24", "ALFA ROMEO", "ALFETTA", "20079", "15");
INSERT INTO produit VALUES ("25", "ALFA ROMEO", "BRERA", "17214", "15");
INSERT INTO produit VALUES ("26", "ALFA ROMEO", "CROSSWAGON", "12413", "4");
INSERT INTO produit VALUES ("27", "ALFA ROMEO", "GIULIA", "31295", "0");
INSERT INTO produit VALUES ("28", "ALFA ROMEO", "GIULIETTA", "31360", "18");
INSERT INTO produit VALUES ("29", "ALFA ROMEO", "MITO", "15920", "7");
INSERT INTO produit VALUES ("30", "ALFA ROMEO", "RZ", "38221", "5");
INSERT INTO produit VALUES ("31", "ALFA ROMEO", "SPIDER", "8330", "19");
INSERT INTO produit VALUES ("32", "ALFA ROMEO", "SPORTWAGON", "26542", "9");
INSERT INTO produit VALUES ("33", "ALFA ROMEO", "SPRINT", "17873", "11");
INSERT INTO produit VALUES ("34", "ALFA ROMEO", "STELVIO", "10785", "18");
INSERT INTO produit VALUES ("35", "ALFA ROMEO", "SZ", "26643", "15");
INSERT INTO produit VALUES ("36", "ALPINE RENAULT", "A110", "22447", "1");
INSERT INTO produit VALUES ("37", "ALPINE RENAULT", "A110 II", "75042", "20");
INSERT INTO produit VALUES ("38", "ALPINE RENAULT", "A310", "32011", "16");
INSERT INTO produit VALUES ("39", "ALPINE RENAULT", "A610", "39255", "9");
INSERT INTO produit VALUES ("40", "ALPINE RENAULT", "LE MANS", "46599", "15");
INSERT INTO produit VALUES ("41", "ALPINE RENAULT", "V6", "63418", "9");
INSERT INTO produit VALUES ("42", "ARO", "4X4", "77811", "1");
INSERT INTO produit VALUES ("43", "ARO", "SPARTANA", "69839", "3");
INSERT INTO produit VALUES ("44", "ASIA", "ROCSTA", "69962", "1");
INSERT INTO produit VALUES ("45", "ASTON MARTIN", "CYGNET", "49749", "10");
INSERT INTO produit VALUES ("46", "AUDI", "100", "46738", "8");
INSERT INTO produit VALUES ("47", "AUDI", "200", "28156", "11");
INSERT INTO produit VALUES ("48", "AUDI", "50", "77787", "3");
INSERT INTO produit VALUES ("49", "AUDI", "60", "25705", "1");
INSERT INTO produit VALUES ("50", "AUDI", "70", "26792", "20");
INSERT INTO produit VALUES ("51", "AUDI", "75", "63943", "5");
INSERT INTO produit VALUES ("52", "AUDI", "80", "70923", "7");
INSERT INTO produit VALUES ("53", "AUDI", "90", "25143", "1");
INSERT INTO produit VALUES ("54", "AUDI", "A1", "41644", "4");
INSERT INTO produit VALUES ("55", "AUDI", "A1 II", "48161", "8");
INSERT INTO produit VALUES ("56", "AUDI", "A2", "46886", "6");
INSERT INTO produit VALUES ("57", "AUDI", "A3", "51328", "9");
INSERT INTO produit VALUES ("58", "AUDI", "A3 *", "35463", "0");
INSERT INTO produit VALUES ("59", "AUDI", "A3 IV", "50582", "16");
INSERT INTO produit VALUES ("60", "AUDI", "A3 SPORTBACK", "18715", "13");
INSERT INTO produit VALUES ("61", "AUDI", "A4", "46075", "8");
INSERT INTO produit VALUES ("62", "AUDI", "A4 III - IV", "39425", "15");
INSERT INTO produit VALUES ("63", "AUDI", "A4 V", "35880", "3");
INSERT INTO produit VALUES ("64", "AUDI", "A5", "26125", "19");
INSERT INTO produit VALUES ("65", "AUDI", "A5 SPORTBACK", "48352", "2");
INSERT INTO produit VALUES ("66", "AUDI", "A6", "24705", "8");
INSERT INTO produit VALUES ("67", "AUDI", "A6 III", "64600", "5");
INSERT INTO produit VALUES ("68", "AUDI", "A6 IV", "56517", "9");
INSERT INTO produit VALUES ("69", "AUDI", "A6 V", "73563", "9");
INSERT INTO produit VALUES ("70", "AUDI", "A7", "78334", "0");
INSERT INTO produit VALUES ("71", "AUDI", "A8", "48107", "20");
INSERT INTO produit VALUES ("72", "AUDI", "ALLROAD", "22857", "0");
INSERT INTO produit VALUES ("73", "AUDI", "CABRIOLET", "63345", "7");
INSERT INTO produit VALUES ("74", "AUDI", "COUPE", "77004", "4");
INSERT INTO produit VALUES ("75", "AUDI", "E-TRON", "49659", "13");
INSERT INTO produit VALUES ("76", "AUDI", "E-TRON GT", "37281", "15");
INSERT INTO produit VALUES ("77", "AUDI", "GT", "50086", "19");
INSERT INTO produit VALUES ("78", "AUDI", "Q2", "37757", "6");
INSERT INTO produit VALUES ("79", "AUDI", "Q3", "67320", "1");
INSERT INTO produit VALUES ("80", "AUDI", "Q3 II", "73463", "14");
INSERT INTO produit VALUES ("81", "AUDI", "Q4 E-TRON", "70494", "16");
INSERT INTO produit VALUES ("82", "AUDI", "Q5", "53213", "0");
INSERT INTO produit VALUES ("83", "AUDI", "Q7", "49097", "15");
INSERT INTO produit VALUES ("84", "AUDI", "Q8", "49925", "18");
INSERT INTO produit VALUES ("85", "AUDI", "QUATTRO", "39510", "2");
INSERT INTO produit VALUES ("86", "AUDI", "R8", "42244", "18");
INSERT INTO produit VALUES ("87", "AUDI", "RO 80", "67774", "17");
INSERT INTO produit VALUES ("88", "AUDI", "RS3", "24295", "12");
INSERT INTO produit VALUES ("89", "AUDI", "RS4", "33468", "7");
INSERT INTO produit VALUES ("90", "AUDI", "RS5", "68071", "10");
INSERT INTO produit VALUES ("91", "AUDI", "RS6", "77900", "20");
INSERT INTO produit VALUES ("92", "AUDI", "RS7", "23269", "10");
INSERT INTO produit VALUES ("93", "AUDI", "S1", "26084", "3");
INSERT INTO produit VALUES ("94", "AUDI", "S3", "19499", "16");
INSERT INTO produit VALUES ("95", "AUDI", "S3 IV", "43113", "7");
INSERT INTO produit VALUES ("96", "AUDI", "S3 SPORTBACK", "66973", "14");
INSERT INTO produit VALUES ("97", "AUDI", "S4", "14792", "2");
INSERT INTO produit VALUES ("98", "AUDI", "S5", "20529", "4");
INSERT INTO produit VALUES ("99", "AUDI", "S6", "49652", "11");
INSERT INTO produit VALUES ("100", "AUDI", "S6 V", "32692", "9");
INSERT INTO produit VALUES ("101", "AUDI", "S7", "17255", "20");
INSERT INTO produit VALUES ("102", "AUDI", "S7 II", "61882", "16");
INSERT INTO produit VALUES ("103", "AUDI", "S8", "45606", "13");
INSERT INTO produit VALUES ("104", "AUDI", "TT", "76934", "10");
INSERT INTO produit VALUES ("105", "AUDI", "V8", "78681", "14");
INSERT INTO produit VALUES ("106", "AUSTIN", "850", "18792", "16");
INSERT INTO produit VALUES ("107", "AUSTIN", "ALLEGRO", "69242", "4");
INSERT INTO produit VALUES ("108", "AUSTIN", "JEEP", "46528", "7");
INSERT INTO produit VALUES ("109", "AUSTIN", "MAESTRO", "30819", "5");
INSERT INTO produit VALUES ("110", "AUSTIN", "METRO", "54203", "13");
INSERT INTO produit VALUES ("111", "AUSTIN", "MINI", "78108", "14");
INSERT INTO produit VALUES ("112", "AUSTIN", "MONTEGO", "45885", "10");
INSERT INTO produit VALUES ("113", "AUSTIN", "MORRISITAL", "31819", "5");
INSERT INTO produit VALUES ("114", "AUSTIN", "PRINCESS", "35468", "16");
INSERT INTO produit VALUES ("115", "AUSTIN", "SHERPA", "42811", "18");
INSERT INTO produit VALUES ("116", "AUTOBIANCHI", "500", "35612", "18");
INSERT INTO produit VALUES ("117", "AUTOBIANCHI", "A111", "76474", "2");
INSERT INTO produit VALUES ("118", "AUTOBIANCHI", "A112", "24875", "6");
INSERT INTO produit VALUES ("119", "AUTOBIANCHI", "PRIMULA", "35505", "4");
INSERT INTO produit VALUES ("120", "AUTOBIANCHI", "Y10", "59763", "5");
INSERT INTO produit VALUES ("121", "AUVERLAND", "A3", "15362", "0");
INSERT INTO produit VALUES ("122", "BEDFORD", "CF", "42430", "15");
INSERT INTO produit VALUES ("123", "BEDFORD", "MIDI", "62938", "7");
INSERT INTO produit VALUES ("124", "BEE BEE AUTOMOTIVE", "BEE BEE XS", "37862", "13");
INSERT INTO produit VALUES ("125", "BENTLEY", "ARNAGE", "16245", "12");
INSERT INTO produit VALUES ("126", "BENTLEY", "AZURE T", "62590", "5");
INSERT INTO produit VALUES ("127", "BENTLEY", "BROOKLANDS", "45546", "16");
INSERT INTO produit VALUES ("128", "BENTLEY", "CONTINENTAL FLYING SPUR", "74072", "14");
INSERT INTO produit VALUES ("129", "BENTLEY", "CONTINENTAL GT", "41332", "12");
INSERT INTO produit VALUES ("130", "BENTLEY", "MULSANNE", "27412", "15");
INSERT INTO produit VALUES ("131", "BERTONE", "4X4", "78558", "13");
INSERT INTO produit VALUES ("132", "BMW", "1502", "24963", "3");
INSERT INTO produit VALUES ("133", "BMW", "1600", "28558", "6");
INSERT INTO produit VALUES ("134", "BMW", "1602", "34668", "13");
INSERT INTO produit VALUES ("135", "BMW", "1800", "65325", "8");
INSERT INTO produit VALUES ("136", "BMW", "1802", "69998", "18");
INSERT INTO produit VALUES ("137", "BMW", "2000", "70480", "13");
INSERT INTO produit VALUES ("138", "BMW", "2002", "19755", "3");
INSERT INTO produit VALUES ("139", "BMW", "2500", "68922", "1");
INSERT INTO produit VALUES ("140", "BMW", "3", "44973", "5");
INSERT INTO produit VALUES ("141", "BMW", "3,3", "52362", "7");
INSERT INTO produit VALUES ("142", "BMW", "315", "25362", "9");
INSERT INTO produit VALUES ("143", "BMW", "316", "61466", "4");
INSERT INTO produit VALUES ("144", "BMW", "318", "65088", "10");
INSERT INTO produit VALUES ("145", "BMW", "320", "71801", "6");
INSERT INTO produit VALUES ("146", "BMW", "323", "21200", "6");
INSERT INTO produit VALUES ("147", "BMW", "324", "63676", "6");
INSERT INTO produit VALUES ("148", "BMW", "325", "61749", "1");
INSERT INTO produit VALUES ("149", "BMW", "328", "79256", "0");
INSERT INTO produit VALUES ("150", "BMW", "330", "68488", "19");
INSERT INTO produit VALUES ("151", "BMW", "518", "75634", "14");
INSERT INTO produit VALUES ("152", "BMW", "520", "23788", "15");
INSERT INTO produit VALUES ("153", "BMW", "523", "34518", "1");
INSERT INTO produit VALUES ("154", "BMW", "524", "60844", "3");
INSERT INTO produit VALUES ("155", "BMW", "525", "63993", "13");
INSERT INTO produit VALUES ("156", "BMW", "528", "16530", "1");
INSERT INTO produit VALUES ("157", "BMW", "530", "58178", "15");
INSERT INTO produit VALUES ("158", "BMW", "535", "41235", "7");
INSERT INTO produit VALUES ("159", "BMW", "540", "52688", "2");
INSERT INTO produit VALUES ("160", "BMW", "545", "57918", "12");
INSERT INTO produit VALUES ("161", "BMW", "550", "57895", "11");
INSERT INTO produit VALUES ("162", "BMW", "628", "71310", "8");
INSERT INTO produit VALUES ("163", "BMW", "630", "54018", "6");
INSERT INTO produit VALUES ("164", "BMW", "633", "25041", "17");
INSERT INTO produit VALUES ("165", "BMW", "635", "25190", "5");
INSERT INTO produit VALUES ("166", "BMW", "645", "26341", "14");
INSERT INTO produit VALUES ("167", "BMW", "650", "75337", "19");
INSERT INTO produit VALUES ("168", "BMW", "725", "21620", "7");
INSERT INTO produit VALUES ("169", "BMW", "728", "58492", "16");
INSERT INTO produit VALUES ("170", "BMW", "730", "39978", "18");
INSERT INTO produit VALUES ("171", "BMW", "732", "26350", "16");
INSERT INTO produit VALUES ("172", "BMW", "733", "23073", "11");
INSERT INTO produit VALUES ("173", "BMW", "735", "24455", "8");
INSERT INTO produit VALUES ("174", "BMW", "740", "18893", "20");
INSERT INTO produit VALUES ("175", "BMW", "745", "35544", "15");
INSERT INTO produit VALUES ("176", "BMW", "750", "78771", "20");
INSERT INTO produit VALUES ("177", "BMW", "760", "21594", "10");
INSERT INTO produit VALUES ("178", "BMW", "840", "29692", "11");
INSERT INTO produit VALUES ("179", "BMW", "850", "56677", "10");
INSERT INTO produit VALUES ("180", "BMW", "I3", "58251", "5");
INSERT INTO produit VALUES ("181", "BMW", "I8", "50029", "10");
INSERT INTO produit VALUES ("182", "BMW", "IX", "43633", "16");
INSERT INTO produit VALUES ("183", "BMW", "L7", "33256", "0");
INSERT INTO produit VALUES ("184", "BMW", "M2", "69457", "14");
INSERT INTO produit VALUES ("185", "BMW", "M3", "67605", "16");
INSERT INTO produit VALUES ("186", "BMW", "M4", "56183", "3");
INSERT INTO produit VALUES ("187", "BMW", "M5", "23046", "7");
INSERT INTO produit VALUES ("188", "BMW", "M535", "44738", "1");
INSERT INTO produit VALUES ("189", "BMW", "M6", "68173", "14");
INSERT INTO produit VALUES ("190", "BMW", "M635", "61641", "10");
INSERT INTO produit VALUES ("191", "BMW", "M8", "15335", "0");
INSERT INTO produit VALUES ("192", "BMW", "SERIE 1", "28807", "5");
INSERT INTO produit VALUES ("193", "BMW", "SERIE 1 II", "32791", "3");
INSERT INTO produit VALUES ("194", "BMW", "SERIE 1 III", "45635", "18");
INSERT INTO produit VALUES ("195", "BMW", "SERIE 2", "69330", "0");
INSERT INTO produit VALUES ("196", "BMW", "SERIE 2 II", "76770", "7");
INSERT INTO produit VALUES ("197", "BMW", "SERIE 3", "73484", "2");
INSERT INTO produit VALUES ("198", "BMW", "SERIE 3 (SUITE)", "28264", "6");
INSERT INTO produit VALUES ("199", "BMW", "SERIE 3 VI", "46092", "4");
INSERT INTO produit VALUES ("200", "BMW", "SERIE 3 VII", "37346", "1");
INSERT INTO produit VALUES ("201", "BMW", "SERIE 4", "31068", "14");
INSERT INTO produit VALUES ("202", "BMW", "SERIE 4 II", "43806", "9");
INSERT INTO produit VALUES ("203", "BMW", "SERIE 5", "64250", "3");
INSERT INTO produit VALUES ("204", "BMW", "SERIE 6", "72994", "20");
INSERT INTO produit VALUES ("205", "BMW", "SERIE 7", "16029", "4");
INSERT INTO produit VALUES ("206", "BMW", "SERIE 8", "23107", "8");
INSERT INTO produit VALUES ("207", "BMW", "X1", "25191", "14");
INSERT INTO produit VALUES ("208", "BMW", "X2", "15490", "5");
INSERT INTO produit VALUES ("209", "BMW", "X3", "48981", "1");
INSERT INTO produit VALUES ("210", "BMW", "X4", "77712", "0");
INSERT INTO produit VALUES ("211", "BMW", "X4 II", "46452", "15");
INSERT INTO produit VALUES ("212", "BMW", "X5", "27392", "18");
INSERT INTO produit VALUES ("213", "BMW", "X5 IV", "14563", "11");
INSERT INTO produit VALUES ("214", "BMW", "X6", "27813", "20");
INSERT INTO produit VALUES ("215", "BMW", "X6 III", "56777", "7");
INSERT INTO produit VALUES ("216", "BMW", "X7", "69317", "14");
INSERT INTO produit VALUES ("217", "BMW", "Z1", "63465", "20");
INSERT INTO produit VALUES ("218", "BMW", "Z3", "69782", "17");
INSERT INTO produit VALUES ("219", "BMW", "Z4", "30348", "9");
INSERT INTO produit VALUES ("220", "BMW", "Z8", "62010", "18");
INSERT INTO produit VALUES ("221", "BUICK", "PARKAVENUE", "59816", "6");
INSERT INTO produit VALUES ("222", "CADILLAC", "CTS", "56480", "2");
INSERT INTO produit VALUES ("223", "CADILLAC", "ELDORADO", "25908", "20");
INSERT INTO produit VALUES ("224", "CADILLAC", "ESCALADE", "45776", "19");
INSERT INTO produit VALUES ("225", "CADILLAC", "SEVILLE", "27649", "1");
INSERT INTO produit VALUES ("226", "CHEVROLET", "ALERO", "79457", "3");
INSERT INTO produit VALUES ("227", "CHEVROLET", "AVEO", "79351", "13");
INSERT INTO produit VALUES ("228", "CHEVROLET", "BERETTA", "16752", "20");
INSERT INTO produit VALUES ("229", "CHEVROLET", "BLAZER", "64083", "15");
INSERT INTO produit VALUES ("230", "CHEVROLET", "CAMARO", "29494", "20");
INSERT INTO produit VALUES ("231", "CHEVROLET", "CAPTIVA", "58865", "11");
INSERT INTO produit VALUES ("232", "CHEVROLET", "CORSICA", "73810", "14");
INSERT INTO produit VALUES ("233", "CHEVROLET", "CORVETTE", "19333", "12");
INSERT INTO produit VALUES ("234", "CHEVROLET", "CRUZE", "76423", "11");
INSERT INTO produit VALUES ("235", "CHEVROLET", "EPICA", "18822", "16");
INSERT INTO produit VALUES ("236", "CHEVROLET", "EVANDA", "58230", "10");
INSERT INTO produit VALUES ("237", "CHEVROLET", "KALOS", "17967", "5");
INSERT INTO produit VALUES ("238", "CHEVROLET", "LACETTI", "74985", "13");
INSERT INTO produit VALUES ("239", "CHEVROLET", "MALIBU", "26813", "0");
INSERT INTO produit VALUES ("240", "CHEVROLET", "MATIZ", "61806", "18");
INSERT INTO produit VALUES ("241", "CHEVROLET", "NUBIRA", "70442", "20");
INSERT INTO produit VALUES ("242", "CHEVROLET", "ORLANDO", "27278", "10");
INSERT INTO produit VALUES ("243", "CHEVROLET", "REZZO", "66561", "16");
INSERT INTO produit VALUES ("244", "CHEVROLET", "SPARK", "43558", "0");
INSERT INTO produit VALUES ("245", "CHEVROLET", "TRANS SPORT", "48124", "2");
INSERT INTO produit VALUES ("246", "CHEVROLET", "TRAX", "22014", "10");
INSERT INTO produit VALUES ("247", "CHEVROLET", "VOLT", "22362", "18");
INSERT INTO produit VALUES ("248", "CHRYSLER", "300C", "49048", "7");
INSERT INTO produit VALUES ("249", "CHRYSLER", "300M", "76750", "8");
INSERT INTO produit VALUES ("250", "CHRYSLER", "CROSSFIRE", "33068", "3");
INSERT INTO produit VALUES ("251", "CHRYSLER", "ES", "20783", "15");
INSERT INTO produit VALUES ("252", "CHRYSLER", "GRAND VOYAGER", "35771", "0");
INSERT INTO produit VALUES ("253", "CHRYSLER", "LE BARON", "18871", "13");
INSERT INTO produit VALUES ("254", "CHRYSLER", "NEON", "17190", "13");
INSERT INTO produit VALUES ("255", "CHRYSLER", "NEW YORKER", "37312", "20");
INSERT INTO produit VALUES ("256", "CHRYSLER", "PT CRUISER", "45289", "0");
INSERT INTO produit VALUES ("257", "CHRYSLER", "SARATOGA", "23207", "9");
INSERT INTO produit VALUES ("258", "CHRYSLER", "SEBRING", "77466", "10");
INSERT INTO produit VALUES ("259", "CHRYSLER", "STRATUS", "15110", "3");
INSERT INTO produit VALUES ("260", "CHRYSLER", "VIPER", "66112", "9");
INSERT INTO produit VALUES ("261", "CHRYSLER", "VISION", "66902", "17");
INSERT INTO produit VALUES ("262", "CHRYSLER", "VOYAGER", "45565", "5");
INSERT INTO produit VALUES ("263", "CITROEN", "2 CV", "24557", "20");
INSERT INTO produit VALUES ("264", "CITROEN", "ACADIANE", "18092", "3");
INSERT INTO produit VALUES ("265", "CITROEN", "AK", "22793", "4");
INSERT INTO produit VALUES ("266", "CITROEN", "AMI", "19086", "18");
INSERT INTO produit VALUES ("267", "CITROEN", "AX", "36149", "16");
INSERT INTO produit VALUES ("268", "CITROEN", "AXEL", "27100", "20");
INSERT INTO produit VALUES ("269", "CITROEN", "AZU", "31413", "8");
INSERT INTO produit VALUES ("270", "CITROEN", "BERLINGO", "21195", "15");
INSERT INTO produit VALUES ("271", "CITROEN", "BERLINGO II", "30291", "3");
INSERT INTO produit VALUES ("272", "CITROEN", "BERLINGO III", "18371", "12");
INSERT INTO produit VALUES ("273", "CITROEN", "BX", "16998", "16");
INSERT INTO produit VALUES ("274", "CITROEN", "C-CROSSER", "35962", "14");
INSERT INTO produit VALUES ("275", "CITROEN", "C-ELYSEE", "30971", "11");
INSERT INTO produit VALUES ("276", "CITROEN", "C-ZERO", "20453", "1");
INSERT INTO produit VALUES ("277", "CITROEN", "C1", "27763", "6");
INSERT INTO produit VALUES ("278", "CITROEN", "C15", "28167", "19");
INSERT INTO produit VALUES ("279", "CITROEN", "C2", "12321", "0");
INSERT INTO produit VALUES ("280", "CITROEN", "C25", "21783", "18");
INSERT INTO produit VALUES ("281", "CITROEN", "C25 COMBI", "39684", "8");
INSERT INTO produit VALUES ("282", "CITROEN", "C3", "39340", "3");
INSERT INTO produit VALUES ("283", "CITROEN", "C3 AIRCROSS", "23540", "20");
INSERT INTO produit VALUES ("284", "CITROEN", "C3 II", "35381", "20");
INSERT INTO produit VALUES ("285", "CITROEN", "C3 III", "12968", "4");
INSERT INTO produit VALUES ("286", "CITROEN", "C3 PICASSO", "39313", "20");
INSERT INTO produit VALUES ("287", "CITROEN", "C3 PLURIEL", "19969", "18");
INSERT INTO produit VALUES ("288", "CITROEN", "C35", "30019", "4");
INSERT INTO produit VALUES ("289", "CITROEN", "C4", "33252", "15");
INSERT INTO produit VALUES ("290", "CITROEN", "C4 AIRCROSS", "33524", "2");
INSERT INTO produit VALUES ("291", "CITROEN", "C4 CACTUS", "37366", "20");
INSERT INTO produit VALUES ("292", "CITROEN", "C4 II", "39019", "0");
INSERT INTO produit VALUES ("293", "CITROEN", "C4 III", "30727", "9");
INSERT INTO produit VALUES ("294", "CITROEN", "C4 PICASSO", "34229", "17");
INSERT INTO produit VALUES ("295", "CITROEN", "C4 PICASSO II", "9149", "10");
INSERT INTO produit VALUES ("296", "CITROEN", "C4 SPACETOURER", "8245", "15");
INSERT INTO produit VALUES ("297", "CITROEN", "C5", "19167", "0");
INSERT INTO produit VALUES ("298", "CITROEN", "C5 AIRCROSS", "17218", "16");
INSERT INTO produit VALUES ("299", "CITROEN", "C5 II", "11881", "2");
INSERT INTO produit VALUES ("300", "CITROEN", "C5 II TOURER", "17689", "8");
INSERT INTO produit VALUES ("301", "CITROEN", "C5 X", "9859", "2");
INSERT INTO produit VALUES ("302", "CITROEN", "C6", "16551", "3");
INSERT INTO produit VALUES ("303", "CITROEN", "C8", "11077", "6");
INSERT INTO produit VALUES ("304", "CITROEN", "CX", "26569", "16");
INSERT INTO produit VALUES ("305", "CITROEN", "CX SERIE2", "19874", "9");
INSERT INTO produit VALUES ("306", "CITROEN", "D", "33505", "14");
INSERT INTO produit VALUES ("307", "CITROEN", "DANGEL C15", "31604", "11");
INSERT INTO produit VALUES ("308", "CITROEN", "DANGEL C25", "32966", "13");
INSERT INTO produit VALUES ("309", "CITROEN", "DS", "14193", "2");
INSERT INTO produit VALUES ("310", "CITROEN", "DS3", "20620", "18");
INSERT INTO produit VALUES ("311", "CITROEN", "DS4", "21775", "6");
INSERT INTO produit VALUES ("312", "CITROEN", "DS5", "10615", "8");
INSERT INTO produit VALUES ("313", "CITROEN", "DYANE", "18373", "12");
INSERT INTO produit VALUES ("314", "CITROEN", "EVASION", "33623", "3");
INSERT INTO produit VALUES ("315", "CITROEN", "GS", "35425", "17");
INSERT INTO produit VALUES ("316", "CITROEN", "GSA", "35090", "13");
INSERT INTO produit VALUES ("317", "CITROEN", "HY", "13369", "9");
INSERT INTO produit VALUES ("318", "CITROEN", "ID", "10597", "18");
INSERT INTO produit VALUES ("319", "CITROEN", "JUMPER", "35477", "13");
INSERT INTO produit VALUES ("320", "CITROEN", "JUMPY", "15420", "5");
INSERT INTO produit VALUES ("321", "CITROEN", "KATAR", "37067", "14");
INSERT INTO produit VALUES ("322", "CITROEN", "LN", "32778", "13");
INSERT INTO produit VALUES ("323", "CITROEN", "LNA", "35758", "15");
INSERT INTO produit VALUES ("324", "CITROEN", "MEHARI", "12736", "0");
INSERT INTO produit VALUES ("325", "CITROEN", "NEMO", "25075", "0");
INSERT INTO produit VALUES ("326", "CITROEN", "SAXO", "13857", "16");
INSERT INTO produit VALUES ("327", "CITROEN", "SM", "33476", "8");
INSERT INTO produit VALUES ("328", "CITROEN", "SPACETOURER", "12349", "1");
INSERT INTO produit VALUES ("329", "CITROEN", "TANGARA", "11469", "1");
INSERT INTO produit VALUES ("330", "CITROEN", "TRACTION", "34798", "5");
INSERT INTO produit VALUES ("331", "CITROEN", "VISA", "19115", "6");
INSERT INTO produit VALUES ("332", "CITROEN", "XANTIA", "33139", "3");
INSERT INTO produit VALUES ("333", "CITROEN", "XM", "24525", "13");
INSERT INTO produit VALUES ("334", "CITROEN", "XSARA", "22583", "18");
INSERT INTO produit VALUES ("335", "CITROEN", "XSARA PICASSO", "16024", "9");
INSERT INTO produit VALUES ("336", "CITROEN", "ZX", "32304", "14");
INSERT INTO produit VALUES ("337", "COURB", "C-ZEN", "35767", "9");
INSERT INTO produit VALUES ("338", "CUPRA", "ATECA", "18210", "8");
INSERT INTO produit VALUES ("339", "CUPRA", "FORMENTOR", "16655", "14");
INSERT INTO produit VALUES ("340", "CUPRA", "LEON", "9840", "15");
INSERT INTO produit VALUES ("341", "DACIA", "DOKKER", "30374", "13");
INSERT INTO produit VALUES ("342", "DACIA", "DUSTER", "11340", "13");
INSERT INTO produit VALUES ("343", "DACIA", "LODGY", "33887", "1");
INSERT INTO produit VALUES ("344", "DACIA", "LOGAN", "16148", "1");
INSERT INTO produit VALUES ("345", "DACIA", "SANDERO", "9756", "14");
INSERT INTO produit VALUES ("346", "DACIA", "SANDERO III", "26856", "3");
INSERT INTO produit VALUES ("347", "DACIA", "SPRING", "10807", "20");
INSERT INTO produit VALUES ("348", "DAEWOO", "ESPERO", "39057", "16");
INSERT INTO produit VALUES ("349", "DAEWOO", "EVANDA", "9497", "4");
INSERT INTO produit VALUES ("350", "DAEWOO", "KALOS", "38542", "14");
INSERT INTO produit VALUES ("351", "DAEWOO", "KORANDO", "19628", "14");
INSERT INTO produit VALUES ("352", "DAEWOO", "LACETTI", "21984", "2");
INSERT INTO produit VALUES ("353", "DAEWOO", "LANOS", "17168", "1");
INSERT INTO produit VALUES ("354", "DAEWOO", "LEGANZA", "14593", "16");
INSERT INTO produit VALUES ("355", "DAEWOO", "MATIZ", "19342", "1");
INSERT INTO produit VALUES ("356", "DAEWOO", "MUSSO", "14213", "1");
INSERT INTO produit VALUES ("357", "DAEWOO", "NEXIA", "33328", "13");
INSERT INTO produit VALUES ("358", "DAEWOO", "NUBIRA", "17005", "15");
INSERT INTO produit VALUES ("359", "DAEWOO", "REXTON", "26465", "17");
INSERT INTO produit VALUES ("360", "DAEWOO", "REZZO", "22779", "4");
INSERT INTO produit VALUES ("361", "DAF", "33", "32916", "14");
INSERT INTO produit VALUES ("362", "DAF", "400", "24485", "19");
INSERT INTO produit VALUES ("363", "DAF", "44", "30200", "1");
INSERT INTO produit VALUES ("364", "DAF", "46", "13900", "12");
INSERT INTO produit VALUES ("365", "DAF", "55", "31313", "17");
INSERT INTO produit VALUES ("366", "DAF", "66", "16194", "6");
INSERT INTO produit VALUES ("367", "DAF", "VA400", "29981", "12");
INSERT INTO produit VALUES ("368", "DAF", "VH400", "28480", "15");
INSERT INTO produit VALUES ("369", "DAIHATSU", "APPLAUSE", "36466", "5");
INSERT INTO produit VALUES ("370", "DAIHATSU", "CHARADE", "11016", "17");
INSERT INTO produit VALUES ("371", "DAIHATSU", "COPEN", "33388", "10");
INSERT INTO produit VALUES ("372", "DAIHATSU", "CUORE", "26787", "20");
INSERT INTO produit VALUES ("373", "DAIHATSU", "DOMINO", "25267", "17");
INSERT INTO produit VALUES ("374", "DAIHATSU", "FEROZA", "29520", "8");
INSERT INTO produit VALUES ("375", "DAIHATSU", "GRAN MOVE", "30102", "18");
INSERT INTO produit VALUES ("376", "DAIHATSU", "HIJET", "10165", "18");
INSERT INTO produit VALUES ("377", "DAIHATSU", "MATERIA", "25678", "11");
INSERT INTO produit VALUES ("378", "DAIHATSU", "MOVE", "10280", "0");
INSERT INTO produit VALUES ("379", "DAIHATSU", "ROCKY", "32008", "5");
INSERT INTO produit VALUES ("380", "DAIHATSU", "SIRION", "35950", "16");
INSERT INTO produit VALUES ("381", "DAIHATSU", "TERIOS", "13193", "4");
INSERT INTO produit VALUES ("382", "DAIHATSU", "TREVIS", "27933", "3");
INSERT INTO produit VALUES ("383", "DAIHATSU", "YRV", "36905", "0");
INSERT INTO produit VALUES ("384", "DAIMLER", "DAIMLER", "16865", "16");
INSERT INTO produit VALUES ("385", "DATSUN", "100", "29268", "19");
INSERT INTO produit VALUES ("386", "DATSUN", "120", "10085", "10");
INSERT INTO produit VALUES ("387", "DATSUN", "1600", "31389", "15");
INSERT INTO produit VALUES ("388", "DATSUN", "180", "39976", "6");
INSERT INTO produit VALUES ("389", "DATSUN", "200", "27163", "18");
INSERT INTO produit VALUES ("390", "DATSUN", "220", "16802", "14");
INSERT INTO produit VALUES ("391", "DATSUN", "260", "11848", "7");
INSERT INTO produit VALUES ("392", "DATSUN", "280", "12136", "6");
INSERT INTO produit VALUES ("393", "DATSUN", "BLUEBIRD", "10293", "2");
INSERT INTO produit VALUES ("394", "DATSUN", "CEDRIC", "27119", "20");
INSERT INTO produit VALUES ("395", "DATSUN", "CHERRY", "34264", "4");
INSERT INTO produit VALUES ("396", "DATSUN", "KING-CAB", "12574", "7");
INSERT INTO produit VALUES ("397", "DATSUN", "LAUREL", "23619", "20");
INSERT INTO produit VALUES ("398", "DATSUN", "PATROL", "39496", "6");
INSERT INTO produit VALUES ("399", "DATSUN", "PICK-UP", "10389", "6");
INSERT INTO produit VALUES ("400", "DATSUN", "SILVIA", "34830", "4");
INSERT INTO produit VALUES ("401", "DATSUN", "STANZA", "19140", "14");
INSERT INTO produit VALUES ("402", "DATSUN", "SUNNY", "29249", "1");
INSERT INTO produit VALUES ("403", "DATSUN", "VIOLET", "18170", "9");
INSERT INTO produit VALUES ("404", "DFSK", "SERES 3", "16740", "19");
INSERT INTO produit VALUES ("405", "DODGE", "AVENGER", "28407", "4");
INSERT INTO produit VALUES ("406", "DODGE", "CALIBER", "35845", "20");
INSERT INTO produit VALUES ("407", "DODGE", "JOURNEY", "19060", "19");
INSERT INTO produit VALUES ("408", "DODGE", "NITRO", "30081", "11");
INSERT INTO produit VALUES ("409", "DS", "DS3", "10979", "3");
INSERT INTO produit VALUES ("410", "DS", "DS3 CROSSBACK", "21053", "4");
INSERT INTO produit VALUES ("411", "DS", "DS4", "20436", "4");
INSERT INTO produit VALUES ("412", "DS", "DS4 II", "33678", "20");
INSERT INTO produit VALUES ("413", "DS", "DS5", "12086", "5");
INSERT INTO produit VALUES ("414", "DS", "DS7 CROSSBACK", "16581", "6");
INSERT INTO produit VALUES ("415", "DS", "DS9", "21765", "5");
INSERT INTO produit VALUES ("416", "EBRO", "F275", "18511", "19");
INSERT INTO produit VALUES ("417", "EBRO", "F350", "19984", "13");
INSERT INTO produit VALUES ("418", "EBRO", "JX20", "11116", "5");
INSERT INTO produit VALUES ("419", "EBRO", "JX28", "9871", "11");
INSERT INTO produit VALUES ("420", "EBRO", "PATROL", "14726", "4");
INSERT INTO produit VALUES ("421", "EBRO", "TRADE", "26139", "1");
INSERT INTO produit VALUES ("422", "EBRO", "VANETTE", "9839", "7");
INSERT INTO produit VALUES ("423", "FIAT", "124", "30783", "18");
INSERT INTO produit VALUES ("424", "FIAT", "124 SPIDER", "10645", "12");
INSERT INTO produit VALUES ("425", "FIAT", "126", "28249", "12");
INSERT INTO produit VALUES ("426", "FIAT", "127", "13995", "19");
INSERT INTO produit VALUES ("427", "FIAT", "128", "16622", "2");
INSERT INTO produit VALUES ("428", "FIAT", "130", "19412", "11");
INSERT INTO produit VALUES ("429", "FIAT", "131", "12081", "10");
INSERT INTO produit VALUES ("430", "FIAT", "132", "15420", "1");
INSERT INTO produit VALUES ("431", "FIAT", "133", "11819", "7");
INSERT INTO produit VALUES ("432", "FIAT", "238", "32059", "10");
INSERT INTO produit VALUES ("433", "FIAT", "4X4 CROSS", "37461", "15");
INSERT INTO produit VALUES ("434", "FIAT", "500", "9764", "16");
INSERT INTO produit VALUES ("435", "FIAT", "500 III", "25717", "13");
INSERT INTO produit VALUES ("436", "FIAT", "500L", "10592", "20");
INSERT INTO produit VALUES ("437", "FIAT", "500X", "15629", "10");
INSERT INTO produit VALUES ("438", "FIAT", "600", "33575", "13");
INSERT INTO produit VALUES ("439", "FIAT", "850", "10735", "19");
INSERT INTO produit VALUES ("440", "FIAT", "900", "20088", "3");
INSERT INTO produit VALUES ("441", "FIAT", "ARGENTA", "39873", "5");
INSERT INTO produit VALUES ("442", "FIAT", "BARCHETTA", "25394", "15");
INSERT INTO produit VALUES ("443", "FIAT", "BRAVA", "24330", "17");
INSERT INTO produit VALUES ("444", "FIAT", "BRAVO", "16383", "3");
INSERT INTO produit VALUES ("445", "FIAT", "BRAVO II", "33166", "11");
INSERT INTO produit VALUES ("446", "FIAT", "CINQUECENTO", "27313", "0");
INSERT INTO produit VALUES ("447", "FIAT", "COUPE", "39062", "18");
INSERT INTO produit VALUES ("448", "FIAT", "CROMA", "19343", "19");
INSERT INTO produit VALUES ("449", "FIAT", "DOBLO", "35280", "3");
INSERT INTO produit VALUES ("450", "FIAT", "DUCATO", "18601", "9");
INSERT INTO produit VALUES ("451", "FIAT", "FIORINO", "38567", "8");
INSERT INTO produit VALUES ("452", "FIAT", "FIORINO QUBO", "24480", "13");
INSERT INTO produit VALUES ("453", "FIAT", "FREEMONT", "16679", "20");
INSERT INTO produit VALUES ("454", "FIAT", "FULLBACK", "31591", "1");
INSERT INTO produit VALUES ("455", "FIAT", "GRANDE PUNTO", "17853", "15");
INSERT INTO produit VALUES ("456", "FIAT", "IDEA", "15909", "11");
INSERT INTO produit VALUES ("457", "FIAT", "MAREA", "27275", "5");
INSERT INTO produit VALUES ("458", "FIAT", "MULTIPLA", "39452", "10");
INSERT INTO produit VALUES ("459", "FIAT", "PALIO", "16616", "0");
INSERT INTO produit VALUES ("460", "FIAT", "PANDA", "24654", "4");
INSERT INTO produit VALUES ("461", "FIAT", "PININFARINA", "16382", "5");
INSERT INTO produit VALUES ("462", "FIAT", "PUNTO", "39349", "8");
INSERT INTO produit VALUES ("463", "FIAT", "PUNTO EVO", "8137", "15");
INSERT INTO produit VALUES ("464", "FIAT", "REGATA", "39113", "18");
INSERT INTO produit VALUES ("465", "FIAT", "RITMO", "11303", "7");
INSERT INTO produit VALUES ("466", "FIAT", "SCUDO", "39522", "13");
INSERT INTO produit VALUES ("467", "FIAT", "SEDICI", "39820", "16");
INSERT INTO produit VALUES ("468", "FIAT", "SEICENTO", "15146", "7");
INSERT INTO produit VALUES ("469", "FIAT", "STILO", "9159", "2");
INSERT INTO produit VALUES ("470", "FIAT", "STRADA", "8524", "13");
INSERT INTO produit VALUES ("471", "FIAT", "TALENTO", "23277", "20");
INSERT INTO produit VALUES ("472", "FIAT", "TEMPRA", "21086", "4");
INSERT INTO produit VALUES ("473", "FIAT", "TIPO", "18991", "10");
INSERT INTO produit VALUES ("474", "FIAT", "ULYSSE", "22583", "2");
INSERT INTO produit VALUES ("475", "FIAT", "UNO", "38210", "1");
INSERT INTO produit VALUES ("476", "FIAT", "X1/9", "21309", "4");
INSERT INTO produit VALUES ("477", "FISKER", "KARMA", "35679", "18");
INSERT INTO produit VALUES ("478", "FORD", "A0406", "17883", "19");
INSERT INTO produit VALUES ("479", "FORD", "A0407", "18715", "5");
INSERT INTO produit VALUES ("480", "FORD", "A0408", "37881", "13");
INSERT INTO produit VALUES ("481", "FORD", "A0409", "11097", "4");
INSERT INTO produit VALUES ("482", "FORD", "A0410", "35758", "2");
INSERT INTO produit VALUES ("483", "FORD", "AEROSTAR", "27317", "3");
INSERT INTO produit VALUES ("484", "FORD", "ANGLIA", "37206", "12");
INSERT INTO produit VALUES ("485", "FORD", "B-MAX", "31250", "12");
INSERT INTO produit VALUES ("486", "FORD", "CAPRI", "22695", "17");
INSERT INTO produit VALUES ("487", "FORD", "CONSUL", "25968", "8");
INSERT INTO produit VALUES ("488", "FORD", "CORTINA", "12131", "0");
INSERT INTO produit VALUES ("489", "FORD", "COUGAR", "35108", "18");
INSERT INTO produit VALUES ("490", "FORD", "COURRIER", "38629", "10");
INSERT INTO produit VALUES ("491", "FORD", "ECOSPORT", "25366", "2");
INSERT INTO produit VALUES ("492", "FORD", "EDGE", "25256", "18");
INSERT INTO produit VALUES ("493", "FORD", "ESCORT", "37469", "6");
INSERT INTO produit VALUES ("494", "FORD", "EXPLORER", "20444", "1");
INSERT INTO produit VALUES ("495", "FORD", "FIESTA", "38383", "9");
INSERT INTO produit VALUES ("496", "FORD", "FOCUS", "27142", "0");
INSERT INTO produit VALUES ("497", "FORD", "FOCUS C-MAX", "16129", "20");
INSERT INTO produit VALUES ("498", "FORD", "FOCUS IV", "23252", "20");
INSERT INTO produit VALUES ("499", "FORD", "FUSION", "31274", "18");
INSERT INTO produit VALUES ("500", "FORD", "GALAXY", "10571", "10");
INSERT INTO produit VALUES ("501", "FORD", "GRANADA", "13236", "15");
INSERT INTO produit VALUES ("502", "FORD", "KA", "20298", "2");
INSERT INTO produit VALUES ("503", "FORD", "KA+", "26952", "16");
INSERT INTO produit VALUES ("504", "FORD", "KUGA", "20628", "8");
INSERT INTO produit VALUES ("505", "FORD", "KUGA III", "37836", "14");
INSERT INTO produit VALUES ("506", "FORD", "MAVERICK", "39374", "19");
INSERT INTO produit VALUES ("507", "FORD", "MONDEO", "21655", "17");
INSERT INTO produit VALUES ("508", "FORD", "MONDEO*", "21436", "19");
INSERT INTO produit VALUES ("509", "FORD", "MUSTANG", "20940", "7");
INSERT INTO produit VALUES ("510", "FORD", "MUSTANG MACH-E", "9937", "7");
INSERT INTO produit VALUES ("511", "FORD", "ORION", "29082", "3");
INSERT INTO produit VALUES ("512", "FORD", "P 100", "18308", "11");
INSERT INTO produit VALUES ("513", "FORD", "PROBE", "15313", "18");
INSERT INTO produit VALUES ("514", "FORD", "PUMA", "28768", "7");
INSERT INTO produit VALUES ("515", "FORD", "PUMA II", "26514", "2");
INSERT INTO produit VALUES ("516", "FORD", "RANGER", "12113", "13");
INSERT INTO produit VALUES ("517", "FORD", "S-MAX", "11666", "0");
INSERT INTO produit VALUES ("518", "FORD", "SCORPIO", "21424", "19");
INSERT INTO produit VALUES ("519", "FORD", "SIERRA", "23187", "4");
INSERT INTO produit VALUES ("520", "FORD", "TAUNUS", "16205", "9");
INSERT INTO produit VALUES ("521", "FORD", "TOURNEO", "21992", "2");
INSERT INTO produit VALUES ("522", "FORD", "TOURNEO CONNECT", "36534", "19");
INSERT INTO produit VALUES ("523", "FORD", "TOURNEO COURIER", "35460", "5");
INSERT INTO produit VALUES ("524", "FORD", "TOURNEO CUSTOM", "24276", "11");
INSERT INTO produit VALUES ("525", "FORD", "TRANSIT", "16811", "17");
INSERT INTO produit VALUES ("526", "FORD", "TRANSIT CONNECT", "23091", "8");
INSERT INTO produit VALUES ("527", "FORD", "TRANSIT COURIER", "25819", "15");
INSERT INTO produit VALUES ("528", "FORD", "TRANSIT CUSTOM", "9702", "9");
INSERT INTO produit VALUES ("529", "FORD", "TRANSIT VI", "34026", "15");
INSERT INTO produit VALUES ("530", "FSO-POLSKI", "125", "10448", "8");
INSERT INTO produit VALUES ("531", "FSO-POLSKI", "125P", "23985", "14");
INSERT INTO produit VALUES ("532", "FSO-POLSKI", "1500", "19024", "8");
INSERT INTO produit VALUES ("533", "FSO-POLSKI", "ATOU", "37205", "5");
INSERT INTO produit VALUES ("534", "FSO-POLSKI", "CARO", "17040", "17");
INSERT INTO produit VALUES ("535", "FSO-POLSKI", "LINDA", "37010", "17");
INSERT INTO produit VALUES ("536", "FSO-POLSKI", "POLONEZ", "16328", "2");
INSERT INTO produit VALUES ("537", "FSO-POLSKI", "TRUCK", "15852", "10");
INSERT INTO produit VALUES ("538", "GAC GONOW", "GA", "37233", "9");
INSERT INTO produit VALUES ("539", "GAC GONOW", "WAY", "26990", "15");
INSERT INTO produit VALUES ("540", "GME", "MIDI", "23897", "19");
INSERT INTO produit VALUES ("541", "GME", "RASCAL", "30314", "5");
INSERT INTO produit VALUES ("542", "GRANDIN", "DALLAS", "25534", "7");
INSERT INTO produit VALUES ("543", "HONDA", "ACCORD", "39101", "2");
INSERT INTO produit VALUES ("544", "HONDA", "ACTY", "15120", "3");
INSERT INTO produit VALUES ("545", "HONDA", "CIVIC", "29015", "3");
INSERT INTO produit VALUES ("546", "HONDA", "CONCERTO", "8868", "11");
INSERT INTO produit VALUES ("547", "HONDA", "CR-Z", "30428", "1");
INSERT INTO produit VALUES ("548", "HONDA", "CRV", "14136", "17");
INSERT INTO produit VALUES ("549", "HONDA", "CRV V", "18857", "18");
INSERT INTO produit VALUES ("550", "HONDA", "CRX", "27483", "5");
INSERT INTO produit VALUES ("551", "HONDA", "FR-V", "18477", "6");
INSERT INTO produit VALUES ("552", "HONDA", "HONDA E", "33601", "17");
INSERT INTO produit VALUES ("553", "HONDA", "HR-V", "32317", "2");
INSERT INTO produit VALUES ("554", "HONDA", "INSIGHT", "11392", "8");
INSERT INTO produit VALUES ("555", "HONDA", "INTEGRA", "11831", "12");
INSERT INTO produit VALUES ("556", "HONDA", "JAZZ", "28544", "14");
INSERT INTO produit VALUES ("557", "HONDA", "JAZZ IV", "9476", "4");
INSERT INTO produit VALUES ("558", "HONDA", "LEGEND", "11341", "19");
INSERT INTO produit VALUES ("559", "HONDA", "LOGO", "32211", "11");
INSERT INTO produit VALUES ("560", "HONDA", "N360", "15104", "9");
INSERT INTO produit VALUES ("561", "HONDA", "NSX", "24237", "10");
INSERT INTO produit VALUES ("562", "HONDA", "PRELUDE", "28257", "14");
INSERT INTO produit VALUES ("563", "HONDA", "QUINTET", "12605", "1");
INSERT INTO produit VALUES ("564", "HONDA", "S2000", "15229", "18");
INSERT INTO produit VALUES ("565", "HONDA", "SHUTTLE", "16832", "10");
INSERT INTO produit VALUES ("566", "HONDA", "STREAM", "8690", "16");
INSERT INTO produit VALUES ("567", "HYUNDAI", "ACCENT", "36428", "3");
INSERT INTO produit VALUES ("568", "HYUNDAI", "ATOS", "37493", "19");
INSERT INTO produit VALUES ("569", "HYUNDAI", "AZERA", "31240", "5");
INSERT INTO produit VALUES ("570", "HYUNDAI", "BAYON", "23810", "15");
INSERT INTO produit VALUES ("571", "HYUNDAI", "COUPE", "36879", "17");
INSERT INTO produit VALUES ("572", "HYUNDAI", "ELANTRA", "13255", "20");
INSERT INTO produit VALUES ("573", "HYUNDAI", "GALLOPER", "26981", "17");
INSERT INTO produit VALUES ("574", "HYUNDAI", "GENESIS", "31451", "12");
INSERT INTO produit VALUES ("575", "HYUNDAI", "GETZ", "39996", "6");
INSERT INTO produit VALUES ("576", "HYUNDAI", "H-1", "16018", "4");
INSERT INTO produit VALUES ("577", "HYUNDAI", "H100", "21017", "12");
INSERT INTO produit VALUES ("578", "HYUNDAI", "I10", "12841", "12");
INSERT INTO produit VALUES ("579", "HYUNDAI", "I10 III", "20235", "5");
INSERT INTO produit VALUES ("580", "HYUNDAI", "I20", "32181", "10");
INSERT INTO produit VALUES ("581", "HYUNDAI", "I20 III", "38347", "7");
INSERT INTO produit VALUES ("582", "HYUNDAI", "I30", "27145", "0");
INSERT INTO produit VALUES ("583", "HYUNDAI", "I40", "27296", "0");
INSERT INTO produit VALUES ("584", "HYUNDAI", "IONIQ", "24144", "11");
INSERT INTO produit VALUES ("585", "HYUNDAI", "IONIQ 5", "31666", "4");
INSERT INTO produit VALUES ("586", "HYUNDAI", "IX20", "14398", "9");
INSERT INTO produit VALUES ("587", "HYUNDAI", "IX35", "15703", "1");
INSERT INTO produit VALUES ("588", "HYUNDAI", "IX55", "39488", "4");
INSERT INTO produit VALUES ("589", "HYUNDAI", "KONA", "19339", "5");
INSERT INTO produit VALUES ("590", "HYUNDAI", "LANTRA", "28457", "5");
INSERT INTO produit VALUES ("591", "HYUNDAI", "MATRIX", "20224", "10");
INSERT INTO produit VALUES ("592", "HYUNDAI", "PONY", "15045", "13");
INSERT INTO produit VALUES ("593", "HYUNDAI", "SANTA FE", "15402", "9");
INSERT INTO produit VALUES ("594", "HYUNDAI", "SATELLITE", "18086", "0");
INSERT INTO produit VALUES ("595", "HYUNDAI", "SCOUPE", "17982", "3");
INSERT INTO produit VALUES ("596", "HYUNDAI", "SONATA", "22772", "20");
INSERT INTO produit VALUES ("597", "HYUNDAI", "TERRACAN", "16210", "0");
INSERT INTO produit VALUES ("598", "HYUNDAI", "TRAJET", "28131", "4");
INSERT INTO produit VALUES ("599", "HYUNDAI", "TUCSON", "37415", "10");
INSERT INTO produit VALUES ("600", "HYUNDAI", "TUCSON IV", "35767", "0");
INSERT INTO produit VALUES ("601", "HYUNDAI", "VELOSTER", "8210", "20");
INSERT INTO produit VALUES ("602", "HYUNDAI", "XG", "17057", "12");
INSERT INTO produit VALUES ("603", "INFINITI", "EX", "19148", "14");
INSERT INTO produit VALUES ("604", "INFINITI", "FX", "38676", "18");
INSERT INTO produit VALUES ("605", "INFINITI", "G", "23878", "3");
INSERT INTO produit VALUES ("606", "INFINITI", "M", "34057", "14");
INSERT INTO produit VALUES ("607", "INFINITI", "Q30", "30849", "16");
INSERT INTO produit VALUES ("608", "INFINITI", "Q50", "35806", "4");
INSERT INTO produit VALUES ("609", "INFINITI", "Q60", "8868", "18");
INSERT INTO produit VALUES ("610", "INFINITI", "Q70", "8340", "3");
INSERT INTO produit VALUES ("611", "INFINITI", "QX30", "37219", "16");
INSERT INTO produit VALUES ("612", "INFINITI", "QX50", "8524", "17");
INSERT INTO produit VALUES ("613", "INFINITI", "QX70", "16342", "12");
INSERT INTO produit VALUES ("614", "INNOCENTI", "1000", "15161", "13");
INSERT INTO produit VALUES ("615", "INNOCENTI", "1100", "36499", "18");
INSERT INTO produit VALUES ("616", "INNOCENTI", "2200", "10216", "7");
INSERT INTO produit VALUES ("617", "INNOCENTI", "500", "10152", "9");
INSERT INTO produit VALUES ("618", "INNOCENTI", "650", "27092", "17");
INSERT INTO produit VALUES ("619", "INNOCENTI", "90", "26497", "4");
INSERT INTO produit VALUES ("620", "INNOCENTI", "990", "10757", "5");
INSERT INTO produit VALUES ("621", "INNOCENTI", "DE TOMASO", "21815", "10");
INSERT INTO produit VALUES ("622", "INNOCENTI", "MINI", "17389", "11");
INSERT INTO produit VALUES ("623", "INNOCENTI", "MINIMATIC", "31719", "14");
INSERT INTO produit VALUES ("624", "ISUZU", "D-MAX", "19490", "7");
INSERT INTO produit VALUES ("625", "ISUZU", "SERIE N", "9419", "12");
INSERT INTO produit VALUES ("626", "ISUZU", "TROOPER", "32963", "2");
INSERT INTO produit VALUES ("627", "IVECO", "DAILY", "31647", "17");
INSERT INTO produit VALUES ("628", "IVECO", "MASSIF", "29642", "15");
INSERT INTO produit VALUES ("629", "JAGUAR", "420", "56768", "13");
INSERT INTO produit VALUES ("630", "JAGUAR", "E", "22678", "5");
INSERT INTO produit VALUES ("631", "JAGUAR", "E-PACE", "52014", "13");
INSERT INTO produit VALUES ("632", "JAGUAR", "F-PACE", "42012", "18");
INSERT INTO produit VALUES ("633", "JAGUAR", "F-TYPE", "63286", "10");
INSERT INTO produit VALUES ("634", "JAGUAR", "I-PACE", "19806", "2");
INSERT INTO produit VALUES ("635", "JAGUAR", "S-TYPE", "41973", "6");
INSERT INTO produit VALUES ("636", "JAGUAR", "SOVEREIGN", "45141", "8");
INSERT INTO produit VALUES ("637", "JAGUAR", "V12", "69954", "3");
INSERT INTO produit VALUES ("638", "JAGUAR", "X-TYPE", "34018", "3");
INSERT INTO produit VALUES ("639", "JAGUAR", "XE", "26564", "6");
INSERT INTO produit VALUES ("640", "JAGUAR", "XF", "56978", "9");
INSERT INTO produit VALUES ("641", "JAGUAR", "XJ", "44842", "18");
INSERT INTO produit VALUES ("642", "JAGUAR", "XJ6", "19904", "10");
INSERT INTO produit VALUES ("643", "JAGUAR", "XJ8", "37383", "3");
INSERT INTO produit VALUES ("644", "JAGUAR", "XJR", "71029", "5");
INSERT INTO produit VALUES ("645", "JAGUAR", "XJS", "42867", "7");
INSERT INTO produit VALUES ("646", "JAGUAR", "XJSC", "63949", "8");
INSERT INTO produit VALUES ("647", "JAGUAR", "XK", "37172", "7");
INSERT INTO produit VALUES ("648", "JAGUAR", "XK8", "23369", "16");
INSERT INTO produit VALUES ("649", "JEEP", "CHEROKEE", "30614", "17");
INSERT INTO produit VALUES ("650", "JEEP", "COMMANDER", "38072", "4");
INSERT INTO produit VALUES ("651", "JEEP", "COMPASS", "74906", "8");
INSERT INTO produit VALUES ("652", "JEEP", "GRAND CHEROKEE", "61749", "17");
INSERT INTO produit VALUES ("653", "JEEP", "PATRIOT", "59939", "15");
INSERT INTO produit VALUES ("654", "JEEP", "RENEGADE", "61533", "8");
INSERT INTO produit VALUES ("655", "JEEP", "WRANGLER", "53456", "15");
INSERT INTO produit VALUES ("656", "JEEP", "WRANGLER IV", "71801", "12");
INSERT INTO produit VALUES ("657", "KIA", "BESTA", "9446", "17");
INSERT INTO produit VALUES ("658", "KIA", "CARENS", "33949", "4");
INSERT INTO produit VALUES ("659", "KIA", "CARNIVAL", "16108", "10");
INSERT INTO produit VALUES ("660", "KIA", "CEED", "24637", "8");
INSERT INTO produit VALUES ("661", "KIA", "CEED III", "8447", "19");
INSERT INTO produit VALUES ("662", "KIA", "CERATO", "28072", "9");
INSERT INTO produit VALUES ("663", "KIA", "CLARUS", "22688", "4");
INSERT INTO produit VALUES ("664", "KIA", "E-SOUL", "18639", "9");
INSERT INTO produit VALUES ("665", "KIA", "MAGENTIS", "9440", "5");
INSERT INTO produit VALUES ("666", "KIA", "NIRO", "29288", "10");
INSERT INTO produit VALUES ("667", "KIA", "OPIRUS", "27272", "17");
INSERT INTO produit VALUES ("668", "KIA", "OPTIMA", "26083", "6");
INSERT INTO produit VALUES ("669", "KIA", "PICANTO", "39797", "8");
INSERT INTO produit VALUES ("670", "KIA", "PREGIO", "16199", "7");
INSERT INTO produit VALUES ("671", "KIA", "PRIDE", "27190", "18");
INSERT INTO produit VALUES ("672", "KIA", "RIO", "27239", "15");
INSERT INTO produit VALUES ("673", "KIA", "SEPHIA", "8514", "13");
INSERT INTO produit VALUES ("674", "KIA", "SHUMA", "36425", "5");
INSERT INTO produit VALUES ("675", "KIA", "SORENTO", "9706", "12");
INSERT INTO produit VALUES ("676", "KIA", "SORENTO IV", "17703", "6");
INSERT INTO produit VALUES ("677", "KIA", "SOUL", "18705", "10");
INSERT INTO produit VALUES ("678", "KIA", "SPORTAGE", "39571", "9");
INSERT INTO produit VALUES ("679", "KIA", "STINGER", "15712", "13");
INSERT INTO produit VALUES ("680", "KIA", "STONIC", "38562", "10");
INSERT INTO produit VALUES ("681", "KIA", "VENGA", "26339", "10");
INSERT INTO produit VALUES ("682", "LADA", "110", "36184", "19");
INSERT INTO produit VALUES ("683", "LADA", "111", "7859", "3");
INSERT INTO produit VALUES ("684", "LADA", "1118", "9320", "9");
INSERT INTO produit VALUES ("685", "LADA", "112", "35518", "16");
INSERT INTO produit VALUES ("686", "LADA", "1200", "18812", "13");
INSERT INTO produit VALUES ("687", "LADA", "1300", "27458", "13");
INSERT INTO produit VALUES ("688", "LADA", "1500", "14337", "20");
INSERT INTO produit VALUES ("689", "LADA", "1600", "29645", "19");
INSERT INTO produit VALUES ("690", "LADA", "GRANTA", "7789", "5");
INSERT INTO produit VALUES ("691", "LADA", "KALINA", "26578", "19");
INSERT INTO produit VALUES ("692", "LADA", "KALINKA", "25173", "3");
INSERT INTO produit VALUES ("693", "LADA", "NIVA", "27075", "1");
INSERT INTO produit VALUES ("694", "LADA", "PRIORA", "39729", "20");
INSERT INTO produit VALUES ("695", "LADA", "SAGONA", "22351", "13");
INSERT INTO produit VALUES ("696", "LADA", "SAMARA", "13393", "5");
INSERT INTO produit VALUES ("697", "LANCIA", "BETA", "38069", "4");
INSERT INTO produit VALUES ("698", "LANCIA", "DEDRA", "18606", "8");
INSERT INTO produit VALUES ("699", "LANCIA", "DELTA", "18850", "13");
INSERT INTO produit VALUES ("700", "LANCIA", "FLAMINIA", "35201", "18");
INSERT INTO produit VALUES ("701", "LANCIA", "FLAVIA", "26778", "4");
INSERT INTO produit VALUES ("702", "LANCIA", "FULVIA", "39154", "2");
INSERT INTO produit VALUES ("703", "LANCIA", "GAMMA", "6677", "9");
INSERT INTO produit VALUES ("704", "LANCIA", "KAPPA", "37218", "11");
INSERT INTO produit VALUES ("705", "LANCIA", "LYBRA", "29855", "3");
INSERT INTO produit VALUES ("706", "LANCIA", "MUSA", "17352", "20");
INSERT INTO produit VALUES ("707", "LANCIA", "PHEDRA", "10596", "4");
INSERT INTO produit VALUES ("708", "LANCIA", "PRISMA", "18116", "11");
INSERT INTO produit VALUES ("709", "LANCIA", "THEMA", "9226", "0");
INSERT INTO produit VALUES ("710", "LANCIA", "THESIS", "23400", "4");
INSERT INTO produit VALUES ("711", "LANCIA", "TREVI", "23788", "15");
INSERT INTO produit VALUES ("712", "LANCIA", "VOYAGER", "36890", "17");
INSERT INTO produit VALUES ("713", "LANCIA", "Y", "19034", "2");
INSERT INTO produit VALUES ("714", "LANCIA", "Y10", "15970", "2");
INSERT INTO produit VALUES ("715", "LANCIA", "YPSILON", "14076", "15");
INSERT INTO produit VALUES ("716", "LANCIA", "ZETA", "22820", "8");
INSERT INTO produit VALUES ("717", "LAND ROVER", "110", "7465", "9");
INSERT INTO produit VALUES ("718", "LAND ROVER", "88", "29041", "3");
INSERT INTO produit VALUES ("719", "LAND ROVER", "90", "26337", "4");
INSERT INTO produit VALUES ("720", "LAND ROVER", "DEFENDER", "20406", "14");
INSERT INTO produit VALUES ("721", "LAND ROVER", "DEFENDER II", "14949", "1");
INSERT INTO produit VALUES ("722", "LAND ROVER", "DISCOVERY", "6460", "20");
INSERT INTO produit VALUES ("723", "LAND ROVER", "DISCOVERY SPORT", "17640", "15");
INSERT INTO produit VALUES ("724", "LAND ROVER", "EVOQUE", "34616", "7");
INSERT INTO produit VALUES ("725", "LAND ROVER", "EVOQUE II", "32378", "8");
INSERT INTO produit VALUES ("726", "LAND ROVER", "FREELANDER", "25916", "5");
INSERT INTO produit VALUES ("727", "LAND ROVER", "RANGE 4X4", "14639", "15");
INSERT INTO produit VALUES ("728", "LAND ROVER", "RANGE ROVER SPORT", "37749", "13");
INSERT INTO produit VALUES ("729", "LAND ROVER", "VELAR", "10257", "16");
INSERT INTO produit VALUES ("730", "LDV", "CONVOY", "39614", "2");
INSERT INTO produit VALUES ("731", "LEXUS", "CT", "47143", "15");
INSERT INTO produit VALUES ("732", "LEXUS", "ES", "27668", "7");
INSERT INTO produit VALUES ("733", "LEXUS", "GS", "28975", "14");
INSERT INTO produit VALUES ("734", "LEXUS", "IS", "43024", "12");
INSERT INTO produit VALUES ("735", "LEXUS", "IS SPORTCROSS", "37402", "18");
INSERT INTO produit VALUES ("736", "LEXUS", "LC", "61034", "5");
INSERT INTO produit VALUES ("737", "LEXUS", "LFA", "29067", "13");
INSERT INTO produit VALUES ("738", "LEXUS", "LS", "45208", "18");
INSERT INTO produit VALUES ("739", "LEXUS", "LS II", "36550", "10");
INSERT INTO produit VALUES ("740", "LEXUS", "NX", "78188", "3");
INSERT INTO produit VALUES ("741", "LEXUS", "RC", "68219", "10");
INSERT INTO produit VALUES ("742", "LEXUS", "RX", "64834", "7");
INSERT INTO produit VALUES ("743", "LEXUS", "SC", "73410", "3");
INSERT INTO produit VALUES ("744", "LEXUS", "UX", "27550", "8");
INSERT INTO produit VALUES ("745", "LOTUS", "ELAN", "12920", "1");
INSERT INTO produit VALUES ("746", "LOTUS", "ELISE", "44641", "1");
INSERT INTO produit VALUES ("747", "LOTUS", "ESPRIT", "22785", "1");
INSERT INTO produit VALUES ("748", "LOTUS", "EUROPA", "60801", "19");
INSERT INTO produit VALUES ("749", "LOTUS", "EXIGE", "17175", "7");
INSERT INTO produit VALUES ("750", "LOTUS", "OMEGA", "62711", "8");
INSERT INTO produit VALUES ("751", "LYNK&CO", "1", "78322", "1");
INSERT INTO produit VALUES ("752", "MAHINDRA", "BOLERO", "73836", "13");
INSERT INTO produit VALUES ("753", "MAHINDRA", "CJ", "48361", "6");
INSERT INTO produit VALUES ("754", "MAHINDRA", "GOA", "37381", "0");
INSERT INTO produit VALUES ("755", "MAN", "TGE", "46437", "19");
INSERT INTO produit VALUES ("756", "MARUTI", "800", "75286", "5");
INSERT INTO produit VALUES ("757", "MASERATI", "COUPE", "65528", "2");
INSERT INTO produit VALUES ("758", "MASERATI", "GHIBLI", "31200", "20");
INSERT INTO produit VALUES ("759", "MASERATI", "GRANCABRIO", "53698", "18");
INSERT INTO produit VALUES ("760", "MASERATI", "GRANSPORT", "49974", "10");
INSERT INTO produit VALUES ("761", "MASERATI", "GRANTURISMO", "27374", "18");
INSERT INTO produit VALUES ("762", "MASERATI", "QUATTROPORTE", "40408", "19");
INSERT INTO produit VALUES ("763", "MATRA", "BAGHEERA", "75732", "17");
INSERT INTO produit VALUES ("764", "MATRA", "M530", "14494", "12");
INSERT INTO produit VALUES ("765", "MATRA", "MURENA", "13010", "18");
INSERT INTO produit VALUES ("766", "MATRA", "RANCHO", "72910", "20");
INSERT INTO produit VALUES ("767", "MAZDA", "1000", "78787", "14");
INSERT INTO produit VALUES ("768", "MAZDA", "1200", "26958", "10");
INSERT INTO produit VALUES ("769", "MAZDA", "121", "71416", "8");
INSERT INTO produit VALUES ("770", "MAZDA", "1800", "23283", "7");
INSERT INTO produit VALUES ("771", "MAZDA", "323", "45801", "17");
INSERT INTO produit VALUES ("772", "MAZDA", "616", "17824", "19");
INSERT INTO produit VALUES ("773", "MAZDA", "626", "29585", "8");
INSERT INTO produit VALUES ("774", "MAZDA", "818", "37910", "4");
INSERT INTO produit VALUES ("775", "MAZDA", "929", "64695", "18");
INSERT INTO produit VALUES ("776", "MAZDA", "BONGO", "57529", "3");
INSERT INTO produit VALUES ("777", "MAZDA", "BT50", "47181", "20");
INSERT INTO produit VALUES ("778", "MAZDA", "CX-3", "29145", "2");
INSERT INTO produit VALUES ("779", "MAZDA", "CX-30", "51692", "8");
INSERT INTO produit VALUES ("780", "MAZDA", "CX-5", "35883", "19");
INSERT INTO produit VALUES ("781", "MAZDA", "CX-7", "60390", "0");
INSERT INTO produit VALUES ("782", "MAZDA", "DEMIO", "72218", "17");
INSERT INTO produit VALUES ("783", "MAZDA", "E2200", "16058", "4");
INSERT INTO produit VALUES ("784", "MAZDA", "MAZDA2", "65591", "2");
INSERT INTO produit VALUES ("785", "MAZDA", "MAZDA3", "48958", "19");
INSERT INTO produit VALUES ("786", "MAZDA", "MAZDA3 IV", "58737", "19");
INSERT INTO produit VALUES ("787", "MAZDA", "MAZDA5", "37046", "19");
INSERT INTO produit VALUES ("788", "MAZDA", "MAZDA6", "41253", "2");
INSERT INTO produit VALUES ("789", "MAZDA", "MINIBUS", "75462", "18");
INSERT INTO produit VALUES ("790", "MAZDA", "MPV", "23285", "9");
INSERT INTO produit VALUES ("791", "MAZDA", "MX-30", "37471", "1");
INSERT INTO produit VALUES ("792", "MAZDA", "MX3", "48780", "18");
INSERT INTO produit VALUES ("793", "MAZDA", "MX5", "60872", "16");
INSERT INTO produit VALUES ("794", "MAZDA", "MX6", "39185", "7");
INSERT INTO produit VALUES ("795", "MAZDA", "PICK-UP", "34022", "14");
INSERT INTO produit VALUES ("796", "MAZDA", "PREMACY", "63890", "10");
INSERT INTO produit VALUES ("797", "MAZDA", "R100", "48991", "0");
INSERT INTO produit VALUES ("798", "MAZDA", "RX2", "55927", "16");
INSERT INTO produit VALUES ("799", "MAZDA", "RX3", "19095", "18");
INSERT INTO produit VALUES ("800", "MAZDA", "RX5", "56068", "5");
INSERT INTO produit VALUES ("801", "MAZDA", "RX7", "19688", "8");
INSERT INTO produit VALUES ("802", "MAZDA", "RX8", "15085", "17");
INSERT INTO produit VALUES ("803", "MAZDA", "T2500", "74381", "18");
INSERT INTO produit VALUES ("804", "MAZDA", "TRIBUTE", "59410", "6");
INSERT INTO produit VALUES ("805", "MAZDA", "XEDOS 6", "23996", "12");
INSERT INTO produit VALUES ("806", "MAZDA", "XEDOS 9", "45030", "4");
INSERT INTO produit VALUES ("807", "MCC", "SMART", "26250", "17");
INSERT INTO produit VALUES ("808", "MEGA", "CABRIOLET", "69677", "12");
INSERT INTO produit VALUES ("809", "MEGA", "CLUB", "71965", "3");
INSERT INTO produit VALUES ("810", "MEGA", "CONCEPT", "69355", "5");
INSERT INTO produit VALUES ("811", "MEGA", "FOURGON", "76719", "19");
INSERT INTO produit VALUES ("812", "MEGA", "RANCH", "19533", "1");
INSERT INTO produit VALUES ("813", "MERCEDES", "190", "34645", "6");
INSERT INTO produit VALUES ("814", "MERCEDES", "200", "57668", "6");
INSERT INTO produit VALUES ("815", "MERCEDES", "206", "13304", "2");
INSERT INTO produit VALUES ("816", "MERCEDES", "207", "44284", "1");
INSERT INTO produit VALUES ("817", "MERCEDES", "208", "53441", "8");
INSERT INTO produit VALUES ("818", "MERCEDES", "209", "37114", "18");
INSERT INTO produit VALUES ("819", "MERCEDES", "210", "79733", "3");
INSERT INTO produit VALUES ("820", "MERCEDES", "220", "76758", "9");
INSERT INTO produit VALUES ("821", "MERCEDES", "230", "60468", "0");
INSERT INTO produit VALUES ("822", "MERCEDES", "240", "43628", "14");
INSERT INTO produit VALUES ("823", "MERCEDES", "250", "40653", "2");
INSERT INTO produit VALUES ("824", "MERCEDES", "260", "75393", "15");
INSERT INTO produit VALUES ("825", "MERCEDES", "280", "79725", "9");
INSERT INTO produit VALUES ("826", "MERCEDES", "300", "28513", "5");
INSERT INTO produit VALUES ("827", "MERCEDES", "306", "12875", "14");
INSERT INTO produit VALUES ("828", "MERCEDES", "307", "78138", "19");
INSERT INTO produit VALUES ("829", "MERCEDES", "308", "51423", "15");
INSERT INTO produit VALUES ("830", "MERCEDES", "309", "75751", "2");
INSERT INTO produit VALUES ("831", "MERCEDES", "310", "52373", "9");
INSERT INTO produit VALUES ("832", "MERCEDES", "320", "30703", "8");
INSERT INTO produit VALUES ("833", "MERCEDES", "350", "50513", "1");
INSERT INTO produit VALUES ("834", "MERCEDES", "400", "62890", "5");
INSERT INTO produit VALUES ("835", "MERCEDES", "406", "52409", "16");
INSERT INTO produit VALUES ("836", "MERCEDES", "407", "44077", "6");
INSERT INTO produit VALUES ("837", "MERCEDES", "408", "25731", "2");
INSERT INTO produit VALUES ("838", "MERCEDES", "409", "79240", "18");
INSERT INTO produit VALUES ("839", "MERCEDES", "410", "51065", "4");
INSERT INTO produit VALUES ("840", "MERCEDES", "420", "50076", "13");
INSERT INTO produit VALUES ("841", "MERCEDES", "450", "62233", "16");
INSERT INTO produit VALUES ("842", "MERCEDES", "500", "41795", "12");
INSERT INTO produit VALUES ("843", "MERCEDES", "507", "60238", "19");
INSERT INTO produit VALUES ("844", "MERCEDES", "508", "27539", "9");
INSERT INTO produit VALUES ("845", "MERCEDES", "560", "60974", "18");
INSERT INTO produit VALUES ("846", "MERCEDES", "600", "55370", "3");
INSERT INTO produit VALUES ("847", "MERCEDES", "609", "35150", "15");
INSERT INTO produit VALUES ("848", "MERCEDES", "611", "33068", "5");
INSERT INTO produit VALUES ("849", "MERCEDES", "CITAN", "61324", "7");
INSERT INTO produit VALUES ("850", "MERCEDES", "CLASSE A", "16192", "17");
INSERT INTO produit VALUES ("851", "MERCEDES", "CLASSE A IV", "32061", "17");
INSERT INTO produit VALUES ("852", "MERCEDES", "CLASSE B", "78722", "8");
INSERT INTO produit VALUES ("853", "MERCEDES", "CLASSE B III", "40500", "0");
INSERT INTO produit VALUES ("854", "MERCEDES", "CLASSE C", "27153", "6");
INSERT INTO produit VALUES ("855", "MERCEDES", "CLASSE C III", "52419", "18");
INSERT INTO produit VALUES ("856", "MERCEDES", "CLASSE C IV", "38555", "3");
INSERT INTO produit VALUES ("857", "MERCEDES", "CLASSE C V", "25567", "5");
INSERT INTO produit VALUES ("858", "MERCEDES", "CLASSE CL", "40193", "18");
INSERT INTO produit VALUES ("859", "MERCEDES", "CLASSE CLA", "51320", "19");
INSERT INTO produit VALUES ("860", "MERCEDES", "CLASSE CLA II", "76075", "19");
INSERT INTO produit VALUES ("861", "MERCEDES", "CLASSE CLC", "55164", "2");
INSERT INTO produit VALUES ("862", "MERCEDES", "CLASSE CLK", "75784", "12");
INSERT INTO produit VALUES ("863", "MERCEDES", "CLASSE CLS", "47226", "1");
INSERT INTO produit VALUES ("864", "MERCEDES", "CLASSE E", "28816", "11");
INSERT INTO produit VALUES ("865", "MERCEDES", "CLASSE E IV", "24799", "19");
INSERT INTO produit VALUES ("866", "MERCEDES", "CLASSE E V", "13223", "15");
INSERT INTO produit VALUES ("867", "MERCEDES", "CLASSE EQA", "63097", "12");
INSERT INTO produit VALUES ("868", "MERCEDES", "CLASSE EQC", "63425", "0");
INSERT INTO produit VALUES ("869", "MERCEDES", "CLASSE EQV", "66327", "17");
INSERT INTO produit VALUES ("870", "MERCEDES", "CLASSE G", "26264", "19");
INSERT INTO produit VALUES ("871", "MERCEDES", "CLASSE G II", "48060", "5");
INSERT INTO produit VALUES ("872", "MERCEDES", "CLASSE GL", "17238", "7");
INSERT INTO produit VALUES ("873", "MERCEDES", "CLASSE GLA", "46749", "17");
INSERT INTO produit VALUES ("874", "MERCEDES", "CLASSE GLA II", "24083", "12");
INSERT INTO produit VALUES ("875", "MERCEDES", "CLASSE GLB", "44296", "13");
INSERT INTO produit VALUES ("876", "MERCEDES", "CLASSE GLC", "45855", "16");
INSERT INTO produit VALUES ("877", "MERCEDES", "CLASSE GLE", "18038", "19");
INSERT INTO produit VALUES ("878", "MERCEDES", "CLASSE GLE II", "77003", "9");
INSERT INTO produit VALUES ("879", "MERCEDES", "CLASSE GLK", "25418", "17");
INSERT INTO produit VALUES ("880", "MERCEDES", "CLASSE GLS", "69153", "5");
INSERT INTO produit VALUES ("881", "MERCEDES", "CLASSE GLS II", "40002", "20");
INSERT INTO produit VALUES ("882", "MERCEDES", "CLASSE M", "30350", "5");
INSERT INTO produit VALUES ("883", "MERCEDES", "CLASSE R", "54725", "13");
INSERT INTO produit VALUES ("884", "MERCEDES", "CLASSE S", "33886", "14");
INSERT INTO produit VALUES ("885", "MERCEDES", "CLASSE S V", "22157", "2");
INSERT INTO produit VALUES ("886", "MERCEDES", "CLASSE SL", "42031", "0");
INSERT INTO produit VALUES ("887", "MERCEDES", "CLASSE SLC", "71805", "12");
INSERT INTO produit VALUES ("888", "MERCEDES", "CLASSE SLK", "64604", "6");
INSERT INTO produit VALUES ("889", "MERCEDES", "CLASSE SLS", "32841", "15");
INSERT INTO produit VALUES ("890", "MERCEDES", "CLASSE V", "45768", "6");
INSERT INTO produit VALUES ("891", "MERCEDES", "CLASSE X", "13595", "14");
INSERT INTO produit VALUES ("892", "MERCEDES", "GT", "39103", "6");
INSERT INTO produit VALUES ("893", "MERCEDES", "MB100", "31934", "17");
INSERT INTO produit VALUES ("894", "MERCEDES", "SPRINTER", "35490", "19");
INSERT INTO produit VALUES ("895", "MERCEDES", "VANEO", "21399", "2");
INSERT INTO produit VALUES ("896", "MERCEDES", "VARIO PLUS", "73403", "5");
INSERT INTO produit VALUES ("897", "MERCEDES", "VIANO", "42002", "19");
INSERT INTO produit VALUES ("898", "MERCEDES", "VITO", "69063", "17");
INSERT INTO produit VALUES ("899", "MG", "F", "74187", "19");
INSERT INTO produit VALUES ("900", "MG", "TF", "40613", "17");
INSERT INTO produit VALUES ("901", "MG", "ZR", "31026", "17");
INSERT INTO produit VALUES ("902", "MG", "ZS", "44314", "19");
INSERT INTO produit VALUES ("903", "MG", "ZS EV", "69440", "11");
INSERT INTO produit VALUES ("904", "MG", "ZT", "61144", "13");
INSERT INTO produit VALUES ("905", "MIA", "ELECTRIC", "72185", "5");
INSERT INTO produit VALUES ("906", "MINI", "COUNTRYMAN", "39747", "7");
INSERT INTO produit VALUES ("907", "MINI", "MINI", "36505", "7");
INSERT INTO produit VALUES ("908", "MINI", "MINI CLUBMAN", "73323", "6");
INSERT INTO produit VALUES ("909", "MINI", "PACEMAN", "37873", "17");
INSERT INTO produit VALUES ("910", "MITSUBISHI", "3000", "31437", "5");
INSERT INTO produit VALUES ("911", "MITSUBISHI", "ASX", "67862", "4");
INSERT INTO produit VALUES ("912", "MITSUBISHI", "CANTER", "60466", "17");
INSERT INTO produit VALUES ("913", "MITSUBISHI", "CARISMA", "50044", "8");
INSERT INTO produit VALUES ("914", "MITSUBISHI", "COLT", "31261", "19");
INSERT INTO produit VALUES ("915", "MITSUBISHI", "ECLIPSE CROSS", "21443", "18");
INSERT INTO produit VALUES ("916", "MITSUBISHI", "ESTATE", "23848", "0");
INSERT INTO produit VALUES ("917", "MITSUBISHI", "GALANT", "17241", "4");
INSERT INTO produit VALUES ("918", "MITSUBISHI", "GRANDIS", "40659", "11");
INSERT INTO produit VALUES ("919", "MITSUBISHI", "I-MIEV", "14817", "14");
INSERT INTO produit VALUES ("920", "MITSUBISHI", "L200", "74642", "16");
INSERT INTO produit VALUES ("921", "MITSUBISHI", "LANCER", "25515", "14");
INSERT INTO produit VALUES ("922", "MITSUBISHI", "MONTERO", "41546", "7");
INSERT INTO produit VALUES ("923", "MITSUBISHI", "OUTLANDER", "13762", "7");
INSERT INTO produit VALUES ("924", "MITSUBISHI", "PAJERO", "34356", "5");
INSERT INTO produit VALUES ("925", "MITSUBISHI", "SAPPORO", "32248", "8");
INSERT INTO produit VALUES ("926", "MITSUBISHI", "SPACE RUNNER", "32774", "2");
INSERT INTO produit VALUES ("927", "MITSUBISHI", "SPACE STAR", "46787", "16");
INSERT INTO produit VALUES ("928", "MITSUBISHI", "SPACE STAR II", "62299", "11");
INSERT INTO produit VALUES ("929", "MITSUBISHI", "SPACE WAGON", "54707", "13");
INSERT INTO produit VALUES ("930", "MPM MOTORS", "PS160", "75417", "7");
INSERT INTO produit VALUES ("931", "NISSAN", "100 NX", "52547", "8");
INSERT INTO produit VALUES ("932", "NISSAN", "200 SX", "77487", "11");
INSERT INTO produit VALUES ("933", "NISSAN", "300 ZX", "37464", "16");
INSERT INTO produit VALUES ("934", "NISSAN", "350 Z", "53534", "15");
INSERT INTO produit VALUES ("935", "NISSAN", "370 Z", "54506", "10");
INSERT INTO produit VALUES ("936", "NISSAN", "ALMERA", "45301", "18");
INSERT INTO produit VALUES ("937", "NISSAN", "ALMERA TINO", "62593", "0");
INSERT INTO produit VALUES ("938", "NISSAN", "ATLEON", "26218", "19");
INSERT INTO produit VALUES ("939", "NISSAN", "BLUEBIRD", "24078", "15");
INSERT INTO produit VALUES ("940", "NISSAN", "CABSTAR", "36054", "7");
INSERT INTO produit VALUES ("941", "NISSAN", "CEDRIC", "70511", "19");
INSERT INTO produit VALUES ("942", "NISSAN", "CUBE", "33918", "6");
INSERT INTO produit VALUES ("943", "NISSAN", "ECO T100", "70412", "16");
INSERT INTO produit VALUES ("944", "NISSAN", "GT-R", "68465", "20");
INSERT INTO produit VALUES ("945", "NISSAN", "INTERSTAR", "79968", "4");
INSERT INTO produit VALUES ("946", "NISSAN", "JUKE", "39222", "9");
INSERT INTO produit VALUES ("947", "NISSAN", "JUKE II", "49231", "5");
INSERT INTO produit VALUES ("948", "NISSAN", "KING-CAB", "22147", "3");
INSERT INTO produit VALUES ("949", "NISSAN", "KUBISTAR", "75813", "11");
INSERT INTO produit VALUES ("950", "NISSAN", "L35", "14818", "17");
INSERT INTO produit VALUES ("951", "NISSAN", "LEAF", "69669", "15");
INSERT INTO produit VALUES ("952", "NISSAN", "MAXIMA", "60920", "2");
INSERT INTO produit VALUES ("953", "NISSAN", "MAXIMA QX", "13237", "8");
INSERT INTO produit VALUES ("954", "NISSAN", "MICRA", "41888", "7");
INSERT INTO produit VALUES ("955", "NISSAN", "MURANO", "55687", "6");
INSERT INTO produit VALUES ("956", "NISSAN", "NAVARA", "37674", "17");
INSERT INTO produit VALUES ("957", "NISSAN", "NOTE", "28604", "20");
INSERT INTO produit VALUES ("958", "NISSAN", "NP300", "50818", "20");
INSERT INTO produit VALUES ("959", "NISSAN", "NV200", "69836", "0");
INSERT INTO produit VALUES ("960", "NISSAN", "NV250", "14197", "9");
INSERT INTO produit VALUES ("961", "NISSAN", "NV300", "38216", "10");
INSERT INTO produit VALUES ("962", "NISSAN", "NV400", "45556", "11");
INSERT INTO produit VALUES ("963", "NISSAN", "PATHFINDER", "57815", "8");
INSERT INTO produit VALUES ("964", "NISSAN", "PATROL", "21768", "7");
INSERT INTO produit VALUES ("965", "NISSAN", "PICK-UP", "55496", "4");
INSERT INTO produit VALUES ("966", "NISSAN", "PIXO", "39402", "13");
INSERT INTO produit VALUES ("967", "NISSAN", "PRAIRIE", "59933", "8");
INSERT INTO produit VALUES ("968", "NISSAN", "PRIMASTAR", "21313", "18");
INSERT INTO produit VALUES ("969", "NISSAN", "PRIMERA", "47375", "13");
INSERT INTO produit VALUES ("970", "NISSAN", "PULSAR", "23239", "9");
INSERT INTO produit VALUES ("971", "NISSAN", "QASHQAI", "71649", "3");
INSERT INTO produit VALUES ("972", "NISSAN", "QASHQAI III", "45644", "17");
INSERT INTO produit VALUES ("973", "NISSAN", "SERENA", "22436", "15");
INSERT INTO produit VALUES ("974", "NISSAN", "SILVIA", "72343", "2");
INSERT INTO produit VALUES ("975", "NISSAN", "STANZA", "73090", "0");
INSERT INTO produit VALUES ("976", "NISSAN", "SUNNY", "57716", "19");
INSERT INTO produit VALUES ("977", "NISSAN", "TERRANO", "66470", "13");
INSERT INTO produit VALUES ("978", "NISSAN", "TERRANO II", "45503", "12");
INSERT INTO produit VALUES ("979", "NISSAN", "TINO", "61708", "13");
INSERT INTO produit VALUES ("980", "NISSAN", "TRADE", "52420", "5");
INSERT INTO produit VALUES ("981", "NISSAN", "URVAN", "31982", "20");
INSERT INTO produit VALUES ("982", "NISSAN", "VANETTE", "71624", "15");
INSERT INTO produit VALUES ("983", "NISSAN", "X-TRAIL", "29610", "8");
INSERT INTO produit VALUES ("984", "OPEL", "ADAM", "75259", "20");
INSERT INTO produit VALUES ("985", "OPEL", "ADMIRAL", "20974", "11");
INSERT INTO produit VALUES ("986", "OPEL", "AGILA", "13185", "7");
INSERT INTO produit VALUES ("987", "OPEL", "AMPERA", "13448", "9");
INSERT INTO produit VALUES ("988", "OPEL", "ANTARA", "67172", "3");
INSERT INTO produit VALUES ("989", "OPEL", "ASCONA", "30566", "4");
INSERT INTO produit VALUES ("990", "OPEL", "ASTRA", "22406", "0");
INSERT INTO produit VALUES ("991", "OPEL", "CABRIO", "33585", "0");
INSERT INTO produit VALUES ("992", "OPEL", "CALIBRA", "20612", "9");
INSERT INTO produit VALUES ("993", "OPEL", "CAMPO", "25185", "17");
INSERT INTO produit VALUES ("994", "OPEL", "CASCADA", "57519", "5");
INSERT INTO produit VALUES ("995", "OPEL", "CITY", "20233", "9");
INSERT INTO produit VALUES ("996", "OPEL", "COMBO", "40615", "17");
INSERT INTO produit VALUES ("997", "OPEL", "COMBO III", "45707", "4");
INSERT INTO produit VALUES ("998", "OPEL", "COMBO LIFE", "51160", "11");
INSERT INTO produit VALUES ("999", "OPEL", "COMMODORE", "45876", "14");
INSERT INTO produit VALUES ("1000", "OPEL", "CORSA", "35103", "8");
INSERT INTO produit VALUES ("1001", "OPEL", "CORSA VI", "28967", "18");
INSERT INTO produit VALUES ("1002", "OPEL", "CORSAVAN", "78329", "0");
INSERT INTO produit VALUES ("1003", "OPEL", "CROSSLAND X", "53172", "4");
INSERT INTO produit VALUES ("1004", "OPEL", "DIPLOMAT", "52077", "8");
INSERT INTO produit VALUES ("1005", "OPEL", "FRONTERA", "28781", "11");
INSERT INTO produit VALUES ("1006", "OPEL", "GRANDLAND X", "42271", "7");
INSERT INTO produit VALUES ("1007", "OPEL", "GT", "14346", "1");
INSERT INTO produit VALUES ("1008", "OPEL", "INSIGNIA", "67725", "9");
INSERT INTO produit VALUES ("1009", "OPEL", "KADETT", "44141", "2");
INSERT INTO produit VALUES ("1010", "OPEL", "KAPITAN", "44661", "0");
INSERT INTO produit VALUES ("1011", "OPEL", "KARL", "73743", "15");
INSERT INTO produit VALUES ("1012", "OPEL", "MANTA", "60763", "2");
INSERT INTO produit VALUES ("1013", "OPEL", "MERIVA", "37913", "9");
INSERT INTO produit VALUES ("1014", "OPEL", "MOKKA", "62564", "6");
INSERT INTO produit VALUES ("1015", "OPEL", "MOKKA II", "66214", "9");
INSERT INTO produit VALUES ("1016", "OPEL", "MONTEREY", "51829", "7");
INSERT INTO produit VALUES ("1017", "OPEL", "MONZA", "66724", "1");
INSERT INTO produit VALUES ("1018", "OPEL", "MOVANO", "12757", "8");
INSERT INTO produit VALUES ("1019", "OPEL", "OMEGA", "15231", "17");
INSERT INTO produit VALUES ("1020", "OPEL", "REKORD", "69535", "14");
INSERT INTO produit VALUES ("1021", "OPEL", "SENATOR", "75089", "0");
INSERT INTO produit VALUES ("1022", "OPEL", "SIGNUM", "61051", "4");
INSERT INTO produit VALUES ("1023", "OPEL", "SINTRA", "52489", "12");
INSERT INTO produit VALUES ("1024", "OPEL", "SPEEDSTER", "67400", "2");
INSERT INTO produit VALUES ("1025", "OPEL", "TIGRA", "40597", "20");
INSERT INTO produit VALUES ("1026", "OPEL", "VECTRA", "17411", "20");
INSERT INTO produit VALUES ("1027", "OPEL", "VIVARO", "41910", "11");
INSERT INTO produit VALUES ("1028", "OPEL", "VIVARO III", "41710", "12");
INSERT INTO produit VALUES ("1029", "OPEL", "ZAFIRA", "59919", "15");
INSERT INTO produit VALUES ("1030", "OPEL", "ZAFIRA LIFE", "39819", "15");
INSERT INTO produit VALUES ("1031", "PANHARD", "24", "61983", "18");
INSERT INTO produit VALUES ("1032", "PANHARD", "DYNA", "39097", "14");
INSERT INTO produit VALUES ("1033", "PANHARD", "PL", "21871", "19");
INSERT INTO produit VALUES ("1034", "PEUGEOT", "1007", "55181", "2");
INSERT INTO produit VALUES ("1035", "PEUGEOT", "104", "13289", "19");
INSERT INTO produit VALUES ("1036", "PEUGEOT", "106", "46198", "15");
INSERT INTO produit VALUES ("1037", "PEUGEOT", "107", "36425", "0");
INSERT INTO produit VALUES ("1038", "PEUGEOT", "108", "75299", "1");
INSERT INTO produit VALUES ("1039", "PEUGEOT", "2008", "24073", "6");
INSERT INTO produit VALUES ("1040", "PEUGEOT", "2008 II", "47879", "11");
INSERT INTO produit VALUES ("1041", "PEUGEOT", "203", "36845", "11");
INSERT INTO produit VALUES ("1042", "PEUGEOT", "204", "31087", "19");
INSERT INTO produit VALUES ("1043", "PEUGEOT", "205", "61552", "9");
INSERT INTO produit VALUES ("1044", "PEUGEOT", "206", "67500", "15");
INSERT INTO produit VALUES ("1045", "PEUGEOT", "207", "24511", "12");
INSERT INTO produit VALUES ("1046", "PEUGEOT", "208", "41232", "0");
INSERT INTO produit VALUES ("1047", "PEUGEOT", "208 II", "49400", "8");
INSERT INTO produit VALUES ("1048", "PEUGEOT", "3008", "33015", "1");
INSERT INTO produit VALUES ("1049", "PEUGEOT", "304", "36228", "6");
INSERT INTO produit VALUES ("1050", "PEUGEOT", "305", "32136", "10");
INSERT INTO produit VALUES ("1051", "PEUGEOT", "306", "35970", "19");
INSERT INTO produit VALUES ("1052", "PEUGEOT", "307", "70634", "7");
INSERT INTO produit VALUES ("1053", "PEUGEOT", "308", "72778", "13");
INSERT INTO produit VALUES ("1054", "PEUGEOT", "308 III", "61254", "17");
INSERT INTO produit VALUES ("1055", "PEUGEOT", "309", "78234", "7");
INSERT INTO produit VALUES ("1056", "PEUGEOT", "4007", "79622", "15");
INSERT INTO produit VALUES ("1057", "PEUGEOT", "4008", "60088", "2");
INSERT INTO produit VALUES ("1058", "PEUGEOT", "403", "34708", "20");
INSERT INTO produit VALUES ("1059", "PEUGEOT", "404", "51201", "19");
INSERT INTO produit VALUES ("1060", "PEUGEOT", "405", "27106", "1");
INSERT INTO produit VALUES ("1061", "PEUGEOT", "406", "73323", "6");
INSERT INTO produit VALUES ("1062", "PEUGEOT", "407", "20347", "6");
INSERT INTO produit VALUES ("1063", "PEUGEOT", "5008", "75878", "14");
INSERT INTO produit VALUES ("1064", "PEUGEOT", "504", "53887", "6");
INSERT INTO produit VALUES ("1065", "PEUGEOT", "505", "22727", "2");
INSERT INTO produit VALUES ("1066", "PEUGEOT", "508", "15200", "2");
INSERT INTO produit VALUES ("1067", "PEUGEOT", "508 II", "71347", "11");
INSERT INTO produit VALUES ("1068", "PEUGEOT", "604", "17242", "7");
INSERT INTO produit VALUES ("1069", "PEUGEOT", "605", "18431", "3");
INSERT INTO produit VALUES ("1070", "PEUGEOT", "607", "59955", "10");
INSERT INTO produit VALUES ("1071", "PEUGEOT", "806", "14777", "11");
INSERT INTO produit VALUES ("1072", "PEUGEOT", "807", "28431", "13");
INSERT INTO produit VALUES ("1073", "PEUGEOT", "BIPPER", "52100", "5");
INSERT INTO produit VALUES ("1074", "PEUGEOT", "BOXER", "23509", "3");
INSERT INTO produit VALUES ("1075", "PEUGEOT", "BOXER*", "32624", "12");
INSERT INTO produit VALUES ("1076", "PEUGEOT", "DANGEL 504", "74671", "17");
INSERT INTO produit VALUES ("1077", "PEUGEOT", "DANGEL 505", "27981", "3");
INSERT INTO produit VALUES ("1078", "PEUGEOT", "DANGEL J5", "20569", "15");
INSERT INTO produit VALUES ("1079", "PEUGEOT", "EXPERT", "38854", "20");
INSERT INTO produit VALUES ("1080", "PEUGEOT", "ION", "35541", "7");
INSERT INTO produit VALUES ("1081", "PEUGEOT", "J5", "20237", "17");
INSERT INTO produit VALUES ("1082", "PEUGEOT", "J5 COMBI", "68160", "7");
INSERT INTO produit VALUES ("1083", "PEUGEOT", "J7", "53461", "11");
INSERT INTO produit VALUES ("1084", "PEUGEOT", "J9", "22504", "3");
INSERT INTO produit VALUES ("1085", "PEUGEOT", "P4", "69802", "20");
INSERT INTO produit VALUES ("1086", "PEUGEOT", "PARTNER", "65758", "18");
INSERT INTO produit VALUES ("1087", "PEUGEOT", "PARTNER II", "14331", "19");
INSERT INTO produit VALUES ("1088", "PEUGEOT", "PARTNER III", "23504", "3");
INSERT INTO produit VALUES ("1089", "PEUGEOT", "RCZ", "17332", "19");
INSERT INTO produit VALUES ("1090", "PEUGEOT", "RIFTER", "54234", "7");
INSERT INTO produit VALUES ("1091", "PEUGEOT", "TRAVELLER", "77068", "0");
INSERT INTO produit VALUES ("1092", "PIAGGIO", "PORTER", "57971", "20");
INSERT INTO produit VALUES ("1093", "PONTIAC", "FIREBIRD", "29043", "9");
INSERT INTO produit VALUES ("1094", "PONTIAC", "TRANS SPORT", "16514", "19");
INSERT INTO produit VALUES ("1095", "PORSCHE", "718 BOXSTER", "35587", "6");
INSERT INTO produit VALUES ("1096", "PORSCHE", "718 CAYMAN", "24843", "1");
INSERT INTO produit VALUES ("1097", "PORSCHE", "911", "32003", "10");
INSERT INTO produit VALUES ("1098", "PORSCHE", "911 VIII", "25286", "2");
INSERT INTO produit VALUES ("1099", "PORSCHE", "912", "28928", "11");
INSERT INTO produit VALUES ("1100", "PORSCHE", "914", "29219", "10");
INSERT INTO produit VALUES ("1101", "PORSCHE", "918", "26785", "19");
INSERT INTO produit VALUES ("1102", "PORSCHE", "924", "45057", "15");
INSERT INTO produit VALUES ("1103", "PORSCHE", "928", "71748", "2");
INSERT INTO produit VALUES ("1104", "PORSCHE", "930", "13058", "15");
INSERT INTO produit VALUES ("1105", "PORSCHE", "944", "12236", "7");
INSERT INTO produit VALUES ("1106", "PORSCHE", "968", "30034", "1");
INSERT INTO produit VALUES ("1107", "PORSCHE", "BOXSTER", "74390", "1");
INSERT INTO produit VALUES ("1108", "PORSCHE", "CAYENNE", "73934", "3");
INSERT INTO produit VALUES ("1109", "PORSCHE", "CAYMAN", "36155", "14");
INSERT INTO produit VALUES ("1110", "PORSCHE", "MACAN", "29490", "17");
INSERT INTO produit VALUES ("1111", "PORSCHE", "MACAN II", "68841", "1");
INSERT INTO produit VALUES ("1112", "PORSCHE", "PANAMERA", "25582", "13");
INSERT INTO produit VALUES ("1113", "PORSCHE", "TAYCAN", "53531", "6");
INSERT INTO produit VALUES ("1114", "PROTON", "313", "42898", "19");
INSERT INTO produit VALUES ("1115", "PROTON", "315", "44299", "9");
INSERT INTO produit VALUES ("1116", "PROTON", "413", "19901", "18");
INSERT INTO produit VALUES ("1117", "PROTON", "415", "22988", "19");
INSERT INTO produit VALUES ("1118", "PROTON", "416", "33125", "16");
INSERT INTO produit VALUES ("1119", "PROTON", "418", "32823", "18");
INSERT INTO produit VALUES ("1120", "PROTON", "420", "61785", "10");
INSERT INTO produit VALUES ("1121", "RENAULT", "4CV", "23748", "10");
INSERT INTO produit VALUES ("1122", "RENAULT", "ALASKAN", "69590", "16");
INSERT INTO produit VALUES ("1123", "RENAULT", "ARKANA", "47315", "1");
INSERT INTO produit VALUES ("1124", "RENAULT", "AVANTIME", "27730", "17");
INSERT INTO produit VALUES ("1125", "RENAULT", "B110", "18468", "7");
INSERT INTO produit VALUES ("1126", "RENAULT", "B120", "51022", "15");
INSERT INTO produit VALUES ("1127", "RENAULT", "B70", "21029", "6");
INSERT INTO produit VALUES ("1128", "RENAULT", "B80", "46302", "20");
INSERT INTO produit VALUES ("1129", "RENAULT", "B90", "37245", "13");
INSERT INTO produit VALUES ("1130", "RENAULT", "CAPTUR", "25995", "17");
INSERT INTO produit VALUES ("1131", "RENAULT", "CAPTUR II", "53751", "0");
INSERT INTO produit VALUES ("1132", "RENAULT", "CARAVELLE", "45471", "11");
INSERT INTO produit VALUES ("1133", "RENAULT", "CHEROKEE", "28049", "2");
INSERT INTO produit VALUES ("1134", "RENAULT", "CLIO", "56794", "9");
INSERT INTO produit VALUES ("1135", "RENAULT", "CLIO III", "67388", "0");
INSERT INTO produit VALUES ("1136", "RENAULT", "CLIO III ESTATE", "13149", "5");
INSERT INTO produit VALUES ("1137", "RENAULT", "CLIO IV", "31653", "14");
INSERT INTO produit VALUES ("1138", "RENAULT", "CLIO IV ESTATE", "54043", "0");
INSERT INTO produit VALUES ("1139", "RENAULT", "CLIO V", "18047", "15");
INSERT INTO produit VALUES ("1140", "RENAULT", "DAUPHINE", "25316", "15");
INSERT INTO produit VALUES ("1141", "RENAULT", "DAUPHINOIS", "22088", "6");
INSERT INTO produit VALUES ("1142", "RENAULT", "ESPACE", "33202", "13");
INSERT INTO produit VALUES ("1143", "RENAULT", "ESPACE IV", "79979", "2");
INSERT INTO produit VALUES ("1144", "RENAULT", "ESPACE V", "74690", "8");
INSERT INTO produit VALUES ("1145", "RENAULT", "ESTAFETTE", "70201", "19");
INSERT INTO produit VALUES ("1146", "RENAULT", "EXPRESS", "59400", "8");
INSERT INTO produit VALUES ("1147", "RENAULT", "FLORIDE", "28130", "13");
INSERT INTO produit VALUES ("1148", "RENAULT", "FLUENCE", "57440", "19");
INSERT INTO produit VALUES ("1149", "RENAULT", "FREGATE", "63410", "20");
INSERT INTO produit VALUES ("1150", "RENAULT", "FUEGO", "13623", "10");
INSERT INTO produit VALUES ("1151", "RENAULT", "GRAND ESPACE", "27739", "9");
INSERT INTO produit VALUES ("1152", "RENAULT", "GRAND ESPACE IV", "68749", "18");
INSERT INTO produit VALUES ("1153", "RENAULT", "GRAND SCENIC", "59173", "13");
INSERT INTO produit VALUES ("1154", "RENAULT", "JEEP CJ7", "62234", "1");
INSERT INTO produit VALUES ("1155", "RENAULT", "JUVAQUATRE", "30331", "18");
INSERT INTO produit VALUES ("1156", "RENAULT", "KADJAR", "71728", "12");
INSERT INTO produit VALUES ("1157", "RENAULT", "KANGOO", "50284", "12");
INSERT INTO produit VALUES ("1158", "RENAULT", "KANGOO EXPRESS", "35444", "13");
INSERT INTO produit VALUES ("1159", "RENAULT", "KANGOO EXPRESS II", "29089", "18");
INSERT INTO produit VALUES ("1160", "RENAULT", "KANGOO II", "66822", "7");
INSERT INTO produit VALUES ("1161", "RENAULT", "KANGOO III", "61213", "12");
INSERT INTO produit VALUES ("1162", "RENAULT", "KOLEOS", "50233", "3");
INSERT INTO produit VALUES ("1163", "RENAULT", "LAGUNA", "53295", "15");
INSERT INTO produit VALUES ("1164", "RENAULT", "LAGUNA II", "75494", "14");
INSERT INTO produit VALUES ("1165", "RENAULT", "LAGUNA II ESTATE", "65526", "17");
INSERT INTO produit VALUES ("1166", "RENAULT", "LAGUNA III", "29350", "16");
INSERT INTO produit VALUES ("1167", "RENAULT", "LAGUNA III ESTATE", "33666", "0");
INSERT INTO produit VALUES ("1168", "RENAULT", "LAGUNA NEVADA", "67688", "10");
INSERT INTO produit VALUES ("1169", "RENAULT", "LATITUDE", "25259", "11");
INSERT INTO produit VALUES ("1170", "RENAULT", "MASCOTT", "29523", "2");
INSERT INTO produit VALUES ("1171", "RENAULT", "MASTER", "58551", "10");
INSERT INTO produit VALUES ("1172", "RENAULT", "MASTER III", "61666", "17");
INSERT INTO produit VALUES ("1173", "RENAULT", "MAXITY", "38982", "11");
INSERT INTO produit VALUES ("1174", "RENAULT", "MEGANE", "18706", "1");
INSERT INTO produit VALUES ("1175", "RENAULT", "MEGANE II", "74116", "9");
INSERT INTO produit VALUES ("1176", "RENAULT", "MEGANE II ESTATE", "65632", "6");
INSERT INTO produit VALUES ("1177", "RENAULT", "MEGANE III", "68355", "12");
INSERT INTO produit VALUES ("1178", "RENAULT", "MEGANE III ESTATE", "26400", "14");
INSERT INTO produit VALUES ("1179", "RENAULT", "MEGANE IV", "77854", "10");
INSERT INTO produit VALUES ("1180", "RENAULT", "MESSENGER", "30462", "7");
INSERT INTO produit VALUES ("1181", "RENAULT", "MODUS", "52815", "0");
INSERT INTO produit VALUES ("1182", "RENAULT", "ONDINE", "46052", "7");
INSERT INTO produit VALUES ("1183", "RENAULT", "PRAIRIE", "35637", "4");
INSERT INTO produit VALUES ("1184", "RENAULT", "R10", "72647", "16");
INSERT INTO produit VALUES ("1185", "RENAULT", "R11", "54996", "13");
INSERT INTO produit VALUES ("1186", "RENAULT", "R12", "73805", "14");
INSERT INTO produit VALUES ("1187", "RENAULT", "R14", "22185", "15");
INSERT INTO produit VALUES ("1188", "RENAULT", "R15", "14938", "16");
INSERT INTO produit VALUES ("1189", "RENAULT", "R16", "57367", "0");
INSERT INTO produit VALUES ("1190", "RENAULT", "R17", "36270", "18");
INSERT INTO produit VALUES ("1191", "RENAULT", "R18", "40851", "3");
INSERT INTO produit VALUES ("1192", "RENAULT", "R19", "72200", "17");
INSERT INTO produit VALUES ("1193", "RENAULT", "R20", "34280", "11");
INSERT INTO produit VALUES ("1194", "RENAULT", "R21", "43275", "16");
INSERT INTO produit VALUES ("1195", "RENAULT", "R21 NEVADA", "79233", "7");
INSERT INTO produit VALUES ("1196", "RENAULT", "R25", "16228", "3");
INSERT INTO produit VALUES ("1197", "RENAULT", "R30", "73789", "16");
INSERT INTO produit VALUES ("1198", "RENAULT", "R4", "12536", "5");
INSERT INTO produit VALUES ("1199", "RENAULT", "R5", "64776", "13");
INSERT INTO produit VALUES ("1200", "RENAULT", "R6", "49851", "8");
INSERT INTO produit VALUES ("1201", "RENAULT", "R8", "32130", "2");
INSERT INTO produit VALUES ("1202", "RENAULT", "R9", "52377", "18");
INSERT INTO produit VALUES ("1203", "RENAULT", "RODEO", "76271", "1");
INSERT INTO produit VALUES ("1204", "RENAULT", "SAFRANE", "26339", "4");
INSERT INTO produit VALUES ("1205", "RENAULT", "SAVANE", "53973", "3");
INSERT INTO produit VALUES ("1206", "RENAULT", "SAVIEM", "31928", "4");
INSERT INTO produit VALUES ("1207", "RENAULT", "SCENIC", "15422", "8");
INSERT INTO produit VALUES ("1208", "RENAULT", "SCENIC II", "16891", "17");
INSERT INTO produit VALUES ("1209", "RENAULT", "SCENIC III", "48560", "2");
INSERT INTO produit VALUES ("1210", "RENAULT", "SCENIC IV", "39844", "11");
INSERT INTO produit VALUES ("1211", "RENAULT", "SPIDER", "28804", "15");
INSERT INTO produit VALUES ("1212", "RENAULT", "SUPERCINQ", "79315", "19");
INSERT INTO produit VALUES ("1213", "RENAULT", "TALISMAN", "48329", "18");
INSERT INTO produit VALUES ("1214", "RENAULT", "TRAFIC", "66202", "6");
INSERT INTO produit VALUES ("1215", "RENAULT", "TRAFIC III", "52409", "7");
INSERT INTO produit VALUES ("1216", "RENAULT", "TWINGO", "70844", "1");
INSERT INTO produit VALUES ("1217", "RENAULT", "TWINGO II", "28185", "3");
INSERT INTO produit VALUES ("1218", "RENAULT", "TWINGO III", "33369", "7");
INSERT INTO produit VALUES ("1219", "RENAULT", "VEL SATIS", "53443", "11");
INSERT INTO produit VALUES ("1220", "RENAULT", "WIND", "18333", "12");
INSERT INTO produit VALUES ("1221", "RENAULT", "WRANGLER", "63116", "16");
INSERT INTO produit VALUES ("1222", "RENAULT", "ZOE", "50306", "19");
INSERT INTO produit VALUES ("1223", "ROVER", "111", "21736", "17");
INSERT INTO produit VALUES ("1224", "ROVER", "114", "21454", "13");
INSERT INTO produit VALUES ("1225", "ROVER", "115", "57239", "16");
INSERT INTO produit VALUES ("1226", "ROVER", "200", "48765", "13");
INSERT INTO produit VALUES ("1227", "ROVER", "2000", "55690", "16");
INSERT INTO produit VALUES ("1228", "ROVER", "213", "32262", "0");
INSERT INTO produit VALUES ("1229", "ROVER", "214", "17628", "14");
INSERT INTO produit VALUES ("1230", "ROVER", "216", "27022", "4");
INSERT INTO produit VALUES ("1231", "ROVER", "218", "66263", "20");
INSERT INTO produit VALUES ("1232", "ROVER", "220", "15662", "13");
INSERT INTO produit VALUES ("1233", "ROVER", "2200", "18206", "10");
INSERT INTO produit VALUES ("1234", "ROVER", "2300", "29351", "15");
INSERT INTO produit VALUES ("1235", "ROVER", "2400", "63414", "15");
INSERT INTO produit VALUES ("1236", "ROVER", "25", "51726", "6");
INSERT INTO produit VALUES ("1237", "ROVER", "2600", "56627", "13");
INSERT INTO produit VALUES ("1238", "ROVER", "3500", "19328", "17");
INSERT INTO produit VALUES ("1239", "ROVER", "414", "56995", "10");
INSERT INTO produit VALUES ("1240", "ROVER", "416", "58478", "8");
INSERT INTO produit VALUES ("1241", "ROVER", "418", "75340", "14");
INSERT INTO produit VALUES ("1242", "ROVER", "420", "53653", "20");
INSERT INTO produit VALUES ("1243", "ROVER", "45", "18042", "6");
INSERT INTO produit VALUES ("1244", "ROVER", "618", "35813", "3");
INSERT INTO produit VALUES ("1245", "ROVER", "620", "67930", "13");
INSERT INTO produit VALUES ("1246", "ROVER", "623", "49369", "5");
INSERT INTO produit VALUES ("1247", "ROVER", "75", "70202", "10");
INSERT INTO produit VALUES ("1248", "ROVER", "820", "73887", "4");
INSERT INTO produit VALUES ("1249", "ROVER", "825", "34615", "18");
INSERT INTO produit VALUES ("1250", "ROVER", "827", "66000", "17");
INSERT INTO produit VALUES ("1251", "ROVER", "ESTATE", "52325", "13");
INSERT INTO produit VALUES ("1252", "ROVER", "FREIGHT", "50722", "14");
INSERT INTO produit VALUES ("1253", "ROVER", "STREETWISE", "17208", "11");
INSERT INTO produit VALUES ("1254", "SAAB", "9-3", "49877", "15");
INSERT INTO produit VALUES ("1255", "SAAB", "9-3 BERLINE DE SPORT", "78300", "1");
INSERT INTO produit VALUES ("1256", "SAAB", "9-3 SPORT HATCH", "79167", "19");
INSERT INTO produit VALUES ("1257", "SAAB", "9-3 X", "21551", "15");
INSERT INTO produit VALUES ("1258", "SAAB", "9-5", "60471", "17");
INSERT INTO produit VALUES ("1259", "SAAB", "9-5 ESTATE", "26954", "17");
INSERT INTO produit VALUES ("1260", "SAAB", "900", "55494", "14");
INSERT INTO produit VALUES ("1261", "SAAB", "9000", "17262", "19");
INSERT INTO produit VALUES ("1262", "SANTANA", "S300", "22683", "11");
INSERT INTO produit VALUES ("1263", "SANTANA", "S350", "78879", "3");
INSERT INTO produit VALUES ("1264", "SANTANA", "S410", "75288", "17");
INSERT INTO produit VALUES ("1265", "SANTANA", "S413", "19564", "20");
INSERT INTO produit VALUES ("1266", "SANTANA", "SAMURAI", "72256", "5");
INSERT INTO produit VALUES ("1267", "SANTANA", "VITARA", "14464", "10");
INSERT INTO produit VALUES ("1268", "SEAT", "ALHAMBRA", "27807", "8");
INSERT INTO produit VALUES ("1269", "SEAT", "ALTEA", "30818", "13");
INSERT INTO produit VALUES ("1270", "SEAT", "ALTEA  XL", "19250", "2");
INSERT INTO produit VALUES ("1271", "SEAT", "ARONA", "52072", "17");
INSERT INTO produit VALUES ("1272", "SEAT", "AROSA", "58662", "5");
INSERT INTO produit VALUES ("1273", "SEAT", "ATECA", "71190", "10");
INSERT INTO produit VALUES ("1274", "SEAT", "CORDOBA", "73737", "17");
INSERT INTO produit VALUES ("1275", "SEAT", "EXEO", "51592", "9");
INSERT INTO produit VALUES ("1276", "SEAT", "FURA", "70321", "0");
INSERT INTO produit VALUES ("1277", "SEAT", "IBIZA", "75440", "20");
INSERT INTO produit VALUES ("1278", "SEAT", "IBIZA*", "39833", "4");
INSERT INTO produit VALUES ("1279", "SEAT", "INCA", "31694", "9");
INSERT INTO produit VALUES ("1280", "SEAT", "LEON", "36458", "3");
INSERT INTO produit VALUES ("1281", "SEAT", "LEON IV", "59793", "10");
INSERT INTO produit VALUES ("1282", "SEAT", "MALAGA", "30004", "3");
INSERT INTO produit VALUES ("1283", "SEAT", "MARBELLA", "57133", "1");
INSERT INTO produit VALUES ("1284", "SEAT", "MII", "17833", "20");
INSERT INTO produit VALUES ("1285", "SEAT", "RONDA", "79974", "2");
INSERT INTO produit VALUES ("1286", "SEAT", "TARRACO", "74933", "7");
INSERT INTO produit VALUES ("1287", "SEAT", "TERRA", "53039", "12");
INSERT INTO produit VALUES ("1288", "SEAT", "TOLEDO", "52744", "6");
INSERT INTO produit VALUES ("1289", "SKODA", "1050", "60782", "1");
INSERT INTO produit VALUES ("1290", "SKODA", "120", "62767", "1");
INSERT INTO produit VALUES ("1291", "SKODA", "130", "21443", "4");
INSERT INTO produit VALUES ("1292", "SKODA", "CITIGO", "62924", "11");
INSERT INTO produit VALUES ("1293", "SKODA", "ENYAQ", "41577", "12");
INSERT INTO produit VALUES ("1294", "SKODA", "FABIA", "48083", "20");
INSERT INTO produit VALUES ("1295", "SKODA", "FABIA IV", "21552", "17");
INSERT INTO produit VALUES ("1296", "SKODA", "FAVORIT", "63701", "20");
INSERT INTO produit VALUES ("1297", "SKODA", "FELICIA", "64090", "9");
INSERT INTO produit VALUES ("1298", "SKODA", "KAMIQ", "74370", "14");
INSERT INTO produit VALUES ("1299", "SKODA", "KAROQ", "52467", "6");
INSERT INTO produit VALUES ("1300", "SKODA", "KODIAQ", "63711", "3");
INSERT INTO produit VALUES ("1301", "SKODA", "OCTAVIA", "44575", "20");
INSERT INTO produit VALUES ("1302", "SKODA", "OCTAVIA IV", "56954", "12");
INSERT INTO produit VALUES ("1303", "SKODA", "RAPID", "31514", "7");
INSERT INTO produit VALUES ("1304", "SKODA", "ROOMSTER", "44760", "17");
INSERT INTO produit VALUES ("1305", "SKODA", "SCALA", "13023", "16");
INSERT INTO produit VALUES ("1306", "SKODA", "SUPERB", "53566", "9");
INSERT INTO produit VALUES ("1307", "SKODA", "YETI", "31744", "11");
INSERT INTO produit VALUES ("1308", "SMART", "CABRIO", "14534", "13");
INSERT INTO produit VALUES ("1309", "SMART", "CITY-COUPE", "62924", "11");
INSERT INTO produit VALUES ("1310", "SMART", "FORFOUR", "43277", "14");
INSERT INTO produit VALUES ("1311", "SMART", "FORTWO", "75838", "10");
INSERT INTO produit VALUES ("1312", "SMART", "FORTWO BUSINESS", "31551", "17");
INSERT INTO produit VALUES ("1313", "SMART", "FORTWO CABRIO", "35610", "12");
INSERT INTO produit VALUES ("1314", "SMART", "FORTWO COUPE", "18864", "9");
INSERT INTO produit VALUES ("1315", "SMART", "ROADSTER", "39135", "0");
INSERT INTO produit VALUES ("1316", "SMART", "ROADSTER-COUPE", "76308", "10");
INSERT INTO produit VALUES ("1317", "SSANGYONG", "ACTYON", "43238", "10");
INSERT INTO produit VALUES ("1318", "SSANGYONG", "FAMILY", "42347", "12");
INSERT INTO produit VALUES ("1319", "SSANGYONG", "KORANDO", "38558", "8");
INSERT INTO produit VALUES ("1320", "SSANGYONG", "KORANDO II", "48293", "5");
INSERT INTO produit VALUES ("1321", "SSANGYONG", "KYRON", "52182", "4");
INSERT INTO produit VALUES ("1322", "SSANGYONG", "MUSSO", "55661", "3");
INSERT INTO produit VALUES ("1323", "SSANGYONG", "REXTON", "56952", "6");
INSERT INTO produit VALUES ("1324", "SSANGYONG", "REXTON III", "78347", "20");
INSERT INTO produit VALUES ("1325", "SSANGYONG", "RODIUS", "32248", "17");
INSERT INTO produit VALUES ("1326", "SSANGYONG", "TIVOLI", "62272", "13");
INSERT INTO produit VALUES ("1327", "SUBARU", "B9 TRIBECA", "78863", "16");
INSERT INTO produit VALUES ("1328", "SUBARU", "BRZ", "60898", "1");
INSERT INTO produit VALUES ("1329", "SUBARU", "E12", "41867", "9");
INSERT INTO produit VALUES ("1330", "SUBARU", "FORESTER", "14733", "18");
INSERT INTO produit VALUES ("1331", "SUBARU", "FORESTER V", "27351", "5");
INSERT INTO produit VALUES ("1332", "SUBARU", "G3X JUSTY", "77039", "3");
INSERT INTO produit VALUES ("1333", "SUBARU", "IMPREZA", "72698", "11");
INSERT INTO produit VALUES ("1334", "SUBARU", "IMPREZA V", "30152", "15");
INSERT INTO produit VALUES ("1335", "SUBARU", "JUSTY", "71511", "4");
INSERT INTO produit VALUES ("1336", "SUBARU", "LEGACY", "46323", "15");
INSERT INTO produit VALUES ("1337", "SUBARU", "LEVORG", "43213", "20");
INSERT INTO produit VALUES ("1338", "SUBARU", "OUTBACK", "73287", "12");
INSERT INTO produit VALUES ("1339", "SUBARU", "OUTBACK VI", "17121", "15");
INSERT INTO produit VALUES ("1340", "SUBARU", "SVX", "75049", "16");
INSERT INTO produit VALUES ("1341", "SUBARU", "TREZIA", "61995", "16");
INSERT INTO produit VALUES ("1342", "SUBARU", "VIVIO", "17621", "17");
INSERT INTO produit VALUES ("1343", "SUBARU", "XV", "20064", "18");
INSERT INTO produit VALUES ("1344", "SUBARU", "XV II", "55122", "20");
INSERT INTO produit VALUES ("1345", "SUNBEAM", "1000", "58317", "15");
INSERT INTO produit VALUES ("1346", "SUNBEAM", "1250", "74717", "16");
INSERT INTO produit VALUES ("1347", "SUNBEAM", "1300", "34506", "8");
INSERT INTO produit VALUES ("1348", "SUNBEAM", "1500", "22769", "17");
INSERT INTO produit VALUES ("1349", "SUNBEAM", "1600", "24820", "4");
INSERT INTO produit VALUES ("1350", "SUNBEAM", "1725", "27773", "6");
INSERT INTO produit VALUES ("1351", "SUNBEAM", "AVENGER", "69484", "1");
INSERT INTO produit VALUES ("1352", "SUNBEAM", "LOTUS", "28904", "3");
INSERT INTO produit VALUES ("1353", "SUNBEAM", "TI", "37047", "18");
INSERT INTO produit VALUES ("1354", "SUZUKI", "ACROSS", "63464", "10");
INSERT INTO produit VALUES ("1355", "SUZUKI", "ALTO", "65655", "7");
INSERT INTO produit VALUES ("1356", "SUZUKI", "BALENO", "64452", "13");
INSERT INTO produit VALUES ("1357", "SUZUKI", "CELERIO", "62493", "11");
INSERT INTO produit VALUES ("1358", "SUZUKI", "GRAND VITARA", "50973", "7");
INSERT INTO produit VALUES ("1359", "SUZUKI", "IGNIS", "62362", "6");
INSERT INTO produit VALUES ("1360", "SUZUKI", "JIMNY", "36313", "3");
INSERT INTO produit VALUES ("1361", "SUZUKI", "JIMNY II", "45889", "13");
INSERT INTO produit VALUES ("1362", "SUZUKI", "KIZASHI", "59085", "2");
INSERT INTO produit VALUES ("1363", "SUZUKI", "LIANA", "78597", "4");
INSERT INTO produit VALUES ("1364", "SUZUKI", "S-CROSS", "32199", "9");
INSERT INTO produit VALUES ("1365", "SUZUKI", "SAMURAI", "20904", "3");
INSERT INTO produit VALUES ("1366", "SUZUKI", "SPLASH", "32637", "14");
INSERT INTO produit VALUES ("1367", "SUZUKI", "SUPERCARRY", "62959", "16");
INSERT INTO produit VALUES ("1368", "SUZUKI", "SWACE", "55539", "11");
INSERT INTO produit VALUES ("1369", "SUZUKI", "SWIFT", "70699", "5");
INSERT INTO produit VALUES ("1370", "SUZUKI", "SX4", "32991", "9");
INSERT INTO produit VALUES ("1371", "SUZUKI", "VITARA", "17149", "8");
INSERT INTO produit VALUES ("1372", "SUZUKI", "WAGON R+", "24861", "15");
INSERT INTO produit VALUES ("1373", "SUZUKI", "X90", "28115", "3");
INSERT INTO produit VALUES ("1374", "TALBOT", "1000", "18368", "7");
INSERT INTO produit VALUES ("1375", "TALBOT", "1005", "25071", "0");
INSERT INTO produit VALUES ("1376", "TALBOT", "1006", "28791", "10");
INSERT INTO produit VALUES ("1377", "TALBOT", "1100", "22132", "19");
INSERT INTO produit VALUES ("1378", "TALBOT", "1300", "17806", "11");
INSERT INTO produit VALUES ("1379", "TALBOT", "1301", "38337", "16");
INSERT INTO produit VALUES ("1380", "TALBOT", "1307", "52479", "11");
INSERT INTO produit VALUES ("1381", "TALBOT", "1308", "62098", "11");
INSERT INTO produit VALUES ("1382", "TALBOT", "1309", "24328", "9");
INSERT INTO produit VALUES ("1383", "TALBOT", "1500", "63715", "12");
INSERT INTO produit VALUES ("1384", "TALBOT", "1501", "69985", "19");
INSERT INTO produit VALUES ("1385", "TALBOT", "1510", "36781", "1");
INSERT INTO produit VALUES ("1386", "TALBOT", "160", "17500", "18");
INSERT INTO produit VALUES ("1387", "TALBOT", "1610", "25801", "8");
INSERT INTO produit VALUES ("1388", "TALBOT", "2L", "40640", "2");
INSERT INTO produit VALUES ("1389", "TALBOT", "ARONDE", "47859", "0");
INSERT INTO produit VALUES ("1390", "TALBOT", "HORIZON", "52367", "18");
INSERT INTO produit VALUES ("1391", "TALBOT", "SAMBA", "34590", "16");
INSERT INTO produit VALUES ("1392", "TALBOT", "SIM QUATRE", "71453", "19");
INSERT INTO produit VALUES ("1393", "TALBOT", "SOLARA", "17116", "11");
INSERT INTO produit VALUES ("1394", "TALBOT", "TAGORA", "67372", "9");
INSERT INTO produit VALUES ("1395", "TATA", "TELCOLINE", "77372", "16");
INSERT INTO produit VALUES ("1396", "TATA", "TELCOSPORT", "61073", "0");
INSERT INTO produit VALUES ("1397", "TESLA", "MODEL 3", "32495", "11");
INSERT INTO produit VALUES ("1398", "TESLA", "MODEL S", "23615", "17");
INSERT INTO produit VALUES ("1399", "TESLA", "MODEL X", "67941", "17");
INSERT INTO produit VALUES ("1400", "TESLA", "MODEL Y", "42545", "12");
INSERT INTO produit VALUES ("1401", "THINK", "CITY", "17349", "14");
INSERT INTO produit VALUES ("1402", "TOYOTA", "AURIS", "26448", "10");
INSERT INTO produit VALUES ("1403", "TOYOTA", "AVENSIS", "79730", "12");
INSERT INTO produit VALUES ("1404", "TOYOTA", "AYGO", "54394", "2");
INSERT INTO produit VALUES ("1405", "TOYOTA", "C-HR", "39687", "16");
INSERT INTO produit VALUES ("1406", "TOYOTA", "CAMRY", "35176", "16");
INSERT INTO produit VALUES ("1407", "TOYOTA", "CAMRY II", "27396", "8");
INSERT INTO produit VALUES ("1408", "TOYOTA", "CARINA", "52150", "14");
INSERT INTO produit VALUES ("1409", "TOYOTA", "CARINA E", "31219", "2");
INSERT INTO produit VALUES ("1410", "TOYOTA", "CARINA II", "56490", "18");
INSERT INTO produit VALUES ("1411", "TOYOTA", "CELICA", "35900", "9");
INSERT INTO produit VALUES ("1412", "TOYOTA", "COROLLA", "73594", "5");
INSERT INTO produit VALUES ("1413", "TOYOTA", "COROLLA VERSO", "59080", "17");
INSERT INTO produit VALUES ("1414", "TOYOTA", "COROLLA X", "27830", "2");
INSERT INTO produit VALUES ("1415", "TOYOTA", "CORONA", "25744", "9");
INSERT INTO produit VALUES ("1416", "TOYOTA", "CRESSIDA", "39534", "17");
INSERT INTO produit VALUES ("1417", "TOYOTA", "CROWN", "62873", "0");
INSERT INTO produit VALUES ("1418", "TOYOTA", "DYNA", "61397", "19");
INSERT INTO produit VALUES ("1419", "TOYOTA", "FUNCRUISER", "38914", "15");
INSERT INTO produit VALUES ("1420", "TOYOTA", "GT86", "29862", "1");
INSERT INTO produit VALUES ("1421", "TOYOTA", "HI-ACE", "20101", "13");
INSERT INTO produit VALUES ("1422", "TOYOTA", "HI-LUX", "22490", "14");
INSERT INTO produit VALUES ("1423", "TOYOTA", "HIGHLANDER", "49768", "6");
INSERT INTO produit VALUES ("1424", "TOYOTA", "IQ", "49511", "15");
INSERT INTO produit VALUES ("1425", "TOYOTA", "LANDCRUISER", "12513", "2");
INSERT INTO produit VALUES ("1426", "TOYOTA", "LEXUS", "68543", "17");
INSERT INTO produit VALUES ("1427", "TOYOTA", "LITE ACE", "24180", "1");
INSERT INTO produit VALUES ("1428", "TOYOTA", "MIRAI", "23429", "9");
INSERT INTO produit VALUES ("1429", "TOYOTA", "MIRAI II", "79227", "5");
INSERT INTO produit VALUES ("1430", "TOYOTA", "MODELE F", "35364", "16");
INSERT INTO produit VALUES ("1431", "TOYOTA", "MR", "64145", "19");
INSERT INTO produit VALUES ("1432", "TOYOTA", "PASEO", "31386", "3");
INSERT INTO produit VALUES ("1433", "TOYOTA", "PICNIC", "71582", "15");
INSERT INTO produit VALUES ("1434", "TOYOTA", "PREVIA", "46792", "11");
INSERT INTO produit VALUES ("1435", "TOYOTA", "PRIUS", "69574", "7");
INSERT INTO produit VALUES ("1436", "TOYOTA", "PROACE", "29548", "14");
INSERT INTO produit VALUES ("1437", "TOYOTA", "PROACE CITY", "48213", "7");
INSERT INTO produit VALUES ("1438", "TOYOTA", "RAV4", "33107", "3");
INSERT INTO produit VALUES ("1439", "TOYOTA", "RAV4 III", "73960", "10");
INSERT INTO produit VALUES ("1440", "TOYOTA", "RAV4 IV", "62574", "1");
INSERT INTO produit VALUES ("1441", "TOYOTA", "RAV4 V", "72667", "9");
INSERT INTO produit VALUES ("1442", "TOYOTA", "RUNNER", "46173", "2");
INSERT INTO produit VALUES ("1443", "TOYOTA", "STARLET", "41568", "14");
INSERT INTO produit VALUES ("1444", "TOYOTA", "SUPRA", "43385", "6");
INSERT INTO produit VALUES ("1445", "TOYOTA", "SUPRA V", "55156", "18");
INSERT INTO produit VALUES ("1446", "TOYOTA", "TERCEL", "42884", "18");
INSERT INTO produit VALUES ("1447", "TOYOTA", "URBAN CRUISER", "58284", "20");
INSERT INTO produit VALUES ("1448", "TOYOTA", "VERSO", "49808", "19");
INSERT INTO produit VALUES ("1449", "TOYOTA", "VERSO-S", "30174", "19");
INSERT INTO produit VALUES ("1450", "TOYOTA", "YARIS", "62313", "8");
INSERT INTO produit VALUES ("1451", "TOYOTA", "YARIS CROSS", "43564", "11");
INSERT INTO produit VALUES ("1452", "TOYOTA", "YARIS II", "39340", "4");
INSERT INTO produit VALUES ("1453", "TOYOTA", "YARIS III", "21804", "14");
INSERT INTO produit VALUES ("1454", "TOYOTA", "YARIS IV", "16617", "14");
INSERT INTO produit VALUES ("1455", "TRIUMPH", "1300", "28921", "8");
INSERT INTO produit VALUES ("1456", "TRIUMPH", "2000", "41113", "4");
INSERT INTO produit VALUES ("1457", "TRIUMPH", "2500", "76601", "17");
INSERT INTO produit VALUES ("1458", "TRIUMPH", "ACCLAIM", "32119", "6");
INSERT INTO produit VALUES ("1459", "TRIUMPH", "DOLOMITE", "61028", "19");
INSERT INTO produit VALUES ("1460", "TRIUMPH", "HERALD", "77201", "15");
INSERT INTO produit VALUES ("1461", "TRIUMPH", "SPITFIRE", "50822", "3");
INSERT INTO produit VALUES ("1462", "TRIUMPH", "STAG", "25385", "4");
INSERT INTO produit VALUES ("1463", "TRIUMPH", "TOLEDO", "50959", "9");
INSERT INTO produit VALUES ("1464", "TRIUMPH", "TR", "67075", "6");
INSERT INTO produit VALUES ("1465", "TRIUMPH", "TR4", "47054", "8");
INSERT INTO produit VALUES ("1466", "TRIUMPH", "TR6", "18281", "16");
INSERT INTO produit VALUES ("1467", "UMM", "ALTER", "78555", "15");
INSERT INTO produit VALUES ("1468", "VOLKSWAGEN", "1,6L", "22435", "8");
INSERT INTO produit VALUES ("1469", "VOLKSWAGEN", "1600", "23657", "6");
INSERT INTO produit VALUES ("1470", "VOLKSWAGEN", "181", "74747", "16");
INSERT INTO produit VALUES ("1471", "VOLKSWAGEN", "183", "59755", "7");
INSERT INTO produit VALUES ("1472", "VOLKSWAGEN", "411", "46016", "11");
INSERT INTO produit VALUES ("1473", "VOLKSWAGEN", "412", "31823", "5");
INSERT INTO produit VALUES ("1474", "VOLKSWAGEN", "AMAROK", "49239", "13");
INSERT INTO produit VALUES ("1475", "VOLKSWAGEN", "ARTEON", "76701", "2");
INSERT INTO produit VALUES ("1476", "VOLKSWAGEN", "BORA", "44998", "7");
INSERT INTO produit VALUES ("1477", "VOLKSWAGEN", "CADDY", "36859", "5");
INSERT INTO produit VALUES ("1478", "VOLKSWAGEN", "CADDY V", "51854", "18");
INSERT INTO produit VALUES ("1479", "VOLKSWAGEN", "COCCINELLE", "59860", "18");
INSERT INTO produit VALUES ("1480", "VOLKSWAGEN", "CORRADO", "63044", "2");
INSERT INTO produit VALUES ("1481", "VOLKSWAGEN", "CRAFTER", "79784", "5");
INSERT INTO produit VALUES ("1482", "VOLKSWAGEN", "EOS", "69712", "0");
INSERT INTO produit VALUES ("1483", "VOLKSWAGEN", "FOX", "14305", "7");
INSERT INTO produit VALUES ("1484", "VOLKSWAGEN", "GOLF", "19669", "13");
INSERT INTO produit VALUES ("1485", "VOLKSWAGEN", "GOLF III", "16964", "15");
INSERT INTO produit VALUES ("1486", "VOLKSWAGEN", "GOLF IV", "57821", "9");
INSERT INTO produit VALUES ("1487", "VOLKSWAGEN", "GOLF PLUS", "56694", "7");
INSERT INTO produit VALUES ("1488", "VOLKSWAGEN", "GOLF SPORTSVAN", "44945", "0");
INSERT INTO produit VALUES ("1489", "VOLKSWAGEN", "GOLF V", "20262", "9");
INSERT INTO produit VALUES ("1490", "VOLKSWAGEN", "GOLF VI", "49362", "7");
INSERT INTO produit VALUES ("1491", "VOLKSWAGEN", "GOLF VII", "17119", "4");
INSERT INTO produit VALUES ("1492", "VOLKSWAGEN", "GOLF VIII", "78793", "19");
INSERT INTO produit VALUES ("1493", "VOLKSWAGEN", "ID.3", "73340", "3");
INSERT INTO produit VALUES ("1494", "VOLKSWAGEN", "ID.4", "23335", "5");
INSERT INTO produit VALUES ("1495", "VOLKSWAGEN", "JETTA", "54938", "4");
INSERT INTO produit VALUES ("1496", "VOLKSWAGEN", "JETTA II", "66990", "1");
INSERT INTO produit VALUES ("1497", "VOLKSWAGEN", "JETTA III", "32715", "12");
INSERT INTO produit VALUES ("1498", "VOLKSWAGEN", "K70", "16503", "2");
INSERT INTO produit VALUES ("1499", "VOLKSWAGEN", "LT28", "62379", "1");
INSERT INTO produit VALUES ("1500", "VOLKSWAGEN", "LT31", "72414", "13");
INSERT INTO produit VALUES ("1501", "VOLKSWAGEN", "LT32", "71818", "9");
INSERT INTO produit VALUES ("1502", "VOLKSWAGEN", "LT35", "75042", "16");
INSERT INTO produit VALUES ("1503", "VOLKSWAGEN", "LT40A", "43079", "9");
INSERT INTO produit VALUES ("1504", "VOLKSWAGEN", "LT46A", "22946", "3");
INSERT INTO produit VALUES ("1505", "VOLKSWAGEN", "LUPO", "37902", "12");
INSERT INTO produit VALUES ("1506", "VOLKSWAGEN", "NEW BEETLE", "18115", "2");
INSERT INTO produit VALUES ("1507", "VOLKSWAGEN", "PASSAT", "19447", "4");
INSERT INTO produit VALUES ("1508", "VOLKSWAGEN", "PASSAT CC", "57832", "19");
INSERT INTO produit VALUES ("1509", "VOLKSWAGEN", "PASSAT SW", "60009", "15");
INSERT INTO produit VALUES ("1510", "VOLKSWAGEN", "PASSAT*", "73885", "2");
INSERT INTO produit VALUES ("1511", "VOLKSWAGEN", "PHAETON", "35962", "18");
INSERT INTO produit VALUES ("1512", "VOLKSWAGEN", "POLO", "42735", "6");
INSERT INTO produit VALUES ("1513", "VOLKSWAGEN", "POLO V", "67912", "13");
INSERT INTO produit VALUES ("1514", "VOLKSWAGEN", "POLO VI", "13218", "4");
INSERT INTO produit VALUES ("1515", "VOLKSWAGEN", "SANTANA", "14992", "8");
INSERT INTO produit VALUES ("1516", "VOLKSWAGEN", "SCIROCCO", "61159", "1");
INSERT INTO produit VALUES ("1517", "VOLKSWAGEN", "SHARAN", "78725", "12");
INSERT INTO produit VALUES ("1518", "VOLKSWAGEN", "T-CROSS", "58358", "6");
INSERT INTO produit VALUES ("1519", "VOLKSWAGEN", "T-ROC", "12102", "15");
INSERT INTO produit VALUES ("1520", "VOLKSWAGEN", "TARO", "78901", "12");
INSERT INTO produit VALUES ("1521", "VOLKSWAGEN", "TIGUAN", "73320", "16");
INSERT INTO produit VALUES ("1522", "VOLKSWAGEN", "TOUAREG", "64422", "6");
INSERT INTO produit VALUES ("1523", "VOLKSWAGEN", "TOUAREG III", "19916", "16");
INSERT INTO produit VALUES ("1524", "VOLKSWAGEN", "TOURAN", "25179", "12");
INSERT INTO produit VALUES ("1525", "VOLKSWAGEN", "TRANSPORTER", "16320", "9");
INSERT INTO produit VALUES ("1526", "VOLKSWAGEN", "UP", "70094", "8");
INSERT INTO produit VALUES ("1527", "VOLKSWAGEN", "VENTO", "43980", "20");
INSERT INTO produit VALUES ("1528", "VOLVO", "122", "53607", "5");
INSERT INTO produit VALUES ("1529", "VOLVO", "142", "78350", "6");
INSERT INTO produit VALUES ("1530", "VOLVO", "144", "76075", "14");
INSERT INTO produit VALUES ("1531", "VOLVO", "164", "23350", "1");
INSERT INTO produit VALUES ("1532", "VOLVO", "1800", "55714", "13");
INSERT INTO produit VALUES ("1533", "VOLVO", "240", "39704", "19");
INSERT INTO produit VALUES ("1534", "VOLVO", "242", "69373", "20");
INSERT INTO produit VALUES ("1535", "VOLVO", "244", "54177", "4");
INSERT INTO produit VALUES ("1536", "VOLVO", "245", "61274", "6");
INSERT INTO produit VALUES ("1537", "VOLVO", "262", "22547", "11");
INSERT INTO produit VALUES ("1538", "VOLVO", "264", "49592", "15");
INSERT INTO produit VALUES ("1539", "VOLVO", "265", "73422", "0");
INSERT INTO produit VALUES ("1540", "VOLVO", "340", "44656", "17");
INSERT INTO produit VALUES ("1541", "VOLVO", "360", "77373", "9");
INSERT INTO produit VALUES ("1542", "VOLVO", "440", "29943", "10");
INSERT INTO produit VALUES ("1543", "VOLVO", "460", "31597", "11");
INSERT INTO produit VALUES ("1544", "VOLVO", "480", "35599", "11");
INSERT INTO produit VALUES ("1545", "VOLVO", "66", "42002", "14");
INSERT INTO produit VALUES ("1546", "VOLVO", "740", "77384", "5");
INSERT INTO produit VALUES ("1547", "VOLVO", "760", "17363", "18");
INSERT INTO produit VALUES ("1548", "VOLVO", "780", "51458", "19");
INSERT INTO produit VALUES ("1549", "VOLVO", "850", "36907", "9");
INSERT INTO produit VALUES ("1550", "VOLVO", "940", "38020", "3");
INSERT INTO produit VALUES ("1551", "VOLVO", "960", "32994", "14");
INSERT INTO produit VALUES ("1552", "VOLVO", "C30", "23618", "3");
INSERT INTO produit VALUES ("1553", "VOLVO", "C70", "48351", "3");
INSERT INTO produit VALUES ("1554", "VOLVO", "CROSS COUNTRY", "34039", "14");
INSERT INTO produit VALUES ("1555", "VOLVO", "S40", "49725", "4");
INSERT INTO produit VALUES ("1556", "VOLVO", "S60", "59164", "19");
INSERT INTO produit VALUES ("1557", "VOLVO", "S60 III", "53050", "0");
INSERT INTO produit VALUES ("1558", "VOLVO", "S70", "15071", "18");
INSERT INTO produit VALUES ("1559", "VOLVO", "S80", "30695", "15");
INSERT INTO produit VALUES ("1560", "VOLVO", "S90", "20676", "12");
INSERT INTO produit VALUES ("1561", "VOLVO", "V40", "49911", "5");
INSERT INTO produit VALUES ("1562", "VOLVO", "V50", "74393", "18");
INSERT INTO produit VALUES ("1563", "VOLVO", "V60", "60248", "15");
INSERT INTO produit VALUES ("1564", "VOLVO", "V60 II", "39014", "18");
INSERT INTO produit VALUES ("1565", "VOLVO", "V70", "58544", "2");
INSERT INTO produit VALUES ("1566", "VOLVO", "V90", "28316", "1");
INSERT INTO produit VALUES ("1567", "VOLVO", "XC40", "24376", "19");
INSERT INTO produit VALUES ("1568", "VOLVO", "XC60", "33321", "0");
INSERT INTO produit VALUES ("1569", "VOLVO", "XC70", "21663", "18");
INSERT INTO produit VALUES ("1570", "VOLVO", "XC90", "48392", "19");
INSERT INTO produit VALUES ("1571", "ZASTAVA", "1100", "47186", "8");
INSERT INTO produit VALUES ("1572", "ZASTAVA", "1300", "42871", "5");
INSERT INTO produit VALUES ("1573", "ZASTAVA", "YUGO", "30983", "13");
INSERT INTO produit VALUES ("1574", "ZAZ", "TAVRIA", "62337", "8");
INSERT INTO produit VALUES ("1575", "MERCEDES", "AMG GT ", "120000", "1");



--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Num_client`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `pdt_achete`
--
ALTER TABLE `pdt_achete`
  ADD PRIMARY KEY (`id_achat`,`REFERENCE`,`Num_client`),
  ADD KEY `Num_client` (`Num_client`),
  ADD KEY `REFERENCE` (`REFERENCE`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`reference`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pdt_achete`
--
ALTER TABLE `pdt_achete`
  MODIFY `id_achat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pdt_achete`
--
ALTER TABLE `pdt_achete`
  ADD CONSTRAINT `pdt_achete_ibfk_1` FOREIGN KEY (`Num_client`) REFERENCES `client` (`Num_client`),
  ADD CONSTRAINT `pdt_achete_ibfk_2` FOREIGN KEY (`REFERENCE`) REFERENCES `produit` (`reference`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
