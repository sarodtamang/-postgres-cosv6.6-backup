--
-- PostgreSQL database dump
--

\restrict mqHHCx7LU0TjavarRdnvShaQlOefoPeN5wMlGauHQMA5fHnAqnN0MQDWYvuIXRU

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
-- Data for Name: card_request_cycle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card_request_cycle (request_id, full_name, mobile, account_no, request_type, card_type, currency_type, card_scheme, request_branch_id, delivery_branch_id, customer_branch_id, customer_branch_code, account_type, instcode, remarks, status, created_at, updated_at, requstor_branch_code, receiver_branch_code, pintype, filelocation) FROM stdin;
CY000000133	John Doe	98510978	AC061400010744465141	New Card	Debit	USD	Visa	NAXAL	KATHMANDU	BALUWATAR	0001	Savings	1	Test remarks	PROCESSING	2026-01-03 22:09:07.833509	2026-01-22 02:10:17.938805	0002	\N	PAPER_PIN	\N
CY000000132	John Doe	98510978	AC061400010744949398	New Card	Debit	USD	Visa	NAXAL	BALUWATAR	BALUWATAR	0001	Savings	1	Updated remarks	PROCESSING	2026-01-03 22:07:02.119554	2026-01-22 02:10:17.938805	0002	0007	ONLINE-PIN	\N
\.


--
-- PostgreSQL database dump complete
--

\unrestrict mqHHCx7LU0TjavarRdnvShaQlOefoPeN5wMlGauHQMA5fHnAqnN0MQDWYvuIXRU

