--
-- PostgreSQL database dump
--

\restrict x1QOrrr6yaggL8rBwKnN2WSlrcWDqatnwcPVIK0JwzfAuebKCSRPpKtpMU1eKIe

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
-- Data for Name: excluded_tables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.excluded_tables (id, table_name, schema_name, reason, excluded_at, excluded_by) FROM stdin;
1	v_eligible_count	public	View table	2026-02-03 22:39:16.471969	\N
2	usertype	public	System table	2026-02-03 22:39:16.471969	\N
3	session	public	Temporary table	2026-02-03 22:39:16.471969	\N
6	cache_locks	public	table	2026-02-03 22:45:10.587772	\N
7	authlogin	public	\N	2026-02-03 22:46:08.622245	\N
8	department	public	\N	2026-02-03 22:46:42.017438	\N
9	excluded_tables	public	\N	2026-02-03 22:47:02.887259	\N
10	form_permission	public	\N	2026-02-03 22:48:28.41789	\N
11	job_batches	public	\N	2026-02-03 22:48:28.41789	\N
12	jobs	public	\N	2026-02-03 22:48:28.41789	\N
13	module_permission	public	\N	2026-02-03 22:48:28.41789	\N
14	modules	public	\N	2026-02-03 22:48:43.183965	\N
15	cache	public	\N	2026-02-03 22:49:18.213958	\N
16	failed_jobs	public	\N	2026-02-03 22:49:55.96788	\N
17	rpt_raw_data	public	\N	2026-02-03 22:50:46.584677	\N
18	rpt_header_config	public	\N	2026-02-03 22:50:46.584677	\N
19	student	public	\N	2026-02-03 23:35:15.01142	\N
\.


--
-- Name: excluded_tables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.excluded_tables_id_seq', 19, true);


--
-- PostgreSQL database dump complete
--

\unrestrict x1QOrrr6yaggL8rBwKnN2WSlrcWDqatnwcPVIK0JwzfAuebKCSRPpKtpMU1eKIe

