--
-- PostgreSQL database dump
--

\restrict rylESte8ehKd68o8meN59Ajg4N7GIeKiJeMWQMFCfAI6oZQbco35CeWXWppKu8J

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
-- Data for Name: creditcardcycle; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.creditcardcycle (request_id, full_name, mobile, account_no, request_type, card_type, currency_type, card_scheme, request_branch_id, delivery_branch_id, customer_branch_id, customer_branch_code, account_type, instcode, remarks, status, created_at, updated_at, requstor_branch_code, receiver_branch_code, pintype, document_remarks, limitapproval_remarks, forwarddoc, forwardapproval, requested_limit) FROM stdin;
CY000000224	AMIR kaku	9876543210	AC061400010744465141	New Application	Platinum	NPR	VISA	BALUWATAR	NAXAL	NAXAL	0001	Savings	INST001	Customer requested platinum card	MAPPED	2026-02-03 02:11:33.204105	2026-02-03 21:18:12.32793	0001	0001	GREEN-PIN	Submitted all documents	Limit approved as per policy	1	1	500000.00
CY000000225	SUJAN kaku	9876543210	AC061400010857713445	New Application	Platinum	NPR	VISA	BALUWATAR	NAXAL	NAXAL	0001	Savings	INST001	Customer requested platinum card	MAPPED	2026-02-03 02:12:13.516772	2026-02-03 21:18:12.32793	0001	0001	PAPER-PIN	Submitted all documents	Limit approved as per policy	1	1	500000.00
CY000000227	John Smith Updated	+977-9876543210	123456789012	APPROVED	PLATINUM	USD	VISA	BR001	BR002	BR003	003	SAVINGS	INST001	Application updated with new information	CARD ACK	2026-02-03 21:17:36.370631	2026-02-05 03:01:57.956832	0001	0001	GREEN-PIN	Documnet uploaded	Limit approved	1	1	25000.00
CY000000226	SUJAN kaku	9876543210	AC061400010857713222	New Application	Platinum	NPR	VISA	BALUWATAR	NAXAL	NAXAL	0001	Savings	INST001	Customer requested platinum card	CARD & PIN ACK	2026-02-03 21:08:14.001867	2026-02-05 03:04:03.532944	0001	0001	PAPER-PIN	Submitted all documents	Limit approved as per policy	1	1	500000.00
\.


--
-- PostgreSQL database dump complete
--

\unrestrict rylESte8ehKd68o8meN59Ajg4N7GIeKiJeMWQMFCfAI6oZQbco35CeWXWppKu8J

