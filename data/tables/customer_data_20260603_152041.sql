--
-- PostgreSQL database dump
--

\restrict XPUGIJ3nHJdzkNAYrMkf0ClWsmeRWAPYB5wSLEZnvamCElNIQNaep64pMW9NXdd

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
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customercode, cbs_customer_code, fname, lname, middlename, salutation, emailid, mobileno, branchcode, bankcode, maritalstatus, status, dob, address, nationality, gender, documenttype, documentid, occupation, employment_type, annualincome, fathername, grandfathername, mothername, spousename, generateddate, updateddate, notes) FROM stdin;
CUST00000060	CBS114704	Sita	Nepali		Mr.	krishna.hari@example.com	9841633588	0002	1	M	A	1985-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-114704	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-29 22:02:04.31147	2025-12-29 22:02:04.31147	High net worth individual
CUST00000061	CBS114741	Radha	Krishna		Mr.	krishna.hari@example.com	9841358488	0003	1	M	A	1985-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-114741	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-29 22:02:41.52313	2025-12-29 22:02:41.52313	High net worth individual
CUST00000062	CBS143929	Radha	Krishna		Mr.	krishna.hari@example.com	9841391869	0003	1	M	A	1985-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-143929	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-30 00:54:29.460471	2025-12-30 00:54:29.460471	High net worth individual
CUST00000063	CBS145431	Radha	Krishna		Mr.	krishna.hari@example.com	9841469543	0003	1	M	A	1985-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-145431	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-30 01:09:31.694216	2025-12-30 01:09:31.694216	High net worth individual
CUST00000065	CBS145817	Radha	Krishna		Mr.	krishna.hari@example.com	9841891369	0003	1	M	A	1985-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-145817	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-30 01:13:17.696956	2025-12-30 01:13:17.696956	High net worth individual
CUST00000066	CBS001	John	Doe	M	Mr.	john@example.com	1234567890	0001	1	S	A	1990-01-01	123 Main St	US	M	PASSPORT	P123456	Engineer	FULLTIME	75000.00	Father Name	Grandfather Name	Mother Name	Spouse Name	2025-12-30 01:17:17.175355	2025-12-30 01:17:17.175355	Test notes
CUST00000067	CBS150349	Radha	Krishna		Mr.	krishna.hari@example.com	9841854127	0003	1	M	A	1985-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-150349	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-30 01:18:49.39353	2025-12-30 01:18:49.39353	High net worth individual
CUST00000068	CBS002	John	Doe	M	Mr.	soam@example.com	1234567890	0001	1	S	A	1990-01-01	123 Main St	US	M	PASSPORT	P123456	Engineer	FULLTIME	75000.00	Father Name	Grandfather Name	Mother Name	Spouse Name	2025-12-30 01:20:15.469296	2025-12-30 01:20:15.469296	Test notes
CUST00000069	CBS150950	Radha	Krishna		Mr.	krishna.hari@example.com	9841286327	0003	1	M	A	1985-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-150950	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-30 01:24:50.822491	2025-12-30 01:24:50.822491	High net worth individual
CUST00000070	CBS153657	Radha	Krishna		Mr.	krishna.hari@example.com	9841630049	0003	1	M	A	1985-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-153657	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-30 01:51:57.737712	2025-12-30 01:51:57.737712	High net worth individual
CUST00000058	CBS114546	Krishna	Sharma	Hari	Mr.	krishna.hari@example.com	9841986994	0001	1	M	A	1984-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-114546	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-29 22:00:46.473857	2025-12-29 22:00:46.473857	High net worth individual
CUST00000059	CBS114634	Rama	Setu	Hari	Mr.	krishna.hari@example.com	9841108266	0001	1	M	A	1984-07-20	House No. 45,Kathmandu,Chabahil-6	Nepali	Male	CitizenShip	DOC-114634	Businessman	Self-employed	1500000.00	Ramesh Sharma	Mohan Lal Sharma	Sita Sharma	Priya Sharma	2025-12-29 22:01:34.670057	2025-12-29 22:01:34.670057	High net worth individual
\.


--
-- PostgreSQL database dump complete
--

\unrestrict XPUGIJ3nHJdzkNAYrMkf0ClWsmeRWAPYB5wSLEZnvamCElNIQNaep64pMW9NXdd

