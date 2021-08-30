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

ALTER TABLE IF EXISTS ONLY public.book DROP CONSTRAINT IF EXISTS book_pkey;
DROP SEQUENCE IF EXISTS public.hibernate_sequence;
DROP TABLE IF EXISTS public.book;
DROP EXTENSION IF EXISTS adminpack;
--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: book; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.book (
    id integer NOT NULL,
    author character varying(255),
    genre integer,
    link character varying(255),
    title character varying(255),
    year integer NOT NULL
);


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.book VALUES (1, 'Chinua Achebe', 0, 'https://en.wikipedia.org/wiki/Things_Fall_Apart
', 'Things Fall Apart', 1958);
INSERT INTO public.book VALUES (2, 'Hans Christian Andersen', 0, 'https://en.wikipedia.org/wiki/Fairy_Tales_Told_for_Children._First_Collection.
', 'Fairy tales', 1836);
INSERT INTO public.book VALUES (3, 'Dante Alighieri', 0, 'https://en.wikipedia.org/wiki/Divine_Comedy
', 'The Divine Comedy', 1315);
INSERT INTO public.book VALUES (4, 'Unknown', 0, 'https://en.wikipedia.org/wiki/Epic_of_Gilgamesh
', 'The Epic Of Gilgamesh', -1700);
INSERT INTO public.book VALUES (5, 'Unknown', 0, 'https://en.wikipedia.org/wiki/Book_of_Job
', 'The Book Of Job', -600);
INSERT INTO public.book VALUES (6, 'Unknown', 0, 'https://en.wikipedia.org/wiki/One_Thousand_and_One_Nights
', 'One Thousand and One Nights', 1200);
INSERT INTO public.book VALUES (7, 'Unknown', 0, 'https://en.wikipedia.org/wiki/Nj%C3%A1ls_saga
', 'Njál''s Saga', 1350);
INSERT INTO public.book VALUES (8, 'Jane Austen', 0, 'https://en.wikipedia.org/wiki/Pride_and_Prejudice
', 'Pride and Prejudice', 1813);
INSERT INTO public.book VALUES (9, 'Honoré de Balzac', 0, 'https://en.wikipedia.org/wiki/Le_P%C3%A8re_Goriot
', 'Le Père Goriot', 1835);
INSERT INTO public.book VALUES (10, 'Samuel Beckett', 0, 'https://en.wikipedia.org/wiki/Molloy_(novel)
', 'Molloy, Malone Dies, The Unnamable, the trilogy', 1952);
INSERT INTO public.book VALUES (11, 'Giovanni Boccaccio', 0, 'https://en.wikipedia.org/wiki/The_Decameron
', 'The Decameron', 1351);
INSERT INTO public.book VALUES (12, 'Jorge Luis Borges', 0, 'https://en.wikipedia.org/wiki/Ficciones
', 'Ficciones', 1965);
INSERT INTO public.book VALUES (13, 'Emily Brontë', 0, 'https://en.wikipedia.org/wiki/Wuthering_Heights
', 'Wuthering Heights', 1847);
INSERT INTO public.book VALUES (14, 'Albert Camus', 0, 'https://en.wikipedia.org/wiki/The_Stranger_(novel)
', 'The Stranger', 1942);
INSERT INTO public.book VALUES (15, 'Paul Celan', 0, '
', 'Poems', 1952);
INSERT INTO public.book VALUES (16, 'Louis-Ferdinand Céline', 0, 'https://en.wikipedia.org/wiki/Journey_to_the_End_of_the_Night
', 'Journey to the End of the Night', 1932);
INSERT INTO public.book VALUES (17, 'Miguel de Cervantes', 0, 'https://en.wikipedia.org/wiki/Don_Quixote
', 'Don Quijote De La Mancha', 1610);
INSERT INTO public.book VALUES (18, 'Geoffrey Chaucer', 0, 'https://en.wikipedia.org/wiki/The_Canterbury_Tales
', 'The Canterbury Tales', 1450);
INSERT INTO public.book VALUES (19, 'Anton Chekhov', 0, 'https://en.wikipedia.org/wiki/List_of_short_stories_by_Anton_Chekhov
', 'Stories', 1886);
INSERT INTO public.book VALUES (20, 'Joseph Conrad', 0, 'https://en.wikipedia.org/wiki/Nostromo
', 'Nostromo', 1904);
INSERT INTO public.book VALUES (21, 'Charles Dickens', 0, 'https://en.wikipedia.org/wiki/Great_Expectations
', 'Great Expectations', 1861);
INSERT INTO public.book VALUES (22, 'Denis Diderot', 0, 'https://en.wikipedia.org/wiki/Jacques_the_Fatalist
', 'Jacques the Fatalist', 1796);
INSERT INTO public.book VALUES (23, 'Alfred Döblin', 0, 'https://en.wikipedia.org/wiki/Berlin_Alexanderplatz
', 'Berlin Alexanderplatz', 1929);
INSERT INTO public.book VALUES (24, 'Fyodor Dostoevsky', 0, 'https://en.wikipedia.org/wiki/Crime_and_Punishment
', 'Crime and Punishment', 1866);
INSERT INTO public.book VALUES (25, 'Fyodor Dostoevsky', 0, 'https://en.wikipedia.org/wiki/The_Idiot
', 'The Idiot', 1869);
INSERT INTO public.book VALUES (26, 'Fyodor Dostoevsky', 0, 'https://en.wikipedia.org/wiki/Demons_(Dostoyevsky_novel)
', 'The Possessed', 1872);
INSERT INTO public.book VALUES (27, 'Fyodor Dostoevsky', 0, 'https://en.wikipedia.org/wiki/The_Brothers_Karamazov
', 'The Brothers Karamazov', 1880);
INSERT INTO public.book VALUES (28, 'George Eliot', 0, 'https://en.wikipedia.org/wiki/Middlemarch
', 'Middlemarch', 1871);
INSERT INTO public.book VALUES (29, 'Ralph Ellison', 0, 'https://en.wikipedia.org/wiki/Invisible_Man
', 'Invisible Man', 1952);
INSERT INTO public.book VALUES (30, 'Euripides', 0, 'https://en.wikipedia.org/wiki/Medea_(play)
', 'Medea', -431);
INSERT INTO public.book VALUES (31, 'William Faulkner', 0, 'https://en.wikipedia.org/wiki/Absalom,_Absalom!
', 'Absalom, Absalom!', 1936);
INSERT INTO public.book VALUES (32, 'William Faulkner', 0, 'https://en.wikipedia.org/wiki/The_Sound_and_the_Fury
', 'The Sound and the Fury', 1929);
INSERT INTO public.book VALUES (33, 'Gustave Flaubert', 1, 'https://en.wikipedia.org/wiki/Madame_Bovary
', 'Madame Bovary', 1857);
INSERT INTO public.book VALUES (34, 'Gustave Flaubert', 1, 'https://en.wikipedia.org/wiki/Sentimental_Education
', 'Sentimental Education', 1869);
INSERT INTO public.book VALUES (35, 'Federico García Lorca', 1, 'https://en.wikipedia.org/wiki/Gypsy_Ballads
', 'Gypsy Ballads', 1928);
INSERT INTO public.book VALUES (36, 'Gabriel García Márquez', 1, 'https://en.wikipedia.org/wiki/One_Hundred_Years_of_Solitude
', 'One Hundred Years of Solitude', 1967);
INSERT INTO public.book VALUES (37, 'Gabriel García Márquez', 1, 'https://en.wikipedia.org/wiki/Love_in_the_Time_of_Cholera
', 'Love in the Time of Cholera', 1985);
INSERT INTO public.book VALUES (38, 'Johann Wolfgang von Goethe', 1, 'https://en.wikipedia.org/wiki/Goethe%27s_Faust
', 'Faust', 1832);
INSERT INTO public.book VALUES (39, 'Nikolai Gogol', 1, 'https://en.wikipedia.org/wiki/Dead_Souls
', 'Dead Souls', 1842);
INSERT INTO public.book VALUES (40, 'Günter Grass', 1, 'https://en.wikipedia.org/wiki/The_Tin_Drum
', 'The Tin Drum', 1959);
INSERT INTO public.book VALUES (41, 'João Guimarães Rosa', 1, 'https://en.wikipedia.org/wiki/The_Devil_to_Pay_in_the_Backlands
', 'The Devil to Pay in the Backlands', 1956);
INSERT INTO public.book VALUES (42, 'Knut Hamsun', 1, 'https://en.wikipedia.org/wiki/Hunger_(Hamsun_novel)
', 'Hunger', 1890);
INSERT INTO public.book VALUES (43, 'Ernest Hemingway', 1, 'https://en.wikipedia.org/wiki/The_Old_Man_and_the_Sea
', 'The Old Man and the Sea', 1952);
INSERT INTO public.book VALUES (44, 'Homer', 1, 'https://en.wikipedia.org/wiki/Iliad
', 'Iliad', -735);
INSERT INTO public.book VALUES (45, 'Homer', 1, 'https://en.wikipedia.org/wiki/Odyssey
', 'Odyssey', -800);
INSERT INTO public.book VALUES (46, 'Henrik Ibsen', 1, 'https://en.wikipedia.org/wiki/A_Doll%27s_House
', 'A Doll''s House', 1879);
INSERT INTO public.book VALUES (47, 'James Joyce', 1, 'https://en.wikipedia.org/wiki/Ulysses_(novel)
', 'Ulysses', 1922);
INSERT INTO public.book VALUES (48, 'Franz Kafka', 1, 'https://en.wikipedia.org/wiki/Franz_Kafka_bibliography#Short_stories
', 'Stories', 1924);
INSERT INTO public.book VALUES (49, 'Franz Kafka', 1, 'https://en.wikipedia.org/wiki/The_Trial
', 'The Trial', 1925);
INSERT INTO public.book VALUES (50, 'Franz Kafka', 1, 'https://en.wikipedia.org/wiki/The_Castle_(novel)
', 'The Castle', 1926);
INSERT INTO public.book VALUES (51, 'Kālidāsa', 1, 'https://en.wikipedia.org/wiki/Abhij%C3%B1%C4%81na%C5%9B%C4%81kuntalam
', 'The recognition of Shakuntala', 150);
INSERT INTO public.book VALUES (52, 'Yasunari Kawabata', 1, 'https://en.wikipedia.org/wiki/The_Sound_of_the_Mountain
', 'The Sound of the Mountain', 1954);
INSERT INTO public.book VALUES (53, 'Nikos Kazantzakis', 1, 'https://en.wikipedia.org/wiki/Zorba_the_Greek
', 'Zorba the Greek', 1946);
INSERT INTO public.book VALUES (54, 'D. H. Lawrence', 1, 'https://en.wikipedia.org/wiki/Sons_and_Lovers
', 'Sons and Lovers', 1913);
INSERT INTO public.book VALUES (55, 'Halldór Laxness', 1, 'https://en.wikipedia.org/wiki/Independent_People
', 'Independent People', 1934);
INSERT INTO public.book VALUES (56, 'Giacomo Leopardi', 1, '
', 'Poems', 1818);
INSERT INTO public.book VALUES (57, 'Doris Lessing', 1, 'https://en.wikipedia.org/wiki/The_Golden_Notebook
', 'The Golden Notebook', 1962);
INSERT INTO public.book VALUES (58, 'Astrid Lindgren', 1, 'https://en.wikipedia.org/wiki/Pippi_Longstocking
', 'Pippi Longstocking', 1945);
INSERT INTO public.book VALUES (59, 'Lu Xun', 1, 'https://en.wikipedia.org/wiki/A_Madman%27s_Diary
', 'Diary of a Madman', 1918);
INSERT INTO public.book VALUES (60, 'Naguib Mahfouz', 1, 'https://en.wikipedia.org/wiki/Children_of_Gebelawi
', 'Children of Gebelawi', 1959);
INSERT INTO public.book VALUES (61, 'Thomas Mann', 1, 'https://en.wikipedia.org/wiki/Buddenbrooks
', 'Buddenbrooks', 1901);
INSERT INTO public.book VALUES (62, 'Thomas Mann', 1, 'https://en.wikipedia.org/wiki/The_Magic_Mountain
', 'The Magic Mountain', 1924);
INSERT INTO public.book VALUES (63, 'Herman Melville', 1, 'https://en.wikipedia.org/wiki/Moby-Dick
', 'Moby Dick', 1851);
INSERT INTO public.book VALUES (64, 'Michel de Montaigne', 1, 'https://en.wikipedia.org/wiki/Essays_(Montaigne)
', 'Essays', 1595);
INSERT INTO public.book VALUES (65, 'Elsa Morante', 1, 'https://en.wikipedia.org/wiki/History_(novel)
', 'History', 1974);
INSERT INTO public.book VALUES (66, 'Toni Morrison', 1, 'https://en.wikipedia.org/wiki/Beloved_(novel)
', 'Beloved', 1987);
INSERT INTO public.book VALUES (67, 'Murasaki Shikibu', 2, 'https://en.wikipedia.org/wiki/The_Tale_of_Genji
', 'The Tale of Genji', 1006);
INSERT INTO public.book VALUES (68, 'Robert Musil', 2, 'https://en.wikipedia.org/wiki/The_Man_Without_Qualities
', 'The Man Without Qualities', 1931);
INSERT INTO public.book VALUES (69, 'Vladimir Nabokov', 2, 'https://en.wikipedia.org/wiki/Lolita
', 'Lolita', 1955);
INSERT INTO public.book VALUES (70, 'George Orwell', 2, 'https://en.wikipedia.org/wiki/Nineteen_Eighty-Four
', 'Nineteen Eighty-Four', 1949);
INSERT INTO public.book VALUES (71, 'Ovid', 2, 'https://en.wikipedia.org/wiki/Metamorphoses
', 'Metamorphoses', 100);
INSERT INTO public.book VALUES (72, 'Fernando Pessoa', 2, 'https://en.wikipedia.org/wiki/The_Book_of_Disquiet
', 'The Book of Disquiet', 1928);
INSERT INTO public.book VALUES (73, 'Edgar Allan Poe', 2, 'https://en.wikipedia.org/wiki/Edgar_Allan_Poe_bibliography#Tales
', 'Tales', 1950);
INSERT INTO public.book VALUES (74, 'Marcel Proust', 2, 'https://en.wikipedia.org/wiki/In_Search_of_Lost_Time
', 'In Search of Lost Time', 1920);
INSERT INTO public.book VALUES (75, 'François Rabelais', 2, 'https://en.wikipedia.org/wiki/Gargantua_and_Pantagruel
', 'Gargantua and Pantagruel', 1533);
INSERT INTO public.book VALUES (76, 'Juan Rulfo', 2, 'https://en.wikipedia.org/wiki/Pedro_P%C3%A1ramo
', 'Pedro Páramo', 1955);
INSERT INTO public.book VALUES (77, 'Rumi', 2, 'https://en.wikipedia.org/wiki/Masnavi
', 'The Masnavi', 1236);
INSERT INTO public.book VALUES (78, 'Salman Rushdie', 2, 'https://en.wikipedia.org/wiki/Midnight%27s_Children
', 'Midnight''s Children', 1981);
INSERT INTO public.book VALUES (79, 'Saadi', 2, 'https://en.wikipedia.org/wiki/Bustan_(book)
', 'Bostan', 1257);
INSERT INTO public.book VALUES (80, 'Tayeb Salih', 2, 'https://en.wikipedia.org/wiki/Season_of_Migration_to_the_North
', 'Season of Migration to the North', 1966);
INSERT INTO public.book VALUES (81, 'José Saramago', 2, 'https://en.wikipedia.org/wiki/Blindness_(novel)
', 'Blindness', 1995);
INSERT INTO public.book VALUES (82, 'William Shakespeare', 2, 'https://en.wikipedia.org/wiki/Hamlet
', 'Hamlet', 1603);
INSERT INTO public.book VALUES (83, 'William Shakespeare', 2, 'https://en.wikipedia.org/wiki/King_Lear
', 'King Lear', 1608);
INSERT INTO public.book VALUES (84, 'William Shakespeare', 2, 'https://en.wikipedia.org/wiki/Othello
', 'Othello', 1609);
INSERT INTO public.book VALUES (85, 'Sophocles', 2, 'https://en.wikipedia.org/wiki/Oedipus_the_King
', 'Oedipus the King', -430);
INSERT INTO public.book VALUES (86, 'Stendhal', 2, 'https://en.wikipedia.org/wiki/The_Red_and_the_Black
', 'The Red and the Black', 1830);
INSERT INTO public.book VALUES (87, 'Laurence Sterne', 2, 'https://en.wikipedia.org/wiki/The_Life_and_Opinions_of_Tristram_Shandy,_Gentleman
', 'The Life And Opinions of Tristram Shandy', 1760);
INSERT INTO public.book VALUES (88, 'Italo Svevo', 2, 'https://en.wikipedia.org/wiki/Zeno%27s_Conscience
', 'Confessions of Zeno', 1923);
INSERT INTO public.book VALUES (89, 'Jonathan Swift', 2, 'https://en.wikipedia.org/wiki/Gulliver%27s_Travels
', 'Gulliver''s Travels', 1726);
INSERT INTO public.book VALUES (90, 'Leo Tolstoy', 2, 'https://en.wikipedia.org/wiki/War_and_Peace
', 'War and Peace', 1867);
INSERT INTO public.book VALUES (91, 'Leo Tolstoy', 2, 'https://en.wikipedia.org/wiki/Anna_Karenina
', 'Anna Karenina', 1877);
INSERT INTO public.book VALUES (92, 'Leo Tolstoy', 2, 'https://en.wikipedia.org/wiki/The_Death_of_Ivan_Ilyich
', 'The Death of Ivan Ilyich', 1886);
INSERT INTO public.book VALUES (93, 'Mark Twain', 2, 'https://en.wikipedia.org/wiki/Adventures_of_Huckleberry_Finn
', 'The Adventures of Huckleberry Finn', 1884);
INSERT INTO public.book VALUES (94, 'Valmiki', 2, 'https://en.wikipedia.org/wiki/Ramayana
', 'Ramayana', -450);
INSERT INTO public.book VALUES (95, 'Virgil', 2, 'https://en.wikipedia.org/wiki/Aeneid
', 'The Aeneid', -23);
INSERT INTO public.book VALUES (96, 'Vyasa', 2, 'https://en.wikipedia.org/wiki/Mahabharata
', 'Mahabharata', -700);
INSERT INTO public.book VALUES (97, 'Walt Whitman', 2, 'https://en.wikipedia.org/wiki/Leaves_of_Grass
', 'Leaves of Grass', 1855);
INSERT INTO public.book VALUES (98, 'Virginia Woolf', 2, 'https://en.wikipedia.org/wiki/Mrs_Dalloway
', 'Mrs Dalloway', 1925);
INSERT INTO public.book VALUES (99, 'Virginia Woolf', 2, 'https://en.wikipedia.org/wiki/To_the_Lighthouse
', 'To the Lighthouse', 1927);
INSERT INTO public.book VALUES (100, 'Marguerite Yourcenar', 2, 'https://en.wikipedia.org/wiki/Memoirs_of_Hadrian
', 'Memoirs of Hadrian', 1951);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.hibernate_sequence', 100, true);


--
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

