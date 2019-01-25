-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 14 Janvier 2018 à 22:18
-- Version du serveur :  10.1.9-MariaDB
-- Version de PHP :  5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `flux_financiers`
--

-- --------------------------------------------------------

--
-- Structure de la table `depense`
--

CREATE TABLE `depense` (
  `id_depense` int(20) NOT NULL,
  `motif` varchar(50) NOT NULL,
  `montant` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `depense`
--

INSERT INTO `depense` (`id_depense`, `motif`, `montant`, `date`) VALUES
(1, 'Achat PC', 25000, '2018-01-01'),
(2, 'reparatio', 85252, '2018-01-06');

-- --------------------------------------------------------

--
-- Structure de la table `depense_par_cheque`
--

CREATE TABLE `depense_par_cheque` (
  `id_depense` int(20) NOT NULL,
  `numero_cheque` int(20) NOT NULL,
  `nom_beneficiaire` varchar(50) NOT NULL,
  `motif` varchar(50) NOT NULL,
  `montant` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `depense_par_cheque`
--

INSERT INTO `depense_par_cheque` (`id_depense`, `numero_cheque`, `nom_beneficiaire`, `motif`, `montant`, `date`) VALUES
(1, 2562, 'kiki', 'reparation', 1232, '2018-01-04');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id_membre` int(20) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `date_naissance` date NOT NULL,
  `date_entree` date NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `etat` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membre`
--

INSERT INTO `membre` (`id_membre`, `nom`, `prenom`, `date_naissance`, `date_entree`, `adresse`, `etat`) VALUES
(1, 'Abba', 'adam', '2018-01-03', '2018-01-04', 'Fass', 'desactivé'),
(2, 'kiki', 'mardo', '2018-01-03', '2018-01-04', 'Medina', 'activé'),
(3, 'kader', 'boukar', '2018-01-04', '2018-01-06', 'Niger', 'activé'),
(4, 'Ibrahim', 'Alay', '2018-01-02', '2018-01-04', 'Fass', 'activé'),
(5, 'dfgh', 'cvbn', '2018-01-05', '2018-01-05', 'fghj', 'activé'),
(6, 'Abba', 'fjghne', '2018-01-12', '2018-01-04', 'fjlh nk', 'activé');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `etat` varchar(25) NOT NULL,
  `contenu` text NOT NULL,
  `id_message` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `message`
--

INSERT INTO `message` (`etat`, `contenu`, `id_message`) VALUES
('traité', 'BNSHY MIGHYSHGJTIODUYDO', 13),
('traité', 'gidn,p tiypdryyr', 14),
('traité', 'VFJ VBFGFY VYDS', 15),
('traité', 'Ajouter ce nouveau membre \nnom:Michel\nprenom:DIALLO\nbirthday:14/8/1996\nentree:1/1/18\nadresse:Greewich', 16),
('traité', 'Veillez svp ajouter\nAbba\nAdam', 17),
('traité', 'nom : cool\nprenom : boy', 18),
('traité', 'ajouter \nDiop\nwad', 19),
('traité', 'Ajouter svp \n\nnom : Abba\nprenom : Adam\ndate naissance : 10/8/1960\ndate entrée : 10/9/1970\nAdresse : Médina', 20),
('traité', 'Svp\najouter\nkiki\nAbba', 21);

-- --------------------------------------------------------

--
-- Structure de la table `recette_principale`
--

CREATE TABLE `recette_principale` (
  `id_recette` int(20) NOT NULL,
  `id_membre` int(20) NOT NULL,
  `montant` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `recette_principale`
--

INSERT INTO `recette_principale` (`id_recette`, `id_membre`, `montant`, `date`) VALUES
(1, 3, 525, '2018-01-03'),
(2, 2, 2000000000000, '2018-01-04');

-- --------------------------------------------------------

--
-- Structure de la table `recette_principale_groupe`
--

CREATE TABLE `recette_principale_groupe` (
  `id_recette` int(25) NOT NULL,
  `montant` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `recette_principale_groupe`
--

INSERT INTO `recette_principale_groupe` (`id_recette`, `montant`, `date`) VALUES
(1, 10000, '0000-00-00'),
(2, 75000, '0000-00-00'),
(3, 90000, '0000-00-00'),
(4, 85000, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `recette_secondaire_membre`
--

CREATE TABLE `recette_secondaire_membre` (
  `id_recette` int(20) NOT NULL,
  `id_membre` int(20) NOT NULL,
  `montant` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `recette_secondaire_membre`
--

INSERT INTO `recette_secondaire_membre` (`id_recette`, `id_membre`, `montant`, `date`) VALUES
(1, 1, 50000, '0000-00-00'),
(2, 2, 60000, '0000-00-00'),
(3, 3, 20000, '0000-00-00'),
(4, 4, 25000, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `recette_secondaire_tiers`
--

CREATE TABLE `recette_secondaire_tiers` (
  `id_recette` int(20) NOT NULL,
  `libelle` varchar(20) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `montant` float NOT NULL,
  `date_versement` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `recette_secondaire_tiers`
--

INSERT INTO `recette_secondaire_tiers` (`id_recette`, `libelle`, `nom`, `prenom`, `montant`, `date_versement`) VALUES
(1, 'Dont', 'Kiki', 'Mardoché', 25000, '0000-00-00'),
(2, 'Dont', 'Yve', 'Thiore', 50000, '0000-00-00'),
(3, 'Service', 'Abba ', 'Adam', 40000, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `grade` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `id_user` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`grade`, `login`, `mdp`, `id_user`) VALUES
('Administrateur', 'abba', 'adam', 1),
('Financier', 'kiki', 'mardo', 2),
('Administrateur', 'abba', 'abba', 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `depense`
--
ALTER TABLE `depense`
  ADD PRIMARY KEY (`id_depense`);

--
-- Index pour la table `depense_par_cheque`
--
ALTER TABLE `depense_par_cheque`
  ADD PRIMARY KEY (`id_depense`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id_membre`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `recette_principale`
--
ALTER TABLE `recette_principale`
  ADD PRIMARY KEY (`id_recette`),
  ADD KEY `id_membre` (`id_membre`);

--
-- Index pour la table `recette_principale_groupe`
--
ALTER TABLE `recette_principale_groupe`
  ADD PRIMARY KEY (`id_recette`);

--
-- Index pour la table `recette_secondaire_membre`
--
ALTER TABLE `recette_secondaire_membre`
  ADD PRIMARY KEY (`id_recette`),
  ADD KEY `id_membre` (`id_membre`);

--
-- Index pour la table `recette_secondaire_tiers`
--
ALTER TABLE `recette_secondaire_tiers`
  ADD PRIMARY KEY (`id_recette`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `depense`
--
ALTER TABLE `depense`
  MODIFY `id_depense` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `depense_par_cheque`
--
ALTER TABLE `depense_par_cheque`
  MODIFY `id_depense` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `id_membre` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `recette_principale`
--
ALTER TABLE `recette_principale`
  MODIFY `id_recette` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `recette_principale_groupe`
--
ALTER TABLE `recette_principale_groupe`
  MODIFY `id_recette` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `recette_secondaire_membre`
--
ALTER TABLE `recette_secondaire_membre`
  MODIFY `id_recette` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `recette_secondaire_tiers`
--
ALTER TABLE `recette_secondaire_tiers`
  MODIFY `id_recette` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
