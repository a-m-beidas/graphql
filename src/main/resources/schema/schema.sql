--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;


--
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--
DROP TABLE If EXISTS public.book;

CREATE TABLE public.book (
    id integer NOT NULL,
    genre integer,
    link character varying(255),
    title character varying(255),
    year integer NOT NULL,
    author_id integer
);


ALTER TABLE public.book OWNER TO postgres;


--
-- Name: author; Type: TABLE; Schema: public; Owner: postgres
--
DROP TABLE If EXISTS public.author;

CREATE TABLE public.author (
    id integer NOT NULL,
    first_name character varying(255),
    last_name character varying(255)
);


ALTER TABLE public.author OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

DROP SEQUENCE IF EXISTS public.hibernate_sequence;


CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.author VALUES (1, 'Chinua', 'Achebe');
INSERT INTO public.author VALUES (3, 'Hans', 'Christian');
INSERT INTO public.author VALUES (5, 'Dante', 'Alighieri');
INSERT INTO public.author VALUES (7, 'Unknown', '');
INSERT INTO public.author VALUES (9, 'Unknown', '');
INSERT INTO public.author VALUES (11, 'Unknown', '');
INSERT INTO public.author VALUES (13, 'Unknown', '');
INSERT INTO public.author VALUES (15, 'Jane', 'Austen');
INSERT INTO public.author VALUES (17, 'Honoré', 'de');
INSERT INTO public.author VALUES (19, 'Samuel', 'Beckett');
INSERT INTO public.author VALUES (21, 'Giovanni', 'Boccaccio');
INSERT INTO public.author VALUES (23, 'Jorge', 'Luis');
INSERT INTO public.author VALUES (25, 'Emily', 'Brontë');
INSERT INTO public.author VALUES (27, 'Albert', 'Camus');
INSERT INTO public.author VALUES (29, 'Paul', 'Celan');
INSERT INTO public.author VALUES (31, 'Louis-Ferdinand', 'Céline');
INSERT INTO public.author VALUES (33, 'Miguel', 'de');
INSERT INTO public.author VALUES (35, 'Geoffrey', 'Chaucer');
INSERT INTO public.author VALUES (37, 'Anton', 'Chekhov');
INSERT INTO public.author VALUES (39, 'Joseph', 'Conrad');
INSERT INTO public.author VALUES (41, 'Charles', 'Dickens');
INSERT INTO public.author VALUES (43, 'Denis', 'Diderot');
INSERT INTO public.author VALUES (45, 'Alfred', 'Döblin');
INSERT INTO public.author VALUES (47, 'Fyodor', 'Dostoevsky');
INSERT INTO public.author VALUES (49, 'Fyodor', 'Dostoevsky');
INSERT INTO public.author VALUES (51, 'Fyodor', 'Dostoevsky');
INSERT INTO public.author VALUES (53, 'Fyodor', 'Dostoevsky');
INSERT INTO public.author VALUES (55, 'George', 'Eliot');
INSERT INTO public.author VALUES (57, 'Ralph', 'Ellison');
INSERT INTO public.author VALUES (59, 'Euripides', '');
INSERT INTO public.author VALUES (61, 'William', 'Faulkner');
INSERT INTO public.author VALUES (63, 'William', 'Faulkner');
INSERT INTO public.author VALUES (65, 'Gustave', 'Flaubert');
INSERT INTO public.author VALUES (67, 'Gustave', 'Flaubert');
INSERT INTO public.author VALUES (69, 'Federico', 'García');
INSERT INTO public.author VALUES (71, 'Gabriel', 'García');
INSERT INTO public.author VALUES (73, 'Gabriel', 'García');
INSERT INTO public.author VALUES (75, 'Johann', 'Wolfgang');
INSERT INTO public.author VALUES (77, 'Nikolai', 'Gogol');
INSERT INTO public.author VALUES (79, 'Günter', 'Grass');
INSERT INTO public.author VALUES (81, 'João', 'Guimarães');
INSERT INTO public.author VALUES (83, 'Knut', 'Hamsun');
INSERT INTO public.author VALUES (85, 'Ernest', 'Hemingway');
INSERT INTO public.author VALUES (87, 'Homer', '');
INSERT INTO public.author VALUES (89, 'Homer', '');
INSERT INTO public.author VALUES (91, 'Henrik', 'Ibsen');
INSERT INTO public.author VALUES (93, 'James', 'Joyce');
INSERT INTO public.author VALUES (95, 'Franz', 'Kafka');
INSERT INTO public.author VALUES (97, 'Franz', 'Kafka');
INSERT INTO public.author VALUES (99, 'Franz', 'Kafka');
INSERT INTO public.author VALUES (101, 'Kālidāsa', '');
INSERT INTO public.author VALUES (103, 'Yasunari', 'Kawabata');
INSERT INTO public.author VALUES (105, 'Nikos', 'Kazantzakis');
INSERT INTO public.author VALUES (107, 'D.', 'H.');
INSERT INTO public.author VALUES (109, 'Halldór', 'Laxness');
INSERT INTO public.author VALUES (111, 'Giacomo', 'Leopardi');
INSERT INTO public.author VALUES (113, 'Doris', 'Lessing');
INSERT INTO public.author VALUES (115, 'Astrid', 'Lindgren');
INSERT INTO public.author VALUES (117, 'Lu', 'Xun');
INSERT INTO public.author VALUES (119, 'Naguib', 'Mahfouz');
INSERT INTO public.author VALUES (121, 'Thomas', 'Mann');
INSERT INTO public.author VALUES (123, 'Thomas', 'Mann');
INSERT INTO public.author VALUES (125, 'Herman', 'Melville');
INSERT INTO public.author VALUES (127, 'Michel', 'de');
INSERT INTO public.author VALUES (129, 'Elsa', 'Morante');
INSERT INTO public.author VALUES (131, 'Toni', 'Morrison');
INSERT INTO public.author VALUES (133, 'Murasaki', 'Shikibu');
INSERT INTO public.author VALUES (135, 'Robert', 'Musil');
INSERT INTO public.author VALUES (137, 'Vladimir', 'Nabokov');
INSERT INTO public.author VALUES (139, 'George', 'Orwell');
INSERT INTO public.author VALUES (141, 'Ovid', '');
INSERT INTO public.author VALUES (143, 'Fernando', 'Pessoa');
INSERT INTO public.author VALUES (145, 'Edgar', 'Allan');
INSERT INTO public.author VALUES (147, 'Marcel', 'Proust');
INSERT INTO public.author VALUES (149, 'François', 'Rabelais');
INSERT INTO public.author VALUES (151, 'Juan', 'Rulfo');
INSERT INTO public.author VALUES (153, 'Rumi', '');
INSERT INTO public.author VALUES (155, 'Salman', 'Rushdie');
INSERT INTO public.author VALUES (157, 'Saadi', '');
INSERT INTO public.author VALUES (159, 'Tayeb', 'Salih');
INSERT INTO public.author VALUES (161, 'José', 'Saramago');
INSERT INTO public.author VALUES (163, 'William', 'Shakespeare');
INSERT INTO public.author VALUES (165, 'William', 'Shakespeare');
INSERT INTO public.author VALUES (167, 'William', 'Shakespeare');
INSERT INTO public.author VALUES (169, 'Sophocles', '');
INSERT INTO public.author VALUES (171, 'Stendhal', '');
INSERT INTO public.author VALUES (173, 'Laurence', 'Sterne');
INSERT INTO public.author VALUES (175, 'Italo', 'Svevo');
INSERT INTO public.author VALUES (177, 'Jonathan', 'Swift');
INSERT INTO public.author VALUES (179, 'Leo', 'Tolstoy');
INSERT INTO public.author VALUES (181, 'Leo', 'Tolstoy');
INSERT INTO public.author VALUES (183, 'Leo', 'Tolstoy');
INSERT INTO public.author VALUES (185, 'Mark', 'Twain');
INSERT INTO public.author VALUES (187, 'Valmiki', '');
INSERT INTO public.author VALUES (189, 'Virgil', '');
INSERT INTO public.author VALUES (191, 'Vyasa', '');
INSERT INTO public.author VALUES (193, 'Walt', 'Whitman');
INSERT INTO public.author VALUES (195, 'Virginia', 'Woolf');
INSERT INTO public.author VALUES (197, 'Virginia', 'Woolf');
INSERT INTO public.author VALUES (199, 'Marguerite', 'Yourcenar');


--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.book VALUES (2, 0, 'https://en.wikipedia.org/wiki/Things_Fall_Apart
', 'Things Fall Apart', 1958, 1);
INSERT INTO public.book VALUES (4, 0, 'https://en.wikipedia.org/wiki/Fairy_Tales_Told_for_Children._First_Collection.
', 'Fairy tales', 1836, 3);
INSERT INTO public.book VALUES (6, 0, 'https://en.wikipedia.org/wiki/Divine_Comedy
', 'The Divine Comedy', 1315, 5);
INSERT INTO public.book VALUES (8, 0, 'https://en.wikipedia.org/wiki/Epic_of_Gilgamesh
', 'The Epic Of Gilgamesh', -1700, 7);
INSERT INTO public.book VALUES (10, 0, 'https://en.wikipedia.org/wiki/Book_of_Job
', 'The Book Of Job', -600, 9);
INSERT INTO public.book VALUES (12, 0, 'https://en.wikipedia.org/wiki/One_Thousand_and_One_Nights
', 'One Thousand and One Nights', 1200, 11);
INSERT INTO public.book VALUES (14, 0, 'https://en.wikipedia.org/wiki/Nj%C3%A1ls_saga
', 'Njál''s Saga', 1350, 13);
INSERT INTO public.book VALUES (16, 0, 'https://en.wikipedia.org/wiki/Pride_and_Prejudice
', 'Pride and Prejudice', 1813, 15);
INSERT INTO public.book VALUES (18, 0, 'https://en.wikipedia.org/wiki/Le_P%C3%A8re_Goriot
', 'Le Père Goriot', 1835, 17);
INSERT INTO public.book VALUES (20, 0, 'https://en.wikipedia.org/wiki/Molloy_(novel)
', 'Molloy, Malone Dies, The Unnamable, the trilogy', 1952, 19);
INSERT INTO public.book VALUES (22, 0, 'https://en.wikipedia.org/wiki/The_Decameron
', 'The Decameron', 1351, 21);
INSERT INTO public.book VALUES (24, 0, 'https://en.wikipedia.org/wiki/Ficciones
', 'Ficciones', 1965, 23);
INSERT INTO public.book VALUES (26, 0, 'https://en.wikipedia.org/wiki/Wuthering_Heights
', 'Wuthering Heights', 1847, 25);
INSERT INTO public.book VALUES (28, 0, 'https://en.wikipedia.org/wiki/The_Stranger_(novel)
', 'The Stranger', 1942, 27);
INSERT INTO public.book VALUES (30, 0, '
', 'Poems', 1952, 29);
INSERT INTO public.book VALUES (32, 0, 'https://en.wikipedia.org/wiki/Journey_to_the_End_of_the_Night
', 'Journey to the End of the Night', 1932, 31);
INSERT INTO public.book VALUES (34, 0, 'https://en.wikipedia.org/wiki/Don_Quixote
', 'Don Quijote De La Mancha', 1610, 33);
INSERT INTO public.book VALUES (36, 0, 'https://en.wikipedia.org/wiki/The_Canterbury_Tales
', 'The Canterbury Tales', 1450, 35);
INSERT INTO public.book VALUES (38, 0, 'https://en.wikipedia.org/wiki/List_of_short_stories_by_Anton_Chekhov
', 'Stories', 1886, 37);
INSERT INTO public.book VALUES (40, 0, 'https://en.wikipedia.org/wiki/Nostromo
', 'Nostromo', 1904, 39);
INSERT INTO public.book VALUES (42, 0, 'https://en.wikipedia.org/wiki/Great_Expectations
', 'Great Expectations', 1861, 41);
INSERT INTO public.book VALUES (44, 0, 'https://en.wikipedia.org/wiki/Jacques_the_Fatalist
', 'Jacques the Fatalist', 1796, 43);
INSERT INTO public.book VALUES (46, 0, 'https://en.wikipedia.org/wiki/Berlin_Alexanderplatz
', 'Berlin Alexanderplatz', 1929, 45);
INSERT INTO public.book VALUES (48, 0, 'https://en.wikipedia.org/wiki/Crime_and_Punishment
', 'Crime and Punishment', 1866, 47);
INSERT INTO public.book VALUES (50, 0, 'https://en.wikipedia.org/wiki/The_Idiot
', 'The Idiot', 1869, 49);
INSERT INTO public.book VALUES (52, 0, 'https://en.wikipedia.org/wiki/Demons_(Dostoyevsky_novel)
', 'The Possessed', 1872, 51);
INSERT INTO public.book VALUES (54, 0, 'https://en.wikipedia.org/wiki/The_Brothers_Karamazov
', 'The Brothers Karamazov', 1880, 53);
INSERT INTO public.book VALUES (56, 0, 'https://en.wikipedia.org/wiki/Middlemarch
', 'Middlemarch', 1871, 55);
INSERT INTO public.book VALUES (58, 0, 'https://en.wikipedia.org/wiki/Invisible_Man
', 'Invisible Man', 1952, 57);
INSERT INTO public.book VALUES (60, 0, 'https://en.wikipedia.org/wiki/Medea_(play)
', 'Medea', -431, 59);
INSERT INTO public.book VALUES (62, 0, 'https://en.wikipedia.org/wiki/Absalom,_Absalom!
', 'Absalom, Absalom!', 1936, 61);
INSERT INTO public.book VALUES (64, 0, 'https://en.wikipedia.org/wiki/The_Sound_and_the_Fury
', 'The Sound and the Fury', 1929, 63);
INSERT INTO public.book VALUES (66, 1, 'https://en.wikipedia.org/wiki/Madame_Bovary
', 'Madame Bovary', 1857, 65);
INSERT INTO public.book VALUES (68, 1, 'https://en.wikipedia.org/wiki/Sentimental_Education
', 'Sentimental Education', 1869, 67);
INSERT INTO public.book VALUES (70, 1, 'https://en.wikipedia.org/wiki/Gypsy_Ballads
', 'Gypsy Ballads', 1928, 69);
INSERT INTO public.book VALUES (72, 1, 'https://en.wikipedia.org/wiki/One_Hundred_Years_of_Solitude
', 'One Hundred Years of Solitude', 1967, 71);
INSERT INTO public.book VALUES (74, 1, 'https://en.wikipedia.org/wiki/Love_in_the_Time_of_Cholera
', 'Love in the Time of Cholera', 1985, 73);
INSERT INTO public.book VALUES (76, 1, 'https://en.wikipedia.org/wiki/Goethe%27s_Faust
', 'Faust', 1832, 75);
INSERT INTO public.book VALUES (78, 1, 'https://en.wikipedia.org/wiki/Dead_Souls
', 'Dead Souls', 1842, 77);
INSERT INTO public.book VALUES (80, 1, 'https://en.wikipedia.org/wiki/The_Tin_Drum
', 'The Tin Drum', 1959, 79);
INSERT INTO public.book VALUES (82, 1, 'https://en.wikipedia.org/wiki/The_Devil_to_Pay_in_the_Backlands
', 'The Devil to Pay in the Backlands', 1956, 81);
INSERT INTO public.book VALUES (84, 1, 'https://en.wikipedia.org/wiki/Hunger_(Hamsun_novel)
', 'Hunger', 1890, 83);
INSERT INTO public.book VALUES (86, 1, 'https://en.wikipedia.org/wiki/The_Old_Man_and_the_Sea
', 'The Old Man and the Sea', 1952, 85);
INSERT INTO public.book VALUES (88, 1, 'https://en.wikipedia.org/wiki/Iliad
', 'Iliad', -735, 87);
INSERT INTO public.book VALUES (90, 1, 'https://en.wikipedia.org/wiki/Odyssey
', 'Odyssey', -800, 89);
INSERT INTO public.book VALUES (92, 1, 'https://en.wikipedia.org/wiki/A_Doll%27s_House
', 'A Doll''s House', 1879, 91);
INSERT INTO public.book VALUES (94, 1, 'https://en.wikipedia.org/wiki/Ulysses_(novel)
', 'Ulysses', 1922, 93);
INSERT INTO public.book VALUES (96, 1, 'https://en.wikipedia.org/wiki/Franz_Kafka_bibliography#Short_stories
', 'Stories', 1924, 95);
INSERT INTO public.book VALUES (98, 1, 'https://en.wikipedia.org/wiki/The_Trial
', 'The Trial', 1925, 97);
INSERT INTO public.book VALUES (100, 1, 'https://en.wikipedia.org/wiki/The_Castle_(novel)
', 'The Castle', 1926, 99);
INSERT INTO public.book VALUES (102, 1, 'https://en.wikipedia.org/wiki/Abhij%C3%B1%C4%81na%C5%9B%C4%81kuntalam
', 'The recognition of Shakuntala', 150, 101);
INSERT INTO public.book VALUES (104, 1, 'https://en.wikipedia.org/wiki/The_Sound_of_the_Mountain
', 'The Sound of the Mountain', 1954, 103);
INSERT INTO public.book VALUES (106, 1, 'https://en.wikipedia.org/wiki/Zorba_the_Greek
', 'Zorba the Greek', 1946, 105);
INSERT INTO public.book VALUES (108, 1, 'https://en.wikipedia.org/wiki/Sons_and_Lovers
', 'Sons and Lovers', 1913, 107);
INSERT INTO public.book VALUES (110, 1, 'https://en.wikipedia.org/wiki/Independent_People
', 'Independent People', 1934, 109);
INSERT INTO public.book VALUES (112, 1, '
', 'Poems', 1818, 111);
INSERT INTO public.book VALUES (114, 1, 'https://en.wikipedia.org/wiki/The_Golden_Notebook
', 'The Golden Notebook', 1962, 113);
INSERT INTO public.book VALUES (116, 1, 'https://en.wikipedia.org/wiki/Pippi_Longstocking
', 'Pippi Longstocking', 1945, 115);
INSERT INTO public.book VALUES (118, 1, 'https://en.wikipedia.org/wiki/A_Madman%27s_Diary
', 'Diary of a Madman', 1918, 117);
INSERT INTO public.book VALUES (120, 1, 'https://en.wikipedia.org/wiki/Children_of_Gebelawi
', 'Children of Gebelawi', 1959, 119);
INSERT INTO public.book VALUES (122, 1, 'https://en.wikipedia.org/wiki/Buddenbrooks
', 'Buddenbrooks', 1901, 121);
INSERT INTO public.book VALUES (124, 1, 'https://en.wikipedia.org/wiki/The_Magic_Mountain
', 'The Magic Mountain', 1924, 123);
INSERT INTO public.book VALUES (126, 1, 'https://en.wikipedia.org/wiki/Moby-Dick
', 'Moby Dick', 1851, 125);
INSERT INTO public.book VALUES (128, 1, 'https://en.wikipedia.org/wiki/Essays_(Montaigne)
', 'Essays', 1595, 127);
INSERT INTO public.book VALUES (130, 1, 'https://en.wikipedia.org/wiki/History_(novel)
', 'History', 1974, 129);
INSERT INTO public.book VALUES (132, 1, 'https://en.wikipedia.org/wiki/Beloved_(novel)
', 'Beloved', 1987, 131);
INSERT INTO public.book VALUES (134, 2, 'https://en.wikipedia.org/wiki/The_Tale_of_Genji
', 'The Tale of Genji', 1006, 133);
INSERT INTO public.book VALUES (136, 2, 'https://en.wikipedia.org/wiki/The_Man_Without_Qualities
', 'The Man Without Qualities', 1931, 135);
INSERT INTO public.book VALUES (138, 2, 'https://en.wikipedia.org/wiki/Lolita
', 'Lolita', 1955, 137);
INSERT INTO public.book VALUES (140, 2, 'https://en.wikipedia.org/wiki/Nineteen_Eighty-Four
', 'Nineteen Eighty-Four', 1949, 139);
INSERT INTO public.book VALUES (142, 2, 'https://en.wikipedia.org/wiki/Metamorphoses
', 'Metamorphoses', 100, 141);
INSERT INTO public.book VALUES (144, 2, 'https://en.wikipedia.org/wiki/The_Book_of_Disquiet
', 'The Book of Disquiet', 1928, 143);
INSERT INTO public.book VALUES (146, 2, 'https://en.wikipedia.org/wiki/Edgar_Allan_Poe_bibliography#Tales
', 'Tales', 1950, 145);
INSERT INTO public.book VALUES (148, 2, 'https://en.wikipedia.org/wiki/In_Search_of_Lost_Time
', 'In Search of Lost Time', 1920, 147);
INSERT INTO public.book VALUES (150, 2, 'https://en.wikipedia.org/wiki/Gargantua_and_Pantagruel
', 'Gargantua and Pantagruel', 1533, 149);
INSERT INTO public.book VALUES (152, 2, 'https://en.wikipedia.org/wiki/Pedro_P%C3%A1ramo
', 'Pedro Páramo', 1955, 151);
INSERT INTO public.book VALUES (154, 2, 'https://en.wikipedia.org/wiki/Masnavi
', 'The Masnavi', 1236, 153);
INSERT INTO public.book VALUES (156, 2, 'https://en.wikipedia.org/wiki/Midnight%27s_Children
', 'Midnight''s Children', 1981, 155);
INSERT INTO public.book VALUES (158, 2, 'https://en.wikipedia.org/wiki/Bustan_(book)
', 'Bostan', 1257, 157);
INSERT INTO public.book VALUES (160, 2, 'https://en.wikipedia.org/wiki/Season_of_Migration_to_the_North
', 'Season of Migration to the North', 1966, 159);
INSERT INTO public.book VALUES (162, 2, 'https://en.wikipedia.org/wiki/Blindness_(novel)
', 'Blindness', 1995, 161);
INSERT INTO public.book VALUES (164, 2, 'https://en.wikipedia.org/wiki/Hamlet
', 'Hamlet', 1603, 163);
INSERT INTO public.book VALUES (166, 2, 'https://en.wikipedia.org/wiki/King_Lear
', 'King Lear', 1608, 165);
INSERT INTO public.book VALUES (168, 2, 'https://en.wikipedia.org/wiki/Othello
', 'Othello', 1609, 167);
INSERT INTO public.book VALUES (170, 2, 'https://en.wikipedia.org/wiki/Oedipus_the_King
', 'Oedipus the King', -430, 169);
INSERT INTO public.book VALUES (172, 2, 'https://en.wikipedia.org/wiki/The_Red_and_the_Black
', 'The Red and the Black', 1830, 171);
INSERT INTO public.book VALUES (174, 2, 'https://en.wikipedia.org/wiki/The_Life_and_Opinions_of_Tristram_Shandy,_Gentleman
', 'The Life And Opinions of Tristram Shandy', 1760, 173);
INSERT INTO public.book VALUES (176, 2, 'https://en.wikipedia.org/wiki/Zeno%27s_Conscience
', 'Confessions of Zeno', 1923, 175);
INSERT INTO public.book VALUES (178, 2, 'https://en.wikipedia.org/wiki/Gulliver%27s_Travels
', 'Gulliver''s Travels', 1726, 177);
INSERT INTO public.book VALUES (180, 2, 'https://en.wikipedia.org/wiki/War_and_Peace
', 'War and Peace', 1867, 179);
INSERT INTO public.book VALUES (182, 2, 'https://en.wikipedia.org/wiki/Anna_Karenina
', 'Anna Karenina', 1877, 181);
INSERT INTO public.book VALUES (184, 2, 'https://en.wikipedia.org/wiki/The_Death_of_Ivan_Ilyich
', 'The Death of Ivan Ilyich', 1886, 183);
INSERT INTO public.book VALUES (186, 2, 'https://en.wikipedia.org/wiki/Adventures_of_Huckleberry_Finn
', 'The Adventures of Huckleberry Finn', 1884, 185);
INSERT INTO public.book VALUES (188, 2, 'https://en.wikipedia.org/wiki/Ramayana
', 'Ramayana', -450, 187);
INSERT INTO public.book VALUES (190, 2, 'https://en.wikipedia.org/wiki/Aeneid
', 'The Aeneid', -23, 189);
INSERT INTO public.book VALUES (192, 2, 'https://en.wikipedia.org/wiki/Mahabharata
', 'Mahabharata', -700, 191);
INSERT INTO public.book VALUES (194, 2, 'https://en.wikipedia.org/wiki/Leaves_of_Grass
', 'Leaves of Grass', 1855, 193);
INSERT INTO public.book VALUES (196, 2, 'https://en.wikipedia.org/wiki/Mrs_Dalloway
', 'Mrs Dalloway', 1925, 195);
INSERT INTO public.book VALUES (198, 2, 'https://en.wikipedia.org/wiki/To_the_Lighthouse
', 'To the Lighthouse', 1927, 197);
INSERT INTO public.book VALUES (200, 2, 'https://en.wikipedia.org/wiki/Memoirs_of_Hadrian
', 'Memoirs of Hadrian', 1951, 199);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 200, true);


--
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);


--
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);


--
-- Name: book fkklnrv3weler2ftkweewlky958; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT fkklnrv3weler2ftkweewlky958 FOREIGN KEY (author_id) REFERENCES public.author(id);


--
-- PostgreSQL database dump complete
--

