--
-- PostgreSQL database dump
--

\restrict uTWgTctQb3QjamIYKD0LrOEBFyMTMaoeuWKh7oVKiSG2v1GSHoQhUanFLedfjEy

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
-- Data for Name: operation_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.operation_log (operation_id, function_name, start_time, end_time, execution_status, records_processed, records_affected, total_amount, error_message, execution_duration_ms, username, additional_info, created_at) FROM stdin;
42	fdaemonapply_dynamic_charges	2025-12-05 02:00:49.273396	2025-12-05 02:00:49.273396	FAILED	0	0	0.00	invalid input syntax for type interval: "2025-12-05 02:00:49.282132-08"	0	postgres	{"process": "dynamic_charge_application", "version": "3.0", "debug_level": 2, "batch_size": 10, "dry_run": f, "start_time": "2025-12-05 02:00:49.276061"}	2025-12-05 02:00:49.273396
\.


--
-- Name: operation_log_operation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operation_log_operation_id_seq', 42, true);


--
-- PostgreSQL database dump complete
--

\unrestrict uTWgTctQb3QjamIYKD0LrOEBFyMTMaoeuWKh7oVKiSG2v1GSHoQhUanFLedfjEy

