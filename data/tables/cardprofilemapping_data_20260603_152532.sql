--
-- PostgreSQL database dump
--

\restrict 4E6eJaRlwUTdtIxkUkkJiwxB7gReqqyiG6XJt2sjnAQpDNBB31Ie3V52jAuNoDl

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
-- Data for Name: cardprofilemapping; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cardprofilemapping (card_profile_id, cardid, profileid, status, effective_date, expiry_date, assigned_by, assigned_at) FROM stdin;
PCM000000120	CAR00000070	PRO109	ACTIVE	2025-12-28	2027-12-31	SYSTEM	2025-12-28 06:00:00.520529
PCM000000124	CAR00000074	PRO109	ACTIVE	2025-12-28	2027-12-31	SYSTEM	2025-12-28 06:10:30.940643
PCM000000129	CAR00000079	PRO109	ACTIVE	2025-12-30	2027-12-31	SYSTEM	2025-12-29 22:10:11.146769
PCM000000133	CAR00000083	PRO109	ACTIVE	2025-12-30	\N	SYSTEM	2025-12-30 01:17:17.175355
PCM000000135	CAR00000085	PRO109	ACTIVE	2025-12-30	\N	SYSTEM	2025-12-30 01:20:15.469296
PCM000000136	CAR00000086	PRO109	ACTIVE	2025-12-30	2027-12-31	SYSTEM	2025-12-30 01:24:50.822491
PCM000000137	CAR00000087	PRO109	ACTIVE	2025-12-30	2027-12-31	SYSTEM	2025-12-30 01:51:57.737712
\.


--
-- PostgreSQL database dump complete
--

\unrestrict 4E6eJaRlwUTdtIxkUkkJiwxB7gReqqyiG6XJt2sjnAQpDNBB31Ie3V52jAuNoDl

