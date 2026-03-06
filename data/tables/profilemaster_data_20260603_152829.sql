--
-- PostgreSQL database dump
--

\restrict POhPNFbyez0Y2j7VXxMNhVx6nyEiRdzRGp7mn4dinLuuIOUBuxumBgIKEbR2MOw

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
-- Data for Name: profilemaster; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profilemaster (profileid, profilename, description, status, created_at, updated_at) FROM stdin;
PRO106	Premium Profile	Profile for premium users	ACTIVE	2025-11-16 02:01:20.420992	2025-11-16 02:01:20.420992
PRO107	Admin Profile	Profile for administrators	ACTIVE	2025-11-16 02:01:20.420992	2025-11-16 02:01:20.420992
PRO108	Guest Profile	Profile for guest users	INACTIVE	2025-11-16 02:01:20.420992	2025-11-16 02:01:20.420992
PRO109	Default Profile	Profile for guest users	ACTIVE	2025-11-16 02:01:20.420992	2025-11-16 02:01:20.420992
PRO112	Diamond	System administrator with full privileges	ACTIVE	2025-12-03 21:47:42.42528	2025-12-03 21:47:42.42528
\.


--
-- PostgreSQL database dump complete
--

\unrestrict POhPNFbyez0Y2j7VXxMNhVx6nyEiRdzRGp7mn4dinLuuIOUBuxumBgIKEbR2MOw

