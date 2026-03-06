--
-- PostgreSQL database dump
--

\restrict uxoAek7LaakWwWz6MQxv73thVPrYT3Tshl4YJhcnjmYLQ1BhG0z2RgoQqvvJ9No

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
-- Data for Name: ruleactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ruleactions (actionid, ruleid, action_type, action_value, created_at, updated_at) FROM stdin;
A0308	R0109	ANNUAL_FEE	{"filters": {"cardtype": "ECOM", "schemetype": "VISA"}, "charge_config_reference": "CH094"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0309	R0109	ANNUAL_FEE	{"filters": {"cardtype": "ECOM", "schemetype": "UPI"}, "charge_config_reference": "CH096"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0310	R0109	ANNUAL_FEE	{"filters": {"cardtype": "VIRTUAL", "schemetype": "VISA"}, "charge_config_reference": "CH073"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0311	R0109	ANNUAL_FEE	{"filters": {"cardtype": "DEBIT", "schemetype": "UPI"}, "charge_config_reference": "CH081"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0312	R0109	ANNUAL_FEE	{"filters": {"cardtype": "CREDIT", "schemetype": "UPI"}, "charge_config_reference": "CH082"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0313	R0109	ANNUAL_FEE	{"filters": {"cardtype": "PREPAID", "schemetype": "UPI"}, "charge_config_reference": "CH083"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0314	R0109	ANNUAL_FEE	{"filters": {"cardtype": "VIRTUAL", "schemetype": "UPI"}, "charge_config_reference": "CH082"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0315	R0109	ANNUAL_FEE	{"filters": {"cardtype": "PREPAID", "schemetype": "MASTERCARD"}, "charge_config_reference": "CH077"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0316	R0109	ANNUAL_FEE	{"filters": {"cardtype": "VIRTUAL", "schemetype": "MASTERCARD"}, "charge_config_reference": "CH071"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0317	R0109	ANNUAL_FEE	{"filters": {"cardtype": "ECOM", "schemetype": "MASTERCARD"}, "charge_config_reference": "CH095"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0318	R0109	ANNUAL_FEE	{"filters": {"cardtype": "DEBIT", "schemetype": "NEPALPAY"}, "charge_config_reference": "CH087"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0319	R0109	ANNUAL_FEE	{"filters": {"cardtype": "CREDIT", "schemetype": "NEPALPAY"}, "charge_config_reference": "CH088"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0320	R0109	ANNUAL_FEE	{"filters": {"cardtype": "PREPAID", "schemetype": "NEPALPAY"}, "charge_config_reference": "CH089"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0321	R0109	ANNUAL_FEE	{"filters": {"cardtype": "VIRTUAL", "schemetype": "NEPALPAY"}, "charge_config_reference": "CH088"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0322	R0109	ANNUAL_FEE	{"filters": {"cardtype": "ECOM", "schemetype": "NEPALPAY"}, "charge_config_reference": "CH097"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0307	R0109	ANNUAL_FEE	{"filters": {"cardtype": "PREPAID", "schemetype": "VISA"}, "charge_config_reference": "CH071"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0324	R0109	ANNUAL_FEE	{"filters": {"cardtype": "CREDIT", "schemetype": "MASTER"}, "charge_config_reference": "CH071"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0327	R0109	ANNUAL_FEE	{"filters": {"cardtype": "DEBIT", "schemetype": "VISA"}, "charge_config_reference": "CH069"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
A0326	R0109	ANNUAL_FEE	{"filters": {"cardtype": "CREDIT", "schemetype": "VISA"}, "charge_config_reference": "CH073"}	2025-11-19 23:42:07.132111	2025-11-19 23:42:07.132111
\.


--
-- PostgreSQL database dump complete
--

\unrestrict uxoAek7LaakWwWz6MQxv73thVPrYT3Tshl4YJhcnjmYLQ1BhG0z2RgoQqvvJ9No

