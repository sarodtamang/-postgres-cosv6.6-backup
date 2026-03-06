--
-- PostgreSQL database dump
--

\restrict 8Gv7BAl4DaxHBDnqh7LhZOa71jOpaBM8VzzQVMxK8lO96h636xGL26xyduDMv8G

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
-- Data for Name: ledgers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ledgers (id, reference_table, reference_id, ledger_type, ledger_date, account_dr, account_cr, amount, currency, narration, created_by, created_at) FROM stdin;
11	charges	1	ATM_FEE	2025-10-30 02:09:57.038739	CUST_RECEIVABLE	ATM_REVENUE	10.00	NPR	ATM withdrawal fee	test_user	2025-10-30 02:09:57.038739
12	charges	2	POS_FEE	2025-10-30 02:09:57.038739	CUST_RECEIVABLE	POS_REVENUE	5.50	NPR	POS transaction fee	test_user	2025-10-30 02:09:57.038739
13	charges	3	ECOM_FEE	2025-10-30 02:09:57.038739	CUST_RECEIVABLE	ECOM_REVENUE	15.75	NPR	E-commerce transaction fee	test_user	2025-10-30 02:09:57.038739
14	subscriptions	1	SERVICE_FEE	2025-10-30 02:09:57.038739	CUST_RECEIVABLE	SERVICE_REVENUE	100.00	NPR	Monthly subscription fee	test_user	2025-10-30 02:09:57.038739
15	transactions	10	MISC_FEE	2025-10-30 02:09:57.038739	CUST_RECEIVABLE	MISC_REVENUE	7.25	NPR	Miscellaneous fee	test_user	2025-10-30 02:09:57.038739
\.


--
-- Name: ledgers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ledgers_id_seq', 15, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 8Gv7BAl4DaxHBDnqh7LhZOa71jOpaBM8VzzQVMxK8lO96h636xGL26xyduDMv8G

