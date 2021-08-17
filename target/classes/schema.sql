-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: graphql
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `genre` int DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (101,'Chinua Achebe',0,'https://en.wikipedia.org/wiki/Things_Fall_Apart\n','Things Fall Apart',1958),(102,'Hans Christian Andersen',0,'https://en.wikipedia.org/wiki/Fairy_Tales_Told_for_Children._First_Collection.\n','Fairy tales',1836),(103,'Dante Alighieri',0,'https://en.wikipedia.org/wiki/Divine_Comedy\n','The Divine Comedy',1315),(104,'Unknown',0,'https://en.wikipedia.org/wiki/Epic_of_Gilgamesh\n','The Epic Of Gilgamesh',-1700),(105,'Unknown',0,'https://en.wikipedia.org/wiki/Book_of_Job\n','The Book Of Job',-600),(106,'Unknown',0,'https://en.wikipedia.org/wiki/One_Thousand_and_One_Nights\n','One Thousand and One Nights',1200),(107,'Unknown',0,'https://en.wikipedia.org/wiki/Nj%C3%A1ls_saga\n','Njál\'s Saga',1350),(108,'Jane Austen',0,'https://en.wikipedia.org/wiki/Pride_and_Prejudice\n','Pride and Prejudice',1813),(109,'Honoré de Balzac',0,'https://en.wikipedia.org/wiki/Le_P%C3%A8re_Goriot\n','Le Père Goriot',1835),(110,'Samuel Beckett',0,'https://en.wikipedia.org/wiki/Molloy_(novel)\n','Molloy, Malone Dies, The Unnamable, the trilogy',1952),(111,'Giovanni Boccaccio',0,'https://en.wikipedia.org/wiki/The_Decameron\n','The Decameron',1351),(112,'Jorge Luis Borges',0,'https://en.wikipedia.org/wiki/Ficciones\n','Ficciones',1965),(113,'Emily Brontë',0,'https://en.wikipedia.org/wiki/Wuthering_Heights\n','Wuthering Heights',1847),(114,'Albert Camus',0,'https://en.wikipedia.org/wiki/The_Stranger_(novel)\n','The Stranger',1942),(115,'Paul Celan',0,'\n','Poems',1952),(116,'Louis-Ferdinand Céline',0,'https://en.wikipedia.org/wiki/Journey_to_the_End_of_the_Night\n','Journey to the End of the Night',1932),(117,'Miguel de Cervantes',0,'https://en.wikipedia.org/wiki/Don_Quixote\n','Don Quijote De La Mancha',1610),(118,'Geoffrey Chaucer',0,'https://en.wikipedia.org/wiki/The_Canterbury_Tales\n','The Canterbury Tales',1450),(119,'Anton Chekhov',0,'https://en.wikipedia.org/wiki/List_of_short_stories_by_Anton_Chekhov\n','Stories',1886),(120,'Joseph Conrad',0,'https://en.wikipedia.org/wiki/Nostromo\n','Nostromo',1904),(121,'Charles Dickens',0,'https://en.wikipedia.org/wiki/Great_Expectations\n','Great Expectations',1861),(122,'Denis Diderot',0,'https://en.wikipedia.org/wiki/Jacques_the_Fatalist\n','Jacques the Fatalist',1796),(123,'Alfred Döblin',0,'https://en.wikipedia.org/wiki/Berlin_Alexanderplatz\n','Berlin Alexanderplatz',1929),(124,'Fyodor Dostoevsky',0,'https://en.wikipedia.org/wiki/Crime_and_Punishment\n','Crime and Punishment',1866),(125,'Fyodor Dostoevsky',0,'https://en.wikipedia.org/wiki/The_Idiot\n','The Idiot',1869),(126,'Fyodor Dostoevsky',0,'https://en.wikipedia.org/wiki/Demons_(Dostoyevsky_novel)\n','The Possessed',1872),(127,'Fyodor Dostoevsky',0,'https://en.wikipedia.org/wiki/The_Brothers_Karamazov\n','The Brothers Karamazov',1880),(128,'George Eliot',0,'https://en.wikipedia.org/wiki/Middlemarch\n','Middlemarch',1871),(129,'Ralph Ellison',0,'https://en.wikipedia.org/wiki/Invisible_Man\n','Invisible Man',1952),(130,'Euripides',0,'https://en.wikipedia.org/wiki/Medea_(play)\n','Medea',-431),(131,'William Faulkner',0,'https://en.wikipedia.org/wiki/Absalom,_Absalom!\n','Absalom, Absalom!',1936),(132,'William Faulkner',0,'https://en.wikipedia.org/wiki/The_Sound_and_the_Fury\n','The Sound and the Fury',1929),(133,'Gustave Flaubert',1,'https://en.wikipedia.org/wiki/Madame_Bovary\n','Madame Bovary',1857),(134,'Gustave Flaubert',1,'https://en.wikipedia.org/wiki/Sentimental_Education\n','Sentimental Education',1869),(135,'Federico García Lorca',1,'https://en.wikipedia.org/wiki/Gypsy_Ballads\n','Gypsy Ballads',1928),(136,'Gabriel García Márquez',1,'https://en.wikipedia.org/wiki/One_Hundred_Years_of_Solitude\n','One Hundred Years of Solitude',1967),(137,'Gabriel García Márquez',1,'https://en.wikipedia.org/wiki/Love_in_the_Time_of_Cholera\n','Love in the Time of Cholera',1985),(138,'Johann Wolfgang von Goethe',1,'https://en.wikipedia.org/wiki/Goethe%27s_Faust\n','Faust',1832),(139,'Nikolai Gogol',1,'https://en.wikipedia.org/wiki/Dead_Souls\n','Dead Souls',1842),(140,'Günter Grass',1,'https://en.wikipedia.org/wiki/The_Tin_Drum\n','The Tin Drum',1959),(141,'João Guimarães Rosa',1,'https://en.wikipedia.org/wiki/The_Devil_to_Pay_in_the_Backlands\n','The Devil to Pay in the Backlands',1956),(142,'Knut Hamsun',1,'https://en.wikipedia.org/wiki/Hunger_(Hamsun_novel)\n','Hunger',1890),(143,'Ernest Hemingway',1,'https://en.wikipedia.org/wiki/The_Old_Man_and_the_Sea\n','The Old Man and the Sea',1952),(144,'Homer',1,'https://en.wikipedia.org/wiki/Iliad\n','Iliad',-735),(145,'Homer',1,'https://en.wikipedia.org/wiki/Odyssey\n','Odyssey',-800),(146,'Henrik Ibsen',1,'https://en.wikipedia.org/wiki/A_Doll%27s_House\n','A Doll\'s House',1879),(147,'James Joyce',1,'https://en.wikipedia.org/wiki/Ulysses_(novel)\n','Ulysses',1922),(148,'Franz Kafka',1,'https://en.wikipedia.org/wiki/Franz_Kafka_bibliography#Short_stories\n','Stories',1924),(149,'Franz Kafka',1,'https://en.wikipedia.org/wiki/The_Trial\n','The Trial',1925),(150,'Franz Kafka',1,'https://en.wikipedia.org/wiki/The_Castle_(novel)\n','The Castle',1926),(151,'Kālidāsa',1,'https://en.wikipedia.org/wiki/Abhij%C3%B1%C4%81na%C5%9B%C4%81kuntalam\n','The recognition of Shakuntala',150),(152,'Yasunari Kawabata',1,'https://en.wikipedia.org/wiki/The_Sound_of_the_Mountain\n','The Sound of the Mountain',1954),(153,'Nikos Kazantzakis',1,'https://en.wikipedia.org/wiki/Zorba_the_Greek\n','Zorba the Greek',1946),(154,'D. H. Lawrence',1,'https://en.wikipedia.org/wiki/Sons_and_Lovers\n','Sons and Lovers',1913),(155,'Halldór Laxness',1,'https://en.wikipedia.org/wiki/Independent_People\n','Independent People',1934),(156,'Giacomo Leopardi',1,'\n','Poems',1818),(157,'Doris Lessing',1,'https://en.wikipedia.org/wiki/The_Golden_Notebook\n','The Golden Notebook',1962),(158,'Astrid Lindgren',1,'https://en.wikipedia.org/wiki/Pippi_Longstocking\n','Pippi Longstocking',1945),(159,'Lu Xun',1,'https://en.wikipedia.org/wiki/A_Madman%27s_Diary\n','Diary of a Madman',1918),(160,'Naguib Mahfouz',1,'https://en.wikipedia.org/wiki/Children_of_Gebelawi\n','Children of Gebelawi',1959),(161,'Thomas Mann',1,'https://en.wikipedia.org/wiki/Buddenbrooks\n','Buddenbrooks',1901),(162,'Thomas Mann',1,'https://en.wikipedia.org/wiki/The_Magic_Mountain\n','The Magic Mountain',1924),(163,'Herman Melville',1,'https://en.wikipedia.org/wiki/Moby-Dick\n','Moby Dick',1851),(164,'Michel de Montaigne',1,'https://en.wikipedia.org/wiki/Essays_(Montaigne)\n','Essays',1595),(165,'Elsa Morante',1,'https://en.wikipedia.org/wiki/History_(novel)\n','History',1974),(166,'Toni Morrison',1,'https://en.wikipedia.org/wiki/Beloved_(novel)\n','Beloved',1987),(167,'Murasaki Shikibu',2,'https://en.wikipedia.org/wiki/The_Tale_of_Genji\n','The Tale of Genji',1006),(168,'Robert Musil',2,'https://en.wikipedia.org/wiki/The_Man_Without_Qualities\n','The Man Without Qualities',1931),(169,'Vladimir Nabokov',2,'https://en.wikipedia.org/wiki/Lolita\n','Lolita',1955),(170,'George Orwell',2,'https://en.wikipedia.org/wiki/Nineteen_Eighty-Four\n','Nineteen Eighty-Four',1949),(171,'Ovid',2,'https://en.wikipedia.org/wiki/Metamorphoses\n','Metamorphoses',100),(172,'Fernando Pessoa',2,'https://en.wikipedia.org/wiki/The_Book_of_Disquiet\n','The Book of Disquiet',1928),(173,'Edgar Allan Poe',2,'https://en.wikipedia.org/wiki/Edgar_Allan_Poe_bibliography#Tales\n','Tales',1950),(174,'Marcel Proust',2,'https://en.wikipedia.org/wiki/In_Search_of_Lost_Time\n','In Search of Lost Time',1920),(175,'François Rabelais',2,'https://en.wikipedia.org/wiki/Gargantua_and_Pantagruel\n','Gargantua and Pantagruel',1533),(176,'Juan Rulfo',2,'https://en.wikipedia.org/wiki/Pedro_P%C3%A1ramo\n','Pedro Páramo',1955),(177,'Rumi',2,'https://en.wikipedia.org/wiki/Masnavi\n','The Masnavi',1236),(178,'Salman Rushdie',2,'https://en.wikipedia.org/wiki/Midnight%27s_Children\n','Midnight\'s Children',1981),(179,'Saadi',2,'https://en.wikipedia.org/wiki/Bustan_(book)\n','Bostan',1257),(180,'Tayeb Salih',2,'https://en.wikipedia.org/wiki/Season_of_Migration_to_the_North\n','Season of Migration to the North',1966),(181,'José Saramago',2,'https://en.wikipedia.org/wiki/Blindness_(novel)\n','Blindness',1995),(182,'William Shakespeare',2,'https://en.wikipedia.org/wiki/Hamlet\n','Hamlet',1603),(183,'William Shakespeare',2,'https://en.wikipedia.org/wiki/King_Lear\n','King Lear',1608),(184,'William Shakespeare',2,'https://en.wikipedia.org/wiki/Othello\n','Othello',1609),(185,'Sophocles',2,'https://en.wikipedia.org/wiki/Oedipus_the_King\n','Oedipus the King',-430),(186,'Stendhal',2,'https://en.wikipedia.org/wiki/The_Red_and_the_Black\n','The Red and the Black',1830),(187,'Laurence Sterne',2,'https://en.wikipedia.org/wiki/The_Life_and_Opinions_of_Tristram_Shandy,_Gentleman\n','The Life And Opinions of Tristram Shandy',1760),(188,'Italo Svevo',2,'https://en.wikipedia.org/wiki/Zeno%27s_Conscience\n','Confessions of Zeno',1923),(189,'Jonathan Swift',2,'https://en.wikipedia.org/wiki/Gulliver%27s_Travels\n','Gulliver\'s Travels',1726),(190,'Leo Tolstoy',2,'https://en.wikipedia.org/wiki/War_and_Peace\n','War and Peace',1867),(191,'Leo Tolstoy',2,'https://en.wikipedia.org/wiki/Anna_Karenina\n','Anna Karenina',1877),(192,'Leo Tolstoy',2,'https://en.wikipedia.org/wiki/The_Death_of_Ivan_Ilyich\n','The Death of Ivan Ilyich',1886),(193,'Mark Twain',2,'https://en.wikipedia.org/wiki/Adventures_of_Huckleberry_Finn\n','The Adventures of Huckleberry Finn',1884),(194,'Valmiki',2,'https://en.wikipedia.org/wiki/Ramayana\n','Ramayana',-450),(195,'Virgil',2,'https://en.wikipedia.org/wiki/Aeneid\n','The Aeneid',-23),(196,'Vyasa',2,'https://en.wikipedia.org/wiki/Mahabharata\n','Mahabharata',-700),(197,'Walt Whitman',2,'https://en.wikipedia.org/wiki/Leaves_of_Grass\n','Leaves of Grass',1855),(198,'Virginia Woolf',2,'https://en.wikipedia.org/wiki/Mrs_Dalloway\n','Mrs Dalloway',1925),(199,'Virginia Woolf',2,'https://en.wikipedia.org/wiki/To_the_Lighthouse\n','To the Lighthouse',1927),(200,'Marguerite Yourcenar',2,'https://en.wikipedia.org/wiki/Memoirs_of_Hadrian\n','Memoirs of Hadrian',1951);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (201);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-17 12:21:58
