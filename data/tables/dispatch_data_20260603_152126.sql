--
-- PostgreSQL database dump
--

\restrict LpLvznS425KhZbzjLVFGAPFfZ3plm1hqnkxBbcPQDwgyerBIvBkXlBc0zFhKbeE

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
-- Data for Name: dispatch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dispatch (request_id, username, receivername, idtype, mobileno, address, urldoclink, deliverydate, created_at, updated_at) FROM stdin;
REQ001	john_doe	Jane Smith	Passport	1234567890	123 Street, City	http://doclink.com	2025-11-15	2025-11-13 02:35:16.251632	2025-11-13 02:35:16.251632
REQ002	john_doe	Jane Smith	Passport	1234567890	123 Street, City	/masspro/ramghan.jpeg	2025-11-15	2025-11-13 03:13:21.771843	2025-11-13 21:44:18.029418
CY000000098	Amir awal	sarod tamang	Passport-I3241	9841281978	kapan	/uploads/closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head.jpg	2025-11-14	2025-11-13 22:27:31.842113	2025-11-13 22:27:31.842113
CY000000097	Silon Rajthala	sardod	Passport-I3241	123455	987765444332	C:\\masspro\\image\\1763104641_compressed_closeup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head.jpg	2025-11-14	2025-11-13 23:17:21.318577	2025-11-13 23:17:21.318577
CY000000096	Sujan Pradhananga	ravi kansakar	Passport-I3241	9851097428	bhaktapur	C:\\masspro\\image\\CY000000096.jpeg	2025-11-14	2025-11-13 23:23:09.918721	2025-11-13 23:23:09.918721
CY000000095	Amit Regmi	ravi kansakar	Passport-I3241	9851097428	kathmandu	C:\\masspro\\image\\CY000000095.jpeg	2025-11-14	2025-11-13 23:24:30.117036	2025-11-13 23:24:30.117036
\.


--
-- PostgreSQL database dump complete
--

\unrestrict LpLvznS425KhZbzjLVFGAPFfZ3plm1hqnkxBbcPQDwgyerBIvBkXlBc0zFhKbeE

