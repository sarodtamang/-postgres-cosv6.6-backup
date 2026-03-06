--
-- PostgreSQL database dump
--

\restrict PDZyJGuM0qQl3guXcevNA0qnVxDgbTx24VYyGcZDmSfV5W1u7qVqCk8yjacISxV

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
-- Data for Name: audit_trail; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_trail (audit_id, entity_type, action_type, description, data, user_id, ip_address, user_agent, created_at) FROM stdin;
\.


--
-- Name: audit_trail_audit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audit_trail_audit_id_seq', 24416, true);


--
-- PostgreSQL database dump complete
--

\unrestrict PDZyJGuM0qQl3guXcevNA0qnVxDgbTx24VYyGcZDmSfV5W1u7qVqCk8yjacISxV

