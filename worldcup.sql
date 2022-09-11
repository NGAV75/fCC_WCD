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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (167, 2018, 'Final', 198, 199, 4, 2);
INSERT INTO public.games VALUES (168, 2018, 'Third Place', 200, 201, 2, 0);
INSERT INTO public.games VALUES (169, 2018, 'Semi-Final', 199, 201, 2, 1);
INSERT INTO public.games VALUES (170, 2018, 'Semi-Final', 198, 200, 1, 0);
INSERT INTO public.games VALUES (171, 2018, 'Quarter-Final', 199, 202, 3, 2);
INSERT INTO public.games VALUES (172, 2018, 'Quarter-Final', 201, 203, 2, 0);
INSERT INTO public.games VALUES (173, 2018, 'Quarter-Final', 200, 204, 2, 1);
INSERT INTO public.games VALUES (174, 2018, 'Quarter-Final', 198, 205, 2, 0);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 201, 206, 2, 1);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 203, 207, 1, 0);
INSERT INTO public.games VALUES (177, 2018, 'Eighth-Final', 200, 208, 3, 2);
INSERT INTO public.games VALUES (178, 2018, 'Eighth-Final', 204, 209, 2, 0);
INSERT INTO public.games VALUES (179, 2018, 'Eighth-Final', 199, 210, 2, 1);
INSERT INTO public.games VALUES (180, 2018, 'Eighth-Final', 202, 211, 2, 1);
INSERT INTO public.games VALUES (181, 2018, 'Eighth-Final', 205, 212, 2, 1);
INSERT INTO public.games VALUES (182, 2018, 'Eighth-Final', 198, 213, 4, 3);
INSERT INTO public.games VALUES (183, 2014, 'Final', 214, 213, 1, 0);
INSERT INTO public.games VALUES (184, 2014, 'Third Place', 215, 204, 3, 0);
INSERT INTO public.games VALUES (185, 2014, 'Semi-Final', 213, 215, 1, 0);
INSERT INTO public.games VALUES (186, 2014, 'Semi-Final', 214, 204, 7, 1);
INSERT INTO public.games VALUES (187, 2014, 'Quarter-Final', 215, 216, 1, 0);
INSERT INTO public.games VALUES (188, 2014, 'Quarter-Final', 213, 200, 1, 0);
INSERT INTO public.games VALUES (189, 2014, 'Quarter-Final', 204, 206, 2, 1);
INSERT INTO public.games VALUES (190, 2014, 'Quarter-Final', 214, 198, 1, 0);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 204, 217, 2, 1);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 206, 205, 2, 0);
INSERT INTO public.games VALUES (193, 2014, 'Eighth-Final', 198, 218, 2, 0);
INSERT INTO public.games VALUES (194, 2014, 'Eighth-Final', 214, 219, 2, 1);
INSERT INTO public.games VALUES (195, 2014, 'Eighth-Final', 215, 209, 2, 1);
INSERT INTO public.games VALUES (196, 2014, 'Eighth-Final', 216, 220, 2, 1);
INSERT INTO public.games VALUES (197, 2014, 'Eighth-Final', 213, 207, 1, 0);
INSERT INTO public.games VALUES (198, 2014, 'Eighth-Final', 200, 221, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (198, 'France');
INSERT INTO public.teams VALUES (199, 'Croatia');
INSERT INTO public.teams VALUES (200, 'Belgium');
INSERT INTO public.teams VALUES (201, 'England');
INSERT INTO public.teams VALUES (202, 'Russia');
INSERT INTO public.teams VALUES (203, 'Sweden');
INSERT INTO public.teams VALUES (204, 'Brazil');
INSERT INTO public.teams VALUES (205, 'Uruguay');
INSERT INTO public.teams VALUES (206, 'Colombia');
INSERT INTO public.teams VALUES (207, 'Switzerland');
INSERT INTO public.teams VALUES (208, 'Japan');
INSERT INTO public.teams VALUES (209, 'Mexico');
INSERT INTO public.teams VALUES (210, 'Denmark');
INSERT INTO public.teams VALUES (211, 'Spain');
INSERT INTO public.teams VALUES (212, 'Portugal');
INSERT INTO public.teams VALUES (213, 'Argentina');
INSERT INTO public.teams VALUES (214, 'Germany');
INSERT INTO public.teams VALUES (215, 'Netherlands');
INSERT INTO public.teams VALUES (216, 'Costa Rica');
INSERT INTO public.teams VALUES (217, 'Chile');
INSERT INTO public.teams VALUES (218, 'Nigeria');
INSERT INTO public.teams VALUES (219, 'Algeria');
INSERT INTO public.teams VALUES (220, 'Greece');
INSERT INTO public.teams VALUES (221, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 198, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 221, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_gaems_teams_opo; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_gaems_teams_opo FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_teams FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

