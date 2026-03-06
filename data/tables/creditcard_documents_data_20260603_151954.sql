--
-- PostgreSQL database dump
--

\restrict NmCbO6Th8xQFUUegiyJoRhnsC9lnjESmOH9k7gFWs8goIbgOK3I5syQmS1cBiCm

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
-- Data for Name: creditcard_documents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.creditcard_documents (doc_id, request_id, document_type, url_file_name, uploaded_by, uploaded_at, status) FROM stdin;
DOC00193	CY000000224	ID Proof	/documents/id_proof_123.pdf	john_smith	2026-02-03 02:11:33.204105	Verified
DOC00194	CY000000224	Address Proof	/documents/address_proof_123.pdf	john_smith	2026-02-03 02:11:33.204105	Pending
DOC00195	CY000000225	ID Proof	/documents/id_proof_123.pdf	john_smith	2026-02-03 02:12:13.516772	Verified
DOC00196	CY000000225	Address Proof	/documents/address_proof_123.pdf	john_smith	2026-02-03 02:12:13.516772	Pending
DOC00197	CY000000226	ID Proof	/documents/id_proof_123.pdf	john_smith	2026-02-03 21:08:14.001867	Verified
DOC00198	CY000000226	Address Proof	/documents/address_proof_123.pdf	john_smith	2026-02-03 21:08:14.001867	Pending
DOC00201	CY000000227	CITIZENSHIP	/documents/citizenship_updated.jpg	john.doe	2026-02-05 00:57:53.951724	Verified
DOC00202	CY000000227	INCOME_PROOF	/documents/salary_slip_nov.pdf	john.doe	2026-02-05 00:57:53.951724	Verified
DOC00203	CY000000227	ADDRESS_PROOF	/documents/electricity_bill.pdf	john.doe	2026-02-05 00:57:53.951724	Pending
\.


--
-- PostgreSQL database dump complete
--

\unrestrict NmCbO6Th8xQFUUegiyJoRhnsC9lnjESmOH9k7gFWs8goIbgOK3I5syQmS1cBiCm

