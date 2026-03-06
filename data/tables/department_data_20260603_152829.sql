--
-- PostgreSQL database dump
--

\restrict LlUX87TvXg9CqapnaVcLkqvcakeejRVKrQRw6NYVAwHnPhrcB8FeCE9f9yGNl5M

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department (id, institutionid, name, status, created_at, updated_at) FROM stdin;
1	1	IT Department	Active	\N	\N
2	1	Business	Active	\N	\N
\.


--
-- PostgreSQL database dump complete
--

\unrestrict LlUX87TvXg9CqapnaVcLkqvcakeejRVKrQRw6NYVAwHnPhrcB8FeCE9f9yGNl5M

