-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 22 fév. 2023 à 08:46
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `immo`
--

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `civility` enum('M','F') NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `civility`, `firstname`, `lastname`, `email`, `phone`, `mobile`, `info`) VALUES
(1, 'M', 'Torry', 'Dykins', 'tdykins0@simplemachines.org', NULL, '203-733-6894', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum.'),
(2, 'F', 'Eadmund', 'Powelee', 'arubury1@miitbeian.gov.cn', '448-328-3867', '103-323-8993', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.'),
(3, 'M', 'Reynold', 'Dabnor', 'rdabnor2@blogs.com', NULL, '612-895-1341', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(4, 'M', 'Eadmund', 'Powelee', 'arublo@gmail.fr', '448-328-3867', '103-323-8993', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.'),
(5, 'F', 'Maybelle', 'Baselio', 'arubal@gmail.com', '403-335-0715', '807-503-6832', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus.'),
(6, 'M', 'Rossy', 'Cleaver', 'rcleaver5@addtoany.com', NULL, '658-899-0981', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl.'),
(7, 'M', 'Tamas', 'Sammon', 'tsammon6@bravesites.com', NULL, '471-105-7480', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.'),
(8, 'F', 'Anne', 'Kegg', 'akegg7@slideshare.net', '909-888-2967', '131-285-7086', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(9, 'M', 'Yehudi', 'Measor', 'ymeasor8@upenn.edu', '209-310-1437', '607-240-6585', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.'),
(10, 'M', 'Jackson', 'Cayet', 'jcayet9@freewebs.com', '967-692-3123', '863-819-1532', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.'),
(11, 'M', 'Sheff', 'Roake', 'sroakea@army.mil', NULL, '189-576-7588', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim.'),
(12, 'F', 'Ileana', 'Echallier', 'iechallierb@imgur.com', NULL, '426-264-8142', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.'),
(13, 'F', 'Julita', 'Deakan', 'jdeakanc@chronoengine.com', '996-553-1968', '802-589-0718', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.'),
(14, 'M', 'Jessee', 'Bodimeade', 'jbodimeaded@usda.gov', '562-957-6811', '605-145-7031', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.'),
(15, 'F', 'Lilian', 'Bruhn', 'lbruhne@nhs.uk', '225-238-2352', '568-927-5051', 'Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),
(16, 'M', 'Newton', 'Tirone', 'ntironef@reference.com', '495-265-7838', '396-908-7711', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.'),
(17, 'M', 'Mohandis', 'Coxhead', 'mcoxheadg@nba.com', '985-377-1758', '541-454-5785', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.'),
(18, 'M', 'Broddie', 'Hartgill', 'bhartgillh@auda.org.au', NULL, '361-581-9330', 'In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.'),
(19, 'F', 'Lynett', 'Arnull', 'larnulli@nationalgeographic.com', '290-828-8324', '426-590-5335', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus.'),
(20, 'F', 'Norry', 'Bayford', 'nbayfordj@instagram.com', '442-380-7463', '509-410-7241', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc.'),
(21, 'M', 'Palm', 'Paradis', 'pparadisk@deliciousdays.com', NULL, '974-189-6660', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
(22, 'F', 'Madelena', 'Finlow', 'mfinlowl@woothemes.com', NULL, '291-979-6530', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.'),
(23, 'M', 'Pierson', 'Moncreif', 'pmoncreifm@washington.edu', '889-199-4266', '666-668-5968', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
(24, 'F', 'Melitta', 'Marfell', 'mmarfelln@redcross.org', '425-305-2837', '284-487-0613', 'Phasellus in felis. Donec semper sapien a libero.'),
(25, 'M', 'Westbrook', 'Algy', 'walgyo@fotki.com', '341-233-3083', '938-490-1061', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.'),
(26, 'F', 'Chery', 'Rosingdall', 'crosingdallp@wikipedia.org', '873-372-5439', '311-381-3705', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.'),
(27, 'M', 'Zed', 'Haizelden', 'zhaizeldenq@cargocollective.com', NULL, '719-649-0404', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
(28, 'M', 'Thebault', 'Clousley', 'tclousleyr@spotify.com', '718-533-0026', '931-381-8756', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.'),
(29, 'M', 'Lutero', 'Carney', 'lcarneys@ed.gov', NULL, '438-513-0640', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.'),
(30, 'M', 'Paquito', 'Grigorey', 'pgrigoreyt@topsy.com', '520-282-6140', '252-344-4600', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
(31, 'M', 'Ash', 'Watsham', 'awatshamu@bandcamp.com', '837-394-7122', '643-354-5614', 'Quisque ut erat.'),
(32, 'M', 'Tan', 'Troctor', 'ttroctorv@seattletimes.com', NULL, '602-809-5607', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.'),
(33, 'F', 'Binni', 'Pawley', 'bpawleyw@wikipedia.org', NULL, '600-551-1677', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.'),
(34, 'F', 'Nisse', 'Pomery', 'npomeryx@taobao.com', NULL, '874-628-2393', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.'),
(35, 'F', 'Hyacinth', 'Leyfield', 'hleyfieldy@baidu.com', NULL, '547-789-3832', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.'),
(36, 'F', 'Felice', 'Gibbie', 'fgibbiez@walmart.com', '367-408-1189', '666-774-9642', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.'),
(37, 'M', 'Jory', 'Nester', 'jnester10@pen.io', NULL, '723-404-1357', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.'),
(38, 'M', 'Garreth', 'Roan', 'groan11@toplist.cz', '447-518-7405', '490-760-6440', 'Nulla nisl. Nunc nisl.'),
(39, 'M', 'Brandy', 'Hebblewhite', 'bhebblewhite12@domainmarket.com', NULL, '212-174-7742', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),
(40, 'F', 'Anastassia', 'Kilday', 'akilday13@amazon.com', '889-295-6223', '776-816-8864', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.'),
(41, 'F', 'Corly', 'Pattillo', 'cpattillo14@aol.com', '646-572-9523', '548-669-4147', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(42, 'F', 'Deny', 'Petracek', 'dpetracek15@marketwatch.com', '280-486-7990', '733-458-6011', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla.'),
(43, 'F', 'Kelci', 'Cheevers', 'kcheevers16@typepad.com', '685-456-1009', '291-719-7067', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.'),
(44, 'M', 'Tirrell', 'Shedd', 'tshedd17@dagondesign.com', '386-147-1224', '931-219-5237', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.'),
(45, 'F', 'Arabela', 'Jilkes', 'ajilkes18@blogtalkradio.com', '421-756-1260', '753-138-6708', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.'),
(46, 'M', 'Matthiew', 'Bockmaster', 'mbockmaster19@so-net.ne.jp', '260-390-1279', '701-460-8980', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.'),
(47, 'M', 'Nikolaos', 'Stilwell', 'nstilwell1a@baidu.com', '838-762-4834', '525-749-9276', 'Donec semper sapien a libero.'),
(48, 'F', 'Wilone', 'Rabier', 'wrabier1b@bloomberg.com', NULL, '127-726-0424', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.'),
(49, 'M', 'Guglielmo', 'Goodram', 'ggoodram1c@addthis.com', NULL, '187-944-1749', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.'),
(50, 'F', 'Shela', 'Gilffillan', 'sgilffillan1d@domainmarket.com', '318-541-9353', '949-428-4952', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.'),
(51, 'M', 'Harold', 'Zapata', 'hzapata0@comsenz.com', '682-456-7802', '847-275-3597', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque.'),
(52, 'F', 'Philippa', 'Round', 'pround1@unicef.org', '916-535-3119', '192-825-8347', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
(53, 'M', 'Chip', 'Voase', 'cvoase2@t-online.de', NULL, '997-644-3367', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.'),
(54, 'M', 'Selig', 'Walpole', 'swalpole3@plala.or.jp', NULL, '351-819-5107', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.'),
(55, 'F', 'Fredelia', 'Heelis', 'fheelis4@admin.ch', '556-484-6960', '113-728-6516', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
(56, 'M', 'Gerry', 'Tesauro', 'gtesauro5@huffingtonpost.com', '973-937-8477', '312-941-3975', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.'),
(57, 'F', 'Eadith', 'Munning', 'emunning6@dailymail.co.uk', '482-148-0144', '278-123-1010', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.'),
(58, 'M', 'Lem', 'Mantrip', 'lmantrip7@un.org', '946-800-8005', '685-894-3402', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.'),
(59, 'F', 'Asia', 'Flemming', 'aflemming8@ft.com', '892-184-2003', '193-625-2271', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.'),
(60, 'F', 'Blancha', 'Maldin', 'bmaldin9@amazon.de', '843-463-6041', '332-708-2701', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.'),
(61, 'F', 'Edyth', 'Drife', 'edrifea@wikipedia.org', NULL, '317-617-2537', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.'),
(62, 'F', 'Cathrine', 'Heersma', 'cheersmab@com.com', '215-178-6342', '309-206-9543', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.'),
(63, 'M', 'Byrann', 'Kopta', 'bkoptac@netscape.com', NULL, '960-400-2525', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.'),
(64, 'M', 'Arne', 'But', 'abutd@businesswire.com', NULL, '461-728-7148', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
(65, 'M', 'Kingston', 'Lothlorien', 'klothloriene@skype.com', '693-249-8417', '455-666-3149', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.'),
(66, 'F', 'Hestia', 'Szymoni', 'hszymonif@t-online.de', '252-599-8099', '167-933-9031', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(67, 'M', 'Galvan', 'Banasik', 'gbanasikg@usatoday.com', NULL, '952-695-9877', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.'),
(68, 'F', 'Veradis', 'Elliff', 'velliffh@networksolutions.com', NULL, '288-214-4513', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
(69, 'M', 'Rudy', 'Ferres', 'rferresi@hatena.ne.jp', '290-149-9552', '990-435-1704', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.'),
(70, 'M', 'Bar', 'Leary', 'blearyj@netvibes.com', '893-945-2171', '146-840-9279', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
(71, 'M', 'Maurice', 'Haldenby', 'mhaldenbyk@discuz.net', NULL, '350-568-4968', 'Curabitur gravida nisi at nibh.'),
(72, 'F', 'Dorthea', 'Brewers', 'dbrewersl@state.tx.us', NULL, '734-553-1136', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.'),
(73, 'M', 'Dudley', 'Eymer', 'deymerm@slate.com', '438-250-3418', '836-752-6340', 'Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),
(74, 'M', 'Ned', 'Mapledoram', 'nmapledoramn@sun.com', NULL, '202-958-6319', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.'),
(75, 'F', 'Daffie', 'Aingel', 'daingelo@hatena.ne.jp', '544-407-2488', '750-722-3158', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.'),
(76, 'F', 'Deb', 'Pettifer', 'dpettiferp@google.com.au', NULL, '364-535-0538', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.'),
(77, 'M', 'Granville', 'Levis', 'glevisq@pagesperso-orange.fr', '445-171-4131', '285-380-4447', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(78, 'M', 'Olin', 'Copestake', 'ocopestaker@netlog.com', NULL, '452-441-8401', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.'),
(79, 'M', 'Lynn', 'Garz', 'lgarzs@csmonitor.com', '608-357-8641', '378-493-8489', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.'),
(80, 'M', 'Sutton', 'Bauldrey', 'sbauldreyt@blogger.com', '462-754-5654', '843-772-6595', 'In quis justo.'),
(81, 'M', 'Merrel', 'Petyanin', 'mpetyaninu@java.com', NULL, '551-929-3413', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.'),
(82, 'M', 'Egbert', 'Grimshaw', 'egrimshawv@microsoft.com', '640-890-6274', '356-525-0335', 'Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.'),
(83, 'M', 'Harp', 'Bane', 'hbanew@oracle.com', '254-981-5482', '356-479-2927', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.'),
(84, 'F', 'Silvie', 'Kohrsen', 'skohrsenx@comsenz.com', '636-899-1962', '179-739-5387', 'Donec semper sapien a libero.'),
(85, 'M', 'Bruis', 'Gianilli', 'bgianilliy@wiley.com', '988-232-1458', '959-753-8930', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.'),
(86, 'M', 'Gus', 'Howle', 'ghowlez@icq.com', '150-592-8919', '634-369-5537', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.'),
(87, 'M', 'Cully', 'Hardwin', 'chardwin10@mail.ru', '336-678-8618', '687-201-9902', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.'),
(88, 'F', 'Vanni', 'Hallt', 'vhallt11@ibm.com', NULL, '584-901-0767', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.'),
(89, 'M', 'Lester', 'Espinho', 'lespinho12@cdbaby.com', '718-514-4136', '112-911-4623', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.'),
(90, 'F', 'Joellyn', 'Twitchett', 'jtwitchett13@fc2.com', '526-774-8823', '702-714-4329', 'In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.'),
(91, 'M', '', '', 'tcrump14@baidu.com', '', '', ''),
(92, 'M', 'Francesco', 'Twopenny', 'ftwopenny15@wordpress.com', '193-707-8781', '422-450-1391', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.'),
(93, 'M', 'Eduardo', 'Diviney', 'ediviney16@nytimes.com', '805-427-2204', '948-788-6794', 'Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.'),
(94, 'F', 'Sandi', 'Wong', 'swong17@cnbc.com', '769-222-5824', '838-926-7793', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.'),
(95, 'M', 'Sonnie', 'Camock', 'scamock18@imageshack.us', '166-737-4769', '575-146-6161', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla.'),
(96, 'F', 'Catharine', 'Kerfod', 'ckerfod19@g.co', '712-202-8153', '932-622-3312', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.'),
(97, 'M', 'Anthony', 'MacAllister', 'amacallister1a@ft.com', '158-994-3071', '780-792-3323', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla.'),
(98, 'F', 'Marty', 'Margarson', 'mmargarson1b@paypal.com', '574-911-3103', '585-152-5666', 'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(99, 'F', 'Christen', 'Crombleholme', 'ccrombleholme1c@toplist.cz', NULL, '719-733-6118', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.'),
(100, 'F', 'Jaime', 'Kliemke', 'jkliemke1d@domainmarket.com', '856-221-0763', '638-948-0411', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.'),
(101, 'M', '', '', 't@g.com', '', '', ''),
(102, 'M', 'john', 'Doe', 'johndoe.familyschedule@gmail.com', '9249234024', '320349204', 'Toujours la'),
(103, 'M', 'l,zdla', 'kld,a', 'jnlazdl@gmzl.com', '', '', ''),
(104, 'M', '', '', 'zfafq@zfz.com', '', '', ''),
(105, 'M', 'alex', 'desrosiers', 'desrosiersalex7@gmail.com', '234234242', '234235235', '');

-- --------------------------------------------------------

--
-- Structure de la table `realties`
--

CREATE TABLE `realties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `adress1` varchar(80) DEFAULT NULL,
  `adress2` varchar(80) DEFAULT NULL,
  `town` varchar(80) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `info_adress` text,
  `type` enum('1','2','3','4','5') NOT NULL,
  `area` int(5) DEFAULT '0',
  `room` int(2) DEFAULT '0',
  `price` int(8) DEFAULT NULL,
  `sold` tinyint(1) DEFAULT NULL,
  `online` tinyint(1) DEFAULT NULL,
  `info` text,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realties`
--

INSERT INTO `realties` (`id`, `user_id`, `contact_id`, `adress1`, `adress2`, `town`, `zipcode`, `info_adress`, `type`, `area`, `room`, `price`, `sold`, `online`, `info`, `created_date`) VALUES
(4, 25, 1, '9 Havey Court', 'PO Box 53015', 'Alor Setar', '05460', 'Vivamus vestibulum sagittis sapien.', '2', 867, 1, 6105208, 0, 1, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '2023-01-13 15:09:49'),
(5, 33, 7, NULL, NULL, 'Fuerte', NULL, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '4', NULL, NULL, 3225744, 1, 1, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2023-01-13 15:09:49'),
(6, 35, 40, '76268 Carey Pass', 'Room 758', NULL, NULL, 'Etiam pretium iaculis justo.', '5', 246, 30, NULL, 1, 1, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', '2023-01-13 15:09:49'),
(12, 25, 37, '755 Maywood Parkway', 'Apt 1646', NULL, 'T1P', 'Etiam justo. Etiam pretium iaculis justo.', '3', NULL, 8, NULL, 1, 0, NULL, '2023-01-13 15:10:50'),
(14, 72, 40, NULL, NULL, 'Boden', NULL, NULL, '4', NULL, NULL, 10898769, 0, 1, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2023-01-13 15:10:50'),
(15, 47, 19, NULL, 'PO Box 80938', 'Ivanovka', NULL, NULL, '3', 1201, NULL, 3654562, 1, 1, NULL, '2023-01-13 15:10:50'),
(17, 27, 5, '894 Farmco Point', 'Suite 74', 'Sanzhou', NULL, 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '5', 3012, 2, 1037376, 0, 0, NULL, '2023-01-13 15:10:50'),
(21, 64, 44, '2807 Monterey Street', NULL, 'Dobrzyca', '76-038', 'Nulla nisl. Nunc nisl.', '4', NULL, 20, 142202, 1, 1, NULL, '2023-01-13 15:10:50'),
(22, 74, 11, '5 Granby Court', NULL, NULL, '584 01', 'Suspendisse accumsan tortor quis turpis.', '5', 901, 18, NULL, 0, 0, NULL, '2023-01-13 15:10:50'),
(24, 2, 33, NULL, NULL, NULL, NULL, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', '4', NULL, NULL, NULL, 1, 0, 'In congue. Etiam justo. Etiam pretium iaculis justo.', '2023-01-13 15:10:50'),
(25, 64, 9, '5427 Lakeland Park', NULL, 'Kembangkerang Lauk Timur', NULL, NULL, '3', 652, 22, 14100758, 1, 1, NULL, '2023-01-13 15:10:50'),
(26, 23, 11, '0 Sutteridge Circle', NULL, 'Jaro', '6527', NULL, '2', 4303, 10, 6064941, 0, 0, NULL, '2023-01-13 15:10:50'),
(28, 69, 16, '805 Thompson Alley', NULL, 'Sosnogorsk', '169511', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', '4', 3748, 20, 12229693, 0, 0, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', '2023-01-13 15:10:50'),
(30, 27, 14, '67156 Merchant Way', NULL, 'Prakhon Chai', '31140', NULL, '5', NULL, 21, 11851383, 1, 0, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.', '2023-01-13 15:10:50'),
(34, 57, 31, NULL, 'PO Box 98615', 'Balong', NULL, NULL, '5', NULL, NULL, 4526239, 0, 1, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2023-01-13 15:10:50'),
(36, 76, 16, NULL, NULL, 'Odintsovo', NULL, NULL, '3', 4259, NULL, 5403457, 0, 1, NULL, '2023-01-13 15:10:50'),
(37, 16, 11, NULL, NULL, 'Tadjoura', NULL, 'Aenean fermentum.', '3', 2576, NULL, 5442864, 1, 0, NULL, '2023-01-13 15:10:50'),
(38, 80, 31, '9475 Brentwood Way', NULL, NULL, '055827', 'Pellentesque eget nunc.', '3', NULL, 30, NULL, 1, 1, NULL, '2023-01-13 15:10:50'),
(39, 33, 38, '22 John Wall Avenue', NULL, 'Aylmer', 'N5H', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '3', 470, 29, 2474005, 1, 1, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2023-01-13 15:10:50'),
(41, 40, 37, '1682 Arapahoe Crossing', 'Apt 1961', 'Ornontowice', '43-178', 'Suspendisse potenti.', '2', 652, 19, 14685507, 1, 0, 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2023-01-13 15:10:50'),
(42, 54, 29, '21237 Gerald Avenue', 'PO Box 71655', 'Llaillay', NULL, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', '4', 4162, 10, 7332491, 1, 0, NULL, '2023-01-13 15:10:50'),
(44, 46, 6, '5147 Texas Point', 'Apt 548', 'Jiudian', NULL, NULL, '2', NULL, 29, 4319431, 1, 0, NULL, '2023-01-13 15:10:50'),
(45, 63, 26, '121 Scofield Circle', 'Apt 712', NULL, NULL, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', '4', NULL, 24, NULL, 0, 1, NULL, '2023-01-13 15:10:50'),
(47, 80, 46, '3591 Tennyson Avenue', NULL, 'Bekwai', NULL, NULL, '2', NULL, 13, 9730548, 0, 0, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '2023-01-13 15:10:50'),
(48, 40, 4, '75628 Village Lane', 'Apt 417', 'Senhor da Serra', '3220-435', 'Proin risus. Praesent lectus.', '3', 3264, 3, 6698341, 0, 1, NULL, '2023-01-13 15:10:50'),
(50, 6, 29, '0192 Portage Trail', '17th Floor', 'Kallíthiron', NULL, 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '5', NULL, 12, 10741947, 0, 1, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2023-01-13 15:10:50'),
(51, 38, 17, '92460 Merrick Crossing', NULL, 'Legen', '2383', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', '5', NULL, 19, 8467455, 1, 1, NULL, '2023-01-13 15:10:50'),
(54, 64, 30, NULL, '9th Floor', 'Paris 17', NULL, 'Etiam faucibus cursus urna. Ut tellus.', '5', 1390, NULL, 7512315, 0, 0, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '2023-01-13 15:10:50'),
(55, 9, 42, '7 Stone Corner Trail', 'Suite 79', 'Caçador', '89500-000', 'Curabitur convallis.', '5', NULL, 25, 1973990, 0, 1, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '2023-01-13 15:10:50'),
(56, 40, 30, NULL, 'Suite 22', 'Buri', NULL, 'Quisque ut erat.', '2', NULL, NULL, 1804726, 0, 0, NULL, '2023-01-13 15:10:50'),
(58, 53, 36, '5478 Summerview Pass', NULL, 'Qingshan', NULL, 'Duis at velit eu est congue elementum.', '1', 838, 29, 1070962, 1, 1, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2023-01-13 15:16:21'),
(59, 46, 3, '06182 Sycamore Terrace', NULL, 'Colonia Mauricio José Troche', NULL, 'Vestibulum ac est lacinia nisi venenatis tristique.', '3', 3158, 29, 2646254, 0, 1, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', '2023-01-13 15:16:21'),
(60, 55, 35, '2897 Vernon Trail', NULL, NULL, '6840', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices.', '3', NULL, 4, NULL, 1, 1, NULL, '2023-01-13 15:16:21'),
(61, 55, 24, '2601 1st Avenue', NULL, 'Pata', '7405', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.', '4', 3709, 24, 3787078, 0, 0, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '2023-01-13 15:16:21'),
(62, 45, 33, NULL, 'Suite 18', 'Yueyang', NULL, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', '5', NULL, NULL, 9161609, 1, 0, NULL, '2023-01-13 15:16:21'),
(63, 46, 40, '55 Sugar Pass', '15th Floor', NULL, '45000', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', '3', NULL, 20, NULL, 0, 1, NULL, '2023-01-13 15:16:21'),
(64, 48, 24, NULL, 'Room 831', 'Zoumaling', NULL, NULL, '4', 3076, NULL, 13796045, 1, 0, NULL, '2023-01-13 15:16:21'),
(65, 53, 28, '1 Colorado Avenue', NULL, 'Randusari', NULL, 'Nulla nisl.', '1', NULL, 20, 11748114, 0, 1, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2023-01-13 15:16:21'),
(66, 54, 41, NULL, '19th Floor', 'Cholet', NULL, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '3', NULL, NULL, 6213413, 1, 0, NULL, '2023-01-13 15:16:21'),
(67, 50, 11, NULL, NULL, 'Cipatujah', NULL, NULL, '5', 3423, NULL, 3386170, 1, 1, NULL, '2023-01-13 15:16:21'),
(68, 53, 36, '58 Miller Way', NULL, 'Ede', '6714', NULL, '1', NULL, 14, 14918068, 1, 0, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', '2023-01-13 15:16:21'),
(69, 45, 4, '96 Dryden Street', NULL, 'Berezayka', '171067', NULL, '1', NULL, 19, 10672667, 1, 1, NULL, '2023-01-13 15:16:21'),
(70, 49, 31, '33 Clarendon Lane', NULL, 'Sanpai', NULL, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2', NULL, 27, 6002630, 0, 1, NULL, '2023-01-13 15:16:21'),
(71, 55, 8, '29 Northview Alley', NULL, 'Paniówki', '44-177', NULL, '5', NULL, 13, 741520, 0, 1, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '2023-01-13 15:16:21'),
(72, 47, 4, '3368 Carberry Drive', NULL, 'Bershet’', '614551', NULL, '1', NULL, 4, 5016927, 0, 1, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\r\n\r\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2023-01-13 15:16:21'),
(73, 53, 37, '9 Blackbird Parkway', '5th Floor', 'Qaţanah', NULL, 'Aenean lectus. Pellentesque eget nunc.', '4', NULL, 1, 3187510, 1, 1, NULL, '2023-01-13 15:16:21'),
(74, 51, 42, '29605 Rockefeller Street', '10th Floor', 'Pego Longo', '2605-150', 'Nam dui.', '5', 931, 29, 731593, 0, 0, NULL, '2023-01-13 15:16:21'),
(75, 55, 25, '93 Menomonie Trail', NULL, 'Bartošovice', '742 54', 'Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '3', NULL, 14, 2794549, 0, 0, NULL, '2023-01-13 15:16:21'),
(76, 54, 26, '01221 Ridge Oak Junction', NULL, 'Kuteynykove', NULL, NULL, '1', NULL, 24, 1368114, 0, 1, NULL, '2023-01-13 15:16:21'),
(77, 47, 43, NULL, NULL, 'Yanhe', NULL, 'Aenean sit amet justo.', '1', NULL, NULL, 10594334, 1, 1, NULL, '2023-01-13 15:16:21'),
(78, 47, 3, '341 Fair Oaks Place', 'PO Box 76100', 'Luar', NULL, NULL, '5', NULL, 2, 5193431, 0, 0, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', '2023-01-13 15:16:21'),
(79, 48, 35, NULL, NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, 1, 1, NULL, '2023-01-13 15:16:21'),
(80, 47, 25, '1 Mosinee Avenue', NULL, 'Huaquirca', NULL, 'Nulla nisl. Nunc nisl.', '3', 702, 6, 2038726, 1, 1, NULL, '2023-01-13 15:16:21'),
(81, 54, 38, '63091 Katie Pass', NULL, 'Caujul', NULL, NULL, '5', 294, 21, 8275230, 1, 1, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', '2023-01-13 15:16:21'),
(82, 54, 8, NULL, NULL, 'Ortiga', NULL, 'Integer ac neque. Duis bibendum.', '3', NULL, NULL, 11684737, 1, 0, NULL, '2023-01-13 15:16:21'),
(83, 46, 14, '5 Del Sol Crossing', NULL, 'Budapest', '1111', NULL, '5', 3980, 29, 676255, 1, 1, NULL, '2023-01-13 15:16:21'),
(84, 48, 39, '49 Walton Park', NULL, NULL, '95120', 'Pellentesque at nulla. Suspendisse potenti.', '3', NULL, 28, NULL, 1, 1, NULL, '2023-01-13 15:16:21'),
(85, 51, 27, '72161 Hagan Court', NULL, 'Tsimlyansk', '347320', 'Phasellus sit amet erat.', '2', 870, 14, 970293, 0, 1, NULL, '2023-01-13 15:16:21'),
(86, 45, 8, '9 Del Sol Park', '12th Floor', 'San Francisco', '30103', 'Aenean lectus.', '1', 428, 22, 1014683, 0, 1, NULL, '2023-01-13 15:16:21'),
(87, 45, 42, '8634 Menomonie Way', '19th Floor', 'Fakaifou Village', NULL, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', '2', NULL, 30, 7908219, 0, 0, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2023-01-13 15:16:21'),
(88, 47, 8, '117 Schlimgen Parkway', NULL, 'Chapultepec', '25050', 'Nulla nisl.', '5', NULL, 5, 1484541, 1, 1, NULL, '2023-01-13 15:16:21'),
(89, 51, 25, NULL, NULL, 'Fonteleite', NULL, NULL, '3', NULL, NULL, 3077479, 1, 1, NULL, '2023-01-13 15:16:21'),
(90, 47, 47, NULL, 'Apt 1122', 'Đắk Song', NULL, NULL, '4', NULL, NULL, 10244588, 1, 1, NULL, '2023-01-13 15:16:21'),
(91, 48, 35, '520 Fair Oaks Crossing', NULL, 'Kamieniec', '64-061', 'In eleifend quam a odio. In hac habitasse platea dictumst.', '1', NULL, 20, 4562769, 1, 0, NULL, '2023-01-13 15:16:21'),
(92, 52, 13, '3 Shelley Alley', 'Room 1594', 'Dolice', '73-115', 'Aenean sit amet justo.', '2', 3023, 11, 7662948, 0, 0, NULL, '2023-01-13 15:16:21'),
(93, 52, 12, '899 Glacier Hill Junction', 'Suite 48', 'Novyy Karachay', '369228', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2', 325, 29, 12194632, 0, 0, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2023-01-13 15:16:21'),
(94, 45, 24, '4490 Blue Bill Park Drive', NULL, 'Perdões', '37260-000', 'Proin interdum mauris non ligula pellentesque ultrices.', '4', NULL, 27, 5149475, 0, 1, NULL, '2023-01-13 15:16:21'),
(95, 54, 28, '2 Kingsford Place', 'Apt 747', 'Lin’an', NULL, 'Nulla ac enim.', '4', NULL, 29, 7540139, 1, 0, NULL, '2023-01-13 15:16:21'),
(96, 53, 16, '5911 Carioca Drive', NULL, 'Muting', NULL, NULL, '3', 2738, 7, 2153036, 1, 1, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', '2023-01-13 15:16:21'),
(97, 55, 6, '9 Pepper Wood Court', NULL, 'Xinying', NULL, 'Donec posuere metus vitae ipsum.', '1', 1495, 28, 13457700, 0, 1, NULL, '2023-01-13 15:16:21'),
(98, 48, 1, '7138 Harbort Lane', NULL, 'Delodpeken', NULL, NULL, '1', 1662, 3, 5542338, 1, 0, NULL, '2023-01-13 15:16:21'),
(99, 54, 10, '122 Surrey Street', NULL, 'Karukh', NULL, NULL, '3', NULL, 13, 7159419, 0, 0, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', '2023-01-13 15:16:21'),
(100, 54, 5, '57526 Rutledge Court', 'Apt 526', 'Sampués', '705079', NULL, '5', 237, 20, 1774503, 0, 1, NULL, '2023-01-13 15:16:21'),
(101, 46, 35, NULL, NULL, 'Vilppula', NULL, 'Donec posuere metus vitae ipsum.', '5', NULL, NULL, 12678248, 0, 0, NULL, '2023-01-13 15:16:21'),
(102, 50, 21, '615 Riverside Circle', 'PO Box 23141', NULL, NULL, 'Curabitur convallis.', '2', NULL, 2, NULL, 1, 1, NULL, '2023-01-13 15:16:21'),
(103, 53, 24, '0 Lunder Road', NULL, 'Pecka', '507 82', 'Suspendisse potenti.', '1', 3528, 23, 12860195, 0, 1, NULL, '2023-01-13 15:16:21'),
(104, 49, 19, '76 Westend Center', NULL, NULL, '19009', NULL, '2', NULL, 24, NULL, 1, 1, NULL, '2023-01-13 15:16:21'),
(105, 50, 45, '6553 Sundown Way', NULL, 'El Hamma', NULL, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', '5', NULL, 26, 3209514, 0, 0, NULL, '2023-01-13 15:16:21'),
(106, 15, 2, '12 rue madame', '', 'Paris', '75006', '', '1', 250, 3, 500000, NULL, NULL, '', '2023-01-17 13:54:45'),
(108, 15, 102, '45 rue paradis', '2eme', 'Monlucon', '65434', 'Loin de tout', '5', 23456, 3, 34000, NULL, NULL, 'Beaucoup de travaux', '2023-01-18 11:12:44'),
(110, 15, 2, '12 rue paris', '', 'Paris', '75687', '', '1', 23, 2, 12312312, NULL, NULL, '', '2023-01-18 14:14:33'),
(111, 15, 101, '34 villa gaudelet', '', 'Paris', '75011', '', '1', 34, 3, 2342423, NULL, NULL, '', '2023-01-18 14:17:30'),
(114, 15, 2, '23 rue toc', '', 'azeazr', '34234', '', '1', 22, 2, 1124, NULL, NULL, '', '2023-01-18 14:39:48'),
(115, 15, 2, '14 rue ramey', '', 'Paris', '75018', 'tout est proche', '1', 59, 3, 500000, NULL, NULL, 'Nickel', '2023-01-18 14:43:40'),
(116, 15, 2, '34 villa gaudelet', '', 'PARIS', '75687', '', '1', 250, 3, 1124, NULL, NULL, '', '2023-01-18 15:07:48'),
(117, 120, 2, '43 rue de Lille', '', 'Moure', '65009', '', '1', 300, 3, 45000, NULL, NULL, '', '2023-01-20 15:22:57');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `civility` enum('M','F') NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `civility`, `firstname`, `lastname`, `email`, `phone`, `password`, `created_date`) VALUES
(1, 'M', 'Towny', 'Thexton', 'tthexton0@harvard.edu', '384-999-2419', '10ed0ca29e27ad017dd426957798118dda5ba3745911001e28646037209a5441', '2022-10-03 20:09:15'),
(2, 'M', 'Xymenes', 'Gley', 'xgley1@mapquest.com', '594-264-3623', 'ba7d87436585dbfd82be1d8ddb5de7b99a5fb9680664625aeee90a2a49585018', '2022-12-23 20:46:06'),
(6, 'F', 'Glenn', 'Kyles', 'gkyles5@printfriendly.com', NULL, '2c6bbaecc3942663bcdb6299f51db3bb42a2d17d65faa8906f90657219ab85de', '2022-10-02 04:47:18'),
(8, 'M', 'Derick', 'Mulholland', 'dmulholland7@theguardian.com', '361-418-5999', '7bdefba73b2c39136814b71679d91f4ae89bed7e8ad330ede244d5dbde1ab9e4', '2023-01-03 11:51:26'),
(9, 'F', 'Jennette', 'Still', 'jstill8@phpbb.com', '202-668-4391', 'ed714be6f131f55e5d690a366843cb6f1cde1ee7e959bda1af8420b58c09f6f4', '2022-12-29 05:00:11'),
(12, 'F', 'Nancy', 'Derington', 'nderingtonb@si.edu', '963-737-4678', 'e5dcd90f708465e1e6dfcbf28ec8061ac0d32d84e23bd5dfd711f2bc8910b4bf', '2023-01-03 10:40:17'),
(14, 'F', 'Saloma', 'Switsur', 'sswitsurd@go.com', '420-168-1648', '7045a95725af843d0ea3aa95bfa0c09cf2a5831628305cd7230e4c57179d0068', '2022-11-11 07:06:12'),
(15, 'F', 'Myra', 'Rispen', 'mrispene@slideshare.net', NULL, 'f8d5911d7f27b09a98994b78b1e122c7f9f3fe0f5b1ffd55332fbed8a9100dc4', '2022-11-14 06:58:17'),
(16, 'F', 'Jordan', 'Assiter', 'jassiterf@flickr.com', '128-992-4302', 'c2dbf03aa7078ff9195161ad27f7159a641b71d9d96c3f1bcd5997cb315afb47', '2022-11-10 20:06:41'),
(20, 'F', 'Wilow', 'Sammonds', 'wsammondsj@cnet.com', '263-254-7783', '8b10702ffcd8b067cc81768b2c279c797782de414f9ab38328b2e37c5f3471fc', '2022-10-24 23:18:17'),
(21, 'M', 'Wash', 'Rosterne', 'wrosternek@goo.ne.jp', '801-453-3718', '33d477e7376a11e4851f6c72033295f0e92888c96b4be39652482893b0bb418b', '2022-12-15 13:23:18'),
(23, 'M', 'Wood', 'Linklet', 'wlinkletm@ucoz.com', '474-865-4048', '60c66c1334fe10fa87b088fa3981d791c730d3c980460bfe72e77beec2303e9a', '2022-10-16 09:07:21'),
(25, 'F', 'Ilsa', 'Gidney', 'igidneyo@xinhuanet.com', '798-809-8463', 'be20e9e0fb4ca05bb4c96a7466e4161ee637dbfd30df20ebb40b72a68930fb0b', '2023-01-04 08:19:40'),
(27, 'M', 'Raimondo', 'Fluin', 'rfluinq@abc.net.au', '928-724-6054', '0056ef1bd44b023e286fd7703f2dd9add40806df7578023620b1de7f6943ad52', '2022-11-06 14:27:49'),
(32, 'M', 'Durward', 'Balkwillyyyyyy', 'dbalkwillv@nifty.com', '954-546-0221', '3fa95e0dd36efe12e3a73d5ff9a8f8515710a4b0624de5c7f5dcb1d6f8315fda', '2022-10-23 15:26:31'),
(33, 'M', 'Gibby', 'Sives', 'gsivesw@feedburner.com', '432-498-8449', 'f8f8d17637dfa7392afc220844c1c62c409c282905d3c5a05847979121fa2cb7', '2022-12-12 16:30:36'),
(35, 'M', 'Yanaton', 'de Keep', 'ydekeepy@pen.io', '785-161-6187', 'aa07e66aa90248b9c66f0b4590cb08c13b82cd0aee7c32b22e7e5de7df56ed51', '2023-01-08 18:11:26'),
(36, 'M', 'Mervin', 'Westcar', 'mwestcarz@businessweek.com', '929-387-6885', 'e2e3e117ea323300eca0d33a7ed300fa175d04264dd579b2f88d6f66c2e41d65', '2022-10-18 18:41:21'),
(37, 'F', 'Lorette', 'Basten', 'lbasten10@deliciousdays.com', '449-859-4619', '00bffa599bd868a78df52b98954ef195bdb4cae1aba47ae585d7f344b057abd3', '2022-11-11 20:41:48'),
(38, 'M', 'Rob', 'McFall', 'rmcfall11@nba.com', '143-560-9186', 'b22f4d965456c88d6a52e1f936b64deddd19c8ac951ae657cebc18e066e381c8', '2022-12-02 16:03:38'),
(39, 'M', 'Nathanael', 'Cridlan', 'ncridlan12@youku.com', '915-708-4113', '70397e588d783035fd685b9506d6186d09e1bece4c7459ce6c1628374fdf6e75', '2022-12-30 11:02:34'),
(40, 'F', 'Tallou', 'Ivashchenko', 'tivashchenko13@wisc.edu', '220-863-3117', '9cb5c74f65820e060c8f826deea1387af936411e12cc0ba5e9f959df8749a700', '2022-10-01 20:31:36'),
(41, 'M', 'Victor', 'Corzon', 'vcorzon14@elegantthemes.com', '871-240-7983', 'a41d734ef5e84b18ca2de082016f83f76785b4546d6c39ea908cee65aba12467', '2022-10-16 18:20:09'),
(43, 'M', 'Phillipe', 'Kiellor', 'pkiellor16@ustream.tv', NULL, 'a3e5c04dc3550f5c2ac235313ab2cbd68004cdb9b7751368f5864e29dab54fcc', '2023-01-08 16:32:47'),
(45, 'M', 'Portie', 'Philippson', 'pphilippson18@yellowpages.com', '323-340-2263', 'c51ef476b6b53dafd9c749f42abb2acda0360aac3511f1eede6339fd1c1e3bc8', '2022-12-08 18:01:33'),
(46, 'M', 'Ramsey', 'Faires', 'rfaires19@amazon.com', '464-547-0839', 'dde8eed1394a35f7b074a651dfdf6db2e97c71331bb159b476bfc5db6ae5c4c8', '2022-10-18 14:10:22'),
(47, 'M', 'Wayne', 'Della Scala', 'wdellascala1a@naver.com', '373-436-8876', 'e5fa1d74966463766aec0e30e9e4eea69c0bd8e1de98d24480c31c830be59c2e', '2022-10-17 16:46:24'),
(48, 'F', 'Karon', 'Measen', 'kmeasen1b@topsy.com', '349-586-2783', '521395c95be5e738d401bf02837219449d7b5eb7b9b4ec4c697d3459a9d3e977', '2022-11-20 09:50:55'),
(49, 'M', 'Rainer', 'Nasey', 'rnasey1c@ovh.net', '219-648-1156', 'a6ad187b796f4e958cf8232a10abb207b174745b9abcc199d9e9a7a5d5ee4368', '2022-10-07 11:31:38'),
(50, 'F', 'Roselle', 'Sutherington', 'rsutherington1d@xinhuanet.com', '313-586-9609', '2d0cebcf9eba14e853850d9d47e35e8c9aaf70d0bd773bbafa25e4c102d125dd', '2022-12-28 04:57:27'),
(51, 'F', 'Karie', 'Janosevic', 'kjanosevic1e@ycombinator.com', '746-834-7366', 'f9fd8f9f647d4e18d05f5a7ca8b1f941411216b7318f0229b08a8d1feaf50b42', '2022-11-28 00:18:18'),
(52, 'F', 'Rebe', 'Bandy', 'rbandy1f@ebay.com', '948-275-4320', '6086488687a4ab3e252d8ace5cff941e47bff3da44851c5d52f41732f18a8818', '2022-12-19 05:46:26'),
(53, 'M', 'Giffer', 'Riddock', 'griddock1g@cdc.gov', '155-113-6011', '78e194cd3c3960e998a4ba6b6a5b09fd5b15524b33ff83fc140405fcb4f6b53d', '2022-10-12 23:47:52'),
(54, 'M', 'Westbrooke', 'Treadway', 'wtreadway1h@admin.ch', '903-430-2958', '1eaf0c8f723e3161059e22ebd942e892ac3f579354e00177781c3a2ffe692a8e', '2022-11-20 13:39:10'),
(55, 'M', 'Geno', 'Stuart', 'gstutard1i@ning.com', '893-503-1859', '9e11cfb9b8ef319362597d6af9b5596a2f05db8c83ed5196a66b5588ea195ef2', '2022-11-09 03:31:30'),
(57, 'F', 'Trenna', 'Illidge', 'tillidge1k@usgs.gov', '445-341-0085', 'cb3fda841dc43cd7c9f5bdae89ed065d2a8b57f2d95828b81452e4fdf1d63393', '2022-11-01 07:49:51'),
(60, 'F', 'Kizzee', 'Nan Carrow', 'knancarrow1n@cnn.com', '343-304-5892', '0ef7ef4a7e05ae3b715f3b9f4e07556d77b037585dc576bbe0f0696dacd1d10e', '2022-10-18 20:02:56'),
(61, 'F', 'Randee', 'Trett', 'rtrett1o@blinklist.com', '814-887-5292', 'e5cc38b58966260991339f965c6b7de7a5a75eb0cb5d031a256d4b83d70bbe7f', '2023-01-05 08:24:44'),
(63, 'F', 'Wenda', 'Churching', 'wchurching1q@furl.net', '414-834-6499', '2b88764afa9e1986086241a4054423549816da3cdebaa9d9a008c79d8a3b36b4', '2022-10-21 02:29:37'),
(64, 'F', 'Randy', 'Dykas', 'rdykas1r@cisco.com', '170-219-7208', '8ba07aaf5bb908602f497c9f88a1318c3694b6c170b1af9f7ced447dc09c3f71', '2022-12-19 21:29:42'),
(68, 'M', 'Griffin', 'Lesurf', 'glesurf1v@cargocollective.com', '619-912-5678', '023bdf6440c49e1774b3b264d45edfc34e49ca8436efd2972393a008ace3cc75', '2022-10-27 12:53:11'),
(69, 'F', 'Sue', 'Dykas', 'sdykas1w@blogtalkradio.com', '209-786-9378', 'b0e1ac11a0a44a7acca753d808b9c036fbc4b5e44a8f41262e3c96fad39d66e2', '2022-11-13 05:10:22'),
(72, 'F', 'Klarrisa', 'Yglesias', 'kyglesias1z@ifeng.com', '742-191-6986', '14e668c1499653309ea121131d2aed5b468d51030ac6ff611004fdbef6ab5224', '2022-11-08 10:18:38'),
(73, 'M', 'Ilaire', 'Pudge', 'ipudge20@sbwire.com', '879-695-6521', '1220f16f15b5823c6010de757a68d457343e0f55fbb3a6fc524cafa181ce7cc9', '2023-01-08 20:24:37'),
(74, 'M', 'Noe', 'Lamkin', 'nlamkin21@dot.gov', NULL, 'cec9b140a50b22e034a4d5d2c7bf1ce5c3ad5b28fe6152d5057548a6fed409e9', '2022-12-10 07:23:33'),
(75, 'F', 'Mady', 'Birden', 'mbirden22@mac.com', '389-539-7191', '62fcb150972353a5b111ce6622105d9e6cfcad248293f00ae8d8b9fbccf3ca29', '2023-01-03 08:21:03'),
(76, 'M', 'Reggis', 'Playden', 'rplayden23@ted.com', '513-165-6307', 'f0de56a2ba76dd14980cbcdff9dc5f160635db234b0c9c06f3ceec7a55035852', '2022-11-05 18:16:18'),
(77, 'F', 'Mirabelle', 'Ganford', 'mganford24@arstechnica.com', NULL, '4c97c0be1bb88ce35ba484c35ef68f5487a8266d5ecde5132c5a9d7b29bf3bd3', '2022-12-16 18:53:19'),
(80, 'M', 'Remington', 'Nunes Nabarro', 'rnunesnabarro27@wikispaces.com', '171-913-3116', '6fd0e54c0b3c2594509186ab4c685cd45656ce4df5fbe000b55c258d8393ef4e', '2022-11-02 17:09:55'),
(82, 'F', 'Marj', 'Labusch', 'mlabusch29@ning.com', '325-763-8483', '047e56d548bd96a3c0fa0d9400b2c4d04ed7ffdc0159f4bfb8196b1acfcd6465', '2023-01-06 16:06:06'),
(86, 'M', 'Russell', 'Minillo', 'rminillo2d@live.com', '475-277-6796', 'a0dccd0c173f99d21c8c78e8b98288175882db9f08da7262c4ae252fdc79a87f', '2022-11-07 06:28:10'),
(87, 'F', 'Sandi', 'Ruslin', 'sruslin2e@fc2.com', '620-671-3105', '005c12d3c7ef2fa02f2169326f13e168af8cded4d0ed586d52d08cf6d49c4cef', '2022-10-11 18:46:15'),
(88, 'F', 'Jori', 'Quirk', 'jquirk2f@vinaora.com', '589-139-7539', '2762644a43641cc0de72bbcda5ccf7ec4e74d85a8c2ad075398990f7de24897f', '2022-11-26 00:03:29'),
(89, 'F', 'Tana', 'Locksley', 'tlocksley2g@xing.com', '270-107-2624', '83bb65206db68779fb4f52eb1c8b43afe76532fd478abfe044c316fa2f7fbf0b', '2022-10-23 04:26:45'),
(90, 'M', 'Paulo', 'Snarr', 'psnarr2h@senate.gov', '897-922-7040', '737c9b62ca84e9f7e5ee4f2ce43a8065f183fd2f8c236ea23b13ae21a1c50cbf', '2022-10-02 00:11:45'),
(91, 'F', 'Drucie', 'Kedward', 'dkedward2i@amazon.de', '914-773-5969', '81a7ef982e1938009f53cb48fc1fcacce3d6850eed8d536ed402dfaa146e6738', '2022-10-21 20:56:42'),
(92, 'M', 'Padgett', 'Showen', 'pshowen2j@mapy.cz', '507-571-1447', '562b91b47ee87f5f1743c5e90b7ca5e52cc5064cc570ae9181cb14bc1c06710b', '2022-11-08 19:42:01'),
(93, 'F', 'Maisey', 'Touson', 'mtouson2k@surveymonkey.com', '991-563-1404', '97d509e51791818b0e91cdc625b392f2c31f3e42889541052ec6881787a29e5d', '2022-10-21 12:41:44'),
(94, 'M', 'Early', 'Pauer', 'epauer2l@bing.com', '590-471-1845', '7f1ded20d4f60fbbdf3353dacb8c9c8017dc1c301430da54f0226d2f15760af2', '2022-11-23 23:48:10'),
(97, 'F', 'Sib', 'McDougall', 'smcdougall2o@mozilla.org', '766-969-9666', '8d34b06afae93d1d8b91cdce1dd4d3593f465d9c29556e2532eca1cf09c67f54', '2022-12-07 17:41:32'),
(98, 'F', 'Issie', 'Burmingham', 'iburmingham2p@cnbc.com', '499-516-9400', '77e995d101337d9038a2cf2dc8c3124aaba05c7a18c139023b76a91b659addd8', '2022-12-04 13:01:18'),
(99, 'F', 'Kelci', 'Eilers', 'keilers2q@wikispaces.com', '463-659-8573', '03f009fa7d12d366846f72111e151658366bac8a8870eae173b0727da098cedd', '2022-11-29 09:31:28'),
(100, 'F', 'Karalee', 'Baudet', 'kbaudet2r@mapquest.com', '592-757-8111', '50ae66ad17935f00f4f968b9c0988e2299a5474353ca9a2d8200c49f985d853a', '2022-10-04 08:22:00'),
(120, 'M', 'tom', 'pag', 't@g.com', '', '$2a$10$02lfIePzbHbhZB0y73Z13OzIdcGJKeVxek/wtoLPdqekXQXghiwlO', '2023-01-11 15:52:04');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `realties`
--
ALTER TABLE `realties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `realties`
--
ALTER TABLE `realties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `realties`
--
ALTER TABLE `realties`
  ADD CONSTRAINT `realties_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `realties_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
