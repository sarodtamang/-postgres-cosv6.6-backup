--
-- PostgreSQL database dump
--

\restrict F3twSW05om3xzHMFICx9j8YXGTHwYjTUjZgVdcD34EE7BNtx1MjxnwudR8m3fVn

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
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache (key, value, expiration) FROM stdin;
laravel_cache_user_detail:3	O:8:"stdClass":13:{s:2:"id";i:3;s:5:"fname";s:5:"sarod";s:5:"lname";s:6:"tamang";s:12:"mobilenumber";s:10:"9851181978";s:5:"email";s:17:"sarod@example.com";s:8:"typename";s:5:"Admin";s:5:"insid";i:1;s:6:"prefix";s:7:"masspro";s:5:"theme";s:32:"#003B73,  rgba(100, 150, 255, 0)";s:12:"primarycolor";s:7:"#003B73";s:14:"secondarycolor";s:6:"14213d";s:8:"usertype";i:2;s:8:"username";s:5:"sarod";}	1772820415
\.


--
-- PostgreSQL database dump complete
--

\unrestrict F3twSW05om3xzHMFICx9j8YXGTHwYjTUjZgVdcD34EE7BNtx1MjxnwudR8m3fVn

