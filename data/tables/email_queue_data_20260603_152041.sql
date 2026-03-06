--
-- PostgreSQL database dump
--

\restrict ADvJT8Zc3cwi6OOPeJUeUlb5dfdlAcrdnnAudfCZyTFGdRCjKKeVDfbhkSd8obf

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
-- Data for Name: email_queue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email_queue (id, template_id, recipient_email, recipient_name, subject, body, variables_used, status, user_id, card_details, attempt_count, last_attempt_at, error_message, scheduled_for, sent_at, created_at) FROM stdin;
10048621-e5fd-40c0-9038-90698e75e200	\N	sarodtamang@gmail.com	sarodtamang@gmail.com	Payment Due Reminder	Your payment is due...	{}	processing	3	\N	20	2026-02-08 22:30:01	Email "John Doe" does not comply with addr-spec of RFC 2822.	2026-02-04 23:32:39.767141	\N	2026-02-04 23:32:39.767141
\.


--
-- PostgreSQL database dump complete
--

\unrestrict ADvJT8Zc3cwi6OOPeJUeUlb5dfdlAcrdnnAudfCZyTFGdRCjKKeVDfbhkSd8obf

