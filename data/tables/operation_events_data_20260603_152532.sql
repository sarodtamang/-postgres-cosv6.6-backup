--
-- PostgreSQL database dump
--

\restrict Tz7KvGKoOTyD6Rbtdexv1Tu4Sk1cntQUT3TaQAXgxLHkNEzyYARuzbGbRAop9sA

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
-- Data for Name: operation_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.operation_events (event_id, operation_id, event_type, event_data, description, event_time) FROM stdin;
\.


--
-- Name: operation_events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operation_events_event_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict Tz7KvGKoOTyD6Rbtdexv1Tu4Sk1cntQUT3TaQAXgxLHkNEzyYARuzbGbRAop9sA

