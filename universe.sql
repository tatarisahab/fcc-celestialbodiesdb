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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: fifthtable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifthtable (
    fifthtable_id integer NOT NULL,
    size integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.fifthtable OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    distancefromearth numeric,
    age integer,
    size integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    eclipse boolean,
    planet_id integer NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    planet_description text,
    star_id integer NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    big_star boolean,
    age integer,
    galaxy_id integer NOT NULL,
    size integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifthtable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifthtable VALUES (1, 24, 'kuchbhi');
INSERT INTO public.fifthtable VALUES (2, 245, 'sfsad');
INSERT INTO public.fifthtable VALUES (3, 45, 'sdsa');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'milkyway', 4512, 72, 27);
INSERT INTO public.galaxy VALUES (3, 'sexyway', 2457, 32, 34);
INSERT INTO public.galaxy VALUES (4, 'highway', 4521, 545, 42);
INSERT INTO public.galaxy VALUES (6, 'lowfi', NULL, NULL, 45);
INSERT INTO public.galaxy VALUES (7, 'noway', NULL, NULL, 46);
INSERT INTO public.galaxy VALUES (8, 'myway', NULL, NULL, 25);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', true, 1, 451);
INSERT INTO public.moon VALUES (2, 'europa', false, 3, 786);
INSERT INTO public.moon VALUES (3, 'phobos', true, 2, 452);
INSERT INTO public.moon VALUES (4, NULL, NULL, 1, 12);
INSERT INTO public.moon VALUES (5, NULL, NULL, 1, 23);
INSERT INTO public.moon VALUES (6, NULL, NULL, 1, 24);
INSERT INTO public.moon VALUES (7, NULL, NULL, 1, 25);
INSERT INTO public.moon VALUES (8, NULL, NULL, 1, 26);
INSERT INTO public.moon VALUES (9, NULL, NULL, 1, 27);
INSERT INTO public.moon VALUES (10, NULL, NULL, 1, 28);
INSERT INTO public.moon VALUES (11, NULL, NULL, 1, 29);
INSERT INTO public.moon VALUES (12, NULL, NULL, 1, 30);
INSERT INTO public.moon VALUES (13, NULL, NULL, 1, 122);
INSERT INTO public.moon VALUES (14, NULL, NULL, 1, 232);
INSERT INTO public.moon VALUES (15, NULL, NULL, 1, 224);
INSERT INTO public.moon VALUES (16, NULL, NULL, 1, 225);
INSERT INTO public.moon VALUES (17, NULL, NULL, 1, 226);
INSERT INTO public.moon VALUES (18, NULL, NULL, 1, 227);
INSERT INTO public.moon VALUES (19, NULL, NULL, 1, 228);
INSERT INTO public.moon VALUES (20, NULL, NULL, 1, 229);
INSERT INTO public.moon VALUES (21, NULL, NULL, 1, 320);
INSERT INTO public.moon VALUES (22, NULL, NULL, 2, 321);
INSERT INTO public.moon VALUES (23, NULL, NULL, 2, 322);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'terresterial', 2, 254);
INSERT INTO public.planet VALUES (2, 'mars', 'terresterial', 4, 145);
INSERT INTO public.planet VALUES (3, 'jupyter', 'gaseous', 3, 354);
INSERT INTO public.planet VALUES (19, NULL, NULL, 2, 35);
INSERT INTO public.planet VALUES (20, NULL, NULL, 2, 45);
INSERT INTO public.planet VALUES (21, NULL, NULL, 3, 78);
INSERT INTO public.planet VALUES (22, NULL, NULL, 3, 98);
INSERT INTO public.planet VALUES (23, NULL, NULL, 3, 152);
INSERT INTO public.planet VALUES (24, NULL, NULL, 2, 457);
INSERT INTO public.planet VALUES (25, NULL, NULL, 4, 125);
INSERT INTO public.planet VALUES (26, NULL, NULL, 4, 70);
INSERT INTO public.planet VALUES (27, NULL, NULL, 4, 100);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'orion', false, 45, 2, 4578);
INSERT INTO public.star VALUES (3, 'sirius', true, 25, 2, 4568);
INSERT INTO public.star VALUES (4, 'loreal', true, 75, 3, 4598);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, 2, 32);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, 2, 45);
INSERT INTO public.star VALUES (7, NULL, NULL, NULL, 3, 75);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 27, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: fifthtable fifthtable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable
    ADD CONSTRAINT fifthtable_pkey PRIMARY KEY (fifthtable_id);


--
-- Name: fifthtable fifthtable_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifthtable
    ADD CONSTRAINT fifthtable_size_key UNIQUE (size);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_key UNIQUE (size);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_size_key UNIQUE (size);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (size);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

