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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    major_axis integer,
    minor_axis integer,
    morphology character varying(50)
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
    name character varying(40) NOT NULL,
    radius_km numeric(5,1),
    planet_id integer NOT NULL,
    year character varying(20)
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
    name character varying(40) NOT NULL,
    planet_type text,
    is_habitable boolean,
    has_moons boolean,
    star_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    diameter_r integer,
    galaxy_id integer NOT NULL,
    notes text
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, '4U 1543-475', 'Binary star system with orbit t = 26.8 h');
INSERT INTO public.black_hole VALUES (2, 'Sagittarius A', 'Supermassive black hole');
INSERT INTO public.black_hole VALUES (3, 'GRO J1655-40', 'Binary star system with orbit t = 2.6 d');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 87400, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'NGC 262', 101100, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Malin 1', 118700, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 118800, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Andromeda Galaxy', 152300, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Alcyoneus', 242900, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1738.0, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 11.3, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 6.2, 4, NULL);
INSERT INTO public.moon VALUES (4, 'Lo', 1821.6, 5, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 1560.8, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634.1, 5, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 2410.3, 5, NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', 83.5, 5, NULL);
INSERT INTO public.moon VALUES (9, 'Himalia', 69.8, 5, NULL);
INSERT INTO public.moon VALUES (10, 'Elara', 43.0, 5, NULL);
INSERT INTO public.moon VALUES (11, 'Pasiphae', 30.0, 5, NULL);
INSERT INTO public.moon VALUES (12, 'Sinope', 19.0, 5, NULL);
INSERT INTO public.moon VALUES (13, 'Lysithea', 18.0, 5, NULL);
INSERT INTO public.moon VALUES (14, 'Carme', 23.0, 5, NULL);
INSERT INTO public.moon VALUES (15, 'Ananke', 14.0, 5, NULL);
INSERT INTO public.moon VALUES (16, 'leda', 10.0, 5, NULL);
INSERT INTO public.moon VALUES (17, 'Thebe', 49.3, 5, NULL);
INSERT INTO public.moon VALUES (18, 'Adrastea', 8.2, 5, NULL);
INSERT INTO public.moon VALUES (19, 'Metis', 21.5, 5, NULL);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 4.5, 5, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', false, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Ceres', 'Dwarf', false, false, 1);
INSERT INTO public.planet VALUES (11, 'Eris', 'Dwarf', false, false, 1);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Dwarf', false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1, NULL);
INSERT INTO public.star VALUES (2, 'Vega', 3, 1, NULL);
INSERT INTO public.star VALUES (3, 'Deneb', 200, 1, NULL);
INSERT INTO public.star VALUES (4, 'Suhail', 210, 1, NULL);
INSERT INTO public.star VALUES (5, 'Enif', 210, 1, NULL);
INSERT INTO public.star VALUES (6, 'Wezen', 215, 1, NULL);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_designation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_designation_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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

