BEGIN;
--
-- Create model Anime
--
CREATE TABLE `main_anime` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `nome` varchar(200) NOT NULL, `avaliacao` integer NOT NULL, `sinopse` varchar(200) NOT NULL, `class_indicativa` integer NOT NULL, `imagem` varchar(200) NOT NULL);
--
-- Create model Episodio
--
CREATE TABLE `main_episodio` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `numero` integer NOT NULL, `titulo` varchar(200) NOT NULL, `sinopse` varchar(1000) NOT NULL, `duracao` integer NOT NULL, `tipo` varchar(2) NOT NULL, `data_criacao` datetime(6) NOT NULL, `data_adicao` datetime(6) NOT NULL, `imagem` varchar(200) NOT NULL);
--
-- Create model Genero
--
CREATE TABLE `main_genero` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `tipo_genero` varchar(20) NOT NULL);
--
-- Create model Tag
--
CREATE TABLE `main_tag` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `tipo_tag` varchar(20) NOT NULL);
--
-- Create model Temporada
--
CREATE TABLE `main_temporada` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `numero` integer NOT NULL, `nome` varchar(200) NOT NULL, `anime_id` integer NOT NULL);
--
-- Create model Legenda
--
CREATE TABLE `main_legenda` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `lingua` varchar(200) NOT NULL, `caminho` varchar(200) NOT NULL, `episodio_id` integer NOT NULL);
--
-- Add field tags to episodio
--
CREATE TABLE `main_episodio_tags` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `episodio_id` integer NOT NULL, `tag_id` integer NOT NULL);
--
-- Add field temporada to episodio
--
ALTER TABLE `main_episodio` ADD COLUMN `temporada_id` integer NOT NULL;
--
-- Create model Audio
--
CREATE TABLE `main_audio` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `lingua` varchar(200) NOT NULL, `episodio_id` integer NOT NULL);
--
-- Add field generos to anime
--
CREATE TABLE `main_anime_generos` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `anime_id` integer NOT NULL, `genero_id` integer NOT NULL);
--
-- Add field tags to anime
--
CREATE TABLE `main_anime_tags` (`id` integer AUTO_INCREMENT NOT NULL PRIMARY KEY, `anime_id` integer NOT NULL, `tag_id` integer NOT NULL);
ALTER TABLE `main_temporada` ADD CONSTRAINT `main_temporada_anime_id_c03f8588_fk_main_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `main_anime` (`id`);
ALTER TABLE `main_legenda` ADD CONSTRAINT `main_legenda_episodio_id_4c33cfef_fk_main_episodio_id` FOREIGN KEY (`episodio_id`) REFERENCES `main_episodio` (`id`);
ALTER TABLE `main_episodio_tags` ADD CONSTRAINT `main_episodio_tags_episodio_id_64de406d_fk_main_episodio_id` FOREIGN KEY (`episodio_id`) REFERENCES `main_episodio` (`id`);
ALTER TABLE `main_episodio_tags` ADD CONSTRAINT `main_episodio_tags_tag_id_7bdfb5cc_fk_main_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `main_tag` (`id`);
ALTER TABLE `main_episodio_tags` ADD CONSTRAINT `main_episodio_tags_episodio_id_tag_id_c64509a1_uniq` UNIQUE (`episodio_id`, `tag_id`);
ALTER TABLE `main_episodio` ADD CONSTRAINT `main_episodio_temporada_id_c9455f47_fk_main_temporada_id` FOREIGN KEY (`temporada_id`) REFERENCES `main_temporada` (`id`);
ALTER TABLE `main_audio` ADD CONSTRAINT `main_audio_episodio_id_03723b4b_fk_main_episodio_id` FOREIGN KEY (`episodio_id`) REFERENCES `main_episodio` (`id`);
ALTER TABLE `main_anime_generos` ADD CONSTRAINT `main_anime_generos_anime_id_dcd0e44f_fk_main_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `main_anime` (`id`);
ALTER TABLE `main_anime_generos` ADD CONSTRAINT `main_anime_generos_genero_id_be05a623_fk_main_genero_id` FOREIGN KEY (`genero_id`) REFERENCES `main_genero` (`id`);
ALTER TABLE `main_anime_generos` ADD CONSTRAINT `main_anime_generos_anime_id_genero_id_2d54ba9f_uniq` UNIQUE (`anime_id`, `genero_id`);
ALTER TABLE `main_anime_tags` ADD CONSTRAINT `main_anime_tags_anime_id_45278651_fk_main_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `main_anime` (`id`);
ALTER TABLE `main_anime_tags` ADD CONSTRAINT `main_anime_tags_tag_id_c8f06bd9_fk_main_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `main_tag` (`id`);
ALTER TABLE `main_anime_tags` ADD CONSTRAINT `main_anime_tags_anime_id_tag_id_65525e2c_uniq` UNIQUE (`anime_id`, `tag_id`);
COMMIT;
