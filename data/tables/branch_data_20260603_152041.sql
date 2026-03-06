--
-- PostgreSQL database dump
--

\restrict rZtpD36dsjuHfiqb89crdJeM1JjNLkposmzy17CUaVWHwx86vfqZH1gOLbpMF08

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
-- Data for Name: branch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.branch (id, branch_no, institutionid, branch_name, email, address, city, province, country, zipcode, phone, branch_manager, status, created_at, updated_at) FROM stdin;
10	0004	1	BUTWAL	NAXAL@bank.com	Baluwatar, Kathmandu	Kathmandu	Bagmati	Nepal	44600	+977-1-4412345	Ram Shrestha	Active	2025-11-04 22:29:01	2025-11-04 22:29:01
11	0005	1	BHAIRAHAWA	NAXAL@bank.com	Baluwatar, Kathmandu	Kathmandu	Bagmati	Nepal	44600	+977-1-4412345	Ram Shrestha	Active	2025-11-04 22:29:13	2025-11-04 22:29:13
12	0007	1	BALUWATAR	NAXAL@bank.com	Baluwatar, Kathmandu	Kathmandu	Bagmati	Nepal	44600	+977-1-4412345	Ram Shrestha	Active	2025-11-04 22:29:23	2025-11-04 22:29:23
9	0006	1	BHATATENI	NAXAL@bank.com	Baluwatar, Kathmandu	Kathmandu	Bagmati	Nepal	44600	+977-1-4412345	Ram Shrestha	Active	2025-11-04 22:28:48	2025-11-04 22:28:48
13	0003	1	POKHARA LAKESIDE	pkr@bank.com	LakeSide,Pokhara	POKHARA	Gandaki	Nepal	44600	+977-1-4412345	umakant nepali	Active	2025-11-04 22:26:27	2025-11-04 22:26:27
1	0001	1	BALUWATAR	baluwatar@bank.com	Baluwatar, Kathmandu	Kathmandu	Bagmati	Nepal	44600	+977-1-4412345	Ram Shrestha	Active	2025-11-04 22:26:27	2025-11-04 22:26:27
2	0002	2	NAXAL	NAXAL@bank.com	Baluwatar, Kathmandu	Kathmandu	Bagmati	Nepal	44600	+977-1-4412345	Ram Shrestha	Active	2025-11-04 22:26:57	2025-11-04 22:26:57
\.


--
-- Name: branch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.branch_id_seq', 12, true);


--
-- PostgreSQL database dump complete
--

\unrestrict rZtpD36dsjuHfiqb89crdJeM1JjNLkposmzy17CUaVWHwx86vfqZH1gOLbpMF08

