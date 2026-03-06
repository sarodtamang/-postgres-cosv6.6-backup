--
-- PostgreSQL database dump
--

\restrict UfI52fazf958R7gNcFtg1LOLhFKvkm6KiVpmZGNXAP4dgfYZYW0moSXcjTtUf9U

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
-- Data for Name: card_charges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card_charges (charge_id, cardid, cardnumber, accountid, charge_type, amount, currency, charge_date, charge_year, description, cbs_posted, status, created_at, card_type, scheme_type, productname, productbin) FROM stdin;
AF0000001003	CAR00000009	4269500000000001	ACC00000007	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001004	CAR00000010	4269500000000002	ACC00000008	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001005	CAR00000011	4269500000000003	ACC00000009	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001006	CAR00000012	4269500000000004	ACC00000010	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001007	CAR00000013	4269500000000005	ACC00000011	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001008	CAR00000014	4269500000000006	ACC00000012	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001009	CAR00000015	4269500000000007	ACC00000013	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001010	CAR00000016	4269500000000008	ACC00000014	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001011	CAR00000017	4269500000000009	ACC00000015	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001012	CAR00000050	6277650010000010	ACC00000038	ANNUAL_FEE	5.00	USD	2025-12-12	2025	Annual Card Subscription Fee - UPI ECOM Prepaid Transaction Fee (0.5%) - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	ECOM	UPI	UPI ECOM USD	677777
AF0000001013	CAR00000053	6277650010000011	ACC00000038	ANNUAL_FEE	5.00	NPR	2025-12-12	2025	Annual Card Subscription Fee - Visa ECOM Prepaid Transaction Fee (0.5%) - Currency: NPR	NO	APPLIED	2025-12-12 00:25:44.551231	ECOM	VISA	VISA ECOM NPR	488888
AF0000001014	CAR00000055	6277650010000012	ACC00000038	ANNUAL_FEE	250.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Debit USD Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	DEBIT	VISA	VISA Debit USD	411111
AF0000001015	CAR00000057	6277650010000013	ACC00000038	ANNUAL_FEE	305.00	USD	2025-12-12	2025	Annual Card Subscription Fee - Visa Credit NPR Annual Fee (0.5%) + Base - Currency: USD	NO	APPLIED	2025-12-12 00:25:44.551231	CREDIT	VISA	VISA Prepaid USD	433333
\.


--
-- PostgreSQL database dump complete
--

\unrestrict UfI52fazf958R7gNcFtg1LOLhFKvkm6KiVpmZGNXAP4dgfYZYW0moSXcjTtUf9U

