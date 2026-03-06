--
-- PostgreSQL database dump
--

\restrict ynyLnTYvNYWS6Wy1Gf21qBzX9UGAeXaFAyuHEppsUHew3BgDcvVAq1kgRiNiecg

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
-- Data for Name: usertype; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usertype (id, institutionid, typename, created_at, updated_at) FROM stdin;
1	1	SuperAdmin	\N	\N
2	1	Admin	\N	\N
3	1	Customer	\N	\N
4	2	Admin	\N	\N
5	2	Customer	\N	\N
\.


--
-- Name: usertype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usertype_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

\unrestrict ynyLnTYvNYWS6Wy1Gf21qBzX9UGAeXaFAyuHEppsUHew3BgDcvVAq1kgRiNiecg

