--
-- PostgreSQL database dump
--

\restrict ztNroCrHyEywsTw8ANLNGBOjzSqbs1pdgYkdBHTDpiKMEKgSchwondacT4oSyKD

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
-- Data for Name: form_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.form_permission (id, formname, slug, isview, isinsert, isupdate, isedit, isdelete, usertypeid, created_at, updated_at) FROM stdin;
1	User Group	user-group	Y	Y	Y	Y	Y	1	\N	\N
2	Users	users	Y	Y	Y	Y	Y	1	\N	\N
3	Request Mobile Number	request-mobile-number	Y	Y	Y	Y	Y	1	\N	\N
4	Request Card Activation & Green Pin	request-card-activation	Y	Y	Y	Y	Y	1	\N	\N
5	Account Update	account-update	Y	Y	Y	Y	Y	1	\N	\N
6	Card Status Update	card-status-update	Y	Y	Y	Y	Y	1	\N	\N
7	User Group	user-group	Y	Y	Y	Y	Y	2	2026-01-02 11:22:03	2026-01-02 11:22:11
8	Users	users	Y	Y	N	N	N	2	2026-01-02 13:43:16	2026-01-02 13:43:18
\.


--
-- Name: form_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.form_permission_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

\unrestrict ztNroCrHyEywsTw8ANLNGBOjzSqbs1pdgYkdBHTDpiKMEKgSchwondacT4oSyKD

