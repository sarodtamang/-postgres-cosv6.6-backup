--
-- PostgreSQL database dump
--

\restrict tazkx5MvI4hgTrasiqC5qgmfaFkioTQ3FeffNxrT44vWhRx3HyXrfIkRnXy6Q9X

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
-- Data for Name: rulelogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rulelogs (log_id, ruleid, rule_name, conditions_met, input_context, executed_actions, evaluation_time, remarks) FROM stdin;
1	R0105	Late Fee Rule	t	{"kyc_level": "full", "card_status": "active", "transaction_amount": 1200}	[{"amount": 50, "currency": "USD", "charge_id": "CHG123"}]	2025-09-22 03:06:44.06381	Rule triggered and actions logged.
\.


--
-- Name: rulelogs_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rulelogs_log_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict tazkx5MvI4hgTrasiqC5qgmfaFkioTQ3FeffNxrT44vWhRx3HyXrfIkRnXy6Q9X

