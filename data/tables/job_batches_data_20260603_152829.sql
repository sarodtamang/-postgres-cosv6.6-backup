--
-- PostgreSQL database dump
--

\restrict 5byQbcH4KFNkYmetQxMufJiUAaOuqTSDK6liGX47zT6dOLE3nAKTALZ2Cy8loir

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
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

\unrestrict 5byQbcH4KFNkYmetQxMufJiUAaOuqTSDK6liGX47zT6dOLE3nAKTALZ2Cy8loir

