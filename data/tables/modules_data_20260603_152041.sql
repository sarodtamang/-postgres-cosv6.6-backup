--
-- PostgreSQL database dump
--

\restrict UF2BEyvR3vRBhsf8QfQcyRVwUuRRaR2RY0y8VKvQJZEFBHO8r7cLbzdPob2FNBT

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
-- Data for Name: modules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.modules (id, modulename, url, icon, orderby, parentmoduleid, created_at, updated_at) FROM stdin;
1	Dashboard	dashboard	fas fa-list	1	0	\N	\N
2	Preview	dashboard	fas fa-list	1	1	\N	\N
3	Control Pannel	#	fas fa-gears	3	0	\N	\N
4	Menu	menu	fas fa-list	1	3	\N	\N
5	Permission	permission	fas fa-cogs	2	3	\N	\N
6	Form Permission	permission/form	fas fa-cogs	3	3	\N	\N
7	User Group	usertype	fas fa-users	4	3	\N	\N
8	Users	user	fas fa-user	5	3	\N	\N
15	Instant Card Checker	instantcardchecker	fas  fa-person	2	13	2025-12-26 11:06:03	2026-01-05 13:17:33
24	Allocate To Branch	cardAllocationView	fas fa-	6	13	2025-12-31 15:25:04	2026-01-18 15:38:20
9	sarodtest	testCustomer	fas fa-	5	0	2025-12-22 15:47:05	2025-12-24 13:17:09
32	Card Dispatch	instantdispatchcard	fas fa-	7	13	2026-01-16 14:52:47	2026-01-20 15:48:17
10	CardCycle	customer	fas fa-	1	9	2025-12-24 11:03:14	2025-12-24 13:51:05
25	Card  Delivery Acknowledgement	instantacknowledgecard	fas fa-	15	13	2025-12-31 15:28:54	2026-01-20 18:59:00
12	card	card	fas fa-	3	9	2025-12-24 16:05:17	2025-12-24 16:05:17
18	customerOnly	customeronly	fas fa-	6	9	2025-12-27 08:10:18	2025-12-27 08:10:18
21	edit student	edit	fas fa-	3	19	2025-12-28 14:05:37	2025-12-28 14:05:37
22	delete student	destory	fas fa-	4	0	2025-12-28 14:06:11	2025-12-28 14:06:11
33	PIN Dispatch	instantpindispatch	fas fa-	8	13	2026-01-16 14:53:07	2026-01-21 11:21:28
26	Pin Delivery Acknowledgement	instantacknowledgepin	fas fa-	14	13	2025-12-31 15:29:30	2026-01-21 14:23:28
34	Reports	test	fas fa-	6	0	2026-01-28 15:53:06	2026-01-28 15:56:04
19	student	student	fas fa-	8	0	2025-12-28 14:02:27	2026-01-28 15:56:33
20	Student	student	fas fa-	9	20	2025-12-28 14:05:12	2026-01-28 15:56:44
17	Verify	instantcardverify	fas fa-	3	13	2025-12-26 11:08:24	2026-01-06 15:46:48
31	Request to Processor	requestoprocessor	fas fa-	4	13	2026-01-06 15:48:03	2026-01-06 15:48:03
35	Card Report	reports	fas fa-	1	34	2026-01-28 15:57:39	2026-01-28 16:01:25
36	email	test	fas fa-	7	0	2026-02-05 12:09:41	2026-02-05 12:10:44
37	composeemail	email	fas fa-	1	36	2026-02-05 12:12:30	2026-02-05 12:12:30
29	Download CMS File	instantdownlloadcms	fas fa-	4	13	2025-12-31 15:39:50	2026-01-06 17:14:35
27	Upload Instant Cards	instantbatchupload	fas fa-	5	13	2025-12-31 15:32:06	2026-01-12 13:29:53
23	add studend	student/create	fas fa-	2	20	2025-12-29 05:40:10	2025-12-31 15:15:50
39	SendMessage	iso8583/parser	fas fa-	1	38	2026-02-27 07:58:38	2026-02-27 08:34:23
38	TalkToPDX	none	fas fa-	6	0	2026-02-27 07:56:57	2026-02-27 08:34:37
13	Instant Card Cycle	instant	fas fa-credit-card	6	0	2025-12-26 11:01:57	2025-12-31 15:46:31
11	customerView	account-search	fas fa-	2	38	2025-12-24 15:33:59	2026-03-03 13:33:11
14	Instant Card Maker	index	fas fa-person	1	13	2025-12-26 11:03:34	2026-01-01 17:03:17
28	Instant Card Reports	checker	fas fa-	16	13	2025-12-31 15:34:25	2026-01-16 15:11:30
30	InstantViewModal	view/{id}	fas fa-	18	13	2026-01-03 17:45:16	2026-01-16 15:12:08
\.


--
-- Name: modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.modules_id_seq', 39, true);


--
-- PostgreSQL database dump complete
--

\unrestrict UF2BEyvR3vRBhsf8QfQcyRVwUuRRaR2RY0y8VKvQJZEFBHO8r7cLbzdPob2FNBT

