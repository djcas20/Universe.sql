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
-- Name: cometas; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cometas (
    cometas_id integer NOT NULL,
    name character varying(25),
    tamano_km numeric(5,2) NOT NULL,
    descubrimiento integer NOT NULL
);


ALTER TABLE public.cometas OWNER TO freecodecamp;

--
-- Name: cometas_cometas_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cometas_cometas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cometas_cometas_id_seq OWNER TO freecodecamp;

--
-- Name: cometas_cometas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cometas_cometas_id_seq OWNED BY public.cometas.cometas_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    galaxy_type text NOT NULL,
    stargalaxy_id integer NOT NULL,
    star text
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
    name character varying(25) NOT NULL,
    diametro numeric(6,2) NOT NULL,
    ano_descubrimiento integer
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
    name character varying(20) NOT NULL,
    has_moon boolean NOT NULL,
    has_life boolean NOT NULL,
    superficie integer NOT NULL,
    distancia_estelar integer NOT NULL,
    constelacion_id_star integer
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
    name character varying(25) NOT NULL,
    radio double precision NOT NULL,
    stargalaxy_id integer NOT NULL,
    luminosidad integer NOT NULL,
    constelacion_id_star integer,
    descripcion text
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
-- Name: cometas cometas_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometas ALTER COLUMN cometas_id SET DEFAULT nextval('public.cometas_cometas_id_seq'::regclass);


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
-- Data for Name: cometas; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cometas VALUES (1, 'Halley', 5.50, 1759);
INSERT INTO public.cometas VALUES (2, 'C 2014 UN271', 136.80, 2014);
INSERT INTO public.cometas VALUES (3, 'Hale-Bopp', 30.00, 1995);
INSERT INTO public.cometas VALUES (4, 'Hyakutake', 1.25, 1996);
INSERT INTO public.cometas VALUES (5, 'Encke', 2.40, 1786);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vida lactea', 'Espiral', 1, '100-400 miles de millones');
INSERT INTO public.galaxy VALUES (2, 'Enana del can Mayor', 'Eliptica', 2, '1 mil millones');
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Espiral', 3, '1 billon');
INSERT INTO public.galaxy VALUES (4, 'Gran nube de magallanes', 'Irregular', 4, '30  miles de millones');
INSERT INTO public.galaxy VALUES (5, 'Enana de bootes', 'Esferica', 5, '144 miles de  millones');
INSERT INTO public.galaxy VALUES (6, 'IC 1101', 'Eliptica', 6, '100 billones');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Luna', 3474.80, 150);
INSERT INTO public.moon VALUES (2, 2, 'Fobos', 22.53, 1877);
INSERT INTO public.moon VALUES (3, 2, 'deimos', 8000.00, 1877);
INSERT INTO public.moon VALUES (4, 3, 'Caronte', 1208.00, 1978);
INSERT INTO public.moon VALUES (5, 3, 'Hidra', 2240.00, 2005);
INSERT INTO public.moon VALUES (6, 3, 'Nix', 95.00, 2005);
INSERT INTO public.moon VALUES (7, 3, 'Cerbero', 30.00, 2011);
INSERT INTO public.moon VALUES (8, 3, 'Estigia', 25.00, 2012);
INSERT INTO public.moon VALUES (9, 7, 'Ariel', 115.80, 1851);
INSERT INTO public.moon VALUES (10, 7, 'Belinda', 81.00, 1986);
INSERT INTO public.moon VALUES (11, 7, 'bianca', 54.00, 1986);
INSERT INTO public.moon VALUES (12, 7, 'Cupido', 18.00, 2003);
INSERT INTO public.moon VALUES (13, 5, 'Egeon', 2000.00, 2009);
INSERT INTO public.moon VALUES (14, 5, 'Atlas', 3700.00, 1980);
INSERT INTO public.moon VALUES (15, 5, 'Dafne', 7000.00, 2005);
INSERT INTO public.moon VALUES (16, 5, 'Kari', 7000.00, 2006);
INSERT INTO public.moon VALUES (17, 4, 'Arce', 3000.00, 2002);
INSERT INTO public.moon VALUES (18, 4, 'Cale', 2000.00, 2001);
INSERT INTO public.moon VALUES (19, 4, 'Elara', 8600.00, 1980);
INSERT INTO public.moon VALUES (20, 4, 'Europa', 3121.60, 1610);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', true, true, 510000000, 0, 1);
INSERT INTO public.planet VALUES (2, 'Marte', true, false, 144798500, 54600, 1);
INSERT INTO public.planet VALUES (3, 'Pluton', true, false, 17000000, 34000, 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', true, false, 614200000, 588000, 2);
INSERT INTO public.planet VALUES (5, 'Saturno', true, false, 427000000, 195000, 5);
INSERT INTO public.planet VALUES (6, 'Neptuno', true, false, 76180000, 300000, 6);
INSERT INTO public.planet VALUES (7, 'Urano', true, false, 80830000, 600000, 7);
INSERT INTO public.planet VALUES (8, 'Venus', false, false, 460200000, 261000, 8);
INSERT INTO public.planet VALUES (9, 'Mercurio', false, false, 74800000, 82000, 9);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', false, false, 816000000, 100000, 4);
INSERT INTO public.planet VALUES (11, 'Ceres', false, false, 2850000, 450000, 5);
INSERT INTO public.planet VALUES (12, 'Eris', true, false, 14000000, 150000, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'KY Cygni', 1420, 1, 270000, 1, NULL);
INSERT INTO public.star VALUES (2, 'VY Canis mayoris', 1420, 1, 270000, 2, NULL);
INSERT INTO public.star VALUES (3, 'Deneb', 203, 1, 184000, 3, NULL);
INSERT INTO public.star VALUES (4, 'HD 84810', 160, 1, 13500, 4, NULL);
INSERT INTO public.star VALUES (5, 'Sol', 1, 1, 1, 5, NULL);
INSERT INTO public.star VALUES (6, 'Alubra', 39.16, 2, 105400, 6, NULL);
INSERT INTO public.star VALUES (7, 'Alpheratz', 11000, 3, 200, 7, NULL);
INSERT INTO public.star VALUES (8, 'Avior', 153, 1, 6000, 8, NULL);
INSERT INTO public.star VALUES (9, 'Pi Puppis', 290, 1, 19200, 9, NULL);
INSERT INTO public.star VALUES (10, 'IX CARINAE', 920, 1, 133000, 10, NULL);


--
-- Name: cometas_cometas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cometas_cometas_id_seq', 33, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: cometas cometas_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometas
    ADD CONSTRAINT cometas_name_key UNIQUE (name);


--
-- Name: cometas cometas_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cometas
    ADD CONSTRAINT cometas_pkey PRIMARY KEY (cometas_id);


--
-- Name: star constelacion_id_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constelacion_id_star_key UNIQUE (constelacion_id_star);


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
-- Name: planet name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy stargalaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT stargalaxy_id_key UNIQUE (stargalaxy_id);


--
-- Name: planet constelacion_id_star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constelacion_id_star_fk FOREIGN KEY (constelacion_id_star) REFERENCES public.star(constelacion_id_star);


--
-- Name: moon planet_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star stargalaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stargalaxy_id_fk FOREIGN KEY (stargalaxy_id) REFERENCES public.galaxy(stargalaxy_id);


--
-- PostgreSQL database dump complete
--

