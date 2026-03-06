--
-- PostgreSQL database dump
--

\restrict PDFZlgRSlRD2jWoxm6kj1DFKr6fQeknS6EyLbDVnS3J1VAVQM7VlhSHOKfkNzlT

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
-- Data for Name: profilerulemapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profilerulemapping (profile_rule_id, profileid, ruleid, is_active, created_at, updated_at) FROM stdin;
PRM159	PRO109	R0109	t	2025-11-17 02:11:10.987913	2025-11-30 00:04:15.390437
PRM160	PRO106	R0109	t	2025-11-29 23:04:09.573035	2025-11-30 00:04:25.581077
PRM161	PRO107	R0109	t	2025-11-29 23:04:09.573035	2025-11-30 00:19:01.424861
PRM163	PRO106	R0110	t	2025-11-30 00:30:39.226083	2025-11-30 00:30:39.226083
PRM165	PRO107	R0115	t	2025-11-30 00:38:18.20145	2025-11-30 00:38:18.20145
\.


--
-- PostgreSQL database dump complete
--

\unrestrict PDFZlgRSlRD2jWoxm6kj1DFKr6fQeknS6EyLbDVnS3J1VAVQM7VlhSHOKfkNzlT

