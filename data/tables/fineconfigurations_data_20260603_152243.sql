--
-- PostgreSQL database dump
--

\restrict gOtQKO0XaONzSBRmPKoF9r1Kfx3ZR9VNyC0DA2WQ8iR1FsdSg4RXDWDYtbS1N8z

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
-- Data for Name: fineconfigurations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fineconfigurations (fineid, name, finetype, dayfineleveied, amount, finepercent, frequency, startdate_ad, enddatead, startdatebs, enddatebs, maxcap, waiverallowed, waiver, graceperiod, status, active, description, createdat, updatedat) FROM stdin;
F0102	Minimum Due Penalty	MINIMUM_DUE	5	100.00	\N	monthly	2024-01-01	2024-12-31	\N	\N	500.00	t	\N	3	active	t	Penalty for not paying minimum due	2025-11-19 03:01:06.531092	2025-11-19 03:01:06.531092
F0103	Card Replacement Fee	CARD_REPLACEMENT	\N	200.00	\N	one_time	2024-01-01	2024-12-31	\N	\N	\N	f	\N	0	active	t	Fee for card replacement	2025-11-19 03:01:06.531092	2025-11-19 03:01:06.531092
F0104	Statement Copy Fee	SERVICE_FEE	\N	50.00	\N	per_request	2024-01-01	2024-12-31	\N	\N	\N	t	\N	0	active	t	Fee for duplicate statement	2025-11-19 03:01:06.531092	2025-11-19 03:01:06.531092
\.


--
-- PostgreSQL database dump complete
--

\unrestrict gOtQKO0XaONzSBRmPKoF9r1Kfx3ZR9VNyC0DA2WQ8iR1FsdSg4RXDWDYtbS1N8z

