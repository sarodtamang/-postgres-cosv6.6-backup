--
-- PostgreSQL database dump
--

\restrict YdhCKexd2dgDYmaiwGs1X1CZmh0snosdIxjejUyTIDbuyXiLeMUIqONctgfgDoR

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
-- Data for Name: email_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.email_logs (id, email_id, action, details, ip_address, user_agent, created_at) FROM stdin;
134d62ba-98aa-4103-b9bc-74fdb4f5d10e	10048621-e5fd-40c0-9038-90698e75e200	sent	{"server": "mail01", "sent_via": "smtp"}	192.168.1.100	PostgreSQL Client	2026-02-04 23:41:28.044745
\.


--
-- PostgreSQL database dump complete
--

\unrestrict YdhCKexd2dgDYmaiwGs1X1CZmh0snosdIxjejUyTIDbuyXiLeMUIqONctgfgDoR

