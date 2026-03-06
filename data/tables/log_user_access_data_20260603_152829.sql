--
-- PostgreSQL database dump
--

\restrict MoulvYgMwmxnZvg3FjuCW2KUaZIbdfrpJaXvRR0rfNWfSlXoPE4T5PbsTLVnxU5

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
-- Data for Name: log_user_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_user_access (id, userid, ip, user_agent, action, status_code, route, description, created_at, updated_at) FROM stdin;
\.


--
-- Name: log_user_access_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_user_access_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

\unrestrict MoulvYgMwmxnZvg3FjuCW2KUaZIbdfrpJaXvRR0rfNWfSlXoPE4T5PbsTLVnxU5

