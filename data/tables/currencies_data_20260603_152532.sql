--
-- PostgreSQL database dump
--

\restrict dtWKSka8E67HgGPqLr1gzV8LYv4VDf1otSSoxxLgJngqZJwHwU4Kgx9RYHnHabf

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
-- Data for Name: currencies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.currencies (id, currency_code, currency_name, symbol, is_active, sort_order, created_at) FROM stdin;
1	USD	US Dollar	$	t	1	2025-12-03 02:40:07.34618
2	EUR	Euro	€	t	2	2025-12-03 02:40:07.34618
3	GBP	British Pound	£	t	3	2025-12-03 02:40:07.34618
4	NPR	Nepalese Rupee	रू	t	4	2025-12-03 02:40:07.34618
5	INR	Indian Rupee	₹	t	5	2025-12-03 02:40:07.34618
\.


--
-- Name: currencies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.currencies_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

\unrestrict dtWKSka8E67HgGPqLr1gzV8LYv4VDf1otSSoxxLgJngqZJwHwU4Kgx9RYHnHabf

