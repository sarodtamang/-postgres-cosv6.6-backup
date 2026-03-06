--
-- PostgreSQL database dump
--

\restrict qGOOShu9wHMHb5rGgZJPtrygeIg3dkQ5vyijWipHSUW5FZvPHHbX4PLJVf6vs8n

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
-- Data for Name: rulesmaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rulesmaster (ruleid, rulename, ruletype, appliesto, description, priority, isactive, startdate, enddate, created_at, updated_at) FROM stdin;
R0109	Annual Card Subscription Fee	charge	card_management	Apply annual subscription Fee UPI DEBIT NPR	1	t	2025-11-17	2025-11-17	2025-11-17 01:34:28.100963	2025-11-17 01:34:28.100963
R0110	Annual Card Subscription Fee	charge	card_management	Apply annual subscription Fee VISA DEBIT NPR	1	t	2025-11-17	2025-11-17	2025-11-17 01:35:41.043939	2025-11-17 01:35:41.043939
R0111	Annual Card Subscription Fee	charge	card_management	Apply annual subscription Fee MC DEBIT NPR	1	t	2025-11-17	2025-11-17	2025-11-17 01:35:48.363302	2025-11-17 01:35:48.363302
R0112	Annual Card Subscription Fee	charge	card_management	Apply annual subscription Fee NEPLAYPAY DEBIT NPR	1	t	2025-11-17	2025-11-17	2025-11-17 01:35:58.563694	2025-11-17 01:35:58.563694
R0113	Annual Card Subscription Fee	charge	card_management	Apply annual subscription Fee UPI CREDIT NPR	1	t	2025-11-17	2025-11-17	2025-11-17 01:36:11.408334	2025-11-17 01:36:11.408334
R0114	Annual Card Subscription Fee	charge	card_management	Apply annual subscription Fee VISA CREDIT NPR	1	t	2025-11-17	2025-11-17	2025-11-17 01:36:15.924218	2025-11-17 01:36:15.924218
R0115	Annual Card Subscription Fee	charge	card_management	Apply annual subscription Fee MC CREDIT NPR	1	t	2025-11-17	2025-11-17	2025-11-17 01:36:21.311623	2025-11-17 01:36:21.311623
\.


--
-- PostgreSQL database dump complete
--

\unrestrict qGOOShu9wHMHb5rGgZJPtrygeIg3dkQ5vyijWipHSUW5FZvPHHbX4PLJVf6vs8n

