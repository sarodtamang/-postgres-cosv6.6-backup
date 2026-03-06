--
-- PostgreSQL database dump
--

\restrict rEVOVk0jdbgmvKsibraAZ8Y8eyCsUvOWVqtZuRRmgbZbSW6ysS86rZfRpEe2y9J

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
-- Data for Name: rpt_raw_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rpt_raw_data (data_id, batch_id, report_config_id, request_id, card_data, status, flags, created_at, updated_at) FROM stdin;
\.


--
-- Name: rpt_raw_data_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rpt_raw_data_data_id_seq', 9330, true);


--
-- PostgreSQL database dump complete
--

\unrestrict rEVOVk0jdbgmvKsibraAZ8Y8eyCsUvOWVqtZuRRmgbZbSW6ysS86rZfRpEe2y9J

