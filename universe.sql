--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    type character varying(30),
    size integer NOT NULL,
    distance integer NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    gm numeric(6,2),
    r numeric(5,1)
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
    name character varying(30),
    star_id integer NOT NULL,
    atmospheric boolean,
    liquid_water boolean,
    orbit_type text
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
-- Name: possible_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.possible_life (
    name character varying(30),
    star_id integer,
    life_id integer NOT NULL,
    possible_life_id integer NOT NULL
);


ALTER TABLE public.possible_life OWNER TO freecodecamp;

--
-- Name: posible_life_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.posible_life_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posible_life_life_id_seq OWNER TO freecodecamp;

--
-- Name: posible_life_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.posible_life_life_id_seq OWNED BY public.possible_life.life_id;


--
-- Name: possible_life_possible_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.possible_life_possible_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.possible_life_possible_life_id_seq OWNER TO freecodecamp;

--
-- Name: possible_life_possible_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.possible_life_possible_life_id_seq OWNED BY public.possible_life.possible_life_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    type character varying(30),
    mass numeric(5,2),
    diameter bigint NOT NULL,
    galaxy_id integer
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
-- Name: possible_life life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.possible_life ALTER COLUMN life_id SET DEFAULT nextval('public.posible_life_life_id_seq'::regclass);


--
-- Name: possible_life possible_life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.possible_life ALTER COLUMN possible_life_id SET DEFAULT nextval('public.possible_life_possible_life_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'SBb', 100, 1500);
INSERT INTO public.galaxy VALUES (2, 'Andromeda (M31)', 'SA(s)b', 220, 1200);
INSERT INTO public.galaxy VALUES (3, 'Sombrero (M104)', 'SA(s)a', 50, 800);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool (M51)', 'SA(s)bc', 76, 160);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Irregular', 14, 10);
INSERT INTO public.galaxy VALUES (6, 'NGC 1300', 'SB(s)bc', 110, 100);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (13, 6, 'Nereid', 2.06, 170.0);
INSERT INTO public.moon VALUES (1, 1, 'Moon', 4904.87, 1737.4);
INSERT INTO public.moon VALUES (2, 3, 'Io', 5959.90, 1821.6);
INSERT INTO public.moon VALUES (3, 3, 'Europa', 3202.70, 1560.8);
INSERT INTO public.moon VALUES (4, 3, 'Ganymede', 9887.80, 2634.4);
INSERT INTO public.moon VALUES (5, 3, 'Callisto', 7179.30, 2410.3);
INSERT INTO public.moon VALUES (6, 4, 'Titan', 8978.10, 2574.7);
INSERT INTO public.moon VALUES (7, 4, 'Enceladus', 7.21, 252.1);
INSERT INTO public.moon VALUES (8, 4, 'Rhea', 153.94, 763.8);
INSERT INTO public.moon VALUES (9, 4, 'Dione', 73.17, 561.4);
INSERT INTO public.moon VALUES (10, 4, 'Tethys', 41.21, 531.1);
INSERT INTO public.moon VALUES (11, 4, 'Mimas', 2.53, 198.2);
INSERT INTO public.moon VALUES (12, 6, 'Triton', 1427.60, 1353.4);
INSERT INTO public.moon VALUES (14, 9, 'Charon', 101.40, 606.0);
INSERT INTO public.moon VALUES (15, 2, 'Phobos', 0.07, 11.3);
INSERT INTO public.moon VALUES (17, 5, 'Oberon', 192.79, 761.4);
INSERT INTO public.moon VALUES (18, 5, 'Titania', 228.20, 788.4);
INSERT INTO public.moon VALUES (19, 5, 'Umbriel', 127.80, 584.7);
INSERT INTO public.moon VALUES (20, 5, 'Ariel', 86.37, 578.9);
INSERT INTO public.moon VALUES (16, 2, 'Deimos', 0.01, 6.2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, true, 'Inner planet');
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, true, 'Inner planet');
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, true, false, 'Outer planet');
INSERT INTO public.planet VALUES (4, 'Saturn', 1, true, false, 'Outer planet');
INSERT INTO public.planet VALUES (5, 'Uranus', 1, true, false, 'Outer planet');
INSERT INTO public.planet VALUES (6, 'Neptune', 1, true, false, 'Outer planet');
INSERT INTO public.planet VALUES (7, 'Mercury', 1, false, false, 'Inner planet');
INSERT INTO public.planet VALUES (8, 'Venus', 1, true, false, 'Inner planet');
INSERT INTO public.planet VALUES (9, 'Pluto', 1, false, false, 'Outer planet');
INSERT INTO public.planet VALUES (12, 'Gliese 581 c', 10, true, true, 'Habitable zone');
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 9, true, false, 'Outer planet');
INSERT INTO public.planet VALUES (10, 'Kepler 22b', 8, true, true, 'Habitable zone');


--
-- Data for Name: possible_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.possible_life VALUES ('Earth', 1, 1, 1);
INSERT INTO public.possible_life VALUES ('Gliese 581 c', 10, 2, 2);
INSERT INTO public.possible_life VALUES ('Kepler 22b', 8, 3, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'R136a1', 'Wolf-Rayet star', 215.00, 17000000, 5);
INSERT INTO public.star VALUES (1, 'Sun', 'G-type main sequence star', 1.00, 1392700, 1);
INSERT INTO public.star VALUES (2, 'Sirius A', 'A-type main sequence star', 2.02, 2375000, 1);
INSERT INTO public.star VALUES (3, 'Betelgause', 'Red supergiant', 20.00, 1200000000, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 'Blue supergiant', 18.00, 109000000, 1);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 'Red dwaft', 0.12, 200, 1);
INSERT INTO public.star VALUES (8, 'Kepler-22', 'G-type main sequence star', 0.97, 1320000, 1);
INSERT INTO public.star VALUES (9, 'HD 209458', 'G-type main sequence star', 1.13, 1520000, 1);
INSERT INTO public.star VALUES (10, 'Gliese 581', 'M-type red dwaft', 0.31, 400, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: posible_life_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.posible_life_life_id_seq', 3, true);


--
-- Name: possible_life_possible_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.possible_life_possible_life_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: possible_life possible_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.possible_life
    ADD CONSTRAINT possible_life_pkey PRIMARY KEY (possible_life_id);


--
-- Name: possible_life possible_life_possible_life_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.possible_life
    ADD CONSTRAINT possible_life_possible_life_id_key UNIQUE (possible_life_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

