--
-- PostgreSQL database dump
--

\restrict bFCFYgwrz8VHRxMnaAJcQVEiD63J40oH7FcbPBlMva8mwGdyUpa0tfKdtirlEa3

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
-- Data for Name: log_auth; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_auth (id, username, ip, user_agent, success, failure_reason, attempted_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: log_auth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_auth_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict bFCFYgwrz8VHRxMnaAJcQVEiD63J40oH7FcbPBlMva8mwGdyUpa0tfKdtirlEa3

