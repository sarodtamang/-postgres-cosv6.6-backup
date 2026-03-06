--
-- PostgreSQL database dump
--

\restrict 46qs66E72PYvKTc7qON49ewuP7LiQvZaDZ8m9JGBUuutBhgsszybJtZa4FFPcYD

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
-- Data for Name: card_request_cycle_action_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card_request_cycle_action_log (log_id, action, request_id, user_id, full_name, mobile, account_no, branch_code, status_old, status_new, called_at) FROM stdin;
LG0000000033	INSERT	CY000000129	hari	Radha Krishna	9851097428	AC061400010745616440	0001	\N	Pending	2025-12-29 22:14:56.071972-08
LG0000000034	INSERT	CY000000130	sarod	Sita Nepali	9841633588	AC061400010745241979	0001	\N	Pending	2025-12-29 23:09:44.3897-08
LG0000000035	INSERT	CY000000131	hari	Radha Krishna	9851097428	AC061400010745616440	0001	\N	Pending	2025-12-30 00:10:57.17968-08
LG0000000036	INSERT	CY000000132	sarod	John Doe	98510978	AC061400010744465141	0001	\N	Pending	2026-01-03 22:07:02.119554-08
LG0000000037	INSERT	CY000000133	sarod	John Doe	98510978	AC061400010744465141	0001	\N	Pending	2026-01-03 22:09:07.833509-08
LG0000000038	INSERT	CY000000134	sarod	John Doe	98510978	AC061400010744465141	0001	\N	Pending	2026-01-03 22:10:07.957595-08
LG0000000039	INSERT	CY000000135	sarod	John Doe	98510978	AC061400010744465141	0001	\N	Pending	2026-01-03 22:11:49.66034-08
LG0000000040	INSERT	CY000000134	\N	\N	\N	\N	\N	Pending	\N	2026-01-03 22:11:49.66034-08
LG0000000041	INSERT	CY000000135	\N	\N	\N	\N	\N	Pending	\N	2026-01-03 22:12:33.728713-08
LG0000000043	INSERT	CY000000132	sarod	\N	\N	\N	0001	Pending	Approved	2026-01-03 22:15:05.578131-08
\.


--
-- PostgreSQL database dump complete
--

\unrestrict 46qs66E72PYvKTc7qON49ewuP7LiQvZaDZ8m9JGBUuutBhgsszybJtZa4FFPcYD

