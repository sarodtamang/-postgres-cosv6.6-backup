--
-- PostgreSQL database dump
--

\restrict cIZIqydpOUmH3vawBxFUbhhMPwJFAnIN3WQEEnMl1UjrW2lCgXyu3l21EKUmqYC

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
-- Data for Name: scheme_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.scheme_types (id, scheme_code, scheme_name, description, is_active, sort_order, created_at) FROM stdin;
1	VISA	VISA	VISA payment scheme	t	1	2025-12-03 02:40:07.34618
2	MASTER	MasterCard	MasterCard payment scheme	t	2	2025-12-03 02:40:07.34618
3	UPI	UPI	Unified Payments Interface	t	3	2025-12-03 02:40:07.34618
4	NEPALPAY	NepalPay	Nepal domestic payment scheme	t	4	2025-12-03 02:40:07.34618
\.


--
-- Name: scheme_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scheme_types_id_seq', 4, true);


--
-- PostgreSQL database dump complete
--

\unrestrict cIZIqydpOUmH3vawBxFUbhhMPwJFAnIN3WQEEnMl1UjrW2lCgXyu3l21EKUmqYC

