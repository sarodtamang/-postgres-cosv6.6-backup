--
-- PostgreSQL database dump
--

\restrict aI79Ei9EuNjf6BGpRRTx85vanoVwqDTysoduO8PenOip9pUffuPriekVmeCMzPm

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
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (name, rollno, mobile, subject, college) FROM stdin;
Bob Johnson	ROLL003	1112223333	Chemistry	PQR College
Alice Brown	ROLL004	4445556666	Biology	LMN University
Jimmy Morphing	RNO124	985109742	Mathematics & Science	CCRD
mridul	RNO125	98510987	Mathematics & Science	global
\.


--
-- PostgreSQL database dump complete
--

\unrestrict aI79Ei9EuNjf6BGpRRTx85vanoVwqDTysoduO8PenOip9pUffuPriekVmeCMzPm

