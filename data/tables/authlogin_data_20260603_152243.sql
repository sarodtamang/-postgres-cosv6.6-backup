--
-- PostgreSQL database dump
--

\restrict uqGndMXVYnb6Q5dwn5ws8FYotDBGNJkVxu24C10gDomYA1d0ewBOqUX2Ist3IA2

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
-- Data for Name: authlogin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authlogin (id, userid, username, password, otp, verif, created_at, updated_at) FROM stdin;
3	3	sarod	$2y$12$Q4bKA2BioBwN1NSTtE0ie.yGXx8l/qfQJsd70UO7EbWlRy7uc7qnW	f	LOCAL	\N	\N
6	6	hari	$2y$12$Q4bKA2BioBwN1NSTtE0ie.yGXx8l/qfQJsd70UO7EbWlRy7uc7qnW	f	LOCAL	\N	\N
1	1	ram	$2y$12$Q4bKA2BioBwN1NSTtE0ie.yGXx8l/qfQJsd70UO7EbWlRy7uc7qnW	f	LOCAL	\N	\N
\.


--
-- Name: authlogin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authlogin_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

\unrestrict uqGndMXVYnb6Q5dwn5ws8FYotDBGNJkVxu24C10gDomYA1d0ewBOqUX2Ist3IA2

