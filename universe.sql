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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    name character varying(30) NOT NULL,
    main_star text NOT NULL,
    star_type character varying(40),
    constelation_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelation_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelation_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelation_constelation_id_seq OWNED BY public.constelation.constelation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    type character varying(40),
    caracteristics text,
    diameter_inlightyear numeric(6,3) NOT NULL,
    galaxy_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    has_atmosphere boolean,
    planet_orbiting text,
    crater_count integer NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    diameter_inkm numeric,
    quanty_moons integer,
    planet_id integer NOT NULL,
    star_id integer
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
    name character varying(30) NOT NULL,
    spectral_type character varying(10),
    mass_solarmasses numeric,
    distance_from_earth_inlightyear numeric,
    star_id integer NOT NULL,
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
-- Name: constelation constelation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation ALTER COLUMN constelation_id SET DEFAULT nextval('public.constelation_constelation_id_seq'::regclass);


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
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES ('Ursa Minor', 'Polaris', 'Supergiant', 1, NULL);
INSERT INTO public.constelation VALUES ('Orion', 'Betelgeuse', 'Red Supergiant', 2, 3);
INSERT INTO public.constelation VALUES ('Canis Major', 'Sirius', 'Main Sequence', 3, 2);
INSERT INTO public.constelation VALUES ('Ophiuchus', 'Barnard Star', 'Red dwarf', 4, 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 'Barred spiral galaxy', 'Contains a supermassive black hole at its center, known as Sagittarius A*', 100.000, 1);
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 'Spiral galaxy', 'Has a prominent halo of old stars an globular clusters', 220.000, 2);
INSERT INTO public.galaxy VALUES ('Sombrero (M104)', 'Lenticular galaxy', 'Is surrounded by a large halo of globular clusters', 50.000, 3);
INSERT INTO public.galaxy VALUES ('NGC 4565', 'Spiral galaxy', 'Has a prominent central bluge and a thin, extended disk', 100.000, 4);
INSERT INTO public.galaxy VALUES ('Centauro A (NGC 5128)', 'Lenticular galaxy with a dust lane', 'Has a complex structure with evidence of recent star formation', 150.000, 5);
INSERT INTO public.galaxy VALUES ('M87', 'Giant elliptical galaxy', 'Host one of the most massive black holes ever measured, with a mass billions of times that of the Sun', 150.000, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Io', false, 'Jupiter', 100, 1, 5);
INSERT INTO public.moon VALUES ('Europa', false, 'Jupiter', 20, 2, 5);
INSERT INTO public.moon VALUES ('Ganymede', false, 'Jupiter', 150, 3, 5);
INSERT INTO public.moon VALUES ('Callisto', false, 'Jupiter', 200, 4, 5);
INSERT INTO public.moon VALUES ('Titan', true, 'Saturn', 0, 5, 6);
INSERT INTO public.moon VALUES ('Rhea', false, 'Saturn', 100, 6, 6);
INSERT INTO public.moon VALUES ('Enceladus', false, 'Saturn', 30, 7, 6);
INSERT INTO public.moon VALUES ('Triton', true, 'Neptune', 50, 8, 8);
INSERT INTO public.moon VALUES ('Miranda', false, 'Uranus', 30, 9, 7);
INSERT INTO public.moon VALUES ('Ariel', false, 'Uranus', 40, 10, 7);
INSERT INTO public.moon VALUES ('Oberon', false, 'Uranus', 30, 11, 7);
INSERT INTO public.moon VALUES ('Titania', false, 'Uranus', 20, 12, 7);
INSERT INTO public.moon VALUES ('Phobos', false, 'Mars', 200, 13, 4);
INSERT INTO public.moon VALUES ('Deimos', false, 'Mars', 30, 14, 4);
INSERT INTO public.moon VALUES ('Charon', false, 'Pluto', 25, 15, 9);
INSERT INTO public.moon VALUES ('Dysnomia', false, 'Eris', 0, 16, 10);
INSERT INTO public.moon VALUES ('Mimas', false, 'Saturn', 40, 17, 6);
INSERT INTO public.moon VALUES ('Hyperion', false, 'Saturn', 50, 18, 6);
INSERT INTO public.moon VALUES ('Janus', false, 'Saturn', 10, 19, 6);
INSERT INTO public.moon VALUES ('Epimetheus', false, 'Saturn', 5, 20, 6);
INSERT INTO public.moon VALUES ('Proteus', false, 'Neptune', 20, 21, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', false, 4.880, 0, 1, 2);
INSERT INTO public.planet VALUES ('Venus', false, 12.104, 0, 2, 3);
INSERT INTO public.planet VALUES ('Earth', true, 12.742, 1, 3, 1);
INSERT INTO public.planet VALUES ('Mars', false, 6.779, 2, 4, 6);
INSERT INTO public.planet VALUES ('Jupiter', false, 139.820, 79, 5, 3);
INSERT INTO public.planet VALUES ('Saturn', false, 116.460, 83, 6, 1);
INSERT INTO public.planet VALUES ('Uranus', false, 50.724, 27, 7, 4);
INSERT INTO public.planet VALUES ('Neptune', false, 49.244, 14, 8, 2);
INSERT INTO public.planet VALUES ('Pluto', false, 2.377, 5, 9, 5);
INSERT INTO public.planet VALUES ('Eris', false, 2.326, 1, 10, 2);
INSERT INTO public.planet VALUES ('Haumea', false, 1960, 2, 11, 4);
INSERT INTO public.planet VALUES ('Makemake', false, 1430, 1, 12, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 'G2V', 1, 8.6, 1, 1);
INSERT INTO public.star VALUES ('Sirius', 'A1V', 2.3, 8.6, 2, 1);
INSERT INTO public.star VALUES ('Betelgeuse', 'M2lab', 20, 640, 3, 1);
INSERT INTO public.star VALUES ('Rigel', 'B8la', 18, 860, 4, 1);
INSERT INTO public.star VALUES ('Barnard Star', 'M4V', 0.17, 5.9, 5, 1);
INSERT INTO public.star VALUES ('VY Canis Majoris', 'M5lb-laf', 170, 3.900, 6, 1);


--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelation_constelation_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constelation constelation_constelation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_constelation_id_key UNIQUE (constelation_id);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_spectral_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_spectral_type_key UNIQUE (spectral_type);


--
-- Name: constelation constelation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

