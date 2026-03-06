--
-- PostgreSQL database dump
--

\restrict xzdzqK3gT6ScnJJJIRYLqx5xfh8ZYJYtKjOacMpDBuBE5gblsdZ3hrzbqoHT4hL

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
-- Data for Name: institution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.institution (id, prefix, name, primarycolor, secondarycolor, theme, status, created_at, updated_at) FROM stdin;
1	masspro	Mass Pro Solutions Pvt.Ltd	#003B73	14213d	#003B73,  rgba(100, 150, 255, 0)	Active	\N	\N
2	kamana	Kamana Bikash Bank	#024DA1	#8CC63E	 rgba(139, 195, 74, 0.5), rgba(30, 58, 138, 0.5)	Active	\N	\N
\.


--
-- Name: institution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.institution_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

\unrestrict xzdzqK3gT6ScnJJJIRYLqx5xfh8ZYJYtKjOacMpDBuBE5gblsdZ3hrzbqoHT4hL

