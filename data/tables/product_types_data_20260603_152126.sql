--
-- PostgreSQL database dump
--

\restrict 9X7OqBWB2Mb9EkkgPZgD0bK3pSlsqWh1ye533zc7zRW2Xdg6jDpkJnnmkAD2JwO

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
-- Data for Name: product_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_types (id, type_code, type_name, description, is_active, sort_order, created_at) FROM stdin;
1	DEBIT	Debit Card	Debit card products	t	1	2025-12-03 02:40:07.34618
2	CREDIT	Credit Card	Credit card products	t	2	2025-12-03 02:40:07.34618
3	PREPAID	Prepaid Card	Prepaid card products	t	3	2025-12-03 02:40:07.34618
4	ECOM	E-commerce	E-commerce payment products	t	4	2025-12-03 02:40:07.34618
5	VIRTUAL	Virtual Card	Virtual card products	t	5	2025-12-03 02:40:07.34618
\.


--
-- Name: product_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_types_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 9X7OqBWB2Mb9EkkgPZgD0bK3pSlsqWh1ye533zc7zRW2Xdg6jDpkJnnmkAD2JwO

