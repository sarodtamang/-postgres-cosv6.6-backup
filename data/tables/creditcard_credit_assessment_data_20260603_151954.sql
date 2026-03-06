--
-- PostgreSQL database dump
--

\restrict MclZ3tfjrwFaxg2QG3hhHL0KCWxCAlBrYMDd5WuvYPhGnzhqvtrFt3obmH5WIL6

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
-- Data for Name: creditcard_credit_assessment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.creditcard_credit_assessment (assessment_id, request_id, applicant_score, dbr_percentage, monthly_income, existing_monthly_emi, limit_justification, calculated_by, calculated_at, suggested_limit, requested_limit, operater_limit, monthly_expenditure) FROM stdin;
ASS0000064	CY000000224	45	70.00	50000.00	10000.00	Based on income and DBR	System	2026-02-03 02:11:33.204105	100000.00	500000.00	\N	20000.00
ASS0000065	CY000000225	45	70.00	50000.00	10000.00	Based on income and DBR	System	2026-02-03 02:12:13.516772	100000.00	500000.00	\N	20000.00
ASS0000066	CY000000226	45	70.00	50000.00	10000.00	Based on income and DBR	System	2026-02-03 21:08:14.001867	100000.00	500000.00	\N	20000.00
ASS0000068	CY000000227	28	80.00	50000.00	10000.00	Customer has stable income and good credit history	SYSTEM_AUTO	2026-02-05 00:57:53.951724	25000.00	25000.00	\N	20000.00
\.


--
-- PostgreSQL database dump complete
--

\unrestrict MclZ3tfjrwFaxg2QG3hhHL0KCWxCAlBrYMDd5WuvYPhGnzhqvtrFt3obmH5WIL6

