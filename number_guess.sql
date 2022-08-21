--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 28, 12);
INSERT INTO public.games VALUES (2, 917, 13);
INSERT INTO public.games VALUES (3, 908, 13);
INSERT INTO public.games VALUES (4, 405, 14);
INSERT INTO public.games VALUES (5, 696, 14);
INSERT INTO public.games VALUES (6, 296, 13);
INSERT INTO public.games VALUES (7, 440, 13);
INSERT INTO public.games VALUES (8, 720, 13);
INSERT INTO public.games VALUES (9, 471, 15);
INSERT INTO public.games VALUES (10, 118, 15);
INSERT INTO public.games VALUES (11, 25, 16);
INSERT INTO public.games VALUES (12, 62, 16);
INSERT INTO public.games VALUES (13, 400, 15);
INSERT INTO public.games VALUES (14, 700, 15);
INSERT INTO public.games VALUES (15, 541, 15);
INSERT INTO public.games VALUES (16, 303, 18);
INSERT INTO public.games VALUES (17, 650, 18);
INSERT INTO public.games VALUES (18, 512, 19);
INSERT INTO public.games VALUES (19, 127, 19);
INSERT INTO public.games VALUES (20, 393, 18);
INSERT INTO public.games VALUES (21, 401, 18);
INSERT INTO public.games VALUES (22, 773, 18);
INSERT INTO public.games VALUES (23, 10, 17);
INSERT INTO public.games VALUES (24, 313, 21);
INSERT INTO public.games VALUES (25, 579, 21);
INSERT INTO public.games VALUES (26, 316, 22);
INSERT INTO public.games VALUES (27, 77, 22);
INSERT INTO public.games VALUES (28, 677, 21);
INSERT INTO public.games VALUES (29, 564, 21);
INSERT INTO public.games VALUES (30, 644, 21);
INSERT INTO public.games VALUES (31, 9, 23);
INSERT INTO public.games VALUES (32, 434, 24);
INSERT INTO public.games VALUES (33, 922, 24);
INSERT INTO public.games VALUES (34, 696, 25);
INSERT INTO public.games VALUES (35, 469, 25);
INSERT INTO public.games VALUES (36, 780, 24);
INSERT INTO public.games VALUES (37, 588, 24);
INSERT INTO public.games VALUES (38, 409, 24);
INSERT INTO public.games VALUES (39, 10, 26);
INSERT INTO public.games VALUES (40, 780, 27);
INSERT INTO public.games VALUES (41, 910, 27);
INSERT INTO public.games VALUES (42, 297, 28);
INSERT INTO public.games VALUES (43, 594, 28);
INSERT INTO public.games VALUES (44, 149, 27);
INSERT INTO public.games VALUES (45, 460, 27);
INSERT INTO public.games VALUES (46, 788, 27);
INSERT INTO public.games VALUES (47, 608, 29);
INSERT INTO public.games VALUES (48, 988, 29);
INSERT INTO public.games VALUES (49, 517, 30);
INSERT INTO public.games VALUES (50, 710, 30);
INSERT INTO public.games VALUES (51, 754, 29);
INSERT INTO public.games VALUES (52, 224, 29);
INSERT INTO public.games VALUES (53, 499, 29);
INSERT INTO public.games VALUES (54, 501, 31);
INSERT INTO public.games VALUES (55, 842, 31);
INSERT INTO public.games VALUES (56, 103, 32);
INSERT INTO public.games VALUES (57, 659, 32);
INSERT INTO public.games VALUES (58, 662, 31);
INSERT INTO public.games VALUES (59, 121, 31);
INSERT INTO public.games VALUES (60, 726, 31);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1661097543085');
INSERT INTO public.users VALUES (2, 'user_1661097543084');
INSERT INTO public.users VALUES (3, '1');
INSERT INTO public.users VALUES (4, 'user_1661097573794');
INSERT INTO public.users VALUES (5, 'user_1661097573793');
INSERT INTO public.users VALUES (6, 'user_1661097635070');
INSERT INTO public.users VALUES (7, 'user_1661097635069');
INSERT INTO public.users VALUES (8, 'user_1661097679106');
INSERT INTO public.users VALUES (9, 'user_1661097679105');
INSERT INTO public.users VALUES (10, 'user_1661098144155');
INSERT INTO public.users VALUES (11, 'user_1661098144154');
INSERT INTO public.users VALUES (12, 'BARIS');
INSERT INTO public.users VALUES (13, 'user_1661098571078');
INSERT INTO public.users VALUES (14, 'user_1661098571077');
INSERT INTO public.users VALUES (15, 'user_1661098624087');
INSERT INTO public.users VALUES (16, 'user_1661098624086');
INSERT INTO public.users VALUES (17, 'qw');
INSERT INTO public.users VALUES (18, 'user_1661098654025');
INSERT INTO public.users VALUES (19, 'user_1661098654024');
INSERT INTO public.users VALUES (20, 'we');
INSERT INTO public.users VALUES (21, 'user_1661098823096');
INSERT INTO public.users VALUES (22, 'user_1661098823095');
INSERT INTO public.users VALUES (23, 'df');
INSERT INTO public.users VALUES (24, 'user_1661099025276');
INSERT INTO public.users VALUES (25, 'user_1661099025275');
INSERT INTO public.users VALUES (26, 'AS');
INSERT INTO public.users VALUES (27, 'user_1661099080349');
INSERT INTO public.users VALUES (28, 'user_1661099080348');
INSERT INTO public.users VALUES (29, 'user_1661099127127');
INSERT INTO public.users VALUES (30, 'user_1661099127126');
INSERT INTO public.users VALUES (31, 'user_1661099159941');
INSERT INTO public.users VALUES (32, 'user_1661099159940');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 60, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

