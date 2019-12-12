-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Dez-2019 às 01:57
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mysite`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add anime', 1, 'add_anime'),
(2, 'Can change anime', 1, 'change_anime'),
(3, 'Can delete anime', 1, 'delete_anime'),
(4, 'Can view anime', 1, 'view_anime'),
(5, 'Can add episodio', 2, 'add_episodio'),
(6, 'Can change episodio', 2, 'change_episodio'),
(7, 'Can delete episodio', 2, 'delete_episodio'),
(8, 'Can view episodio', 2, 'view_episodio'),
(9, 'Can add genero', 3, 'add_genero'),
(10, 'Can change genero', 3, 'change_genero'),
(11, 'Can delete genero', 3, 'delete_genero'),
(12, 'Can view genero', 3, 'view_genero'),
(13, 'Can add tag', 4, 'add_tag'),
(14, 'Can change tag', 4, 'change_tag'),
(15, 'Can delete tag', 4, 'delete_tag'),
(16, 'Can view tag', 4, 'view_tag'),
(17, 'Can add temporada', 5, 'add_temporada'),
(18, 'Can change temporada', 5, 'change_temporada'),
(19, 'Can delete temporada', 5, 'delete_temporada'),
(20, 'Can view temporada', 5, 'view_temporada'),
(21, 'Can add legenda', 6, 'add_legenda'),
(22, 'Can change legenda', 6, 'change_legenda'),
(23, 'Can delete legenda', 6, 'delete_legenda'),
(24, 'Can view legenda', 6, 'view_legenda'),
(25, 'Can add audio', 7, 'add_audio'),
(26, 'Can change audio', 7, 'change_audio'),
(27, 'Can delete audio', 7, 'delete_audio'),
(28, 'Can view audio', 7, 'view_audio'),
(29, 'Can add perfil', 8, 'add_perfil'),
(30, 'Can change perfil', 8, 'change_perfil'),
(31, 'Can delete perfil', 8, 'delete_perfil'),
(32, 'Can view perfil', 8, 'view_perfil'),
(33, 'Can add perfil anime', 9, 'add_perfilanime'),
(34, 'Can change perfil anime', 9, 'change_perfilanime'),
(35, 'Can delete perfil anime', 9, 'delete_perfilanime'),
(36, 'Can view perfil anime', 9, 'view_perfilanime'),
(37, 'Can add perfil episodio', 10, 'add_perfilepisodio'),
(38, 'Can change perfil episodio', 10, 'change_perfilepisodio'),
(39, 'Can delete perfil episodio', 10, 'delete_perfilepisodio'),
(40, 'Can view perfil episodio', 10, 'view_perfilepisodio'),
(41, 'Can add log entry', 11, 'add_logentry'),
(42, 'Can change log entry', 11, 'change_logentry'),
(43, 'Can delete log entry', 11, 'delete_logentry'),
(44, 'Can view log entry', 11, 'view_logentry'),
(45, 'Can add permission', 12, 'add_permission'),
(46, 'Can change permission', 12, 'change_permission'),
(47, 'Can delete permission', 12, 'delete_permission'),
(48, 'Can view permission', 12, 'view_permission'),
(49, 'Can add group', 13, 'add_group'),
(50, 'Can change group', 13, 'change_group'),
(51, 'Can delete group', 13, 'delete_group'),
(52, 'Can view group', 13, 'view_group'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add content type', 15, 'add_contenttype'),
(58, 'Can change content type', 15, 'change_contenttype'),
(59, 'Can delete content type', 15, 'delete_contenttype'),
(60, 'Can view content type', 15, 'view_contenttype'),
(61, 'Can add session', 16, 'add_session'),
(62, 'Can change session', 16, 'change_session'),
(63, 'Can delete session', 16, 'delete_session'),
(64, 'Can view session', 16, 'view_session');

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(11, 'admin', 'logentry'),
(13, 'auth', 'group'),
(12, 'auth', 'permission'),
(14, 'auth', 'user'),
(15, 'contenttypes', 'contenttype'),
(1, 'main', 'anime'),
(7, 'main', 'audio'),
(2, 'main', 'episodio'),
(3, 'main', 'genero'),
(6, 'main', 'legenda'),
(8, 'main', 'perfil'),
(9, 'main', 'perfilanime'),
(10, 'main', 'perfilepisodio'),
(4, 'main', 'tag'),
(5, 'main', 'temporada'),
(16, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-12-11 23:02:24.243196'),
(2, 'auth', '0001_initial', '2019-12-11 23:02:26.550879'),
(3, 'admin', '0001_initial', '2019-12-11 23:02:39.444665'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-12-11 23:02:43.276416'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-12-11 23:02:43.353160'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-12-11 23:02:45.089629'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-12-11 23:02:47.064759'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-12-11 23:02:47.238951'),
(9, 'auth', '0004_alter_user_username_opts', '2019-12-11 23:02:47.310134'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-12-11 23:02:48.328810'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-12-11 23:02:48.390138'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-12-11 23:02:48.522921'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-12-11 23:02:48.684256'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-12-11 23:02:48.945116'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-12-11 23:02:49.168963'),
(16, 'auth', '0011_update_proxy_permissions', '2019-12-11 23:02:49.245525'),
(17, 'main', '0001_initial', '2019-12-11 23:02:54.436025'),
(18, 'main', '0002_auto_20191104_2342', '2019-12-11 23:03:26.267115'),
(19, 'main', '0003_auto_20191114_1942', '2019-12-11 23:03:33.424413'),
(20, 'sessions', '0001_initial', '2019-12-11 23:03:46.761880'),
(21, 'main', '0004_auto_20191211_2026', '2019-12-11 23:26:40.094911');

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_anime`
--

CREATE TABLE `main_anime` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `avaliacao` int(11) NOT NULL,
  `sinopse` varchar(600) NOT NULL,
  `class_indicativa` int(11) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `visualizacoes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `main_anime`
--

INSERT INTO `main_anime` (`id`, `nome`, `avaliacao`, `sinopse`, `class_indicativa`, `imagem`, `visualizacoes`) VALUES
(3, 'Sword Art Online', 8, 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 16, 'saoimg', 0),
(4, 'Kimetsu No Yaiba', 9, 'Japão, era Taisho. Tanjiro, um bondoso jovem que ganha a vida vendendo carvão, descobre que sua família foi massacrada por um demônio. E pra piorar, Nezuko, sua irmã mais nova e única sobrevivente, também foi transformada num demônio. Arrasado com esta sombria realidade, Tanjiro decide se tornar um matador de demônios para fazer sua irmã voltar a ser humana, e para matar o demônio que matou sua família. Um triste conto sobre dois irmãos, onde os destinos dos humanos e dos demônios se entrelaçam, começa agora', 14, 'kimetsuimg', 0),
(5, 'Kimi no na Wa', 10, 'Mitsuha Miyamizu (Mone Kamishiraishi) é uma jovem que mora no interior do Japão e que deseja deixar sua pequena cidade para trás para tentar a sorte em Tóquio. Enquanto isso, Taki Tachibana (Ryûnosuke Kamiki), um jovem que trabalha em um restaurante italiano em Tóquio, deseja largar o seu emprego para tentar se tornar um arquiteto. Os dois não se conhecem, mas estão direta e misteriosamente conectados pelas imagens de seus sonhos.', 10, 'yournameimg', 0),
(6, 'Boku no Hero Academia', 10, 'É chegado o verão, e os heróis das Salas 1-A e 1-B estão se preparando para o acampamento de treino mais duro da vida deles! Um grupo de profissionais veteranos vai levar cada um dos Dons dos estudantes ao seu limite, e os jovens heróis terão que enfrentar um desafio avassalador atrás do outro! Mas vencer a força da natureza em seu acampamento secreto será o menor de seus problemas, quando o treino de rotina se transformar numa luta desesperada por sobrevivência.', 14, 'bnhimg', 0),
(7, 'Bokutachi wa Benkyou ga Dekinai', 10, 'Nariyuki Yuiga está em seu último e excruciante ano de colegial. Ele quer obter uma “recomendação especial VIP” que lhe conferirá uma bolsa integral na faculdade, e para isso ele precisa orientar suas colegas de sala em seus estudos para o vestibular. Duas de suas pupilas são Fumino Furuhashi, a “Bela Adormecida da floresta literária”, e Rizu Ogata, a “Polegarzinha computadorizada” – duas das mais belas e geniais garotas da escola! Mas embora todos as considerem academicamente impecáveis, Nariyuki logo descobre que elas são umas completas tapadas fora de suas especialidades!', 12, 'bokutachiimg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_anime_generos`
--

CREATE TABLE `main_anime_generos` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `genero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_anime_tags`
--

CREATE TABLE `main_anime_tags` (
  `id` int(11) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_audio`
--

CREATE TABLE `main_audio` (
  `id` int(11) NOT NULL,
  `lingua` varchar(200) NOT NULL,
  `episodio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_episodio`
--

CREATE TABLE `main_episodio` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `sinopse` varchar(2000) NOT NULL,
  `duracao` int(11) NOT NULL,
  `tipo` varchar(2) NOT NULL,
  `data_criacao` datetime(6) NOT NULL,
  `data_adicao` datetime(6) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `temporada_id` int(11) NOT NULL,
  `curtidas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `main_episodio`
--

INSERT INTO `main_episodio` (`id`, `numero`, `titulo`, `sinopse`, `duracao`, `tipo`, `data_criacao`, `data_adicao`, `imagem`, `temporada_id`, `curtidas`) VALUES
(5, 1, 'Episódio 1 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:10:32.000000', '2019-11-04 21:10:33.000000', 'saoimg', 4, 0),
(6, 2, 'Episódio 2 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:12:48.000000', '2019-11-04 21:12:50.000000', 'saoimg', 4, 0),
(7, 3, 'Episódio 3 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:13:21.000000', '2019-11-04 21:13:22.000000', 'saoimg', 4, 0),
(8, 4, 'Episódio 4 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:13:49.000000', '2019-11-04 21:13:50.000000', 'saoimg', 4, 0),
(9, 5, 'Episódio 5 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:14:23.000000', '2019-11-04 21:14:24.000000', 'saoimg', 4, 0),
(10, 6, 'Episódio 6 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:14:50.000000', '2019-11-04 21:14:51.000000', 'saoimg', 4, 0),
(11, 7, 'Episódio 7 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:15:18.000000', '2019-11-04 21:15:19.000000', 'saoimg', 4, 0),
(12, 8, 'Episódio 8 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:15:48.000000', '2019-11-04 21:15:49.000000', 'saoimg', 4, 0),
(13, 24, 'Episódio 9 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:16:12.000000', '2019-11-04 21:16:14.000000', 'saoimg', 4, 0),
(14, 24, 'Episódio 10 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:16:47.000000', '2019-11-04 21:16:48.000000', 'saoimg', 4, 0),
(15, 11, 'Episódio 11 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:17:13.000000', '2019-11-04 21:17:15.000000', 'saoimg', 4, 0),
(16, 12, 'Episódio 12 - Sword Art Online', 'Em um futuro próximo, foi lançado um Jogo de Realidade Virtual em Massa para Múltiplos Jogadores Online (VRMMORPG) chamado Sword Art Online, onde seus jogadores controlam seus personagens com o próprio corpo usando um dispositivo tecnológico chamado: NerveGear. Um dia, os jogadores descobrem que não podem sair do jogo, pois o criador do jogo os mantêm presos a menos que eles cheguem ao 100º andar da Torre e derrotem o Boss final. No entanto, se eles morrerem no jogo, morrerão também na vida real. A luta pela sobrevivência começa agora...', 24, 'N', '2019-11-04 21:17:47.000000', '2019-11-04 21:17:48.000000', 'saoimg', 4, 0),
(17, 1, 'Episódio 1 - Kimetsu no Yaiba', 'Japão, era Taisho. Tanjiro, um bondoso jovem que ganha a vida vendendo carvão, descobre que sua família foi massacrada por um demônio. E pra piorar, Nezuko, sua irmã mais nova e única sobrevivente, também foi transformada num demônio. Arrasado com esta sombria realidade, Tanjiro decide se tornar um matador de demônios para fazer sua irmã voltar a ser humana, e para matar o demônio que matou sua família. Um triste conto sobre dois irmãos, onde os destinos dos humanos e dos demônios se entrelaçam, começa agora', 24, 'N', '2019-11-06 00:56:10.000000', '2019-11-06 00:56:11.000000', 'kimetsuimg', 3, 0),
(18, 2, 'Episódio 2 - Kimetsu no Yaiba', 'Japão, era Taisho. Tanjiro, um bondoso jovem que ganha a vida vendendo carvão, descobre que sua família foi massacrada por um demônio. E pra piorar, Nezuko, sua irmã mais nova e única sobrevivente, também foi transformada num demônio. Arrasado com esta sombria realidade, Tanjiro decide se tornar um matador de demônios para fazer sua irmã voltar a ser humana, e para matar o demônio que matou sua família. Um triste conto sobre dois irmãos, onde os destinos dos humanos e dos demônios se entrelaçam, começa agora', 24, 'N', '2019-11-06 00:57:04.000000', '2019-11-06 00:57:05.000000', 'kimetsuimg', 3, 0),
(19, 3, 'Episódio 3 - Kimetsu no Yaiba', 'Japão, era Taisho. Tanjiro, um bondoso jovem que ganha a vida vendendo carvão, descobre que sua família foi massacrada por um demônio. E pra piorar, Nezuko, sua irmã mais nova e única sobrevivente, também foi transformada num demônio. Arrasado com esta sombria realidade, Tanjiro decide se tornar um matador de demônios para fazer sua irmã voltar a ser humana, e para matar o demônio que matou sua família. Um triste conto sobre dois irmãos, onde os destinos dos humanos e dos demônios se entrelaçam, começa agora', 24, 'N', '2019-11-06 00:57:43.000000', '2019-11-06 00:57:44.000000', 'kimetsuimg', 3, 0),
(20, 1, 'Kimi no na Wa', 'Mitsuha Miyamizu (Mone Kamishiraishi) é uma jovem que mora no interior do Japão e que deseja deixar sua pequena cidade para trás para tentar a sorte em Tóquio. Enquanto isso, Taki Tachibana (Ryûnosuke Kamiki), um jovem que trabalha em um restaurante italiano em Tóquio, deseja largar o seu emprego para tentar se tornar um arquiteto. Os dois não se conhecem, mas estão direta e misteriosamente conectados pelas imagens de seus sonhos.', 110, 'N', '2019-11-09 20:24:19.000000', '2019-11-09 20:24:21.000000', 'yournameimg', 5, 0),
(21, 1, 'Episódio 1 - Boku no Hero Academia', 'É chegado o verão, e os heróis das Salas 1-A e 1-B estão se preparando para o acampamento de treino mais duro da vida deles! Um grupo de profissionais veteranos vai levar cada um dos Dons dos estudantes ao seu limite, e os jovens heróis terão que enfrentar um desafio avassalador atrás do outro! Mas vencer a força da natureza em seu acampamento secreto será o menor de seus problemas, quando o treino de rotina se transformar numa luta desesperada por sobrevivência.', 24, 'N', '2019-11-09 21:47:54.000000', '2019-11-09 21:47:55.000000', 'bnhimg', 6, 0),
(22, 1, 'Episódio 1 - Bokutachi wa Benkyou ga Dekinai', 'Nariyuki Yuiga está em seu último e excruciante ano de colegial. Ele quer obter uma “recomendação especial VIP” que lhe conferirá uma bolsa integral na faculdade, e para isso ele precisa orientar suas colegas de sala em seus estudos para o vestibular. Duas de suas pupilas são Fumino Furuhashi, a “Bela Adormecida da floresta literária”, e Rizu Ogata, a “Polegarzinha computadorizada” – duas das mais belas e geniais garotas da escola! Mas embora todos as considerem academicamente impecáveis, Nariyuki logo descobre que elas são umas completas tapadas fora de suas especialidades!', 24, 'N', '2019-11-09 21:49:18.000000', '2019-11-09 21:49:20.000000', 'bokutachiimg', 7, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_episodio_tags`
--

CREATE TABLE `main_episodio_tags` (
  `id` int(11) NOT NULL,
  `episodio_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_genero`
--

CREATE TABLE `main_genero` (
  `id` int(11) NOT NULL,
  `tipo_genero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_legenda`
--

CREATE TABLE `main_legenda` (
  `id` int(11) NOT NULL,
  `lingua` varchar(200) NOT NULL,
  `caminho` varchar(200) NOT NULL,
  `episodio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_perfil`
--

CREATE TABLE `main_perfil` (
  `id` int(11) NOT NULL,
  `telefone` int(11) NOT NULL,
  `djangouser_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_perfilanime`
--

CREATE TABLE `main_perfilanime` (
  `id` int(11) NOT NULL,
  `momento` int(11) NOT NULL,
  `favorito` tinyint(1) NOT NULL,
  `notificacoes` tinyint(1) NOT NULL,
  `anime_id` int(11) NOT NULL,
  `episodio_id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_perfilepisodio`
--

CREATE TABLE `main_perfilepisodio` (
  `id` int(11) NOT NULL,
  `_curti` tinyint(1) NOT NULL,
  `_naogostei` tinyint(1) NOT NULL,
  `episodio_id` int(11) NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_tag`
--

CREATE TABLE `main_tag` (
  `id` int(11) NOT NULL,
  `tipo_tag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `main_temporada`
--

CREATE TABLE `main_temporada` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `anime_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `main_temporada`
--

INSERT INTO `main_temporada` (`id`, `numero`, `nome`, `anime_id`) VALUES
(3, 1, '1 Temporada', 4),
(4, 1, '1 Temporada', 3),
(5, 1, 'Kimi no na Wa', 5),
(6, 1, 'Boku no Hero Academia', 6),
(7, 1, 'Bokutachi wa Benkyou ga Dekinai', 7);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices para tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices para tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices para tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices para tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices para tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices para tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices para tabela `main_anime`
--
ALTER TABLE `main_anime`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_anime_generos`
--
ALTER TABLE `main_anime_generos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_anime_generos_anime_id_genero_id_2d54ba9f_uniq` (`anime_id`,`genero_id`),
  ADD KEY `main_anime_generos_genero_id_be05a623_fk_main_genero_id` (`genero_id`);

--
-- Índices para tabela `main_anime_tags`
--
ALTER TABLE `main_anime_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_anime_tags_anime_id_tag_id_65525e2c_uniq` (`anime_id`,`tag_id`),
  ADD KEY `main_anime_tags_tag_id_c8f06bd9_fk_main_tag_id` (`tag_id`);

--
-- Índices para tabela `main_audio`
--
ALTER TABLE `main_audio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_audio_episodio_id_03723b4b_fk_main_episodio_id` (`episodio_id`);

--
-- Índices para tabela `main_episodio`
--
ALTER TABLE `main_episodio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_episodio_temporada_id_c9455f47_fk_main_temporada_id` (`temporada_id`);

--
-- Índices para tabela `main_episodio_tags`
--
ALTER TABLE `main_episodio_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_episodio_tags_episodio_id_tag_id_c64509a1_uniq` (`episodio_id`,`tag_id`),
  ADD KEY `main_episodio_tags_tag_id_7bdfb5cc_fk_main_tag_id` (`tag_id`);

--
-- Índices para tabela `main_genero`
--
ALTER TABLE `main_genero`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_legenda`
--
ALTER TABLE `main_legenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_legenda_episodio_id_4c33cfef_fk_main_episodio_id` (`episodio_id`);

--
-- Índices para tabela `main_perfil`
--
ALTER TABLE `main_perfil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_perfil_djangouser_id_9a12f84b_fk_auth_user_id` (`djangouser_id`);

--
-- Índices para tabela `main_perfilanime`
--
ALTER TABLE `main_perfilanime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_perfilanime_anime_id_6c98ff16_fk_main_anime_id` (`anime_id`),
  ADD KEY `main_perfilanime_episodio_id_4239d04c_fk_main_episodio_id` (`episodio_id`),
  ADD KEY `main_perfilanime_perfil_id_3deeae33_fk_main_perfil_id` (`perfil_id`);

--
-- Índices para tabela `main_perfilepisodio`
--
ALTER TABLE `main_perfilepisodio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_perfilepisodio_episodio_id_41842ad9_fk_main_episodio_id` (`episodio_id`),
  ADD KEY `main_perfilepisodio_perfil_id_57a73b7b_fk_main_perfil_id` (`perfil_id`);

--
-- Índices para tabela `main_tag`
--
ALTER TABLE `main_tag`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `main_temporada`
--
ALTER TABLE `main_temporada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_temporada_anime_id_c03f8588_fk_main_anime_id` (`anime_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `main_anime`
--
ALTER TABLE `main_anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `main_anime_generos`
--
ALTER TABLE `main_anime_generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_anime_tags`
--
ALTER TABLE `main_anime_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_audio`
--
ALTER TABLE `main_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_episodio`
--
ALTER TABLE `main_episodio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `main_episodio_tags`
--
ALTER TABLE `main_episodio_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_genero`
--
ALTER TABLE `main_genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_legenda`
--
ALTER TABLE `main_legenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_perfil`
--
ALTER TABLE `main_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_perfilanime`
--
ALTER TABLE `main_perfilanime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_perfilepisodio`
--
ALTER TABLE `main_perfilepisodio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_tag`
--
ALTER TABLE `main_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `main_temporada`
--
ALTER TABLE `main_temporada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `main_anime_generos`
--
ALTER TABLE `main_anime_generos`
  ADD CONSTRAINT `main_anime_generos_anime_id_dcd0e44f_fk_main_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `main_anime` (`id`),
  ADD CONSTRAINT `main_anime_generos_genero_id_be05a623_fk_main_genero_id` FOREIGN KEY (`genero_id`) REFERENCES `main_genero` (`id`);

--
-- Limitadores para a tabela `main_anime_tags`
--
ALTER TABLE `main_anime_tags`
  ADD CONSTRAINT `main_anime_tags_anime_id_45278651_fk_main_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `main_anime` (`id`),
  ADD CONSTRAINT `main_anime_tags_tag_id_c8f06bd9_fk_main_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `main_tag` (`id`);

--
-- Limitadores para a tabela `main_audio`
--
ALTER TABLE `main_audio`
  ADD CONSTRAINT `main_audio_episodio_id_03723b4b_fk_main_episodio_id` FOREIGN KEY (`episodio_id`) REFERENCES `main_episodio` (`id`);

--
-- Limitadores para a tabela `main_episodio`
--
ALTER TABLE `main_episodio`
  ADD CONSTRAINT `main_episodio_temporada_id_c9455f47_fk_main_temporada_id` FOREIGN KEY (`temporada_id`) REFERENCES `main_temporada` (`id`);

--
-- Limitadores para a tabela `main_episodio_tags`
--
ALTER TABLE `main_episodio_tags`
  ADD CONSTRAINT `main_episodio_tags_episodio_id_64de406d_fk_main_episodio_id` FOREIGN KEY (`episodio_id`) REFERENCES `main_episodio` (`id`),
  ADD CONSTRAINT `main_episodio_tags_tag_id_7bdfb5cc_fk_main_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `main_tag` (`id`);

--
-- Limitadores para a tabela `main_legenda`
--
ALTER TABLE `main_legenda`
  ADD CONSTRAINT `main_legenda_episodio_id_4c33cfef_fk_main_episodio_id` FOREIGN KEY (`episodio_id`) REFERENCES `main_episodio` (`id`);

--
-- Limitadores para a tabela `main_perfil`
--
ALTER TABLE `main_perfil`
  ADD CONSTRAINT `main_perfil_djangouser_id_9a12f84b_fk_auth_user_id` FOREIGN KEY (`djangouser_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `main_perfilanime`
--
ALTER TABLE `main_perfilanime`
  ADD CONSTRAINT `main_perfilanime_anime_id_6c98ff16_fk_main_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `main_anime` (`id`),
  ADD CONSTRAINT `main_perfilanime_episodio_id_4239d04c_fk_main_episodio_id` FOREIGN KEY (`episodio_id`) REFERENCES `main_episodio` (`id`),
  ADD CONSTRAINT `main_perfilanime_perfil_id_3deeae33_fk_main_perfil_id` FOREIGN KEY (`perfil_id`) REFERENCES `main_perfil` (`id`);

--
-- Limitadores para a tabela `main_perfilepisodio`
--
ALTER TABLE `main_perfilepisodio`
  ADD CONSTRAINT `main_perfilepisodio_episodio_id_41842ad9_fk_main_episodio_id` FOREIGN KEY (`episodio_id`) REFERENCES `main_episodio` (`id`),
  ADD CONSTRAINT `main_perfilepisodio_perfil_id_57a73b7b_fk_main_perfil_id` FOREIGN KEY (`perfil_id`) REFERENCES `main_perfil` (`id`);

--
-- Limitadores para a tabela `main_temporada`
--
ALTER TABLE `main_temporada`
  ADD CONSTRAINT `main_temporada_anime_id_c03f8588_fk_main_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `main_anime` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
