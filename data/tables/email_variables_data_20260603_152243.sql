--
-- PostgreSQL database dump
--

\restrict SByn8f6j3elL2cCgnZ8rb0eZR8i19mJaYsbVkOyfwjdcYJ43hHpf9NQvL7fJqqn

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
-- Data for Name: email_variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email_variables (id, variable_key, display_name, description, data_source, sample_value, category, created_at) FROM stdin;
730d4e6c-36c2-49b6-a221-f7682475871b	customer_email	Customer Email	Email address of the customer	customers	john.doe@example.com	customer	2026-02-05 09:09:44.421474
9169944c-a0d7-4895-85f2-3a6ba7232de8	card_type	Card Type	Type of card (Visa, MasterCard, etc.)	cards	Visa Platinum	card	2026-02-05 09:09:44.421474
a4e746a1-d0b8-4454-a8dc-d7489598b677	activation_date	Activation Date	Date card was activated	cards	January 15, 2024	card	2026-02-05 09:09:44.421474
24fd8396-af1a-4ebe-9201-287b4c918cb3	support_phone	Support Phone	Customer support phone number	system	1-800-123-4567	company	2026-02-05 09:09:44.421474
df46fc60-ae08-4cbc-8b23-34c47161ed4f	card_last_4	Card Last 4 Digits	Last 4 digits of card number	cards	627748910022	card	2026-02-05 09:09:44.421474
1db1249b-4b9d-49f5-93cc-c186fc89f824	customer_name	Customer Full Name	Full name of the customer	customers	Jimmy Morphing	customer	2026-02-05 04:36:03.30451
1db1249b-4b9d-49f5-93cc-c186fc89f844	bank_name	Bank Full Name	Kamana Sewa Bank Ltd.	bank	Kamana Sewa Bank Ltd.	bank	2026-02-05 04:36:03.30451
1db1249b-4b9d-49f5-93cc-c186fc89f845	bank_url	https://kamanasewabank.com/	Kamana Bank Website	bank	https://kamanasewabank.com/	bank	2026-02-05 04:36:03.30451
1db1249b-4b9d-49f5-93cc-c186fc89f901	online_banking_url	https://kamanasewabank.com/online	Kamana Bank Website	bank	Jimmy Morphing	bank	2026-02-05 04:36:03.30451
1db1249b-4b9d-49f5-93cc-c186fc89f902	account_no	Account	Bank Account	account	999999999	account	2026-02-05 04:36:03.30451
1db1249b-4b9d-49f5-93cc-c186fc89f903	account_type	Account type	Bank Account	account	Savings	account	2026-02-05 04:36:03.30451
\.


--
-- PostgreSQL database dump complete
--

\unrestrict SByn8f6j3elL2cCgnZ8rb0eZR8i19mJaYsbVkOyfwjdcYJ43hHpf9NQvL7fJqqn

