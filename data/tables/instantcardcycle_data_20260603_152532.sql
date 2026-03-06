--
-- PostgreSQL database dump
--

\restrict LeyazdGVrYhcS0ZA6of2YthkrreWMsWqIi1dp2cs2NWLGwvDBOkAhuzJ8ix8dqi

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
-- Data for Name: instantcardcycle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instantcardcycle (requestid, scheme, cardtype, currency, totalnumberofcard, flags, pintype, requesteddate, requestedby, requestedbranchname, requestbranchcode, approvedby, approvedbranchcode, approvedbranchname, verifiedby, verifiedbranchname, verifiedbranchcode, status, approvedate, verifieddate, booked_cards, approved_cards, bookedcardallocated, approvedcardsallocated) FROM stdin;
ICR00000120	UPI	INSTANT	NPR	6	A	PAPER-PIN	2026-02-16 00:18:45.733214-08	sujan	BALUWATAR	0001	SYSTEM	0000	SYSTEM	SYSTEM	SYSTEM	0000	ALLOCATED	2026-02-16 00:19:23.038058-08	2026-02-16 00:58:04.531871-08	6	0	t	f
ICR00000119	UPI	INSTANT	NPR	4	A	GREEN-PIN	2026-02-16 00:18:04.797213-08	sujan	BALUWATAR	0001	SYSTEM	0000	SYSTEM	SYSTEM	SYSTEM	0000	ALLOCATED	2026-02-16 00:19:23.059924-08	2026-02-16 00:21:24.210731-08	4	0	t	f
\.


--
-- PostgreSQL database dump complete
--

\unrestrict LeyazdGVrYhcS0ZA6of2YthkrreWMsWqIi1dp2cs2NWLGwvDBOkAhuzJ8ix8dqi

