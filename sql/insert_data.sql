TRUNCATE allocated_activity, planned_activity, employee_skill_set, employee_interest, salary_history, employee, course_instance_period, course_instance, course_layout, course, person_email, person_phone, person, teaching_activity, skill_set, interest, job_title, department, phone, email, system_config RESTART IDENTITY CASCADE;
INSERT INTO system_config (config_value, description) VALUES
('4', 'employee_max_courses');
INSERT INTO department (department_name, manager_id) VALUES
('Computer Science', NULL),
('Mathematics', NULL),
('Applied Physics', NULL),
('Industrial Management', NULL),
('Electrical Engineering', NULL);
INSERT INTO job_title (job_title) VALUES
('Professor'),
('Associate Professor'),
('Lecturer'),
('PhD Student'),
('Course Admin'),
('Teaching Assistant');
INSERT INTO skill_set (skill_set) VALUES
('Python'),
('Java'),
('C++'),
('Matlab'),
('Statistics'),
('Machine Learning'),
('Pedagogy'),
('Academic Writing');
INSERT INTO interest (interest) VALUES
('AI'),
('Robotics'),
('Game Design'),
('Network Security'),
('Bioinformatics'),
('Sustainable Tech');
INSERT INTO teaching_activity (activity_name, factor) VALUES
('Lecture', 1.8),
('Lab', 1.5),
('Seminar', 1.3),
('Tutorial', 1.25),
('Other', 1.0),
('Exam', 1.0),
('Admin', 1.0);
INSERT INTO person (personal_number, first_name, last_name, street, zip, city) VALUES
('4106283643', 'Test', 'Person', 'Idrottsstigen 3', '47794', 'Falun'),
('6303020645', 'Ingela', 'Berggren', 'Ringstigen 48', '68123', 'Stockholm'),
('4705043000', 'Robert', 'Gunnarsson', 'Skogsgatan 7', '57711', 'Örebro'),
('4807256146', 'Anna', 'Lundmark', 'Strandgatan 4', '41385', 'Varberg'),
('9701314537', 'Helena', 'Johansson', 'Granvägen 006', '55446', 'Örebro'),
('7912114100', 'Lilly', 'Jakobsson', 'Kyrkotorget 44', '16526', 'Södertälje'),
('5505234418', 'Pontus', 'Ahmadi', 'Bäckstigen 859', '45256', 'Sundsvall'),
('8204067444', 'Per', 'Einarsson', 'Idrottsgatan 456', '29329', 'Örebro'),
('8209131443', 'Johan', 'Olsson', 'Parkgatan 426', '97661', 'Gävle'),
('0407196039', 'Johanna', 'Ek', 'Strandvägen 05', '80008', 'Sundsvall'),
('9301309523', 'Birgitta', 'Skoglund', 'Skogsgatan 689', '75546', 'Gävle'),
('8012174283', 'Martin', 'Gustafsson', 'Industrigatan 8', '76373', 'Ängelholm'),
('3905104984', 'Barbro', 'Strand', 'Furugränd 327', '35994', 'Karlskrona'),
('6706264402', 'Mariana', 'Johansson', 'Storgatan 725', '89698', 'Varberg'),
('0412051583', 'Michael', 'Persson', 'Furuvägen 242', '96874', 'Stockholm'),
('3909259636', 'Marianne', 'Hellberg', 'Skolstigen 63', '62729', 'Stockholm'),
('7511121779', 'Stefan', 'Holmström', 'Villastigen 37', '22293', 'Halmstad'),
('0002090090', 'Marie', 'Andersson', 'Furugränd 8', '20715', 'Alingsås'),
('7008043171', 'Magdalena', 'Claesson', 'Skogsvägen 5', '20219', 'Eskilstuna'),
('7904090672', 'Emma', 'Nilsson', 'Strandstigen 1', '21078', 'Jönköping'),
('4605147257', 'Erika', 'Eriksson', 'Kvarnstigen 482', '60123', 'Lidköping'),
('0304287048', 'Stefan', 'Tran', 'Skolstigen 96', '60747', 'Varberg'),
('3611294129', 'Petra', 'Göransson', 'Kyrkgatan 36', '67961', 'Lidingö'),
('5106044497', 'Agneta', 'Nyberg', 'Nygränd 15', '46508', 'Göteborg'),
('5105244148', 'Åsa', 'Eriksson', 'Grangränd 41', '72421', 'Malmö'),
('6404168699', 'George', 'Singh', 'Furugatan 39', '50173', 'Sandviken'),
('5409037354', 'Marie', 'Andersson', 'Stationsvägen 476', '31362', 'Landskrona'),
('6703275732', 'Kurt', 'Andersson', 'Ringstigen 072', '30812', 'Karlskoga'),
('9510078638', 'Maria', 'Andersson', 'Villastigen 956', '63658', 'Gävle'),
('9703184698', 'Erik', 'Marklund', 'Ringvägen 194', '90814', 'Stockholm'),
('7110057465', 'Marita', 'Hellberg', 'Aspgränd 440', '49426', 'Stockholm'),
('7308209217', 'Vanja', 'Khalil', 'Aspgatan 74', '16691', 'Lidingö'),
('5504036251', 'Jens', 'Engström', 'Kyrkovägen 846', '48236', 'Jönköping'),
('4310316809', 'Dennis', 'Larsson', 'Ringgatan 167', '19611', 'Gävle'),
('9504145831', 'Emanuel', 'Gustafsson', 'Ekgatan 9', '11277', 'Västerås'),
('6111059165', 'Frida', 'Lindahl', 'Ringvägen 9', '40533', 'Jönköping'),
('6511264993', 'Daniel', 'Eriksson', 'Bäckgränd 6', '74368', 'Sundsvall'),
('4710160807', 'Maria', 'Carlsson', 'Stationsgatan 60', '97197', 'Nyköping'),
('6402175514', 'Joakim', 'Osman', 'Granvägen 81', '32039', 'Landskrona'),
('8707221928', 'Marie', 'Lundberg', 'Furugatan 3', '29967', 'Lund'),
('5003107157', 'Carl', 'Norman', 'Idrottsvägen 51', '94095', 'Mölndal'),
('8610092721', 'Carl', 'Nilsson', 'Aspgränd 9', '65082', 'Växjö'),
('3712023427', 'Maria', 'Khalil', 'Idrottsstigen 22', '64196', 'Karlskoga'),
('6208100070', 'Markus', 'Karlsson', 'Stationsvägen 667', '48189', 'Trelleborg'),
('0610165243', 'Helena', 'Hansson', 'Kyrkvägen 692', '70487', 'Skövde'),
('4012162659', 'Sten', 'Wallgren', 'Granstigen 2', '46763', 'Uddevalla'),
('9502032387', 'Maria', 'Lindqvist', 'Skoltorget 2', '42934', 'Västerås'),
('8809269122', 'Molly', 'Melander', 'Villavägen 15', '23622', 'Örnsköldsvik'),
('7505211149', 'Margareta', 'Johansson', 'Kvarngränd 811', '23911', 'Uddevalla'),
('8912047332', 'Holger', 'Nilsson', 'Åkervägen 6', '44548', 'Sundsvall'),
('8708161560', 'Sven', 'Sundström', 'Villatorget 8', '15580', 'Landskrona'),
('6904046601', 'Sven', 'Hagberg', 'Strandvägen 3', '15003', 'Jönköping'),
('7304277275', 'Evelina', 'Kvist', 'Ängsvägen 05', '73039', 'Stockholm'),
('9003270080', 'Erik', 'Haraldsson', 'Nygränd 774', '72273', 'Uddevalla'),
('9610318983', 'Eva', 'Hedberg', 'Industrigatan 6', '81587', 'Kristianstad'),
('8003018960', 'Ingegerd', 'Sjöberg', 'Skogsstigen 176', '15703', 'Sundsvall'),
('0603221383', 'Natalie', 'Johansson', 'Idrottstorget 261', '41578', 'Karlskrona'),
('6504125904', 'Ola', 'Andersson', 'Industritorget 6', '41912', 'Lidköping'),
('6007297739', 'Marie-Louise', 'Mattsson', 'Granvägen 266', '17791', 'Norrköping'),
('5410254360', 'Maria', 'Nordberg', 'Industrivägen 4', '30912', 'Kalmar'),
('9103281094', 'Per', 'Johansson', 'Industritorget 92', '68677', 'Östersund'),
('5602166869', 'Anders', 'Nord', 'Ringvägen 56', '42878', 'Borlänge'),
('6503209527', 'Lars', 'Petersson', 'Villagränd 8', '60977', 'Nyköping'),
('6811221966', 'Fanny', 'Olsson', 'Furutorget 303', '23811', 'Kristianstad'),
('6806307374', 'Eva', 'Karlsson', 'Åkervägen 0', '12829', 'Lund'),
('0307139071', 'Elisabeth', 'Lindberg', 'Granvägen 9', '50515', 'Uppsala'),
('8402015872', 'Erik', 'Lundström', 'Villagatan 447', '91003', 'Piteå'),
('5501112717', 'Sune', 'Ahmad', 'Fabriksstigen 63', '22049', 'Skellefteå'),
('6506124996', 'Birgitta', 'Wallén', 'Ekstigen 052', '73993', 'Sundsvall'),
('7910156095', 'Ann-Marie', 'Pettersson', 'Ringstigen 928', '94005', 'Halmstad'),
('6302177305', 'Margaretha', 'Gustafsson', 'Parkstigen 3', '54706', 'Piteå'),
('7110178915', 'Per', 'Karlsson', 'Skolvägen 9', '77192', 'Östersund'),
('7006047323', 'Märta', 'Johnsson', 'Strandgränd 737', '69668', 'Sundsvall'),
('6808076274', 'Saga', 'Andersson', 'Idrottsvägen 5', '12910', 'Örnsköldsvik'),
('7510137156', 'Anna', 'Gustafsson', 'Kyrkogränd 11', '30486', 'Umeå'),
('7401136200', 'Erik', 'Johansson', 'Skolvägen 5', '13709', 'Borås'),
('5705211919', 'Mona', 'Olsson', 'Skolstigen 3', '72583', 'Piteå'),
('8909297924', 'Nils', 'Larsson', 'Ringgatan 744', '54971', 'Mölndal'),
('6702187375', 'Neo', 'Östlund', 'Ekgränd 24', '15283', 'Linköping'),
('8008057229', 'Johan', 'Westin', 'Trädgårdstorget 743', '85958', 'Landskrona'),
('4704014663', 'Anna', 'Lundin', 'Ängsgränd 279', '22356', 'Borlänge'),
('7009212965', 'Elisabeth', 'Nyman', 'Nygränd 56', '95522', 'Alingsås'),
('8604175318', 'Dante', 'Andersson', 'Backstigen 911', '26706', 'Jönköping'),
('8609135887', 'Emanuel', 'Johansson', 'Kyrkogränd 424', '58210', 'Sandviken'),
('9109242728', 'Artur', 'Wennberg', 'Villagatan 5', '92508', 'Stockholm'),
('7308032122', 'Mikael', 'Norberg', 'Parkstigen 187', '41404', 'Göteborg'),
('6003227391', 'Viktor', 'Jensen', 'Gentorget 439', '14133', 'Ängelholm'),
('5901247139', 'Fredrik', 'Sundell', 'Idrottsgränd 3', '61113', 'Landskrona'),
('4901082539', 'Mari', 'Jansson', 'Åkervägen 80', '79121', 'Karlstad'),
('8209077018', 'Christina', 'Åström', 'Kyrktorget 5', '47248', 'Nyköping'),
('8811133811', 'Max', 'Pålsson', 'Aspstigen 914', '92698', 'Lidköping'),
('6602145762', 'Maria', 'Johansson', 'Furugatan 9', '71459', 'Örebro'),
('4309128132', 'Astrid', 'Nygren', 'Ekgränd 35', '25120', 'Falun'),
('7008273216', 'Olav', 'Forsberg', 'Kyrkogatan 7', '71331', 'Borlänge'),
('4309079970', 'Christina', 'Lund', 'Backgatan 13', '64825', 'Karlskoga'),
('7210145392', 'Tim', 'Olsson', 'Idrottsvägen 205', '64771', 'Karlstad'),
('0105285720', 'Alexander', 'Olsson', 'Idrottstorget 672', '98745', 'Östersund'),
('3610250346', 'Astrid', 'Carlsson', 'Grangränd 6', '47995', 'Falun'),
('7604243811', 'Rita', 'Johansson', 'Idrottstorget 400', '74054', 'Örnsköldsvik'),
('5304126971', 'Sally', 'Karlsson', 'Industrigränd 3', '92546', 'Växjö');
INSERT INTO phone (phone) VALUES
('0019-771 89'),
('08-918 83 32'),
('08-926 428 33'),
('08-946 700 93'),
('012-272 25 94'),
('+46 (0)56 48 44'),
('023-39 71 82'),
('08-365 57 18'),
('048-19 44 33'),
('0031-411 24'),
('08-904 400 52'),
('08-286 31 20'),
('0883-97 59 48'),
('0917-61 98 82'),
('08-123 72 03'),
('08-479 11 54'),
('+46 (0)302 639 '),
('043-068 25 23'),
('08-920 491 99'),
('08-982 606 19'),
('+46 (0)545 417 '),
('08-511 439 66'),
('0373-871 05'),
('+46 (0)35 95 70'),
('086-98 62 76'),
('059-500 62 04'),
('+46 (0)250 861 '),
('+46 (0)110 211 '),
('+46 (0)8 414 12'),
('08-898 179 66'),
('0715-20 65 53'),
('08-17 39 61'),
('0528-043 76'),
('+46 (0)20 19 05'),
('0991-107 60'),
('08-47 76 01'),
('041-44 79 57'),
('08-46 46 20'),
('+46 (0)90 48 51'),
('090-224 79 28'),
('0188-458 69'),
('0684-26 55 69'),
('0070-660 44'),
('+46 (0)31 49 79'),
('08-798 88 65'),
('08-443 48 36'),
('08-39 11 00'),
('08-622 006 02'),
('066-09 88 90'),
('08-32 05 03'),
('08-285 162 39'),
('0553-505 72'),
('+46 (0)8 926 75'),
('+46 (0)8 876 36'),
('08-527 845 16'),
('08-848 741 10'),
('+46 (0)8 514 00'),
('0618-09 10 45'),
('08-380 494 74'),
('089-98 12 93'),
('08-208 56 44'),
('031-84 21 10'),
('08-012 374 11'),
('+46 (0)621 828 '),
('045-11 18 52'),
('+46 (0)47 95 38'),
('08-02 01 17'),
('08-175 59 04'),
('+46 (0)049 789 '),
('043-05 34 30'),
('08-907 46 41'),
('08-49 09 57'),
('08-292 68 02'),
('+46 (0)153 657 '),
('005-15 79 89'),
('0452-307 74'),
('+46 (0)54 36 34'),
('046-839 49 49'),
('08-684 933 28'),
('0158-574 49'),
('0357-352 21'),
('08-684 28 23'),
('+46 (0)04 11 21'),
('004-366 32 59'),
('0928-762 45'),
('003-29 16 93'),
('08-932 30 60'),
('0290-54 90 72'),
('08-76 96 34'),
('08-76 94 84'),
('08-978 855 32'),
('+46 (0)84 84 34'),
('08-767 83 65'),
('+46 (0)544 887 '),
('+46 (0)8 858 39'),
('094-490 41 65'),
('08-84 66 69'),
('0149-57 99 27'),
('0527-522 65'),
('0693-839 29');
INSERT INTO email (email) VALUES
('test.person_1@kth.se'),
('ingela.berggren_2@kth.se'),
('robert.gunnarsson_3@kth.se'),
('anna.lundmark_4@kth.se'),
('helena.johansson_5@kth.se'),
('lilly.jakobsson_6@kth.se'),
('pontus.ahmadi_7@kth.se'),
('per.einarsson_8@kth.se'),
('johan.olsson_9@kth.se'),
('johanna.ek_10@kth.se'),
('birgitta.skoglund_11@kth.se'),
('martin.gustafsson_12@kth.se'),
('barbro.strand_13@kth.se'),
('mariana.johansson_14@kth.se'),
('michael.persson_15@kth.se'),
('marianne.hellberg_16@kth.se'),
('stefan.holmström_17@kth.se'),
('marie.andersson_18@kth.se'),
('magdalena.claesson_19@kth.se'),
('emma.nilsson_20@kth.se'),
('erika.eriksson_21@kth.se'),
('stefan.tran_22@kth.se'),
('petra.göransson_23@kth.se'),
('agneta.nyberg_24@kth.se'),
('åsa.eriksson_25@kth.se'),
('george.singh_26@kth.se'),
('marie.andersson_27@kth.se'),
('kurt.andersson_28@kth.se'),
('maria.andersson_29@kth.se'),
('erik.marklund_30@kth.se'),
('marita.hellberg_31@kth.se'),
('vanja.khalil_32@kth.se'),
('jens.engström_33@kth.se'),
('dennis.larsson_34@kth.se'),
('emanuel.gustafsson_35@kth.se'),
('frida.lindahl_36@kth.se'),
('daniel.eriksson_37@kth.se'),
('maria.carlsson_38@kth.se'),
('joakim.osman_39@kth.se'),
('marie.lundberg_40@kth.se'),
('carl.norman_41@kth.se'),
('carl.nilsson_42@kth.se'),
('maria.khalil_43@kth.se'),
('markus.karlsson_44@kth.se'),
('helena.hansson_45@kth.se'),
('sten.wallgren_46@kth.se'),
('maria.lindqvist_47@kth.se'),
('molly.melander_48@kth.se'),
('margareta.johansson_49@kth.se'),
('holger.nilsson_50@kth.se'),
('sven.sundström_51@kth.se'),
('sven.hagberg_52@kth.se'),
('evelina.kvist_53@kth.se'),
('erik.haraldsson_54@kth.se'),
('eva.hedberg_55@kth.se'),
('ingegerd.sjöberg_56@kth.se'),
('natalie.johansson_57@kth.se'),
('ola.andersson_58@kth.se'),
('marie-louise.mattsson_59@kth.se'),
('maria.nordberg_60@kth.se'),
('per.johansson_61@kth.se'),
('anders.nord_62@kth.se'),
('lars.petersson_63@kth.se'),
('fanny.olsson_64@kth.se'),
('eva.karlsson_65@kth.se'),
('elisabeth.lindberg_66@kth.se'),
('erik.lundström_67@kth.se'),
('sune.ahmad_68@kth.se'),
('birgitta.wallén_69@kth.se'),
('ann-marie.pettersson_70@kth.se'),
('margaretha.gustafsson_71@kth.se'),
('per.karlsson_72@kth.se'),
('märta.johnsson_73@kth.se'),
('saga.andersson_74@kth.se'),
('anna.gustafsson_75@kth.se'),
('erik.johansson_76@kth.se'),
('mona.olsson_77@kth.se'),
('nils.larsson_78@kth.se'),
('neo.östlund_79@kth.se'),
('johan.westin_80@kth.se'),
('anna.lundin_81@kth.se'),
('elisabeth.nyman_82@kth.se'),
('dante.andersson_83@kth.se'),
('emanuel.johansson_84@kth.se'),
('artur.wennberg_85@kth.se'),
('mikael.norberg_86@kth.se'),
('viktor.jensen_87@kth.se'),
('fredrik.sundell_88@kth.se'),
('mari.jansson_89@kth.se'),
('christina.åström_90@kth.se'),
('max.pålsson_91@kth.se'),
('maria.johansson_92@kth.se'),
('astrid.nygren_93@kth.se'),
('olav.forsberg_94@kth.se'),
('christina.lund_95@kth.se'),
('tim.olsson_96@kth.se'),
('alexander.olsson_97@kth.se'),
('astrid.carlsson_98@kth.se'),
('rita.johansson_99@kth.se'),
('sally.karlsson_100@kth.se');
INSERT INTO person_phone (person_id, phone_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97),
(98, 98),
(99, 99),
(100, 100);
INSERT INTO person_email (person_id, email_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50),
(51, 51),
(52, 52),
(53, 53),
(54, 54),
(55, 55),
(56, 56),
(57, 57),
(58, 58),
(59, 59),
(60, 60),
(61, 61),
(62, 62),
(63, 63),
(64, 64),
(65, 65),
(66, 66),
(67, 67),
(68, 68),
(69, 69),
(70, 70),
(71, 71),
(72, 72),
(73, 73),
(74, 74),
(75, 75),
(76, 76),
(77, 77),
(78, 78),
(79, 79),
(80, 80),
(81, 81),
(82, 82),
(83, 83),
(84, 84),
(85, 85),
(86, 86),
(87, 87),
(88, 88),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(93, 93),
(94, 94),
(95, 95),
(96, 96),
(97, 97),
(98, 98),
(99, 99),
(100, 100);
INSERT INTO employee (person_id, job_title_id, supervisor_id, employment_id, department_id) VALUES
(1, 1, NULL, 'kth-0001', 4),
(2, 4, 1, 'kth-0002', 4),
(3, 4, 2, 'kth-0003', 1),
(4, 2, 1, 'kth-0004', 1),
(5, 6, 2, 'kth-0005', 3),
(6, 6, 1, 'kth-0006', 1),
(7, 1, 4, 'kth-0007', 1),
(8, 6, 6, 'kth-0008', 2),
(9, 6, 6, 'kth-0009', 3),
(10, 5, 8, 'kth-0010', 4),
(11, 5, 7, 'kth-0011', 5),
(12, 4, 7, 'kth-0012', 2),
(13, 2, 1, 'kth-0013', 2),
(14, 5, 10, 'kth-0014', 1),
(15, 3, 4, 'kth-0015', 5),
(16, 1, 1, 'kth-0016', 4),
(17, 3, 6, 'kth-0017', 3),
(18, 3, 5, 'kth-0018', 5),
(19, 4, 16, 'kth-0019', 1),
(20, 3, 6, 'kth-0020', 4),
(21, 5, 10, 'kth-0021', 3),
(22, 6, 10, 'kth-0022', 3),
(23, 1, 13, 'kth-0023', 2),
(24, 1, 20, 'kth-0024', 5),
(25, 6, 12, 'kth-0025', 2),
(26, 6, 23, 'kth-0026', 5),
(27, 4, 10, 'kth-0027', 4),
(28, 2, 12, 'kth-0028', 5),
(29, 1, 2, 'kth-0029', 4),
(30, 3, 22, 'kth-0030', 1),
(31, 6, 2, 'kth-0031', 2),
(32, 3, 13, 'kth-0032', 4),
(33, 6, 15, 'kth-0033', 4),
(34, 6, 14, 'kth-0034', 4),
(35, 1, 1, 'kth-0035', 5),
(36, 4, 24, 'kth-0036', 1),
(37, 5, 19, 'kth-0037', 3),
(38, 5, 10, 'kth-0038', 2),
(39, 2, 25, 'kth-0039', 4),
(40, 4, 25, 'kth-0040', 5),
(41, 6, 18, 'kth-0041', 4),
(42, 2, 7, 'kth-0042', 2),
(43, 1, 13, 'kth-0043', 4),
(44, 2, 31, 'kth-0044', 2),
(45, 1, 30, 'kth-0045', 5),
(46, 2, 3, 'kth-0046', 2),
(47, 6, 9, 'kth-0047', 3),
(48, 2, 3, 'kth-0048', 3),
(49, 6, 26, 'kth-0049', 5),
(50, 2, 7, 'kth-0050', 1),
(51, 6, 18, 'kth-0051', 5),
(52, 5, 45, 'kth-0052', 3),
(53, 1, 12, 'kth-0053', 1),
(54, 5, 25, 'kth-0054', 5),
(55, 1, 41, 'kth-0055', 2),
(56, 3, 2, 'kth-0056', 3),
(57, 5, 18, 'kth-0057', 3),
(58, 6, 53, 'kth-0058', 3),
(59, 6, 33, 'kth-0059', 3),
(60, 5, 22, 'kth-0060', 5),
(61, 2, 23, 'kth-0061', 3),
(62, 5, 17, 'kth-0062', 5),
(63, 5, 30, 'kth-0063', 2),
(64, 4, 50, 'kth-0064', 4),
(65, 1, 48, 'kth-0065', 1),
(66, 5, 55, 'kth-0066', 5),
(67, 4, 40, 'kth-0067', 4),
(68, 3, 37, 'kth-0068', 3),
(69, 4, 57, 'kth-0069', 1),
(70, 6, 35, 'kth-0070', 3),
(71, 4, 55, 'kth-0071', 2),
(72, 2, 60, 'kth-0072', 2),
(73, 1, 21, 'kth-0073', 4),
(74, 1, 16, 'kth-0074', 2),
(75, 3, 13, 'kth-0075', 1),
(76, 3, 65, 'kth-0076', 3),
(77, 4, 44, 'kth-0077', 4),
(78, 4, 16, 'kth-0078', 2),
(79, 3, 12, 'kth-0079', 5),
(80, 6, 8, 'kth-0080', 1),
(81, 1, 33, 'kth-0081', 4),
(82, 3, 41, 'kth-0082', 4),
(83, 6, 21, 'kth-0083', 4),
(84, 3, 57, 'kth-0084', 1),
(85, 5, 15, 'kth-0085', 2),
(86, 3, 62, 'kth-0086', 1),
(87, 3, 9, 'kth-0087', 4),
(88, 2, 68, 'kth-0088', 5),
(89, 1, 46, 'kth-0089', 1),
(90, 5, 73, 'kth-0090', 4),
(91, 5, 8, 'kth-0091', 5),
(92, 1, 28, 'kth-0092', 1),
(93, 4, 68, 'kth-0093', 5),
(94, 3, 65, 'kth-0094', 1),
(95, 5, 29, 'kth-0095', 5),
(96, 4, 82, 'kth-0096', 4),
(97, 4, 88, 'kth-0097', 5),
(98, 1, 6, 'kth-0098', 5),
(99, 6, 27, 'kth-0099', 3),
(100, 3, 32, 'kth-0100', 2);
INSERT INTO salary_history (employee_id, amount, valid_from) VALUES
(1, 64057, '2020-01-01'),
(2, 65341, '2020-01-01'),
(3, 41966, '2020-01-01'),
(4, 51915, '2020-01-01'),
(5, 40784, '2020-01-01'),
(6, 49937, '2020-01-01'),
(7, 40808, '2020-01-01'),
(8, 68749, '2020-01-01'),
(9, 80824, '2020-01-01'),
(10, 81033, '2020-01-01'),
(11, 53395, '2020-01-01'),
(12, 72116, '2020-01-01'),
(13, 68169, '2020-01-01'),
(14, 37434, '2020-01-01'),
(15, 65969, '2020-01-01'),
(16, 70187, '2020-01-01'),
(17, 82639, '2020-01-01'),
(18, 44567, '2020-01-01'),
(19, 81875, '2020-01-01'),
(20, 84200, '2020-01-01'),
(21, 68893, '2020-01-01'),
(22, 70424, '2020-01-01'),
(23, 67156, '2020-01-01'),
(24, 51322, '2020-01-01'),
(25, 67825, '2020-01-01'),
(26, 68755, '2020-01-01'),
(27, 41414, '2020-01-01'),
(28, 37909, '2020-01-01'),
(29, 78246, '2020-01-01'),
(30, 46383, '2020-01-01'),
(31, 41144, '2020-01-01'),
(32, 63591, '2020-01-01'),
(33, 62837, '2020-01-01'),
(34, 43536, '2020-01-01'),
(35, 72998, '2020-01-01'),
(36, 50537, '2020-01-01'),
(37, 50400, '2020-01-01'),
(38, 66601, '2020-01-01'),
(39, 43721, '2020-01-01'),
(40, 45108, '2020-01-01'),
(41, 41590, '2020-01-01'),
(42, 42579, '2020-01-01'),
(43, 64916, '2020-01-01'),
(44, 50121, '2020-01-01'),
(45, 70759, '2020-01-01'),
(46, 36981, '2020-01-01'),
(47, 68143, '2020-01-01'),
(48, 78763, '2020-01-01'),
(49, 57663, '2020-01-01'),
(50, 47271, '2020-01-01'),
(51, 63960, '2020-01-01'),
(52, 38775, '2020-01-01'),
(53, 42085, '2020-01-01'),
(54, 49691, '2020-01-01'),
(55, 56176, '2020-01-01'),
(56, 43868, '2020-01-01'),
(57, 75795, '2020-01-01'),
(58, 64214, '2020-01-01'),
(59, 41009, '2020-01-01'),
(60, 35544, '2020-01-01'),
(61, 62799, '2020-01-01'),
(62, 44008, '2020-01-01'),
(63, 41788, '2020-01-01'),
(64, 51816, '2020-01-01'),
(65, 59983, '2020-01-01'),
(66, 51845, '2020-01-01'),
(67, 52247, '2020-01-01'),
(68, 46883, '2020-01-01'),
(69, 80309, '2020-01-01'),
(70, 67772, '2020-01-01'),
(71, 41163, '2020-01-01'),
(72, 53817, '2020-01-01'),
(73, 74876, '2020-01-01'),
(74, 76985, '2020-01-01'),
(75, 49646, '2020-01-01'),
(76, 79081, '2020-01-01'),
(77, 50745, '2020-01-01'),
(78, 66625, '2020-01-01'),
(79, 56509, '2020-01-01'),
(80, 48199, '2020-01-01'),
(81, 63252, '2020-01-01'),
(82, 41283, '2020-01-01'),
(83, 45229, '2020-01-01'),
(84, 52149, '2020-01-01'),
(85, 49664, '2020-01-01'),
(86, 84856, '2020-01-01'),
(87, 78957, '2020-01-01'),
(88, 59605, '2020-01-01'),
(89, 62258, '2020-01-01'),
(90, 84404, '2020-01-01'),
(91, 56856, '2020-01-01'),
(92, 82177, '2020-01-01'),
(93, 72493, '2020-01-01'),
(94, 79206, '2020-01-01'),
(95, 43724, '2020-01-01'),
(96, 39076, '2020-01-01'),
(97, 77989, '2020-01-01'),
(98, 57405, '2020-01-01'),
(99, 62405, '2020-01-01'),
(100, 81280, '2020-01-01');
INSERT INTO employee_skill_set (employee_id, skill_set_id) VALUES
(1, 4),
(2, 1),
(3, 6),
(4, 4),
(5, 4),
(6, 7),
(7, 2),
(8, 7),
(9, 2),
(10, 1),
(11, 7),
(12, 5),
(13, 1),
(14, 6),
(15, 8),
(16, 6),
(17, 7),
(18, 7),
(19, 4),
(20, 2),
(21, 1),
(22, 3),
(23, 5),
(24, 7),
(25, 7),
(26, 3),
(27, 4),
(28, 3),
(29, 4),
(30, 3),
(31, 5),
(32, 5),
(33, 4),
(34, 8),
(35, 8),
(36, 8),
(37, 4),
(38, 6),
(39, 4),
(40, 7),
(41, 2),
(42, 3),
(43, 7),
(44, 5),
(45, 7),
(46, 1),
(47, 5),
(48, 1),
(49, 3),
(50, 3),
(51, 8),
(52, 2),
(53, 4),
(54, 5),
(55, 1),
(56, 3),
(57, 6),
(58, 8),
(59, 2),
(60, 3),
(61, 5),
(62, 5),
(63, 3),
(64, 2),
(65, 4),
(66, 3),
(67, 5),
(68, 3),
(69, 5),
(70, 2),
(71, 3),
(72, 6),
(73, 4),
(74, 3),
(75, 8),
(76, 2),
(77, 7),
(78, 8),
(79, 4),
(80, 8),
(81, 5),
(82, 6),
(83, 6),
(84, 2),
(85, 8),
(86, 2),
(87, 6),
(88, 1),
(89, 2),
(90, 7),
(91, 6),
(92, 3),
(93, 7),
(94, 8),
(95, 5),
(96, 5),
(97, 5),
(98, 3),
(99, 4),
(100, 5);
INSERT INTO employee_interest (employee_id, interest_id) VALUES
(1, 4),
(2, 2),
(3, 6),
(4, 3),
(5, 5),
(6, 2),
(7, 6),
(8, 4),
(9, 1),
(10, 6),
(11, 2),
(12, 5),
(13, 3),
(14, 1),
(15, 6),
(16, 5),
(17, 1),
(18, 4),
(19, 2),
(20, 5),
(21, 3),
(22, 6),
(23, 2),
(24, 5),
(25, 6),
(26, 5),
(27, 6),
(28, 2),
(29, 4),
(30, 1),
(31, 1),
(32, 3),
(33, 3),
(34, 5),
(35, 1),
(36, 3),
(37, 1),
(38, 5),
(39, 2),
(40, 3),
(41, 6),
(42, 2),
(43, 4),
(44, 2),
(45, 6),
(46, 6),
(47, 5),
(48, 5),
(49, 6),
(50, 6),
(51, 3),
(52, 3),
(53, 1),
(54, 2),
(55, 5),
(56, 3),
(57, 6),
(58, 5),
(59, 1),
(60, 3),
(61, 2),
(62, 3),
(63, 1),
(64, 5),
(65, 2),
(66, 5),
(67, 5),
(68, 1),
(69, 6),
(70, 3),
(71, 4),
(72, 3),
(73, 5),
(74, 2),
(75, 6),
(76, 4),
(77, 4),
(78, 2),
(79, 1),
(80, 4),
(81, 6),
(82, 3),
(83, 2),
(84, 4),
(85, 5),
(86, 3),
(87, 1),
(88, 2),
(89, 1),
(90, 3),
(91, 2),
(92, 4),
(93, 6),
(94, 4),
(95, 1),
(96, 5),
(97, 3),
(98, 4),
(99, 1),
(100, 5);
UPDATE department SET manager_id = 1 WHERE id = 1;
UPDATE department SET manager_id = 2 WHERE id = 2;
UPDATE department SET manager_id = 3 WHERE id = 3;
UPDATE department SET manager_id = 4 WHERE id = 4;
UPDATE department SET manager_id = 5 WHERE id = 5;
INSERT INTO course (course_code, course_name) VALUES
('DD1337', 'Programming'),
('ID1018', 'Programming I'),
('IV1350', 'Object Oriented Design'),
('DD2420', 'Probabilistic Graphical Models'),
('DD1420', 'Foundations of Machine Learning'),
('SF1624', 'Algebra and Geometry'),
('SF1625', 'Calculus in One Variable'),
('DH2642', 'Interaction Programming and the Dynamic Web'),
('DD2350', 'Algorithms, Data Structures and Complexity'),
('II1305', 'Project Management in IT'),
('DD2434', 'Machine Learning, Advanced Course'),
('ID1217', 'Concurrent Programming'),
('IV1013', 'Introduction to Computer Security'),
('IK1203', 'Networks and Communication'),
('SF1901', 'Probability Theory and Statistics'),
('ME1003', 'Industrial Management, Basic Course'),
('DA1600', 'Writing in the Engineering Profession'),
('DD2380', 'Artificial Intelligence'),
('IV1351', 'Data Storage Paradigms'),
('DH1620', 'Human-Computer Interaction, Introductory Course'),
('SD2125', 'Signals and Mechanical Structures'),
('SG1102', 'Mechanics I'),
('SK1120', 'Physics, General Course'),
('BB1050', 'Biotechnology');
INSERT INTO course_layout (course_id, min_students, max_students, hp, valid_from) VALUES
(1, 10, 200, 7.5, '2020-01-01'),
(2, 10, 200, 7.5, '2020-01-01'),
(3, 10, 200, 7.5, '2020-01-01'),
(4, 10, 200, 7.5, '2020-01-01'),
(5, 10, 200, 7.5, '2020-01-01'),
(6, 10, 200, 7.5, '2020-01-01'),
(7, 10, 200, 7.5, '2020-01-01'),
(8, 10, 200, 7.5, '2020-01-01'),
(9, 10, 200, 9.0, '2020-01-01'),
(10, 10, 200, 7.5, '2020-01-01'),
(11, 10, 200, 7.5, '2020-01-01'),
(12, 10, 200, 7.5, '2020-01-01'),
(13, 10, 200, 7.5, '2020-01-01'),
(14, 10, 200, 7.5, '2020-01-01'),
(15, 10, 200, 6.0, '2020-01-01'),
(16, 10, 200, 6.0, '2020-01-01'),
(17, 10, 200, 3.0, '2020-01-01'),
(18, 10, 200, 6.0, '2020-01-01'),
(19, 10, 200, 7.5, '2020-01-01'),
(20, 10, 200, 6.0, '2020-01-01'),
(21, 10, 200, 7.5, '2020-01-01'),
(22, 10, 200, 6.0, '2020-01-01'),
(23, 10, 200, 9.0, '2020-01-01'),
(24, 10, 200, 7.5, '2020-01-01');
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 58, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(1, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 1, 15),
(3, 1, 16),
(7, 1, 40),
(6, 1, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(1, 1, 15),
(42, 2, 16),
(5, 3, 40),
(1, 4, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 176, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(2, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 2, 29),
(2, 2, 28),
(7, 2, 60),
(6, 2, 38);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(1, 5, 29),
(100, 6, 28),
(1, 7, 60),
(1, 8, 38);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 38, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(3, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 3, 15),
(3, 3, 16),
(4, 3, 17),
(7, 3, 59),
(6, 3, 67);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(1, 9, 15),
(70, 10, 16),
(22, 11, 17),
(1, 12, 59),
(1, 13, 67);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 134, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(4, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 4, 25),
(2, 4, 47),
(4, 4, 14),
(7, 4, 26),
(6, 4, 47);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(1, 14, 25),
(14, 15, 47),
(98, 16, 14),
(1, 17, 26),
(1, 18, 47);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 53, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(5, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 5, 24),
(3, 5, 14),
(5, 5, 18),
(7, 5, 44),
(6, 5, 43);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(19, 19, 24),
(54, 20, 14),
(14, 21, 18),
(19, 22, 44),
(19, 23, 43);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 168, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(6, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 6, 29),
(3, 6, 13),
(7, 6, 41),
(6, 6, 48);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(96, 24, 29),
(48, 25, 13),
(75, 26, 41),
(75, 27, 48);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 180, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(7, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 7, 19),
(2, 7, 29),
(7, 7, 46),
(6, 7, 41);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(5, 28, 19),
(67, 29, 29),
(5, 30, 46),
(5, 31, 41);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 146, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(8, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 8, 21),
(3, 8, 18),
(4, 8, 17),
(7, 8, 30),
(6, 8, 39);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(13, 32, 21),
(31, 33, 18),
(85, 34, 17),
(13, 35, 30),
(13, 36, 39);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 168, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(9, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 9, 20),
(3, 9, 15),
(4, 9, 13),
(7, 9, 43),
(6, 9, 73);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(50, 37, 20),
(90, 38, 15),
(79, 39, 13),
(61, 40, 43),
(50, 41, 73);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 163, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(10, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 10, 20),
(3, 10, 20),
(4, 10, 20),
(7, 10, 50),
(6, 10, 64);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(5, 42, 20),
(39, 43, 20),
(64, 44, 20),
(91, 45, 50),
(91, 46, 64);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 88, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(11, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 11, 25),
(3, 11, 19),
(7, 11, 23),
(6, 11, 74);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(26, 47, 25),
(95, 48, 19),
(26, 49, 23),
(26, 50, 74);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 175, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(12, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 12, 29),
(3, 12, 13),
(5, 12, 19),
(7, 12, 31),
(6, 12, 73);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(15, 51, 29),
(29, 52, 13),
(21, 53, 19),
(39, 54, 31),
(82, 55, 73);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(6, 108, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(13, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 13, 13),
(3, 13, 13),
(7, 13, 20),
(6, 13, 63);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(86, 56, 13),
(72, 57, 13),
(86, 58, 20),
(86, 59, 63);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 123, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(14, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 14, 20),
(3, 14, 13),
(7, 14, 59),
(6, 14, 67);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(22, 60, 20),
(6, 61, 13),
(22, 62, 59),
(22, 63, 67);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 137, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(15, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 15, 13),
(2, 15, 20),
(5, 15, 15),
(7, 15, 59),
(6, 15, 54);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(87, 64, 13),
(63, 65, 20),
(22, 66, 15),
(44, 67, 59),
(87, 68, 54);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 43, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(16, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 16, 18),
(2, 16, 28),
(7, 16, 25),
(6, 16, 50);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(61, 69, 18),
(8, 70, 28),
(61, 71, 25),
(61, 72, 50);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 155, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(17, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 17, 25),
(2, 17, 45),
(7, 17, 48),
(6, 17, 49);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(3, 73, 25),
(54, 74, 45),
(3, 75, 48),
(3, 76, 49);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 82, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(18, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 18, 14),
(2, 18, 57),
(4, 18, 11),
(7, 18, 29),
(6, 18, 75);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(23, 77, 14),
(24, 78, 57),
(91, 79, 11),
(23, 80, 29),
(23, 81, 75);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 58, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(19, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 19, 25),
(3, 19, 11),
(7, 19, 51),
(6, 19, 59);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(97, 82, 25),
(52, 83, 11),
(97, 84, 51),
(97, 85, 59);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 115, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(20, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 20, 15),
(3, 20, 10),
(7, 20, 23),
(6, 20, 65);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(54, 86, 15),
(69, 87, 10),
(89, 88, 23),
(54, 89, 65);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 105, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(21, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 21, 24),
(3, 21, 14),
(7, 21, 41),
(6, 21, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(23, 90, 24),
(69, 91, 14),
(23, 92, 41),
(23, 93, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 107, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(22, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 22, 19),
(3, 22, 16),
(4, 22, 17),
(7, 22, 23),
(6, 22, 68);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(72, 94, 19),
(9, 95, 16),
(42, 96, 17),
(72, 97, 23),
(72, 98, 68);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 178, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(23, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 23, 23),
(2, 23, 32),
(4, 23, 19),
(7, 23, 23),
(6, 23, 52);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(56, 99, 23),
(46, 100, 32),
(7, 101, 19),
(56, 102, 23),
(56, 103, 52);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 176, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(24, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 24, 29),
(2, 24, 39),
(4, 24, 18),
(7, 24, 59),
(6, 24, 48);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(30, 104, 29),
(98, 105, 39),
(96, 106, 18),
(30, 107, 59),
(91, 108, 48);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 114, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(25, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 25, 28),
(2, 25, 40),
(7, 25, 41),
(6, 25, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(31, 109, 28),
(96, 110, 40),
(34, 111, 41),
(95, 112, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 107, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(26, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 26, 16),
(3, 26, 17),
(5, 26, 14),
(7, 26, 54),
(6, 26, 47);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(99, 113, 16),
(59, 114, 17),
(77, 115, 14),
(99, 116, 54),
(99, 117, 47);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 98, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(27, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 27, 20),
(3, 27, 17),
(5, 27, 17),
(7, 27, 34),
(6, 27, 57);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(37, 118, 20),
(85, 119, 17),
(9, 120, 17),
(37, 121, 34),
(37, 122, 57);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 92, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(28, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 28, 21),
(2, 28, 42),
(7, 28, 60),
(6, 28, 74);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(35, 123, 21),
(19, 124, 42),
(11, 125, 60),
(11, 126, 74);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 172, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(29, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 29, 17),
(3, 29, 20),
(7, 29, 24),
(6, 29, 44);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(95, 127, 17),
(60, 128, 20),
(95, 129, 24),
(95, 130, 44);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 153, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(30, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 30, 25),
(3, 30, 15),
(7, 30, 54),
(6, 30, 79);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(92, 131, 25),
(28, 132, 15),
(42, 133, 54),
(92, 134, 79);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 103, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(31, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 31, 25),
(2, 31, 45),
(4, 31, 15),
(7, 31, 23),
(6, 31, 55);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(60, 135, 25),
(3, 136, 45),
(15, 137, 15),
(60, 138, 23),
(60, 139, 55);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 85, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(32, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 32, 26),
(3, 32, 14),
(7, 32, 39),
(6, 32, 74);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(18, 140, 26),
(82, 141, 14),
(18, 142, 39),
(18, 143, 74);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 170, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(33, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 33, 15),
(3, 33, 15),
(4, 33, 13),
(7, 33, 47),
(6, 33, 42);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(38, 144, 15),
(5, 145, 15),
(16, 146, 13),
(38, 147, 47),
(38, 148, 42);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 143, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(34, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 34, 26),
(3, 34, 12),
(4, 34, 18),
(5, 34, 14),
(7, 34, 58),
(6, 34, 43);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(43, 149, 26),
(79, 150, 12),
(2, 151, 18),
(42, 152, 14),
(43, 153, 58),
(82, 154, 43);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 115, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(35, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 35, 19),
(3, 35, 20),
(4, 35, 16),
(7, 35, 31),
(6, 35, 78);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(71, 155, 19),
(72, 156, 20),
(51, 157, 16),
(71, 158, 31),
(71, 159, 78);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(6, 127, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(36, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 36, 24),
(3, 36, 17),
(4, 36, 10),
(7, 36, 56),
(6, 36, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(45, 160, 24),
(3, 161, 17),
(83, 162, 10),
(45, 163, 56),
(45, 164, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 101, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(37, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 37, 16),
(3, 37, 17),
(7, 37, 45),
(6, 37, 60);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(55, 165, 16),
(3, 166, 17),
(55, 167, 45),
(55, 168, 60);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 151, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(38, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 38, 10),
(3, 38, 10),
(7, 38, 47),
(6, 38, 59);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(5, 169, 10),
(80, 170, 10),
(5, 171, 47),
(5, 172, 59);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 123, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(39, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 39, 11),
(2, 39, 20),
(7, 39, 33),
(6, 39, 48);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(53, 173, 11),
(95, 174, 20),
(53, 175, 33),
(53, 176, 48);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 33, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(40, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 40, 30),
(2, 40, 51),
(5, 40, 10),
(7, 40, 24),
(6, 40, 40);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(50, 177, 30),
(58, 178, 51),
(88, 179, 10),
(50, 180, 24),
(7, 181, 40);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 135, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(41, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 41, 30),
(3, 41, 15),
(5, 41, 12),
(7, 41, 24),
(6, 41, 77);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(97, 182, 30),
(48, 183, 15),
(83, 184, 12),
(97, 185, 24),
(44, 186, 77);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 70, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(42, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 42, 14),
(3, 42, 15),
(4, 42, 16),
(7, 42, 29),
(6, 42, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(26, 187, 14),
(45, 188, 15),
(64, 189, 16),
(26, 190, 29),
(26, 191, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 102, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(43, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 43, 21),
(3, 43, 18),
(7, 43, 49),
(6, 43, 71);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(23, 192, 21),
(47, 193, 18),
(23, 194, 49),
(61, 195, 71);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 117, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(44, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 44, 12),
(3, 44, 12),
(4, 44, 18),
(5, 44, 13),
(7, 44, 60),
(6, 44, 65);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(20, 196, 12),
(15, 197, 12),
(67, 198, 18),
(84, 199, 13),
(24, 200, 60),
(20, 201, 65);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 38, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(45, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 45, 23),
(2, 45, 31),
(7, 45, 44),
(6, 45, 55);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(80, 202, 23),
(78, 203, 31),
(80, 204, 44),
(80, 205, 55);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 163, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(46, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 46, 10),
(3, 46, 18),
(7, 46, 35),
(6, 46, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(55, 206, 10),
(47, 207, 18),
(55, 208, 35),
(55, 209, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 97, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(47, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 47, 21),
(2, 47, 34),
(4, 47, 13),
(7, 47, 23),
(6, 47, 73);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(38, 210, 21),
(25, 211, 34),
(69, 212, 13),
(38, 213, 23),
(38, 214, 73);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 102, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(48, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 48, 20),
(3, 48, 18),
(7, 48, 38),
(6, 48, 63);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(78, 215, 20),
(93, 216, 18),
(78, 217, 38),
(78, 218, 63);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 167, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(49, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 49, 27),
(3, 49, 17),
(4, 49, 14),
(7, 49, 48),
(6, 49, 54);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(58, 219, 27),
(26, 220, 17),
(6, 221, 14),
(58, 222, 48),
(58, 223, 54);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 120, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(50, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 50, 20),
(3, 50, 16),
(4, 50, 11),
(5, 50, 16),
(7, 50, 41),
(6, 50, 70);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(22, 224, 20),
(17, 225, 16),
(74, 226, 11),
(33, 227, 16),
(22, 228, 41),
(22, 229, 70);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 158, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(51, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 51, 17),
(3, 51, 12),
(7, 51, 41),
(6, 51, 65);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(98, 230, 17),
(31, 231, 12),
(11, 232, 41),
(98, 233, 65);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 63, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(52, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 52, 16),
(2, 52, 24),
(4, 52, 20),
(7, 52, 30),
(6, 52, 35);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(55, 234, 16),
(4, 235, 24),
(56, 236, 20),
(55, 237, 30),
(55, 238, 35);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 102, '2023');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(53, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 53, 18),
(3, 53, 14),
(7, 53, 51),
(6, 53, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(63, 239, 18),
(40, 240, 14),
(63, 241, 51),
(63, 242, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 124, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(54, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 54, 23),
(2, 54, 36),
(7, 54, 46),
(6, 54, 50);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(44, 243, 23),
(17, 244, 36),
(44, 245, 46),
(44, 246, 50);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(16, 140, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(55, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 55, 20),
(3, 55, 10),
(7, 55, 57),
(6, 55, 34);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(5, 247, 20),
(55, 248, 10),
(65, 249, 57),
(87, 250, 34);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 124, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(56, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 56, 13),
(3, 56, 17),
(7, 56, 45),
(6, 56, 79);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(23, 251, 13),
(36, 252, 17),
(23, 253, 45),
(23, 254, 79);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 109, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(57, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 57, 15),
(2, 57, 46),
(4, 57, 13),
(7, 57, 27),
(6, 57, 51);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(41, 255, 15),
(99, 256, 46),
(97, 257, 13),
(41, 258, 27),
(41, 259, 51);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 152, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(58, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 58, 12),
(3, 58, 12),
(5, 58, 10),
(7, 58, 55),
(6, 58, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(78, 260, 12),
(27, 261, 12),
(93, 262, 10),
(78, 263, 55),
(78, 264, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 81, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(59, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 59, 28),
(3, 59, 18),
(4, 59, 12),
(7, 59, 37),
(6, 59, 69);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(40, 265, 28),
(32, 266, 18),
(70, 267, 12),
(40, 268, 37),
(40, 269, 69);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 68, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(60, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 60, 11),
(3, 60, 18),
(4, 60, 18),
(7, 60, 46),
(6, 60, 49);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(35, 270, 11),
(45, 271, 18),
(30, 272, 18),
(35, 273, 46),
(35, 274, 49);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 157, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(61, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 61, 13),
(3, 61, 17),
(7, 61, 56),
(6, 61, 34);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(87, 275, 13),
(93, 276, 17),
(87, 277, 56),
(87, 278, 34);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 164, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(62, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 62, 22),
(3, 62, 11),
(4, 62, 17),
(7, 62, 34),
(6, 62, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(80, 279, 22),
(92, 280, 11),
(41, 281, 17),
(80, 282, 34),
(80, 283, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 68, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(63, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 63, 23),
(2, 63, 31),
(4, 63, 15),
(7, 63, 35),
(6, 63, 52);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(99, 284, 23),
(51, 285, 31),
(19, 286, 15),
(99, 287, 35),
(99, 288, 52);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 120, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(64, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 64, 16),
(3, 64, 16),
(7, 64, 35),
(6, 64, 77);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(13, 289, 16),
(79, 290, 16),
(13, 291, 35),
(13, 292, 77);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 170, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(65, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 65, 20),
(3, 65, 14),
(4, 65, 14),
(7, 65, 55),
(6, 65, 30);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(61, 293, 20),
(31, 294, 14),
(84, 295, 14),
(61, 296, 55),
(95, 297, 30);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 101, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(66, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 66, 18),
(2, 66, 30),
(4, 66, 20),
(7, 66, 26),
(6, 66, 59);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(72, 298, 18),
(68, 299, 30),
(13, 300, 20),
(72, 301, 26),
(72, 302, 59);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 111, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(67, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 67, 15),
(3, 67, 17),
(4, 67, 11),
(7, 67, 36),
(6, 67, 79);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(38, 303, 15),
(44, 304, 17),
(60, 305, 11),
(38, 306, 36),
(38, 307, 79);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 96, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(68, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 68, 27),
(3, 68, 13),
(4, 68, 18),
(7, 68, 23),
(6, 68, 52);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(81, 308, 27),
(77, 309, 13),
(9, 310, 18),
(81, 311, 23),
(81, 312, 52);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 94, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(69, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 69, 13),
(2, 69, 21),
(4, 69, 12),
(7, 69, 42),
(6, 69, 77);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(77, 313, 13),
(28, 314, 21),
(77, 315, 12),
(77, 316, 42),
(77, 317, 77);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 82, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(70, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 70, 18),
(2, 70, 33),
(7, 70, 48),
(6, 70, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(64, 318, 18),
(62, 319, 33),
(64, 320, 48),
(64, 321, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 85, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(71, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 71, 14),
(3, 71, 16),
(4, 71, 12),
(7, 71, 40),
(6, 71, 61);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(41, 322, 14),
(25, 323, 16),
(63, 324, 12),
(41, 325, 40),
(41, 326, 61);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 152, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(72, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 72, 29),
(3, 72, 20),
(7, 72, 44),
(6, 72, 63);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(11, 327, 29),
(57, 328, 20),
(11, 329, 44),
(11, 330, 63);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 115, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(73, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 73, 27),
(3, 73, 17),
(7, 73, 60),
(6, 73, 56);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(1, 331, 27),
(13, 332, 17),
(39, 333, 60),
(39, 334, 56);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 110, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(74, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 74, 13),
(3, 74, 15),
(7, 74, 40),
(6, 74, 61);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(56, 335, 13),
(15, 336, 15),
(56, 337, 40),
(56, 338, 61);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 131, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(75, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 75, 24),
(2, 75, 56),
(4, 75, 12),
(5, 75, 11),
(7, 75, 27),
(6, 75, 35);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(20, 339, 24),
(2, 340, 56),
(46, 341, 12),
(15, 342, 11),
(20, 343, 27),
(20, 344, 35);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 170, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(76, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 76, 20),
(2, 76, 48),
(4, 76, 15),
(7, 76, 42),
(6, 76, 76);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(73, 345, 20),
(3, 346, 48),
(39, 347, 15),
(73, 348, 42),
(73, 349, 76);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 119, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(77, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 77, 28),
(3, 77, 12),
(4, 77, 17),
(7, 77, 30),
(6, 77, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(23, 350, 28),
(75, 351, 12),
(23, 352, 17),
(23, 353, 30),
(23, 354, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 33, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(78, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 78, 26),
(3, 78, 19),
(4, 78, 15),
(5, 78, 14),
(7, 78, 29),
(6, 78, 70);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(36, 355, 26),
(38, 356, 19),
(55, 357, 15),
(17, 358, 14),
(57, 359, 29),
(36, 360, 70);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 168, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(79, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 79, 29),
(2, 79, 25),
(5, 79, 15),
(7, 79, 46),
(6, 79, 62);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(36, 361, 29),
(82, 362, 25),
(48, 363, 15),
(36, 364, 46),
(36, 365, 62);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 61, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(80, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 80, 11),
(2, 80, 36),
(4, 80, 10),
(7, 80, 42),
(6, 80, 33);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(19, 366, 11),
(52, 367, 36),
(77, 368, 10),
(67, 369, 42),
(67, 370, 33);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 160, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(81, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 81, 21),
(3, 81, 14),
(7, 81, 51),
(6, 81, 49);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(86, 371, 21),
(40, 372, 14),
(86, 373, 51),
(86, 374, 49);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 50, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(82, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 82, 21),
(3, 82, 12),
(4, 82, 20),
(5, 82, 19),
(7, 82, 54),
(6, 82, 35);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(27, 375, 21),
(28, 376, 12),
(57, 377, 20),
(20, 378, 19),
(27, 379, 54),
(81, 380, 35);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 80, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(83, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 83, 24),
(2, 83, 23),
(4, 83, 18),
(7, 83, 41),
(6, 83, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(96, 381, 24),
(79, 382, 23),
(82, 383, 18),
(95, 384, 41),
(95, 385, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 111, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(84, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 84, 10),
(2, 84, 55),
(4, 84, 14),
(7, 84, 50),
(6, 84, 77);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(85, 386, 10),
(64, 387, 55),
(2, 388, 14),
(85, 389, 50),
(85, 390, 77);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 81, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(85, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 85, 10),
(3, 85, 19),
(7, 85, 45),
(6, 85, 68);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(18, 391, 10),
(59, 392, 19),
(18, 393, 45),
(18, 394, 68);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 69, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(86, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 86, 21),
(3, 86, 10),
(7, 86, 58),
(6, 86, 44);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(10, 395, 21),
(87, 396, 10),
(10, 397, 58),
(10, 398, 44);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 68, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(87, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 87, 16),
(3, 87, 14),
(4, 87, 11),
(7, 87, 57),
(6, 87, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(58, 399, 16),
(63, 400, 14),
(20, 401, 11),
(58, 402, 57),
(58, 403, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 162, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(88, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 88, 12),
(3, 88, 12),
(7, 88, 51),
(6, 88, 71);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(27, 404, 12),
(30, 405, 12),
(27, 406, 51),
(27, 407, 71);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 109, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(89, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 89, 21),
(2, 89, 43),
(4, 89, 12),
(7, 89, 59),
(6, 89, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(43, 408, 21),
(17, 409, 43),
(52, 410, 12),
(77, 411, 59),
(43, 412, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 143, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(90, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 90, 30),
(2, 90, 30),
(4, 90, 10),
(7, 90, 51),
(6, 90, 40);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(22, 413, 30),
(39, 414, 30),
(52, 415, 10),
(22, 416, 51),
(42, 417, 40);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 92, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(91, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 91, 22),
(3, 91, 18),
(4, 91, 11),
(5, 91, 12),
(7, 91, 52),
(6, 91, 41);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(1, 418, 22),
(96, 419, 18),
(20, 420, 11),
(70, 421, 12),
(44, 422, 52),
(44, 423, 41);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 107, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(92, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 92, 29),
(3, 92, 17),
(4, 92, 13),
(7, 92, 56),
(6, 92, 53);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(8, 424, 29),
(100, 425, 17),
(82, 426, 13),
(8, 427, 56),
(8, 428, 53);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 103, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(93, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 93, 11),
(3, 93, 16),
(4, 93, 11),
(7, 93, 51),
(6, 93, 53);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(80, 429, 11),
(84, 430, 16),
(31, 431, 11),
(80, 432, 51),
(80, 433, 53);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 58, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(94, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 94, 20),
(2, 94, 37),
(4, 94, 11),
(7, 94, 26),
(6, 94, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(61, 434, 20),
(85, 435, 37),
(20, 436, 11),
(26, 437, 26),
(26, 438, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 49, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(95, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 95, 30),
(3, 95, 15),
(7, 95, 34),
(6, 95, 32);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(77, 439, 30),
(31, 440, 15),
(77, 441, 34),
(77, 442, 32);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 66, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(96, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 96, 20),
(3, 96, 18),
(5, 96, 20),
(7, 96, 58),
(6, 96, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(96, 443, 20),
(88, 444, 18),
(11, 445, 20),
(96, 446, 58),
(96, 447, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 175, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(97, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 97, 29),
(3, 97, 11),
(7, 97, 39),
(6, 97, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(31, 448, 29),
(43, 449, 11),
(31, 450, 39),
(31, 451, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 114, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(98, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 98, 21),
(3, 98, 12),
(4, 98, 10),
(7, 98, 35),
(6, 98, 61);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(54, 452, 21),
(45, 453, 12),
(75, 454, 10),
(54, 455, 35),
(62, 456, 61);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 146, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(99, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 99, 21),
(3, 99, 15),
(7, 99, 31),
(6, 99, 33);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(96, 457, 21),
(34, 458, 15),
(96, 459, 31),
(96, 460, 33);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 100, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(100, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 100, 19),
(3, 100, 12),
(7, 100, 30),
(6, 100, 65);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(45, 461, 19),
(82, 462, 12),
(45, 463, 30),
(45, 464, 65);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(6, 49, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(101, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 101, 14),
(3, 101, 20),
(4, 101, 17),
(7, 101, 21),
(6, 101, 30);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(67, 465, 14),
(31, 466, 20),
(14, 467, 17),
(67, 468, 21),
(67, 469, 30);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 137, '2024');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(102, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 102, 25),
(3, 102, 18),
(4, 102, 20),
(7, 102, 38),
(6, 102, 39);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(10, 470, 25),
(86, 471, 18),
(91, 472, 20),
(10, 473, 38),
(10, 474, 39);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 65, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(103, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 103, 26),
(2, 103, 21),
(7, 103, 29),
(6, 103, 31);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(88, 475, 26),
(46, 476, 21),
(88, 477, 29),
(88, 478, 31);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 89, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(104, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 104, 18),
(2, 104, 40),
(4, 104, 19),
(7, 104, 26),
(6, 104, 77);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(47, 479, 18),
(73, 480, 40),
(44, 481, 19),
(47, 482, 26),
(47, 483, 77);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 40, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(105, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 105, 24),
(3, 105, 11),
(7, 105, 25),
(6, 105, 69);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(97, 484, 24),
(67, 485, 11),
(97, 486, 25),
(97, 487, 69);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 110, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(106, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 106, 22),
(2, 106, 43),
(7, 106, 45),
(6, 106, 50);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(42, 488, 22),
(17, 489, 43),
(42, 490, 45),
(42, 491, 50);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 119, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(107, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 107, 15),
(2, 107, 21),
(7, 107, 41),
(6, 107, 32);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(44, 492, 15),
(52, 493, 21),
(44, 494, 41),
(44, 495, 32);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 67, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(108, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 108, 20),
(3, 108, 20),
(4, 108, 20),
(7, 108, 36),
(6, 108, 44);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(94, 496, 20),
(11, 497, 20),
(45, 498, 20),
(79, 499, 36),
(79, 500, 44);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 55, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(109, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 109, 22),
(3, 109, 11),
(7, 109, 35),
(6, 109, 52);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(24, 501, 22),
(16, 502, 11),
(24, 503, 35),
(24, 504, 52);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 30, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(110, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 110, 12),
(3, 110, 20),
(5, 110, 11),
(7, 110, 52),
(6, 110, 31);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(46, 505, 12),
(8, 506, 20),
(73, 507, 11),
(38, 508, 52),
(38, 509, 31);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 156, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(111, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 111, 26),
(3, 111, 10),
(7, 111, 60),
(6, 111, 41);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(39, 510, 26),
(59, 511, 10),
(39, 512, 60),
(39, 513, 41);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 116, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(112, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 112, 27),
(3, 112, 19),
(4, 112, 13),
(7, 112, 33),
(6, 112, 38);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(66, 514, 27),
(89, 515, 19),
(91, 516, 13),
(66, 517, 33),
(66, 518, 38);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 120, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(113, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 113, 11),
(3, 113, 14),
(4, 113, 20),
(7, 113, 54),
(6, 113, 63);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(36, 519, 11),
(73, 520, 14),
(17, 521, 20),
(36, 522, 54),
(36, 523, 63);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 81, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(114, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 114, 26),
(2, 114, 51),
(7, 114, 23),
(6, 114, 52);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(5, 524, 26),
(2, 525, 51),
(5, 526, 23),
(5, 527, 52);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(3, 32, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(115, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 115, 19),
(3, 115, 11),
(4, 115, 18),
(7, 115, 43),
(6, 115, 75);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(15, 528, 19),
(69, 529, 11),
(58, 530, 18),
(15, 531, 43),
(15, 532, 75);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 114, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(116, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 116, 13),
(3, 116, 15),
(7, 116, 32),
(6, 116, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(79, 533, 13),
(30, 534, 15),
(79, 535, 32),
(79, 536, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(16, 166, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(117, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 117, 24),
(3, 117, 20),
(5, 117, 10),
(7, 117, 32),
(6, 117, 38);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(57, 537, 24),
(66, 538, 20),
(3, 539, 10),
(57, 540, 32),
(57, 541, 38);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 30, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(118, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 118, 14),
(3, 118, 11),
(7, 118, 44),
(6, 118, 66);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(13, 542, 14),
(76, 543, 11),
(15, 544, 44),
(13, 545, 66);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 47, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(119, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 119, 10),
(3, 119, 20),
(7, 119, 23),
(6, 119, 59);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(83, 546, 10),
(5, 547, 20),
(83, 548, 23),
(83, 549, 59);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 173, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(120, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 120, 21),
(3, 120, 13),
(7, 120, 34),
(6, 120, 44);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(79, 550, 21),
(12, 551, 13),
(79, 552, 34),
(79, 553, 44);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 71, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(121, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 121, 24),
(2, 121, 56),
(7, 121, 27),
(6, 121, 41);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(10, 554, 24),
(32, 555, 56),
(10, 556, 27),
(10, 557, 41);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 59, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(122, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 122, 18),
(3, 122, 14),
(7, 122, 55),
(6, 122, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(82, 558, 18),
(39, 559, 14),
(82, 560, 55),
(82, 561, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 93, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(123, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 123, 26),
(3, 123, 13),
(4, 123, 12),
(7, 123, 28),
(6, 123, 78);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(8, 562, 26),
(55, 563, 13),
(23, 564, 12),
(8, 565, 28),
(8, 566, 78);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 89, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(124, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 124, 27),
(2, 124, 37),
(7, 124, 56),
(6, 124, 38);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(48, 567, 27),
(1, 568, 37),
(48, 569, 56),
(48, 570, 38);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 51, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(125, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 125, 19),
(3, 125, 15),
(4, 125, 10),
(5, 125, 19),
(7, 125, 50),
(6, 125, 80);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(28, 571, 19),
(79, 572, 15),
(76, 573, 10),
(51, 574, 19),
(28, 575, 50),
(28, 576, 80);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 96, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(126, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 126, 10),
(3, 126, 12),
(5, 126, 10),
(7, 126, 44),
(6, 126, 50);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(41, 577, 10),
(77, 578, 12),
(5, 579, 10),
(41, 580, 44),
(41, 581, 50);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 130, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(127, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 127, 22),
(3, 127, 20),
(4, 127, 19),
(7, 127, 47),
(6, 127, 56);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(7, 582, 22),
(90, 583, 20),
(52, 584, 19),
(7, 585, 47),
(7, 586, 56);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 113, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(128, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 128, 10),
(2, 128, 30),
(7, 128, 52),
(6, 128, 52);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(96, 587, 10),
(80, 588, 30),
(96, 589, 52),
(96, 590, 52);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 159, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(129, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 129, 21),
(2, 129, 59),
(7, 129, 44),
(6, 129, 38);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(76, 591, 21),
(91, 592, 59),
(76, 593, 44),
(76, 594, 38);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 80, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(130, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 130, 14),
(3, 130, 16),
(7, 130, 59),
(6, 130, 55);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(77, 595, 14),
(24, 596, 16),
(77, 597, 59),
(77, 598, 55);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 171, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(131, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 131, 13),
(2, 131, 39),
(4, 131, 10),
(7, 131, 50),
(6, 131, 44);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(68, 599, 13),
(53, 600, 39),
(36, 601, 10),
(68, 602, 50),
(68, 603, 44);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(16, 87, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(132, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 132, 30),
(3, 132, 12),
(7, 132, 47),
(6, 132, 46);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(11, 604, 30),
(52, 605, 12),
(11, 606, 47),
(27, 607, 46);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 79, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(133, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 133, 14),
(3, 133, 18),
(4, 133, 16),
(7, 133, 60),
(6, 133, 53);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(84, 608, 14),
(14, 609, 18),
(20, 610, 16),
(84, 611, 60),
(84, 612, 53);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 106, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(134, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 134, 12),
(2, 134, 32),
(7, 134, 57),
(6, 134, 73);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(75, 613, 12),
(8, 614, 32),
(75, 615, 57),
(75, 616, 73);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 69, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(135, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 135, 21),
(3, 135, 18),
(7, 135, 56),
(6, 135, 30);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(11, 617, 21),
(92, 618, 18),
(11, 619, 56),
(11, 620, 30);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 57, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(136, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 136, 14),
(3, 136, 12),
(4, 136, 15),
(7, 136, 45),
(6, 136, 46);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(28, 621, 14),
(63, 622, 12),
(24, 623, 15),
(28, 624, 45),
(28, 625, 46);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 61, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(137, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 137, 27),
(2, 137, 57),
(4, 137, 17),
(7, 137, 23),
(6, 137, 74);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(24, 626, 27),
(37, 627, 57),
(97, 628, 17),
(24, 629, 23),
(24, 630, 74);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 179, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(138, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 138, 29),
(3, 138, 14),
(4, 138, 18),
(7, 138, 51),
(6, 138, 75);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(27, 631, 29),
(91, 632, 14),
(13, 633, 18),
(27, 634, 51),
(27, 635, 75);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 138, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(139, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 139, 25),
(2, 139, 54),
(7, 139, 38),
(6, 139, 68);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(2, 636, 25),
(52, 637, 54),
(73, 638, 38),
(73, 639, 68);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 165, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(140, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 140, 11),
(3, 140, 12),
(5, 140, 19),
(7, 140, 30),
(6, 140, 49);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(15, 640, 11),
(9, 641, 12),
(59, 642, 19),
(15, 643, 30),
(15, 644, 49);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 77, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(141, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 141, 20),
(2, 141, 44),
(7, 141, 44),
(6, 141, 41);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(55, 645, 20),
(58, 646, 44),
(55, 647, 44),
(55, 648, 41);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(16, 135, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(142, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 142, 27),
(3, 142, 19),
(4, 142, 17),
(7, 142, 54),
(6, 142, 40);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(22, 649, 27),
(75, 650, 19),
(29, 651, 17),
(22, 652, 54),
(22, 653, 40);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 135, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(143, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 143, 24),
(3, 143, 18),
(4, 143, 14),
(7, 143, 55),
(6, 143, 77);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(95, 654, 24),
(48, 655, 18),
(12, 656, 14),
(95, 657, 55),
(95, 658, 77);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 154, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(144, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 144, 23),
(3, 144, 19),
(4, 144, 12),
(7, 144, 60),
(6, 144, 65);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(61, 659, 23),
(48, 660, 19),
(3, 661, 12),
(61, 662, 60),
(61, 663, 65);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 35, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(145, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 145, 22),
(3, 145, 19),
(4, 145, 12),
(7, 145, 24),
(6, 145, 50);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(2, 664, 22),
(47, 665, 19),
(57, 666, 12),
(2, 667, 24),
(2, 668, 50);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 120, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(146, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 146, 24),
(3, 146, 15),
(7, 146, 48),
(6, 146, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(17, 669, 24),
(95, 670, 15),
(17, 671, 48),
(64, 672, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 121, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(147, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 147, 13),
(3, 147, 20),
(4, 147, 20),
(7, 147, 58),
(6, 147, 58);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(61, 673, 13),
(24, 674, 20),
(31, 675, 20),
(61, 676, 58),
(61, 677, 58);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 113, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(148, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 148, 24),
(2, 148, 60),
(4, 148, 15),
(7, 148, 47),
(6, 148, 56);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(88, 678, 24),
(64, 679, 60),
(33, 680, 15),
(88, 681, 47),
(88, 682, 56);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 91, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(149, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 149, 28),
(3, 149, 16),
(4, 149, 15),
(5, 149, 13),
(7, 149, 20),
(6, 149, 61);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(94, 683, 28),
(61, 684, 16),
(32, 685, 15),
(89, 686, 13),
(94, 687, 20),
(94, 688, 61);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 36, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(150, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 150, 11),
(2, 150, 32),
(7, 150, 28),
(6, 150, 34);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(13, 689, 11),
(89, 690, 32),
(35, 691, 28),
(13, 692, 34);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(16, 57, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(151, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 151, 25),
(3, 151, 14),
(7, 151, 54),
(6, 151, 43);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(15, 693, 25),
(63, 694, 14),
(15, 695, 54),
(15, 696, 43);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 95, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(152, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 152, 23),
(3, 152, 13),
(4, 152, 19),
(5, 152, 11),
(7, 152, 21),
(6, 152, 36);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(92, 697, 23),
(63, 698, 13),
(4, 699, 19),
(3, 700, 11),
(92, 701, 21),
(92, 702, 36);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(6, 159, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(153, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 153, 27),
(3, 153, 12),
(5, 153, 10),
(7, 153, 45),
(6, 153, 57);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(99, 703, 27),
(17, 704, 12),
(51, 705, 10),
(99, 706, 45),
(99, 707, 57);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 126, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(154, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 154, 22),
(2, 154, 54),
(4, 154, 18),
(7, 154, 29),
(6, 154, 73);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(31, 708, 22),
(74, 709, 54),
(95, 710, 18),
(31, 711, 29),
(31, 712, 73);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 148, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(155, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 155, 15),
(3, 155, 20),
(7, 155, 24),
(6, 155, 54);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(19, 713, 15),
(48, 714, 20),
(19, 715, 24),
(19, 716, 54);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 165, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(156, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 156, 18),
(3, 156, 18),
(7, 156, 59),
(6, 156, 78);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(86, 717, 18),
(51, 718, 18),
(86, 719, 59),
(86, 720, 78);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(3, 42, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(157, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 157, 12),
(3, 157, 17),
(4, 157, 17),
(5, 157, 17),
(7, 157, 57),
(6, 157, 49);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(100, 721, 12),
(58, 722, 17),
(52, 723, 17),
(39, 724, 17),
(74, 725, 57),
(74, 726, 49);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 122, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(158, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 158, 23),
(3, 158, 18),
(4, 158, 15),
(7, 158, 41),
(6, 158, 68);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(55, 727, 23),
(70, 728, 18),
(3, 729, 15),
(55, 730, 41),
(55, 731, 68);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 142, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(159, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 159, 16),
(3, 159, 17),
(4, 159, 19),
(7, 159, 40),
(6, 159, 39);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(34, 732, 16),
(35, 733, 17),
(31, 734, 19),
(34, 735, 40),
(34, 736, 39);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 94, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(160, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 160, 14),
(2, 160, 33),
(5, 160, 15),
(7, 160, 26),
(6, 160, 63);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(63, 737, 14),
(90, 738, 33),
(86, 739, 15),
(63, 740, 26),
(63, 741, 63);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 120, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(161, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 161, 30),
(3, 161, 17),
(7, 161, 28),
(6, 161, 40);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(20, 742, 30),
(84, 743, 17),
(20, 744, 28),
(20, 745, 40);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 64, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(162, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 162, 16),
(3, 162, 14),
(7, 162, 59),
(6, 162, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(63, 746, 16),
(22, 747, 14),
(63, 748, 59),
(63, 749, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 34, '2025');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(163, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 163, 27),
(3, 163, 12),
(5, 163, 17),
(7, 163, 23),
(6, 163, 68);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(85, 750, 27),
(5, 751, 12),
(31, 752, 17),
(85, 753, 23),
(85, 754, 68);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 87, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(164, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 164, 16),
(2, 164, 31),
(7, 164, 20),
(6, 164, 60);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(13, 755, 16),
(37, 756, 31),
(13, 757, 20),
(13, 758, 60);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 42, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(165, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 165, 12),
(2, 165, 30),
(7, 165, 36),
(6, 165, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(41, 759, 12),
(48, 760, 30),
(41, 761, 36),
(41, 762, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 58, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(166, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 166, 14),
(3, 166, 18),
(4, 166, 12),
(7, 166, 54),
(6, 166, 58);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(27, 763, 14),
(96, 764, 18),
(97, 765, 12),
(27, 766, 54),
(27, 767, 58);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 156, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(167, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 167, 21),
(3, 167, 14),
(4, 167, 20),
(7, 167, 34),
(6, 167, 70);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(25, 768, 21),
(99, 769, 14),
(52, 770, 20),
(24, 771, 34),
(24, 772, 70);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 169, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(168, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 168, 10),
(3, 168, 16),
(4, 168, 15),
(5, 168, 10),
(7, 168, 45),
(6, 168, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(69, 773, 10),
(62, 774, 16),
(80, 775, 15),
(14, 776, 10),
(69, 777, 45),
(69, 778, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 179, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(169, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 169, 26),
(3, 169, 17),
(7, 169, 26),
(6, 169, 65);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(7, 779, 26),
(62, 780, 17),
(7, 781, 26),
(7, 782, 65);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 65, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(170, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 170, 25),
(3, 170, 10),
(7, 170, 33),
(6, 170, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(63, 783, 25),
(67, 784, 10),
(63, 785, 33),
(63, 786, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 58, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(171, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 171, 15),
(3, 171, 15),
(4, 171, 14),
(7, 171, 52),
(6, 171, 35);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(57, 787, 15),
(18, 788, 15),
(57, 789, 14),
(57, 790, 52),
(57, 791, 35);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 134, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(172, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 172, 19),
(3, 172, 12),
(4, 172, 13),
(7, 172, 23),
(6, 172, 49);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(52, 792, 19),
(79, 793, 12),
(30, 794, 13),
(18, 795, 23),
(93, 796, 49);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 34, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(173, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 173, 23),
(2, 173, 32),
(4, 173, 17),
(7, 173, 22),
(6, 173, 77);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(22, 797, 23),
(85, 798, 32),
(62, 799, 17),
(22, 800, 22),
(22, 801, 77);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 39, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(174, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 174, 25),
(3, 174, 19),
(4, 174, 10),
(7, 174, 36),
(6, 174, 53);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(71, 802, 25),
(55, 803, 19),
(33, 804, 10),
(71, 805, 36),
(71, 806, 53);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 75, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(175, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 175, 30),
(3, 175, 14),
(7, 175, 26),
(6, 175, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(43, 807, 30),
(72, 808, 14),
(43, 809, 26),
(43, 810, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 177, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(176, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 176, 16),
(3, 176, 12),
(4, 176, 12),
(7, 176, 57),
(6, 176, 39);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(71, 811, 16),
(62, 812, 12),
(50, 813, 12),
(71, 814, 57),
(71, 815, 39);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 163, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(177, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 177, 29),
(2, 177, 27),
(7, 177, 59),
(6, 177, 53);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(66, 816, 29),
(3, 817, 27),
(66, 818, 59),
(66, 819, 53);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 141, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(178, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 178, 27),
(3, 178, 13),
(4, 178, 13),
(7, 178, 33),
(6, 178, 77);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(21, 820, 27),
(53, 821, 13),
(14, 822, 13),
(21, 823, 33),
(21, 824, 77);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(3, 165, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(179, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 179, 26),
(3, 179, 12),
(4, 179, 17),
(7, 179, 34),
(6, 179, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(24, 825, 26),
(67, 826, 12),
(52, 827, 17),
(24, 828, 34),
(24, 829, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 46, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(180, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 180, 26),
(3, 180, 19),
(4, 180, 16),
(7, 180, 50),
(6, 180, 63);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(40, 830, 26),
(14, 831, 19),
(73, 832, 16),
(40, 833, 50),
(40, 834, 63);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 109, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(181, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 181, 16),
(3, 181, 17),
(4, 181, 13),
(7, 181, 34),
(6, 181, 74);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(56, 835, 16),
(56, 836, 17),
(69, 837, 13),
(56, 838, 34),
(56, 839, 74);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 92, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(182, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 182, 28),
(3, 182, 12),
(4, 182, 20),
(7, 182, 38),
(6, 182, 64);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(12, 840, 28),
(42, 841, 12),
(90, 842, 20),
(12, 843, 38),
(12, 844, 64);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 58, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(183, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 183, 30),
(2, 183, 48),
(4, 183, 13),
(5, 183, 17),
(7, 183, 37),
(6, 183, 31);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(44, 845, 30),
(50, 846, 48),
(77, 847, 13),
(96, 848, 17),
(84, 849, 37),
(44, 850, 31);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 90, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(184, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 184, 18),
(3, 184, 16),
(4, 184, 19),
(7, 184, 41),
(6, 184, 33);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(94, 851, 18),
(60, 852, 16),
(1, 853, 19),
(94, 854, 41),
(94, 855, 33);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 124, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(185, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 185, 22),
(3, 185, 16),
(7, 185, 34),
(6, 185, 80);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(60, 856, 22),
(11, 857, 16),
(60, 858, 34),
(60, 859, 80);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 103, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(186, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 186, 22),
(2, 186, 47),
(4, 186, 12),
(7, 186, 46),
(6, 186, 35);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(41, 860, 22),
(64, 861, 47),
(8, 862, 12),
(41, 863, 46),
(41, 864, 35);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 69, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(187, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 187, 12),
(3, 187, 14),
(4, 187, 14),
(7, 187, 33),
(6, 187, 42);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(84, 865, 12),
(23, 866, 14),
(27, 867, 14),
(84, 868, 33),
(84, 869, 42);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(16, 100, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(188, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 188, 29),
(3, 188, 14),
(7, 188, 44),
(6, 188, 42);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(8, 870, 29),
(49, 871, 14),
(88, 872, 44),
(88, 873, 42);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(6, 93, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(189, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 189, 26),
(3, 189, 20),
(4, 189, 20),
(5, 189, 14),
(7, 189, 56),
(6, 189, 59);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(29, 874, 26),
(6, 875, 20),
(26, 876, 20),
(25, 877, 14),
(29, 878, 56),
(98, 879, 59);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 79, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(190, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 190, 24),
(2, 190, 35),
(7, 190, 46),
(6, 190, 70);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(41, 880, 24),
(88, 881, 35),
(41, 882, 46),
(41, 883, 70);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 47, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(191, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 191, 29),
(3, 191, 12),
(7, 191, 53),
(6, 191, 73);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(15, 884, 29),
(13, 885, 12),
(15, 886, 53),
(15, 887, 73);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 87, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(192, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 192, 25),
(2, 192, 48),
(4, 192, 20),
(7, 192, 45),
(6, 192, 36);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(36, 888, 25),
(13, 889, 48),
(15, 890, 20),
(36, 891, 45),
(36, 892, 36);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 151, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(193, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 193, 29),
(3, 193, 13),
(4, 193, 12),
(7, 193, 27),
(6, 193, 69);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(1, 893, 29),
(62, 894, 13),
(71, 895, 12),
(1, 896, 27),
(1, 897, 69);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 173, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(194, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 194, 21),
(3, 194, 13),
(7, 194, 28),
(6, 194, 31);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(58, 898, 21),
(47, 899, 13),
(58, 900, 28),
(58, 901, 31);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 141, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(195, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 195, 29),
(3, 195, 11),
(4, 195, 19),
(7, 195, 57),
(6, 195, 39);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(20, 902, 29),
(55, 903, 11),
(25, 904, 19),
(20, 905, 57),
(20, 906, 39);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 105, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(196, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 196, 24),
(2, 196, 37),
(7, 196, 32),
(6, 196, 36);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(62, 907, 24),
(30, 908, 37),
(8, 909, 32),
(62, 910, 36);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 87, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(197, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 197, 23),
(3, 197, 14),
(7, 197, 60),
(6, 197, 78);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(89, 911, 23),
(84, 912, 14),
(89, 913, 60),
(89, 914, 78);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 166, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(198, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 198, 11),
(3, 198, 20),
(4, 198, 17),
(5, 198, 14),
(7, 198, 44),
(6, 198, 78);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(4, 915, 11),
(58, 916, 20),
(99, 917, 17),
(14, 918, 14),
(4, 919, 44),
(4, 920, 78);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 84, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(199, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 199, 22),
(3, 199, 15),
(5, 199, 10),
(7, 199, 31),
(6, 199, 43);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(58, 921, 22),
(39, 922, 15),
(35, 923, 10),
(58, 924, 31),
(58, 925, 43);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 126, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(200, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 200, 18),
(3, 200, 18),
(4, 200, 12),
(7, 200, 60),
(6, 200, 33);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(21, 926, 18),
(18, 927, 18),
(90, 928, 12),
(79, 929, 60),
(79, 930, 33);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 96, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(201, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 201, 30),
(3, 201, 16),
(4, 201, 17),
(7, 201, 33),
(6, 201, 54);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(11, 931, 30),
(18, 932, 16),
(49, 933, 17),
(11, 934, 33),
(11, 935, 54);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(3, 141, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(202, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 202, 18),
(3, 202, 19),
(7, 202, 31),
(6, 202, 76);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(35, 936, 18),
(89, 937, 19),
(35, 938, 31),
(35, 939, 76);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 36, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(203, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 203, 25),
(3, 203, 20),
(7, 203, 52),
(6, 203, 63);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(43, 940, 25),
(63, 941, 20),
(29, 942, 52),
(43, 943, 63);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 140, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(204, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 204, 28),
(3, 204, 20),
(4, 204, 14),
(7, 204, 57),
(6, 204, 69);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(21, 944, 28),
(38, 945, 20),
(22, 946, 14),
(21, 947, 57),
(21, 948, 69);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 161, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(205, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 205, 10),
(3, 205, 18),
(4, 205, 16),
(7, 205, 26),
(6, 205, 55);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(20, 949, 10),
(89, 950, 18),
(4, 951, 16),
(20, 952, 26),
(21, 953, 55);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 87, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(206, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 206, 25),
(2, 206, 60),
(7, 206, 54),
(6, 206, 36);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(34, 954, 25),
(56, 955, 60),
(34, 956, 54),
(34, 957, 36);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 58, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(207, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 207, 30),
(3, 207, 10),
(7, 207, 47),
(6, 207, 42);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(20, 958, 30),
(11, 959, 10),
(20, 960, 47),
(20, 961, 42);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 79, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(208, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 208, 17),
(3, 208, 16),
(5, 208, 12),
(7, 208, 25),
(6, 208, 65);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(46, 962, 17),
(23, 963, 16),
(1, 964, 12),
(46, 965, 25),
(46, 966, 65);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 82, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(209, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 209, 28),
(2, 209, 59),
(7, 209, 31),
(6, 209, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(67, 967, 28),
(30, 968, 59),
(67, 969, 31),
(67, 970, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 52, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(210, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 210, 10),
(3, 210, 18),
(7, 210, 29),
(6, 210, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(98, 971, 10),
(79, 972, 18),
(98, 973, 29),
(98, 974, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 59, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(211, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 211, 27),
(2, 211, 32),
(4, 211, 15),
(7, 211, 47),
(6, 211, 64);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(1, 975, 27),
(98, 976, 32),
(2, 977, 15),
(1, 978, 47),
(1, 979, 64);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 124, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(212, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 212, 24),
(2, 212, 56),
(4, 212, 18),
(7, 212, 28),
(6, 212, 50);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(78, 980, 24),
(83, 981, 56),
(78, 982, 18),
(78, 983, 28),
(78, 984, 50);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 94, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(213, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 213, 17),
(3, 213, 14),
(4, 213, 16),
(7, 213, 45),
(6, 213, 34);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(95, 985, 17),
(78, 986, 14),
(81, 987, 16),
(95, 988, 45),
(95, 989, 34);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 168, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(214, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 214, 21),
(3, 214, 20),
(5, 214, 20),
(7, 214, 25),
(6, 214, 64);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(73, 990, 21),
(44, 991, 20),
(59, 992, 20),
(73, 993, 25),
(73, 994, 64);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(16, 97, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(215, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 215, 14),
(3, 215, 15),
(7, 215, 22),
(6, 215, 31);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(60, 995, 14),
(56, 996, 15),
(60, 997, 22),
(60, 998, 31);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 102, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(216, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 216, 23),
(3, 216, 15),
(7, 216, 49),
(6, 216, 68);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(25, 999, 23),
(84, 1000, 15),
(25, 1001, 49),
(25, 1002, 68);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 70, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(217, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 217, 13),
(3, 217, 15),
(4, 217, 19),
(7, 217, 47),
(6, 217, 78);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(78, 1003, 13),
(86, 1004, 15),
(45, 1005, 19),
(78, 1006, 47),
(78, 1007, 78);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 160, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(218, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 218, 12),
(2, 218, 47),
(4, 218, 13),
(7, 218, 45),
(6, 218, 66);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(84, 1008, 12),
(24, 1009, 47),
(83, 1010, 13),
(84, 1011, 45),
(84, 1012, 66);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 47, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(219, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 219, 22),
(3, 219, 16),
(5, 219, 13),
(7, 219, 48),
(6, 219, 53);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(93, 1013, 22),
(97, 1014, 16),
(66, 1015, 13),
(93, 1016, 48),
(93, 1017, 53);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 76, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(220, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 220, 17),
(3, 220, 17),
(4, 220, 17),
(5, 220, 10),
(7, 220, 59),
(6, 220, 54);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(38, 1018, 17),
(19, 1019, 17),
(18, 1020, 17),
(58, 1021, 10),
(38, 1022, 59),
(38, 1023, 54);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(3, 150, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(221, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 221, 21),
(3, 221, 15),
(5, 221, 12),
(7, 221, 55),
(6, 221, 49);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(79, 1024, 21),
(32, 1025, 15),
(29, 1026, 12),
(79, 1027, 55),
(41, 1028, 49);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 75, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(222, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 222, 30),
(3, 222, 14),
(4, 222, 20),
(5, 222, 20),
(7, 222, 24),
(6, 222, 71);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(9, 1029, 30),
(27, 1030, 14),
(41, 1031, 20),
(44, 1032, 20),
(9, 1033, 24),
(9, 1034, 71);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(6, 49, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(223, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 223, 18),
(3, 223, 10),
(7, 223, 35),
(6, 223, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(47, 1035, 18),
(37, 1036, 10),
(79, 1037, 35),
(79, 1038, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 137, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(224, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 224, 19),
(2, 224, 55),
(7, 224, 53),
(6, 224, 41);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(16, 1039, 19),
(45, 1040, 55),
(20, 1041, 53),
(20, 1042, 41);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 74, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(225, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 225, 15),
(3, 225, 15),
(5, 225, 12),
(7, 225, 47),
(6, 225, 36);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(35, 1043, 15),
(45, 1044, 15),
(21, 1045, 12),
(35, 1046, 47),
(35, 1047, 36);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 153, '2026');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(226, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 226, 18),
(3, 226, 10),
(7, 226, 34),
(6, 226, 59);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(12, 1048, 18),
(66, 1049, 10),
(12, 1050, 34),
(12, 1051, 59);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 140, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(227, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 227, 10),
(3, 227, 16),
(4, 227, 19),
(7, 227, 60),
(6, 227, 54);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(63, 1052, 10),
(41, 1053, 16),
(3, 1054, 19),
(63, 1055, 60),
(63, 1056, 54);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 80, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(228, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 228, 16),
(3, 228, 10),
(4, 228, 19),
(7, 228, 28),
(6, 228, 42);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(38, 1057, 16),
(82, 1058, 10),
(3, 1059, 19),
(38, 1060, 28),
(38, 1061, 42);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 164, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(229, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 229, 11),
(2, 229, 22),
(4, 229, 12),
(7, 229, 52),
(6, 229, 71);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(31, 1062, 11),
(23, 1063, 22),
(18, 1064, 12),
(31, 1065, 52),
(31, 1066, 71);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 180, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(230, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 230, 28),
(3, 230, 19),
(4, 230, 12),
(7, 230, 36),
(6, 230, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(80, 1067, 28),
(64, 1068, 19),
(23, 1069, 12),
(80, 1070, 36),
(80, 1071, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(3, 164, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(231, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 231, 18),
(3, 231, 18),
(4, 231, 15),
(5, 231, 13),
(7, 231, 51),
(6, 231, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(18, 1072, 18),
(88, 1073, 18),
(13, 1074, 15),
(56, 1075, 13),
(19, 1076, 51),
(18, 1077, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 153, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(232, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 232, 21),
(2, 232, 58),
(4, 232, 10),
(5, 232, 19),
(7, 232, 45),
(6, 232, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(13, 1078, 21),
(54, 1079, 58),
(19, 1080, 10),
(44, 1081, 19),
(13, 1082, 45),
(13, 1083, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 113, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(233, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 233, 22),
(2, 233, 56),
(4, 233, 17),
(7, 233, 20),
(6, 233, 71);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(83, 1084, 22),
(45, 1085, 56),
(77, 1086, 17),
(83, 1087, 20),
(83, 1088, 71);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 91, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(234, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 234, 25),
(2, 234, 25),
(4, 234, 16),
(7, 234, 26),
(6, 234, 74);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(32, 1089, 25),
(44, 1090, 25),
(8, 1091, 16),
(32, 1092, 26),
(32, 1093, 74);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 146, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(235, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 235, 13),
(3, 235, 14),
(4, 235, 18),
(7, 235, 36),
(6, 235, 69);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(39, 1094, 13),
(10, 1095, 14),
(26, 1096, 18),
(39, 1097, 36),
(39, 1098, 69);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 165, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(236, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 236, 11),
(3, 236, 15),
(7, 236, 40),
(6, 236, 71);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(49, 1099, 11),
(72, 1100, 15),
(49, 1101, 40),
(46, 1102, 71);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 109, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(237, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 237, 18),
(3, 237, 10),
(4, 237, 19),
(7, 237, 47),
(6, 237, 47);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(83, 1103, 18),
(93, 1104, 10),
(1, 1105, 19),
(83, 1106, 47),
(83, 1107, 47);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 36, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(238, 'P1');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 238, 22),
(3, 238, 15),
(4, 238, 14),
(7, 238, 23),
(6, 238, 78);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(28, 1108, 22),
(41, 1109, 15),
(48, 1110, 14),
(28, 1111, 23),
(28, 1112, 78);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 41, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(239, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 239, 15),
(2, 239, 37),
(5, 239, 16),
(7, 239, 43),
(6, 239, 59);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(24, 1113, 15),
(65, 1114, 37),
(93, 1115, 16),
(45, 1116, 43),
(45, 1117, 59);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 98, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(240, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 240, 19),
(3, 240, 15),
(7, 240, 36),
(6, 240, 35);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(31, 1118, 19),
(23, 1119, 15),
(31, 1120, 36),
(31, 1121, 35);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(6, 151, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(241, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 241, 22),
(3, 241, 10),
(4, 241, 14),
(7, 241, 40),
(6, 241, 57);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(9, 1122, 22),
(36, 1123, 10),
(29, 1124, 14),
(9, 1125, 40),
(9, 1126, 57);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 57, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(242, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 242, 29),
(3, 242, 17),
(4, 242, 11),
(7, 242, 20),
(6, 242, 69);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(81, 1127, 29),
(65, 1128, 17),
(20, 1129, 11),
(81, 1130, 20),
(81, 1131, 69);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 62, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(243, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 243, 28),
(3, 243, 14),
(4, 243, 12),
(7, 243, 47),
(6, 243, 68);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(78, 1132, 28),
(80, 1133, 14),
(56, 1134, 12),
(78, 1135, 47),
(78, 1136, 68);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(3, 53, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(244, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 244, 26),
(3, 244, 17),
(7, 244, 40),
(6, 244, 58);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(61, 1137, 26),
(13, 1138, 17),
(61, 1139, 40),
(61, 1140, 58);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 46, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(245, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 245, 25),
(2, 245, 24),
(7, 245, 30),
(6, 245, 71);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(28, 1141, 25),
(7, 1142, 24),
(33, 1143, 30),
(28, 1144, 71);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 140, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(246, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 246, 25),
(3, 246, 13),
(7, 246, 36),
(6, 246, 74);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(91, 1145, 25),
(71, 1146, 13),
(91, 1147, 36),
(91, 1148, 74);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 161, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(247, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 247, 28),
(3, 247, 20),
(4, 247, 18),
(7, 247, 40),
(6, 247, 45);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(45, 1149, 28),
(66, 1150, 20),
(79, 1151, 18),
(45, 1152, 40),
(45, 1153, 45);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(20, 98, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(248, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 248, 21),
(3, 248, 12),
(7, 248, 40),
(6, 248, 32);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(36, 1154, 21),
(87, 1155, 12),
(36, 1156, 40),
(87, 1157, 32);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 128, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(249, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 249, 15),
(3, 249, 19),
(4, 249, 16),
(7, 249, 33),
(6, 249, 52);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(31, 1158, 15),
(38, 1159, 19),
(59, 1160, 16),
(31, 1161, 33),
(31, 1162, 52);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 142, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(250, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 250, 25),
(3, 250, 17),
(4, 250, 17),
(7, 250, 59),
(6, 250, 70);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(84, 1163, 25),
(52, 1164, 17),
(16, 1165, 17),
(84, 1166, 59),
(84, 1167, 70);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 137, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(251, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 251, 27),
(3, 251, 10),
(7, 251, 47),
(6, 251, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(32, 1168, 27),
(8, 1169, 10),
(32, 1170, 47),
(32, 1171, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(12, 104, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(252, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 252, 19),
(2, 252, 48),
(7, 252, 28),
(6, 252, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(68, 1172, 19),
(30, 1173, 48),
(3, 1174, 28),
(68, 1175, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 179, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(253, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 253, 23),
(3, 253, 11),
(7, 253, 22),
(6, 253, 67);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(89, 1176, 23),
(92, 1177, 11),
(89, 1178, 22),
(89, 1179, 67);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 81, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(254, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 254, 13),
(2, 254, 44),
(4, 254, 15),
(7, 254, 55),
(6, 254, 79);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(5, 1180, 13),
(71, 1181, 44),
(88, 1182, 15),
(28, 1183, 55),
(28, 1184, 79);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 109, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(255, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 255, 13),
(2, 255, 37),
(5, 255, 11),
(7, 255, 47),
(6, 255, 53);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(51, 1185, 13),
(95, 1186, 37),
(47, 1187, 11),
(28, 1188, 47),
(28, 1189, 53);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 80, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(256, 'P2');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 256, 17),
(2, 256, 22),
(7, 256, 50),
(6, 256, 49);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(86, 1190, 17),
(77, 1191, 22),
(86, 1192, 50),
(86, 1193, 49);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 43, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(257, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 257, 11),
(3, 257, 10),
(4, 257, 15),
(5, 257, 10),
(7, 257, 28),
(6, 257, 37);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(82, 1194, 11),
(19, 1195, 10),
(48, 1196, 15),
(86, 1197, 10),
(82, 1198, 28),
(82, 1199, 37);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(4, 74, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(258, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 258, 18),
(3, 258, 18),
(7, 258, 31),
(6, 258, 31);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(31, 1200, 18),
(78, 1201, 18),
(31, 1202, 31),
(31, 1203, 31);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 91, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(259, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 259, 11),
(3, 259, 20),
(4, 259, 20),
(7, 259, 50),
(6, 259, 31);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(42, 1204, 11),
(39, 1205, 20),
(94, 1206, 20),
(84, 1207, 50),
(42, 1208, 31);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 118, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(260, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 260, 19),
(3, 260, 11),
(4, 260, 12),
(5, 260, 15),
(7, 260, 35),
(6, 260, 62);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(80, 1209, 19),
(52, 1210, 11),
(95, 1211, 12),
(99, 1212, 15),
(80, 1213, 35),
(80, 1214, 62);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 30, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(261, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 261, 30),
(2, 261, 45),
(4, 261, 19),
(7, 261, 38),
(6, 261, 33);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(16, 1215, 30),
(67, 1216, 45),
(73, 1217, 19),
(16, 1218, 38),
(16, 1219, 33);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 146, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(262, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 262, 22),
(3, 262, 11),
(7, 262, 26),
(6, 262, 72);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(19, 1220, 22),
(8, 1221, 11),
(82, 1222, 26),
(19, 1223, 72);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(7, 120, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(263, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 263, 21),
(3, 263, 14),
(4, 263, 19),
(5, 263, 15),
(7, 263, 34),
(6, 263, 71);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(68, 1224, 21),
(81, 1225, 14),
(85, 1226, 19),
(66, 1227, 15),
(4, 1228, 34),
(4, 1229, 71);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(1, 57, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(264, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 264, 16),
(2, 264, 36),
(7, 264, 42),
(6, 264, 57);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(86, 1230, 16),
(21, 1231, 36),
(86, 1232, 42),
(86, 1233, 57);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(18, 45, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(265, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 265, 14),
(3, 265, 19),
(4, 265, 14),
(7, 265, 57),
(6, 265, 38);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(91, 1234, 14),
(8, 1235, 19),
(93, 1236, 14),
(91, 1237, 57),
(91, 1238, 38);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 126, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(266, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 266, 15),
(3, 266, 12),
(7, 266, 46),
(6, 266, 40);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(78, 1239, 15),
(66, 1240, 12),
(78, 1241, 46),
(78, 1242, 40);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(6, 107, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(267, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 267, 10),
(3, 267, 10),
(7, 267, 39),
(6, 267, 53);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(33, 1243, 10),
(41, 1244, 10),
(33, 1245, 39),
(33, 1246, 53);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(10, 78, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(268, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 268, 13),
(3, 268, 10),
(7, 268, 43),
(6, 268, 52);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(44, 1247, 13),
(22, 1248, 10),
(44, 1249, 43),
(44, 1250, 52);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(16, 145, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(269, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 269, 22),
(3, 269, 19),
(4, 269, 20),
(7, 269, 36),
(6, 269, 71);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(35, 1251, 22),
(10, 1252, 19),
(62, 1253, 20),
(29, 1254, 36),
(29, 1255, 71);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(14, 152, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(270, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 270, 24),
(3, 270, 15),
(7, 270, 46),
(6, 270, 60);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(74, 1256, 24),
(67, 1257, 15),
(74, 1258, 46),
(74, 1259, 60);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 176, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(271, 'P3');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 271, 23),
(2, 271, 56),
(7, 271, 41),
(6, 271, 36);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(36, 1260, 23),
(31, 1261, 56),
(36, 1262, 41),
(36, 1263, 36);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(17, 62, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(272, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 272, 24),
(3, 272, 12),
(4, 272, 14),
(7, 272, 51),
(6, 272, 51);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(20, 1264, 24),
(46, 1265, 12),
(33, 1266, 14),
(7, 1267, 51),
(7, 1268, 51);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(23, 102, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(273, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 273, 25),
(3, 273, 19),
(4, 273, 20),
(7, 273, 40),
(6, 273, 79);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(83, 1269, 25),
(63, 1270, 19),
(40, 1271, 20),
(83, 1272, 40),
(83, 1273, 79);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(6, 80, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(274, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 274, 20),
(3, 274, 18),
(4, 274, 11),
(5, 274, 12),
(7, 274, 20),
(6, 274, 31);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(16, 1274, 20),
(65, 1275, 18),
(48, 1276, 11),
(26, 1277, 12),
(16, 1278, 20),
(16, 1279, 31);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(8, 127, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(275, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 275, 29),
(2, 275, 60),
(5, 275, 12),
(7, 275, 29),
(6, 275, 64);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(20, 1280, 29),
(97, 1281, 60),
(78, 1282, 12),
(20, 1283, 29),
(20, 1284, 64);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(19, 91, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(276, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 276, 11),
(2, 276, 28),
(7, 276, 55),
(6, 276, 61);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(17, 1285, 11),
(72, 1286, 28),
(17, 1287, 55),
(17, 1288, 61);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(2, 93, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(277, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 277, 23),
(2, 277, 43),
(4, 277, 13),
(7, 277, 26),
(6, 277, 57);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(77, 1289, 23),
(59, 1290, 43),
(48, 1291, 13),
(77, 1292, 26),
(77, 1293, 57);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(24, 77, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(278, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 278, 26),
(3, 278, 15),
(7, 278, 52),
(6, 278, 57);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(38, 1294, 26),
(90, 1295, 15),
(38, 1296, 52),
(38, 1297, 57);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(9, 170, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(279, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 279, 16),
(2, 279, 41),
(4, 279, 10),
(7, 279, 37),
(6, 279, 53);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(38, 1298, 16),
(93, 1299, 41),
(28, 1300, 10),
(38, 1301, 37),
(38, 1302, 53);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(15, 103, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(280, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 280, 27),
(3, 280, 17),
(4, 280, 10),
(7, 280, 38),
(6, 280, 52);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(55, 1303, 27),
(44, 1304, 17),
(61, 1305, 10),
(55, 1306, 38),
(55, 1307, 52);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(22, 168, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(281, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 281, 21),
(3, 281, 19),
(5, 281, 16),
(7, 281, 25),
(6, 281, 74);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(71, 1308, 21),
(90, 1309, 19),
(13, 1310, 16),
(71, 1311, 25),
(71, 1312, 74);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(13, 131, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(282, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 282, 29),
(3, 282, 13),
(4, 282, 14),
(5, 282, 14),
(7, 282, 44),
(6, 282, 42);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(84, 1313, 29),
(58, 1314, 13),
(46, 1315, 14),
(36, 1316, 14),
(71, 1317, 44),
(84, 1318, 42);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(21, 41, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(283, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 283, 13),
(3, 283, 20),
(4, 283, 14),
(7, 283, 53),
(6, 283, 77);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(12, 1319, 13),
(68, 1320, 20),
(71, 1321, 14),
(53, 1322, 53),
(52, 1323, 77);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(5, 126, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(284, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 284, 25),
(3, 284, 15),
(7, 284, 49),
(6, 284, 43);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(7, 1324, 25),
(88, 1325, 15),
(7, 1326, 49),
(7, 1327, 43);
INSERT INTO course_instance (course_layout_id, num_students, study_year) VALUES
(11, 73, '2027');
INSERT INTO course_instance_period (course_instance_id, study_period) VALUES
(285, 'P4');
INSERT INTO planned_activity (teaching_activity_id, course_instance_id, planned_hours) VALUES
(1, 285, 25),
(3, 285, 19),
(7, 285, 25),
(6, 285, 38);
INSERT INTO allocated_activity (employee_id, planned_activity_id, allocated_hours) VALUES
(94, 1328, 25),
(15, 1329, 19),
(94, 1330, 25),
(94, 1331, 38);
