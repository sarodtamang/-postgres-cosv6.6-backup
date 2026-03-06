--
-- PostgreSQL database dump
--

\restrict UswU8eoaXLmoUrEfYg34YaaV1pF3LAJYxytAOxTcbwKNMhaqLlWmiWWnani3h20

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
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000001_create_cache_table	1
2	0001_01_01_000002_create_jobs_table	1
3	0001_01_01_000003_create_institution_table	1
4	0001_01_01_000004_create_branch_table	1
5	0001_01_01_000004_create_usertype_table	1
6	0001_01_01_000005_create_users_table	1
7	0001_01_01_000006_create_modules_table	1
8	0001_01_01_000007_create_module_permission_table	1
9	0001_01_01_000008_create_form_permission_table	1
10	0001_01_01_000009_create_sessions_table	1
11	0001_01_01_000010_create_authlogin_table	1
12	2025_08_22_102757_create_log_auth_table	1
13	2025_08_22_102806_create_log_user_table	1
14	2025_08_22_102815_create_log_user_access_table	1
15	2025_08_22_120201_create_ldap_configuration_table	1
\.


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 15, true);


--
-- PostgreSQL database dump complete
--

\unrestrict UswU8eoaXLmoUrEfYg34YaaV1pF3LAJYxytAOxTcbwKNMhaqLlWmiWWnani3h20

