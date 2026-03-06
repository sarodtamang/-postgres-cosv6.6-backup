--
-- PostgreSQL database dump
--

\restrict hWduL8c8yZch3pWrtnZnSIeMuWobjVWcbD6CFbdasvtJxS1XHGQu9nTPiufk5nq

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
-- Data for Name: chargeconfig; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chargeconfig (chargeid, chargename, charge_type, productid, percentage, amount, currency, status, paymentmethod, graceperiod, applies_to, calculation_rule, istaxable, isactive, effectivedate, expirydate, created_date, updated_date) FROM stdin;
CH072	Visa Debit NPR Annual Fee	FLAT	P0004	\N	500.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for Visa Debit NPR cards	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH073	Visa Credit NPR Annual Fee	BOTH	P0005	0.5	300.00	NPR	A	auto_debit	30	annual_subscription	500 + (transaction_amount * 0.005)	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH074	Visa Prepaid NPR Annual Fee	FLAT	P0006	\N	300.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for Visa Prepaid NPR cards	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH075	Mastercard Debit USD Annual Fee	FLAT	P0007	\N	600.00	USD	A	auto_debit	30	annual_subscription	Fixed annual fee for Mastercard Debit USD cards	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH076	Mastercard Credit USD Annual Fee	BOTH	P0008	0.5	600.00	USD	A	auto_debit	30	annual_subscription	600 + (transaction_amount * 0.005)	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH077	Mastercard Prepaid USD Annual Fee	FLAT	P0009	\N	350.00	USD	A	auto_debit	30	annual_subscription	Fixed annual fee for Mastercard Prepaid USD cards	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH078	Mastercard Debit NPR Annual Fee	FLAT	P0010	\N	600.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for Mastercard Debit NPR cards	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH079	Mastercard Credit NPR Annual Fee	BOTH	P0011	0.5	600.00	NPR	A	auto_debit	30	annual_subscription	600 + (transaction_amount * 0.005)	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH080	Mastercard Prepaid NPR Annual Fee	FLAT	P0012	\N	350.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for Mastercard Prepaid NPR cards	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH081	UPI Debit USD Annual Fee	FLAT	P0013	\N	200.00	USD	A	auto_debit	30	annual_subscription	Fixed annual fee for UPI Debit USD service	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH082	UPI Credit USD Annual Fee	BOTH	P0014	0.5	200.00	USD	A	auto_debit	30	annual_subscription	200 + (transaction_amount * 0.005)	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH083	UPI Prepaid USD Annual Fee	FLAT	P0015	\N	150.00	USD	A	auto_debit	30	annual_subscription	Fixed annual fee for UPI Prepaid USD service	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH084	UPI Debit NPR Annual Fee	FLAT	P0016	\N	200.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for UPI Debit NPR service	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH085	UPI Credit NPR Annual Fee	BOTH	P0017	0.5	200.00	NPR	A	auto_debit	30	annual_subscription	200 + (transaction_amount * 0.005)	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH086	UPI Prepaid NPR Annual Fee	FLAT	P0018	\N	150.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for UPI Prepaid NPR service	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH087	NepalPay Debit USD Annual Fee	FLAT	P0019	\N	250.00	USD	A	auto_debit	30	annual_subscription	Fixed annual fee for NepalPay Debit USD service	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH088	NepalPay Credit USD Annual Fee	BOTH	P0020	0.5	250.00	USD	A	auto_debit	30	annual_subscription	250 + (transaction_amount * 0.005)	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH089	NepalPay Prepaid USD Annual Fee	FLAT	P0021	\N	180.00	USD	A	auto_debit	30	annual_subscription	Fixed annual fee for NepalPay Prepaid USD service	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH090	NepalPay Debit NPR Annual Fee	FLAT	P0022	\N	250.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for NepalPay Debit NPR service	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH091	NepalPay Credit NPR Annual Fee	BOTH	P0023	0.5	250.00	NPR	A	auto_debit	30	annual_subscription	250 + (transaction_amount * 0.005)	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH092	NepalPay Prepaid NPR Annual Fee	FLAT	P0024	\N	180.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for NepalPay Prepaid NPR service	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH093	Mobile Payment Wallet Annual Fee	FLAT	P0025	\N	100.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for Mobile Payment Wallet	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH095	Mastercard ECOM Prepaid Transaction Fee	PER	\N	0.5	\N	NPR	A	auto_debit	\N	annual_subscription	transaction_amount * 0.005	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH097	NepalPay ECOM Prepaid Transaction Fee	PER	\N	0.5	\N	NPR	A	auto_debit	\N	annual_subscription	transaction_amount * 0.005	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH070	Visa Credit USD Annual Fee	BOTH	P0002	0.5	1000.00	USD	A	auto_debit	30	annual_subscription	500 + (transaction_amount * 0.005)	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH071	Visa Prepaid USD Annual Fee	BOTH	P0003	0.5	300.00	USD	A	auto_debit	30	annual_subscription	Fixed annual fee for Visa Prepaid USD cards	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH096	UPI ECOM Prepaid Transaction Fee	PER	P0030	0.5	\N	NPR	A	auto_debit	\N	annual_subscription	transaction_amount * 0.005	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH094	Visa ECOM Prepaid Transaction Fee	PER	P0006	0.5	1000.00	NPR	A	auto_debit	\N	annual_subscription	transaction_amount * 0.005	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
CH098	Visa ECOM Annual Fee	FLAT	P0027	\N	500.00	NPR	A	auto_debit	30	annual_subscription	Fixed annual fee for Visa Debit cards	f	t	2024-01-01	2025-12-31	2025-12-11 01:41:52.169094	2025-12-11 01:41:52.169094
CH069	Visa Debit USD Annual Fee	BOTH	P0001	0.5	200.00	USD	A	auto_debit	30	annual_subscription	Fixed annual fee for Visa Debit USD cards	f	t	2024-01-01	2035-12-31	2025-12-04 00:27:13.103993	2025-12-04 00:27:13.103993
\.


--
-- PostgreSQL database dump complete
--

\unrestrict hWduL8c8yZch3pWrtnZnSIeMuWobjVWcbD6CFbdasvtJxS1XHGQu9nTPiufk5nq

