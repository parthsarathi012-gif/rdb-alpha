--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(140) NOT NULL,
    has_life boolean DEFAULT false NOT NULL,
<<<<<<< HEAD
    age_in_billions numeric(5,2) NOT NULL,
    number_of_stars integer NOT NULL,
    galaxy_type character varying(60)
=======
    age numeric(5,2) NOT NULL,
    num_stars integer NOT NULL,
    type character varying(60)
>>>>>>> b41e2ddcd3f9d2f70888bf23f865de17a3c88e0b
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
<<<<<<< HEAD
-- Name: TABLE galaxy; Type: COMMENT; Schema: public; Owner: freecodecamp
--

COMMENT ON TABLE public.galaxy IS 'Tracks major galaxies and basic structural data';


--
=======
>>>>>>> b41e2ddcd3f9d2f70888bf23f865de17a3c88e0b
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
    name character varying(85) NOT NULL,
    planet_id integer NOT NULL,
    radius_km integer NOT NULL,
    is_spherical boolean DEFAULT true NOT NULL,
    discovery_year integer
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
    name character varying(95) NOT NULL,
    star_id integer NOT NULL,
    has_water boolean NOT NULL,
    distance_from_star_au numeric(8,4),
    planet_description text
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
-- Name: space_mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_mission (
    space_mission_id integer NOT NULL,
    name character varying(180) NOT NULL,
    launch_year integer NOT NULL,
    was_successful boolean NOT NULL,
    agency_name character varying(90) DEFAULT 'NASA'::character varying
);


ALTER TABLE public.space_mission OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_mission_space_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_mission_space_mission_id_seq OWNER TO freecodecamp;

--
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_mission_space_mission_id_seq OWNED BY public.space_mission.space_mission_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(110) NOT NULL,
    galaxy_id integer NOT NULL,
    temperature_kelvin integer NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    spectral_class character varying(8)
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
-- Name: space_mission space_mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission ALTER COLUMN space_mission_id SET DEFAULT nextval('public.space_mission_space_mission_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

<<<<<<< HEAD
INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 13.61, 200, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 10.01, 1000, 'Elliptical');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 12.00, 40, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', false, 13.25, 800, 'Unbarred Spiral');
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', false, 11.80, 500, 'Lenticular');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', false, 12.70, 300, 'Grand Design Spiral');
=======
INSERT INTO public.galaxy VALUES (1, 'cool galaxy 1', true, 12.50, 100, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'BIG GALAXY', false, 10.20, 500, 'round');
INSERT INTO public.galaxy VALUES (3, 'milkyway 2', true, 13.00, 250, 'cool');
INSERT INTO public.galaxy VALUES (4, 'space place', false, 9.90, 80, 'crazy');
INSERT INTO public.galaxy VALUES (5, 'star land', false, 11.10, 999, 'big');
INSERT INTO public.galaxy VALUES (6, 'last galaxy', false, 14.20, 310, 'old');
>>>>>>> b41e2ddcd3f9d2f70888bf23f865de17a3c88e0b


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

<<<<<<< HEAD
INSERT INTO public.moon VALUES (1, 'The Moon', 3, 1737, true, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 11, false, 1877);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 6, false, 1877);
INSERT INTO public.moon VALUES (4, 'Io', 5, 1821, true, 1610);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 1560, true, 1610);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 2634, true, 1610);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 2410, true, 1610);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 2574, true, 1655);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 763, true, 1672);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 734, true, 1671);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 561, true, 1684);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 531, true, 1684);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 252, true, 1789);
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 198, true, 1789);
INSERT INTO public.moon VALUES (15, 'Miranda', 7, 235, true, 1948);
INSERT INTO public.moon VALUES (16, 'Ariel', 7, 578, true, 1851);
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, 584, true, 1851);
INSERT INTO public.moon VALUES (18, 'Titania', 7, 788, true, 1787);
INSERT INTO public.moon VALUES (19, 'Oberon', 7, 761, true, 1787);
INSERT INTO public.moon VALUES (20, 'Triton', 8, 1353, true, 1846);
=======
INSERT INTO public.moon VALUES (1, 'little moon 1', 3, 1000, true, 2020);
INSERT INTO public.moon VALUES (2, 'rock 2', 4, 10, false, 2021);
INSERT INTO public.moon VALUES (3, 'tiny rock 3', 4, 5, false, 2022);
INSERT INTO public.moon VALUES (4, 'cheese moon', 5, 1500, true, 2010);
INSERT INTO public.moon VALUES (5, 'ice moon', 5, 1200, true, 2011);
INSERT INTO public.moon VALUES (6, 'big moon', 5, 2000, true, 2012);
INSERT INTO public.moon VALUES (7, 'shiny moon', 5, 1800, true, 2013);
INSERT INTO public.moon VALUES (8, 'dark moon', 6, 2500, true, 2014);
INSERT INTO public.moon VALUES (9, 'grey moon', 6, 700, true, 2015);
INSERT INTO public.moon VALUES (10, 'dusty moon', 6, 600, true, 2016);
INSERT INTO public.moon VALUES (11, 'round moon', 6, 500, true, 2017);
INSERT INTO public.moon VALUES (12, 'smooth moon', 6, 400, true, 2018);
INSERT INTO public.moon VALUES (13, 'crater moon', 6, 300, true, 2019);
INSERT INTO public.moon VALUES (14, 'mini moon', 6, 200, true, 2020);
INSERT INTO public.moon VALUES (15, 'cool moon', 7, 220, true, 2021);
INSERT INTO public.moon VALUES (16, 'super moon', 7, 550, true, 2022);
INSERT INTO public.moon VALUES (17, 'mega moon', 7, 560, true, 2023);
INSERT INTO public.moon VALUES (18, 'ultra moon', 7, 700, true, 2024);
INSERT INTO public.moon VALUES (19, 'epic moon', 7, 750, true, 2025);
INSERT INTO public.moon VALUES (20, 'last moon 20', 8, 1300, true, 2026);
>>>>>>> b41e2ddcd3f9d2f70888bf23f865de17a3c88e0b


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

<<<<<<< HEAD
INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 0.3871, 'Small rocky planet close to the Sun.');
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 0.7233, 'Thick toxic atmosphere with runaway greenhouse effect.');
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 1.0000, 'Our home planet filled with diverse life forms.');
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 1.5237, 'The red planet with historic evidence of liquid water flows.');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 5.2028, 'Largest gas giant with the famous Great Red Spot.');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 9.5388, 'Famous for its spectacular and extensive ring system.');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 19.1914, 'Ice giant rotating completely on its side.');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 30.0611, 'Windiest planet in our solar system.');
INSERT INTO public.planet VALUES (9, 'Proxima b', 6, true, 0.0485, 'Exoplanet orbiting within the habitable zone.');
INSERT INTO public.planet VALUES (10, 'Rigel Prime', 3, false, 4.5000, 'Fictional sci-fi mining colony.');
INSERT INTO public.planet VALUES (11, 'Tatooine', 4, false, 1.2000, 'Desert world with dual suns.');
INSERT INTO public.planet VALUES (12, 'Hoth', 5, false, 3.1000, 'Remote ice world used as a rebel base.');
=======
INSERT INTO public.planet VALUES (1, 'rocky planet 1', 1, false, 0.5000, 'it is just a rock');
INSERT INTO public.planet VALUES (2, 'water planet 2', 1, true, 1.0000, 'has fish maybe');
INSERT INTO public.planet VALUES (3, 'green planet', 1, true, 1.2000, 'lots of grass');
INSERT INTO public.planet VALUES (4, 'alien world', 1, false, 2.5000, 'aliens live here');
INSERT INTO public.planet VALUES (5, 'giant ball', 1, false, 5.0000, 'very big');
INSERT INTO public.planet VALUES (6, 'ring planet', 1, false, 9.0000, 'has cool rings');
INSERT INTO public.planet VALUES (7, 'ice world', 1, false, 15.5000, 'very cold brr');
INSERT INTO public.planet VALUES (8, 'windy place', 1, false, 25.0000, 'too windy');
INSERT INTO public.planet VALUES (9, 'star planet b', 6, true, 0.1000, 'close to star');
INSERT INTO public.planet VALUES (10, 'cool land 9', 3, false, 4.0000, 'made of sand');
INSERT INTO public.planet VALUES (11, 'game world', 4, false, 1.5000, 'looks like minecraft');
INSERT INTO public.planet VALUES (12, 'roblox world', 5, false, 3.0000, 'blocky planet');
>>>>>>> b41e2ddcd3f9d2f70888bf23f865de17a3c88e0b


--
-- Data for Name: space_mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_mission VALUES (1, 'rocket ship 1', 1999, true, 'my agency');
INSERT INTO public.space_mission VALUES (2, 'space trip 2', 2005, true, 'nasa');
INSERT INTO public.space_mission VALUES (3, 'moon lander 3', 2020, true, 'spacex');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

<<<<<<< HEAD
INSERT INTO public.star VALUES (1, 'Sun', 1, 5778, true, 'G2V');
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 1, 5790, true, 'G2V');
INSERT INTO public.star VALUES (3, 'Sirius', 1, 9940, true, 'A1V');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 3500, true, 'M1-M2');
INSERT INTO public.star VALUES (5, 'Vega', 1, 9600, true, 'A0V');
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 1, 3042, true, 'M5.5V');
=======
INSERT INTO public.star VALUES (1, 'shiny star 1', 1, 5000, true, 'A');
INSERT INTO public.star VALUES (2, 'hot sun 2', 1, 6000, true, 'B');
INSERT INTO public.star VALUES (3, 'super bright', 1, 9000, true, 'C');
INSERT INTO public.star VALUES (4, 'baby star', 1, 3000, true, 'D');
INSERT INTO public.star VALUES (5, 'red star', 1, 4000, true, 'E');
INSERT INTO public.star VALUES (6, 'blue star', 1, 8500, true, 'F');
>>>>>>> b41e2ddcd3f9d2f70888bf23f865de17a3c88e0b


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
-- Name: space_mission_space_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_mission_space_mission_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: space_mission space_mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_name_key UNIQUE (name);


--
-- Name: space_mission space_mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_mission
    ADD CONSTRAINT space_mission_pkey PRIMARY KEY (space_mission_id);


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

