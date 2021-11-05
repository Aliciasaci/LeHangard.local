-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 03 nov. 2021 à 23:38
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `atelier`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`, `description`) VALUES
(1, 'Légumes', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(2, 'Fruits', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(3, 'Produits laitiers', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(4, 'Viandes', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(5, 'Epicerie salé', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(6, 'Epicerie sucré', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(7, 'Boulangerie', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `nom_client` varchar(50) NOT NULL,
  `mail_client` varchar(50) NOT NULL,
  `tel_client` varchar(10) NOT NULL,
  `montant` float NOT NULL,
  `livrer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `nom_client`, `mail_client`, `tel_client`, `montant`, `livrer`) VALUES
(1, 'Shepherd', 'sfiddler0@eepurl.com', '6725023062', 30.22, 0),
(2, 'Henriette', 'hdigweed1@multiply.com', '4311227298', 42.97, 0),
(3, 'Gill', 'gfarthin2@dot.gov', '9678934821', 16.07, 0),
(4, 'Free', 'foshaughnessy3@skype.com', '9787491942', 15.59, 0),
(5, 'Tracee', 'tdigby4@reverbnation.com', '3512076980', 24.5, 1),
(6, 'Bernarr', 'bcaurah5@bloomberg.com', '1937335722', 19.2, 0),
(7, 'Mayer', 'mwrathall6@moonfruit.com', '9545176340', 47.36, 1),
(8, 'Say', 'snetherclift7@fda.gov', '3997953256', 39.98, 0),
(9, 'Palm', 'pjanny8@buzzfeed.com', '1613647529', 13.5, 0),
(10, 'Deanne', 'dpistol9@shop-pro.jp', '4431451174', 28.93, 1);

-- --------------------------------------------------------

--
-- Structure de la table `commande_produit`
--

CREATE TABLE `commande_produit` (
  `id` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande_produit`
--

INSERT INTO `commande_produit` (`id`, `id_commande`, `id_produit`, `quantite`) VALUES
(1, 10, 69, 8),
(2, 8, 86, 5),
(3, 10, 193, 6),
(4, 8, 135, 3),
(5, 4, 349, 10),
(6, 4, 98, 1),
(7, 7, 20, 6),
(8, 7, 458, 3),
(9, 6, 258, 5),
(10, 6, 346, 1),
(11, 1, 154, 3),
(12, 10, 258, 2),
(13, 9, 249, 9),
(14, 9, 106, 8),
(15, 2, 94, 9),
(16, 8, 334, 3),
(17, 9, 270, 4),
(18, 1, 124, 4),
(19, 2, 57, 1),
(20, 3, 117, 9),
(21, 5, 45, 8),
(22, 5, 391, 2),
(23, 5, 203, 9),
(24, 2, 300, 10),
(25, 7, 231, 10),
(26, 8, 298, 1),
(27, 6, 53, 6),
(28, 8, 159, 9),
(29, 4, 205, 9),
(30, 3, 333, 5),
(31, 8, 55, 9),
(32, 2, 321, 4),
(33, 2, 343, 6),
(34, 10, 500, 3),
(35, 6, 359, 4),
(36, 5, 51, 7),
(37, 10, 478, 6),
(38, 3, 54, 6),
(39, 7, 145, 5),
(40, 10, 20, 1),
(41, 10, 233, 1),
(42, 8, 395, 4),
(43, 4, 331, 6),
(44, 1, 318, 3),
(45, 2, 5, 7),
(46, 3, 319, 1),
(47, 2, 474, 6),
(48, 9, 155, 3),
(49, 9, 29, 10),
(50, 8, 418, 4),
(51, 8, 308, 3),
(52, 7, 247, 1),
(53, 2, 350, 6),
(54, 4, 477, 1),
(55, 1, 170, 7),
(56, 2, 152, 3),
(57, 9, 18, 4),
(58, 5, 77, 5),
(59, 2, 54, 9),
(60, 8, 125, 10),
(61, 3, 406, 2),
(62, 8, 79, 6),
(63, 7, 84, 4),
(64, 4, 251, 6),
(65, 1, 106, 2),
(66, 8, 5, 4),
(67, 9, 484, 6),
(68, 5, 212, 1),
(69, 3, 271, 1),
(70, 8, 12, 2),
(71, 2, 230, 1),
(72, 8, 239, 4),
(73, 8, 150, 7),
(74, 6, 59, 4),
(75, 7, 495, 8),
(76, 8, 305, 6),
(77, 9, 68, 6),
(78, 10, 30, 5),
(79, 1, 257, 7),
(80, 10, 70, 4),
(81, 8, 392, 7),
(82, 9, 73, 4),
(83, 9, 41, 5),
(84, 8, 410, 9),
(85, 7, 255, 2),
(86, 8, 418, 5),
(87, 6, 191, 7),
(88, 10, 323, 6),
(89, 7, 55, 4),
(90, 1, 209, 8),
(91, 10, 311, 9),
(92, 8, 158, 2),
(93, 6, 18, 9),
(94, 10, 413, 2),
(95, 10, 280, 9),
(96, 4, 456, 5),
(97, 2, 259, 10),
(98, 10, 345, 2),
(99, 3, 366, 1),
(100, 6, 228, 10);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `mail`, `password`, `role`) VALUES
(1, 'mail@gmail.com', '$2y$10$an98inRDMGca0qK1I2GA9.yQi7iG1P0YkBkIPJmwAT3GmRKMA0LWm', 'producteur');

-- --------------------------------------------------------

--
-- Structure de la table `gerant`
--

CREATE TABLE `gerant` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gerant`
--

INSERT INTO `gerant` (`id`, `nom`, `mail`) VALUES
(1, 'Amandi', 'adovinson0@123-reg.co.uk'),
(2, 'Timothy', 'tyeeles1@nps.gov'),
(3, 'Christabel', 'cwilce2@discovery.com'),
(4, 'Lissy', 'llaurencot3@example.com'),
(5, 'Jedediah', 'jbryenton4@pagesperso-orange.fr');

-- --------------------------------------------------------

--
-- Structure de la table `producteur`
--

CREATE TABLE `producteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `Localisation` varchar(100) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `producteur`
--

INSERT INTO `producteur` (`id`, `nom`, `mail`, `Localisation`, `id_produit`) VALUES
(1, 'Jazmin', 'mail@gmail.com', '7 Lake View Avenue', 0),
(2, 'Aubrette', 'aeisikowitch1@wikia.com', '695 Hauk Parkway', 0),
(3, 'Lorrie', 'lgillitt2@apple.com', '021 Cottonwood Avenue', 0),
(4, 'Janos', 'jcourcey3@illinois.edu', '70 Lakewood Plaza', 0),
(5, 'Borden', 'bhitzschke4@miibeian.gov.cn', '10 Bonner Alley', 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `tarif_unitaire` float NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_producteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `description`, `tarif_unitaire`, `id_categorie`, `id_producteur`) VALUES
(1, 'Aubergine', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 5.38, 3, 5),
(2, 'Concombre', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1.44, 5, 1),
(3, 'Cornichon', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 3.31, 2, 1),
(4, 'Courge', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 4.87, 5, 1),
(5, 'Courgette', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 8.17, 3, 5),
(6, 'Haricot vert.', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 5.41, 7, 5),
(7, 'Petit pois.', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 8.89, 5, 2),
(8, 'Piment', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 3.54, 7, 3),
(9, 'Annie', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 5.88, 2, 5),
(10, 'Laurens', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3.25, 3, 3),
(11, 'Rania', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 3.57, 4, 3),
(12, 'Arlen', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 6.94, 7, 2),
(13, 'Ryley', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 7.67, 3, 3),
(14, 'Malena', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 5.53, 2, 3),
(15, 'Luce', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 3.81, 7, 2),
(16, 'Agathe', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 1.91, 2, 4),
(17, 'Christian', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 3.6, 7, 2),
(18, 'Carce', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 6.04, 3, 2),
(19, 'Kiley', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 1.38, 5, 4),
(20, 'Rahal', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 4.93, 5, 3),
(21, 'Geralda', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 4.53, 7, 5),
(22, 'Niles', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 4.87, 4, 3),
(23, 'Omero', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 8.21, 7, 2),
(24, 'Ricoriki', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 5.11, 6, 5),
(25, 'Dalton', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 7.6, 1, 4),
(26, 'Gregory', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 2.77, 7, 3),
(27, 'Ginnifer', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 3.46, 4, 4),
(28, 'Bunnie', 'Fusce consequat. Nulla nisl. Nunc nisl.', 3.94, 1, 5),
(29, 'Thorndike', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 6.68, 2, 1),
(30, 'Zorine', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 8.05, 7, 2),
(31, 'Celestyn', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 6.71, 3, 3),
(32, 'Brinn', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 7.72, 1, 2),
(33, 'Siffre', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 7.67, 2, 4),
(34, 'Chet', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 5.65, 6, 4),
(35, 'Bastian', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 4.26, 6, 1),
(36, 'Elspeth', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 7.57, 4, 4),
(37, 'Franky', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 8.71, 1, 3),
(38, 'Randy', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 5.07, 4, 3),
(39, 'Valentino', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 2.91, 3, 1),
(40, 'Ethel', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 3.24, 6, 4),
(41, 'Stephannie', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 4.65, 6, 4),
(42, 'Guillemette', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 2.3, 6, 2),
(43, 'Callie', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 5.7, 2, 4),
(44, 'Evyn', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 1.87, 6, 2),
(45, 'Irita', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 4.13, 7, 2),
(46, 'Adi', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 2.64, 6, 1),
(47, 'Trevar', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 7.5, 7, 3),
(48, 'Enrique', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 7.25, 7, 1),
(49, 'Carlyle', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 2.71, 6, 3),
(50, 'Vinson', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 1.83, 6, 3),
(51, 'Lorilyn', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 7.33, 5, 4),
(52, 'Dodi', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 1.19, 7, 1),
(53, 'Freddie', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 2.28, 3, 1),
(54, 'Cissiee', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 1.24, 2, 5),
(55, 'Fred', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 3.41, 6, 5),
(56, 'Manda', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 1.2, 1, 5),
(57, 'Stefanie', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 8.7, 3, 4),
(58, 'Jamesy', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 2.42, 2, 2),
(59, 'Trever', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 2.24, 6, 4),
(60, 'Wendi', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 3.8, 4, 2),
(61, 'Art', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 7.34, 4, 4),
(62, 'Winne', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 3.11, 1, 2),
(63, 'Suzann', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 3.5, 6, 3),
(64, 'Egon', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 2.52, 5, 2),
(65, 'Hephzibah', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 2.48, 5, 2),
(66, 'Tiffany', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 8.57, 6, 3),
(67, 'Elizabeth', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 2.39, 6, 2),
(68, 'Dacy', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 2.1, 7, 2),
(69, 'Antin', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 7.38, 2, 1),
(70, 'Blaine', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 4.2, 6, 5),
(71, 'Chloette', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 7.19, 1, 4),
(72, 'Eada', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 6.08, 5, 2),
(73, 'Geralda', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 1.31, 3, 5),
(74, 'Trudey', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 6.44, 6, 2),
(75, 'Helenka', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 6.76, 3, 5),
(76, 'Denice', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 8.28, 3, 4),
(77, 'Esmeralda', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 3.18, 6, 5),
(78, 'Gabriella', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 4.31, 2, 4),
(79, 'Billy', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 7.49, 2, 5),
(80, 'Denney', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 5.68, 4, 5),
(81, 'Stevena', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 7.05, 7, 1),
(82, 'Aurlie', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 7.78, 6, 1),
(83, 'Florie', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 4.74, 6, 4),
(84, 'Ruben', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 7.57, 1, 5),
(85, 'Raimund', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 7.31, 4, 2),
(86, 'Abbie', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 4.1, 7, 5),
(87, 'Mercie', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 5.86, 3, 4),
(88, 'Ludwig', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 6.44, 2, 2),
(89, 'Tiphanie', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 6.89, 4, 3),
(90, 'Brunhilda', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 5.63, 6, 3),
(91, 'Paxon', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 7.5, 3, 3),
(92, 'Antone', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 4.48, 2, 3),
(93, 'Haydon', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 2.71, 2, 4),
(94, 'Allsun', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 2.98, 2, 4),
(95, 'Rowan', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 6.87, 3, 4),
(96, 'Olivero', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 5.17, 3, 4),
(97, 'Darn', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 6.64, 5, 5),
(98, 'Lamar', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 4.71, 2, 4),
(99, 'Ewell', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1.22, 4, 3),
(100, 'Biddy', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 5.06, 1, 2),
(101, 'Johan', 'Fusce consequat. Nulla nisl. Nunc nisl.', 5.17, 4, 4),
(102, 'Peria', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 5.28, 6, 5),
(103, 'Kellina', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 5.82, 6, 4),
(104, 'Emylee', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 6.43, 1, 4),
(105, 'Jaclyn', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 6.2, 5, 5),
(106, 'Ogdon', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 7.47, 7, 3),
(107, 'Lindie', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 5.23, 5, 5),
(108, 'Lynnea', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 8.13, 6, 3),
(109, 'Hazlett', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 3.27, 7, 3),
(110, 'Englebert', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 2.43, 2, 5),
(111, 'Rollo', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 2.68, 7, 1),
(112, 'Brodie', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 1.98, 4, 1),
(113, 'Randell', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 6.41, 3, 3),
(114, 'Kaine', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 1.55, 7, 5),
(115, 'Wilfred', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 5.78, 5, 3),
(116, 'Aviva', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 2.81, 7, 2),
(117, 'Gillian', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 2.52, 7, 3),
(118, 'Brady', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 5.3, 7, 5),
(119, 'Aliza', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 3.55, 3, 2),
(120, 'Toni', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 5.64, 3, 5),
(121, 'West', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 6.85, 1, 4),
(122, 'Laurette', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 7.94, 7, 3),
(123, 'Honoria', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 2.79, 6, 5),
(124, 'Renie', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 7.24, 3, 5),
(125, 'Ram', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 6.66, 3, 3),
(126, 'Theresina', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 1.64, 1, 2),
(127, 'Jeni', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 2.57, 2, 1),
(128, 'Yehudi', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 2.1, 1, 1),
(129, 'Dottie', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 2.83, 2, 3),
(130, 'Rena', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 6.58, 7, 4),
(131, 'Sheela', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 6.36, 7, 1),
(132, 'Meade', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 6.36, 3, 1),
(133, 'Tatum', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 3.58, 7, 2),
(134, 'Justino', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 7.27, 3, 5),
(135, 'Dewitt', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 4.04, 1, 5),
(136, 'Irene', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1.68, 6, 5),
(137, 'Kurt', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 4.88, 6, 1),
(138, 'Valenka', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 8.88, 6, 5),
(139, 'Coretta', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 2.88, 4, 1),
(140, 'Ansel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 7.83, 2, 4),
(141, 'Jere', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 3.07, 2, 5),
(142, 'Marcus', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 7.66, 4, 3),
(143, 'Beitris', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 2.08, 7, 4),
(144, 'Katti', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 3.01, 5, 4),
(145, 'Mandel', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 6.26, 7, 3),
(146, 'Patrizia', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 7.51, 7, 4),
(147, 'Jeanine', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1.3, 2, 3),
(148, 'Regina', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 3.32, 5, 5),
(149, 'Doretta', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 3.39, 1, 2),
(150, 'Fernandina', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 2.84, 7, 1),
(151, 'Fern', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 3.52, 5, 4),
(152, 'Carlotta', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 5.11, 4, 1),
(153, 'Dotty', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 7.92, 2, 3),
(154, 'Cally', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 4.19, 4, 3),
(155, 'Reinhold', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 4.62, 7, 5),
(156, 'Vicky', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 8.88, 2, 1),
(157, 'Cathe', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 3.57, 6, 2),
(158, 'Kelsey', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 2.03, 3, 2),
(159, 'Celinka', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 4.24, 1, 1),
(160, 'Dela', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 7.76, 7, 3),
(161, 'Estell', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 5.98, 4, 4),
(162, 'Kahlil', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 3.31, 2, 2),
(163, 'Auroora', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 5.39, 3, 5),
(164, 'Franciskus', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 7.92, 7, 1),
(165, 'Giuseppe', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 6.36, 2, 5),
(166, 'Edithe', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 4.89, 1, 5),
(167, 'Milka', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 8.88, 6, 1),
(168, 'Lilith', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 5.26, 2, 5),
(169, 'Jillane', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 6.32, 2, 1),
(170, 'Barb', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 7.44, 7, 5),
(171, 'Emmeline', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 3.83, 5, 3),
(172, 'Alicia', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 1.42, 7, 4),
(173, 'Elyn', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 4.47, 5, 3),
(174, 'Francisca', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 4.51, 4, 3),
(175, 'Edna', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 5.8, 3, 2),
(176, 'Zulema', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 4.15, 2, 3),
(177, 'Giacomo', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 6.16, 7, 5),
(178, 'Gale', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1.8, 5, 5),
(179, 'Randell', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 7.34, 6, 4),
(180, 'Janot', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 2.27, 1, 2),
(181, 'Alvira', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 4.64, 1, 3),
(182, 'Bethena', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 4.97, 2, 1),
(183, 'Leanor', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 7.51, 7, 2),
(184, 'Darius', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 5.77, 7, 5),
(185, 'Janos', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 6.67, 7, 2),
(186, 'Alric', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 2.53, 3, 3),
(187, 'Blondie', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 7.4, 6, 2),
(188, 'Warde', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 6.64, 3, 4),
(189, 'Davidde', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 4.11, 4, 4),
(190, 'Giff', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 8.52, 3, 4),
(191, 'Ab', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 8.1, 4, 3),
(192, 'Madelina', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 8.3, 6, 4),
(193, 'Ashlen', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 7.35, 5, 2),
(194, 'Mikel', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 5.11, 6, 1),
(195, 'Loraine', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 7.27, 3, 1),
(196, 'Aurea', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 8.31, 7, 5),
(197, 'Hashim', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 6.35, 4, 4),
(198, 'Yule', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 6.84, 3, 2),
(199, 'Becki', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 6.71, 5, 1),
(200, 'Dahlia', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 3.57, 1, 3),
(201, 'Kylen', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 4.61, 1, 5),
(202, 'Susann', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 5.93, 6, 2),
(203, 'Analiese', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 3.6, 2, 4),
(204, 'Arline', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 2.1, 5, 4),
(205, 'Adorne', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 8.01, 2, 2),
(206, 'Shawn', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 5.04, 5, 4),
(207, 'Twyla', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 7.6, 6, 1),
(208, 'Gabriello', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 8.71, 4, 2),
(209, 'Janeva', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 8.7, 2, 2),
(210, 'Connor', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 7.22, 7, 1),
(211, 'Livia', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 8, 1, 1),
(212, 'Giorgio', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 2.11, 6, 3),
(213, 'Pasquale', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 7.96, 5, 1),
(214, 'Orton', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 3.85, 6, 1),
(215, 'Shanta', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 3.69, 6, 4),
(216, 'Niles', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 6.31, 6, 1),
(217, 'Major', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 8.42, 6, 4),
(218, 'Victor', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 8.7, 3, 3),
(219, 'Charlene', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 1.14, 5, 1),
(220, 'Tiphany', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 3.02, 3, 5),
(221, 'Deidre', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 7.4, 3, 4),
(222, 'Batholomew', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 7.18, 7, 3),
(223, 'Odelia', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 2.94, 6, 4),
(224, 'Sayers', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 8.97, 4, 2),
(225, 'Aldrich', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 8.6, 1, 5),
(226, 'Marianne', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 1.24, 7, 2),
(227, 'Brook', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 3.53, 2, 1),
(228, 'Sindee', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 2.72, 3, 1),
(229, 'Clyde', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 3.88, 4, 5),
(230, 'Robinet', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 5.53, 7, 1),
(231, 'Freddy', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 1.62, 3, 1),
(232, 'Elia', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 6.84, 6, 5),
(233, 'Adele', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 3.99, 3, 4),
(234, 'Diane', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 8.34, 4, 2),
(235, 'Yulma', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 8.66, 4, 3),
(236, 'Hobard', 'Fusce consequat. Nulla nisl. Nunc nisl.', 5.5, 7, 4),
(237, 'Brand', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 1.89, 1, 5),
(238, 'Elnar', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 6.89, 2, 1),
(239, 'Ogdan', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 6.34, 5, 3),
(240, 'Artur', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 4.64, 5, 5),
(241, 'Davie', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 3.51, 1, 2),
(242, 'Barron', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 6.82, 1, 4),
(243, 'Moria', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 3.92, 1, 2),
(244, 'Betsey', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 5.12, 1, 4),
(245, 'Willette', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 6.64, 5, 3),
(246, 'Salomi', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 2.06, 2, 5),
(247, 'Lennard', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 2.27, 3, 1),
(248, 'De witt', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 6.05, 6, 3),
(249, 'Joby', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 8.04, 2, 5),
(250, 'Valentijn', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 7.27, 1, 1),
(251, 'Pace', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 6.74, 4, 1),
(252, 'Margarete', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 4.4, 3, 4),
(253, 'Prudy', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 6.14, 6, 3),
(254, 'Malina', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1.85, 3, 2),
(255, 'Tarrance', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 2.2, 3, 1),
(256, 'Berni', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 7.71, 6, 3),
(257, 'Korie', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 1.27, 6, 5),
(258, 'Florrie', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 8.11, 1, 2),
(259, 'Patrizius', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 4.04, 3, 3),
(260, 'Giraud', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 5.11, 3, 5),
(261, 'Adelheid', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 7.11, 3, 1),
(262, 'Ricky', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 2.22, 1, 1),
(263, 'Nicolais', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 1.24, 3, 5),
(264, 'Norman', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 4.14, 4, 5),
(265, 'Gabriel', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 8.75, 3, 4),
(266, 'Albrecht', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 7.74, 5, 3),
(267, 'Theo', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1.46, 1, 5),
(268, 'Casper', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 8.84, 1, 3),
(269, 'Noble', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 4, 6, 2),
(270, 'Efrem', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 4.9, 4, 3),
(271, 'Seline', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 4.17, 6, 3),
(272, 'Ignace', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 8.74, 3, 4),
(273, 'Giralda', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 4.65, 6, 2),
(274, 'Vivyanne', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 4.61, 3, 5),
(275, 'Rowen', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 8.01, 5, 1),
(276, 'Octavia', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 2.84, 6, 3),
(277, 'Irita', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 8.04, 3, 2),
(278, 'Sadye', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 1.2, 5, 2),
(279, 'Falkner', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 8.18, 5, 1),
(280, 'Clayborne', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 6.56, 4, 4),
(281, 'Anders', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 1.2, 4, 5),
(282, 'Deva', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 2.96, 1, 2),
(283, 'Walt', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 7.47, 3, 3),
(284, 'Seumas', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 1.51, 3, 3),
(285, 'Allyson', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 6.14, 6, 1),
(286, 'Neall', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 3.85, 5, 3),
(287, 'Constancy', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 5.61, 5, 4),
(288, 'Susanetta', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 8.5, 1, 2),
(289, 'Henrietta', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 5.16, 6, 2),
(290, 'Lorelle', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 2.65, 1, 1),
(291, 'Tynan', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 8.89, 5, 4),
(292, 'Judie', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 8.59, 3, 3),
(293, 'Quint', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 2.5, 3, 3),
(294, 'Garrik', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 7.07, 2, 3),
(295, 'Kort', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 4.12, 5, 5),
(296, 'Carolina', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 5.22, 7, 1),
(297, 'Becky', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 6.33, 2, 1),
(298, 'Domini', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1.91, 2, 1),
(299, 'Cristiano', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 4.01, 7, 3),
(300, 'Manya', 'Fusce consequat. Nulla nisl. Nunc nisl.', 7.48, 4, 2),
(301, 'Clementine', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 4.33, 4, 5),
(302, 'Gustie', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 4.56, 2, 2),
(303, 'Zolly', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 1.08, 7, 2),
(304, 'Elspeth', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 8.55, 2, 4),
(305, 'Blinny', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 3.36, 1, 1),
(306, 'Lamond', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 2.2, 7, 3),
(307, 'Dee dee', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 5.52, 2, 4),
(308, 'Julie', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 2.62, 1, 3),
(309, 'Kliment', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 5.7, 7, 4),
(310, 'Sandie', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 8.22, 4, 4),
(311, 'Jerrome', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 8.87, 5, 2),
(312, 'Theodora', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 8.58, 7, 5),
(313, 'Courtney', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 8.95, 6, 3),
(314, 'Drusy', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 3.49, 3, 1),
(315, 'Merill', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 6.68, 2, 3),
(316, 'Cordula', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 1.5, 5, 2),
(317, 'Trina', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 8.76, 6, 1),
(318, 'Shauna', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3.96, 4, 4),
(319, 'Giana', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 1.56, 1, 2),
(320, 'Iver', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 7.5, 2, 3),
(321, 'Regina', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 7.48, 1, 4),
(322, 'Leon', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 3.85, 1, 1),
(323, 'Giacomo', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1.88, 2, 4),
(324, 'Clementina', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 4.01, 5, 5),
(325, 'Blondelle', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 4.7, 2, 2),
(326, 'Esmaria', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 7, 6, 4),
(327, 'Modestia', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 7.65, 2, 4),
(328, 'Angil', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 7.01, 5, 2),
(329, 'Maurie', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 4.31, 6, 4);
INSERT INTO `produit` (`id`, `nom`, `description`, `tarif_unitaire`, `id_categorie`, `id_producteur`) VALUES
(330, 'Thorvald', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 8.08, 3, 1),
(331, 'Frants', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 1.61, 1, 1),
(332, 'Melissa', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 7.76, 5, 5),
(333, 'Clea', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 7.5, 2, 5),
(334, 'Olwen', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 6.39, 5, 5),
(335, 'Wolfie', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 6.03, 4, 4),
(336, 'Lulu', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1.53, 5, 5),
(337, 'Katee', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 7.33, 7, 5),
(338, 'Keriann', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 6.29, 7, 3),
(339, 'Tamas', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 5.18, 3, 1),
(340, 'Ebenezer', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 3.24, 7, 5),
(341, 'Roscoe', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 2.59, 3, 2),
(342, 'Goldarina', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 1.95, 7, 5),
(343, 'Fredrika', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 2.7, 1, 1),
(344, 'Ikey', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 1.92, 4, 2),
(345, 'Camila', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1.24, 1, 5),
(346, 'Beverlie', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 8.93, 7, 4),
(347, 'Jesse', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 5.45, 3, 4),
(348, 'Ephrem', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 3.28, 7, 1),
(349, 'Holmes', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 4.51, 3, 5),
(350, 'Fredric', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 4.09, 3, 2),
(351, 'Fredric', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 4.86, 7, 5),
(352, 'Jan', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 4.59, 6, 5),
(353, 'Audy', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 2.71, 7, 5),
(354, 'Katya', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 4.41, 6, 4),
(355, 'Melicent', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 5.16, 1, 4),
(356, 'Marna', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 6.13, 3, 3),
(357, 'Letty', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 6.51, 1, 1),
(358, 'Delmore', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 2.35, 7, 3),
(359, 'Dar', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 3.29, 2, 1),
(360, 'Bianca', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 8.77, 6, 4),
(361, 'Wandis', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 1.9, 1, 3),
(362, 'Salmon', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 3.06, 3, 3),
(363, 'Yasmin', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 1.67, 7, 5),
(364, 'Camella', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 3.69, 3, 2),
(365, 'Allyce', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 6.93, 1, 1),
(366, 'Christian', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 6.19, 4, 3),
(367, 'Marion', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 1.56, 2, 3),
(368, 'Ronny', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 6, 5, 4),
(369, 'Ram', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 8.76, 5, 2),
(370, 'Nickolaus', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 3.05, 1, 5),
(371, 'Cassy', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 8.03, 7, 4),
(372, 'Kate', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 5.11, 6, 5),
(373, 'Stephan', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 2.67, 1, 3),
(374, 'Lindon', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 5.97, 5, 4),
(375, 'Kamillah', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 1.33, 5, 5),
(376, 'Benjamen', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 4.48, 7, 5),
(377, 'Markus', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 4.32, 4, 3),
(378, 'Mufi', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 8.56, 4, 3),
(379, 'Launce', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 5.31, 3, 3),
(380, 'Nate', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 7.75, 5, 2),
(381, 'Hugo', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 2, 5, 3),
(382, 'Dulciana', 'Fusce consequat. Nulla nisl. Nunc nisl.', 2.56, 5, 2),
(383, 'Carlina', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 4.38, 6, 4),
(384, 'Dottie', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 2.7, 2, 1),
(385, 'Chiarra', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 7.25, 2, 3),
(386, 'Adelice', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 6.66, 6, 5),
(387, 'Helyn', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 7.5, 6, 2),
(388, 'Rowe', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 8.68, 5, 2),
(389, 'Shawnee', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 5.91, 1, 2),
(390, 'Cecilia', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 3.35, 1, 2),
(391, 'Tricia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 7.48, 1, 2),
(392, 'Nealon', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 7.83, 1, 1),
(393, 'Northrop', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 1.74, 3, 2),
(394, 'Barrett', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 4.45, 6, 4),
(395, 'Patsy', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 4.86, 3, 1),
(396, 'Imelda', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 5.27, 6, 4),
(397, 'Ora', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 2.45, 6, 2),
(398, 'Carlee', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 1.38, 4, 5),
(399, 'Doro', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 1.16, 7, 4),
(400, 'Ezri', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 8.89, 1, 4),
(401, 'Tildy', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 7.8, 2, 2),
(402, 'Anna', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 8.35, 5, 3),
(403, 'Roanna', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 1.94, 6, 2),
(404, 'Dorothee', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 2.92, 5, 4),
(405, 'Rowney', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 6.76, 4, 3),
(406, 'Kathye', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 1.34, 7, 1),
(407, 'Ferris', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 3.6, 1, 5),
(408, 'Devlin', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 1.7, 2, 1),
(409, 'Marshall', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 6.35, 2, 5),
(410, 'Phaedra', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 6.44, 2, 5),
(411, 'Norrie', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 8.88, 3, 3),
(412, 'Archibald', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 8.22, 2, 4),
(413, 'Yovonnda', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 4.3, 2, 2),
(414, 'Eilis', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 6.85, 2, 3),
(415, 'Zoe', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 3.19, 5, 2),
(416, 'Maggee', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 5.56, 1, 2),
(417, 'Annmaria', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 1.26, 7, 1),
(418, 'Hermia', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 3.24, 7, 5),
(419, 'Linn', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 5.24, 4, 2),
(420, 'Tine', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 4.98, 5, 4),
(421, 'Brit', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 5.16, 5, 2),
(422, 'Erna', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 6.01, 6, 2),
(423, 'Shurlocke', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 6.2, 1, 1),
(424, 'Katharyn', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 7.55, 6, 2),
(425, 'Jaimie', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 7.72, 5, 2),
(426, 'Shelli', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 8.35, 7, 3),
(427, 'Burch', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 2.22, 2, 3),
(428, 'Maurie', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 3.27, 6, 1),
(429, 'Jerrome', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 6.74, 3, 5),
(430, 'Lissie', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 2.86, 4, 3),
(431, 'Hank', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 3.92, 3, 2),
(432, 'Darelle', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 3.09, 6, 3),
(433, 'Mead', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 2.34, 5, 3),
(434, 'Torre', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.', 8.48, 3, 4),
(435, 'Nappie', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 5.64, 6, 4),
(436, 'Alec', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 5.2, 5, 3),
(437, 'Doug', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 2.97, 1, 4),
(438, 'Germana', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 7.16, 5, 1),
(439, 'Griswold', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 5.67, 3, 4),
(440, 'Kippie', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 7.69, 7, 3),
(441, 'Thorpe', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 2.73, 6, 3),
(442, 'La verne', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 4.58, 5, 4),
(443, 'Pammie', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 7.56, 2, 5),
(444, 'Kaja', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 7.07, 5, 1),
(445, 'Leopold', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 4.04, 5, 2),
(446, 'Felic', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 6.49, 2, 3),
(447, 'Antonia', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 8.59, 7, 5),
(448, 'Tyson', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 1.72, 4, 2),
(449, 'Chrissie', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 2.46, 5, 4),
(450, 'Gan', 'Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 2.26, 6, 1),
(451, 'Thaine', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 5.33, 1, 4),
(452, 'Pepillo', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 5.91, 2, 3),
(453, 'Jillian', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 4.55, 4, 3),
(454, 'Katey', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 2.75, 1, 4),
(455, 'Shurlock', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 8.91, 6, 5),
(456, 'Valaria', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 2.04, 6, 5),
(457, 'Brittani', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 8.32, 1, 3),
(458, 'Ethan', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 4.9, 3, 1),
(459, 'Con', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 6.28, 2, 1),
(460, 'Fifi', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 4.9, 2, 1),
(461, 'Gaby', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 6.85, 1, 2),
(462, 'Mal', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 5.53, 5, 5),
(463, 'Tandi', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 2.5, 2, 4),
(464, 'Jon', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 6.05, 5, 3),
(465, 'Maren', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 6.12, 7, 4),
(466, 'Drusy', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 6.48, 4, 5),
(467, 'Natalya', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 5.6, 4, 2),
(468, 'Kermit', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 6.75, 1, 3),
(469, 'Heidi', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 7.19, 3, 1),
(470, 'Javier', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 5.66, 4, 5),
(471, 'Mina', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 5.56, 3, 2),
(472, 'Ilario', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 3.01, 3, 4),
(473, 'Jory', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 3.5, 5, 4),
(474, 'Dewain', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 5.24, 1, 3),
(475, 'Haleigh', 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 6.6, 6, 3),
(476, 'Gwendolyn', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 8.44, 3, 5),
(477, 'Alanson', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1.06, 5, 3),
(478, 'Ibbie', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 5.9, 7, 1),
(479, 'Saxon', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 2.32, 5, 1),
(480, 'Janaye', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 5.6, 3, 4),
(481, 'Adolf', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 1.21, 1, 1),
(482, 'Sayre', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 5.93, 7, 3),
(483, 'Alvin', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 3.44, 3, 1),
(484, 'Salomon', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 2.65, 1, 3),
(485, 'Buddie', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 6.18, 4, 5),
(486, 'Carey', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 4.23, 1, 4),
(487, 'Salomone', 'Fusce consequat. Nulla nisl. Nunc nisl.', 7.06, 2, 1),
(488, 'Nappy', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 6.08, 5, 3),
(489, 'Georgetta', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 3.48, 4, 2),
(490, 'Barris', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 2.47, 6, 4),
(491, 'Sapphire', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 2.47, 7, 5),
(492, 'Min', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 5.69, 4, 3),
(493, 'Eveline', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 5.66, 2, 3),
(494, 'Bradley', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 5.64, 4, 2),
(495, 'Terry', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 7, 4, 4),
(496, 'Tucky', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 6.5, 5, 2),
(497, 'Madelyn', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 8.55, 2, 4),
(498, 'Chan', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 2.67, 4, 2),
(499, 'Pris', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 8.88, 6, 3),
(500, 'Aldridge', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 2.47, 5, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `gerant`
--
ALTER TABLE `gerant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `producteur`
--
ALTER TABLE `producteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `gerant`
--
ALTER TABLE `gerant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `producteur`
--
ALTER TABLE `producteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
