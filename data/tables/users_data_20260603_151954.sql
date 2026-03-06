--
-- PostgreSQL database dump
--

\restrict kBGlk9teirFTAP3DzJVUCr41cagmqkaCffSqtbONogMUnoRWMMbjwiv7sSwByE2

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
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, fname, lname, mobilenumber, usertypeid, institutionid, branchid, departmentid, crossbranch, isactive, email, email_verified_at, remember_token, created_at, updated_at) FROM stdin;
1	ram	krishna	9876543	2	1	13	1	f	Y	ram@masspro.com.np	\N	\N	\N	\N
6	hari	hari	haran	2	1	2	1	f	Y	hari@masspro.com.np	\N	3DIa2w4fpeT2QDSvs3Kjsttd9oeGg37pNiL1QX8mFM6lExXQClJ5K0pzD0Kj	2025-11-06 23:29:08	2025-11-06 23:29:08
3	sarod	tamang	9851181978	2	1	1	1	t	Y	sarod@example.com	2025-11-06 23:29:08	sample_token	2025-11-06 23:29:08	2025-11-06 23:29:08
\.


--
-- PostgreSQL database dump complete
--

\unrestrict kBGlk9teirFTAP3DzJVUCr41cagmqkaCffSqtbONogMUnoRWMMbjwiv7sSwByE2

