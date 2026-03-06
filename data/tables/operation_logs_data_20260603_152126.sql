--
-- PostgreSQL database dump
--

\restrict CcVLxx6YvPcbMz0iTnOkcU3WSCjTDge6c05MaE2tCmXovhAiMW85LfsnkZ7SeLG

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
-- Data for Name: operation_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.operation_logs (operation_id, function_name, start_time, end_time, status, eligible_count, processed_count, total_amount, error_message, additional_info, duration_ms, created_at) FROM stdin;
413	fdaemonapply_dynamic_charges	2025-12-12 00:24:00.287651	2025-12-12 00:24:00.287651	SUCCESS	0	0	0.00	\N	{"dry_run": false, "process": "dynamic_charge_application", "version": "9.5", "batch_size": 100, "start_time": "2025-12-12T00:24:00.290058", "debug_level": 2, "performance_metrics": {"total_amount": 0.00, "currency_summary": {}, "batches_processed": 1, "processed_charges": 0, "cards_before_waiver": 0, "total_processing_time": 0.1107, "first_year_cards_waived": 0}, "charge_types_processed": ["ANNUAL_FEE", "MONTHLY_FEE", "SUBSCRIPTION_FEE", "PROCESSING_FEE", "LATE_FEE"], "charge_types_to_process": ["ANNUAL_FEE", "MONTHLY_FEE", "SUBSCRIPTION_FEE", "PROCESSING_FEE", "LATE_FEE"], "first_year_cards_waived": 0}	0.00	2025-12-12 00:24:00.287651
414	fdaemonapply_dynamic_charges	2025-12-12 00:25:44.551231	2025-12-12 00:25:44.551231	SUCCESS	13	13	2815.00	\N	{"dry_run": false, "process": "dynamic_charge_application", "version": "9.5", "batch_size": 100, "start_time": "2025-12-12T00:25:44.551364", "debug_level": 2, "performance_metrics": {"total_amount": 2815.00, "currency_summary": {}, "batches_processed": 1, "processed_charges": 13, "cards_before_waiver": 13, "total_processing_time": 0.0423, "first_year_cards_waived": 0}, "charge_types_processed": ["ANNUAL_FEE", "MONTHLY_FEE", "SUBSCRIPTION_FEE", "PROCESSING_FEE", "LATE_FEE"], "charge_types_to_process": ["ANNUAL_FEE", "MONTHLY_FEE", "SUBSCRIPTION_FEE", "PROCESSING_FEE", "LATE_FEE"], "first_year_cards_waived": 0}	0.00	2025-12-12 00:25:44.551231
\.


--
-- Name: operation_logs_operation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operation_logs_operation_id_seq', 414, true);


--
-- PostgreSQL database dump complete
--

\unrestrict CcVLxx6YvPcbMz0iTnOkcU3WSCjTDge6c05MaE2tCmXovhAiMW85LfsnkZ7SeLG

