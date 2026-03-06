--
-- PostgreSQL database dump
--

\restrict 3dcXEEGOeYh3wj57rxkT7p3vWQy1l7tIJLYumto8cdFMtcSlKDelcW2uNYgA2Kq

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
-- Data for Name: error_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.error_logs (error_id, operation_id, function_name, error_message, error_detail, sql_state, context, additional_info, error_time) FROM stdin;
\.


--
-- Name: error_logs_error_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.error_logs_error_id_seq', 26, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 3dcXEEGOeYh3wj57rxkT7p3vWQy1l7tIJLYumto8cdFMtcSlKDelcW2uNYgA2Kq

