--
-- PostgreSQL database dump
--

\restrict mZ4gEhddIcigpWYKiVusfOOccTthYTsmKXuBdvyOo6x5GItyfwBFkhojsF5V8mx

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
-- Data for Name: ruleconditions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ruleconditions (conditionid, ruleid, field_name, operator, value, data_type, validation_message, condition_order, is_active, created_at, updated_at) FROM stdin;
COND001	R0109	card_status	EQUALS	A	string	Card must be active	4	t	2025-12-10 01:33:54.789075	2025-12-10 01:33:54.789075
COND003	R0109	schemetype	IN	["VISA","MASTERCARD","UPI","NEPALPAY"]	string	Supported card schemes	2	t	2025-12-10 01:33:54.789075	2025-12-10 01:33:54.789075
COND002	R0109	cardtype	IN	["DEBIT","CREDIT","PREPAID","ECOM"]	string	Supported card types	3	t	2025-12-10 01:33:54.789075	2025-12-10 01:33:54.789075
C0124	R0109	years_since_issue	GREATER_THAN	1	integer	Exclude first-year charges (must be >1 year old)	5	t	2025-12-11 22:53:11.616553	2025-12-11 22:53:11.616553
COND004	R0109	years_until_expiry	GREATER_THAN	0	integer	Card must have future expiry	1	t	2025-12-10 01:33:54.789075	2025-12-10 01:33:54.789075
\.


--
-- PostgreSQL database dump complete
--

\unrestrict mZ4gEhddIcigpWYKiVusfOOccTthYTsmKXuBdvyOo6x5GItyfwBFkhojsF5V8mx

