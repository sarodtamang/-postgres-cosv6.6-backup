--
-- PostgreSQL database dump
--

\restrict Zqpm1IwOGyg7WC5GTK97PCZ8qRoPvWs8ALgNrOOsRnKvE2kVvWctOy6meKC0GSF

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
-- Data for Name: creditcard_stage_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.creditcard_stage_history (history_id, request_id, from_stage, to_stage, action, action_by, action_at, remarks, duration_seconds) FROM stdin;
\.


--
-- Name: creditcard_stage_history_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.creditcard_stage_history_history_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict Zqpm1IwOGyg7WC5GTK97PCZ8qRoPvWs8ALgNrOOsRnKvE2kVvWctOy6meKC0GSF

