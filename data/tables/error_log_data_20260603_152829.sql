--
-- PostgreSQL database dump
--

\restrict VRX00UJJO4TKs6EVunEt6QEIS5E1aWSlNJwdS2T482zkiDtr4pU3bOxHH0BwwNh

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
-- Data for Name: error_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.error_log (error_id, operation_id, function_name, error_timestamp, error_level, error_message, error_detail, error_context, sql_state, failed_query, input_parameters, username, resolved, resolved_at, resolved_by, created_at) FROM stdin;
\.


--
-- Name: error_log_error_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.error_log_error_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

\unrestrict VRX00UJJO4TKs6EVunEt6QEIS5E1aWSlNJwdS2T482zkiDtr4pU3bOxHH0BwwNh

