--
-- PostgreSQL database dump
--

\restrict rHCZ3RX2hNHPjgsgJqUUfaDZDW9MjUwcj2Cef7sjxUn6W1pxLFcVJ3yvQwDUvYU

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
-- Data for Name: credit_card_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.credit_card_application (dap_iden, dap_ban_code, dap_bra_code, dap_user, dap_bat_code, dap_cus_type, dap_cus_old_new, dap_cus_iden, dap_date, dap_ast_code, dap_firs_nam1, dap_last_nam1, dap_midd_nam1, dap_tit1, dap_birt_dat1, dap_birt_loc1, dap_firs_ide1, dap_firs_iden_typ1, dap_seco_ide1, dap_seco_iden_typ1, dap_gend1, dap_mst_cod1, dap_cou_cod1, dap_empl_cod1, dap_empl_nam1, dap_gros_sal1, dap_net_sal1, dap_empl_age1, dap_firs_nam2, dap_last_nam2, dap_midd_nam2, dap_tit2, dap_birt_dat2, dap_birt_loc2, dap_firs_ide2, dap_firs_iden_typ2, dap_seco_ide2, dap_seco_iden_typ2, dap_gend2, dap_mst_cod2, dap_cou_cod2, dap_empl_cod2, dap_empl_nam2, dap_gros_sal2, dap_net_sal2, dap_empl_age2, dap_deci_date, dap_deci_auth, dap_clas_numb, dap_old_new_acct, dap_requ_acc_numb_mxp, dap_requ_acc_numb, dap_requ_acc_curr_code, dap_requ_cpr_code, dap_requ_card_numb, dap_pan_gene_manu_auto, dap_requ_dpr_code, dap_requ_effe_date, dap_requ_expi_date, dap_chld_titl, dap_chld_firs_name, dap_chld_last_name, dap_chld_midd_name, dap_chld_corp_name, dap_chld_name, dap_prim_seco_card, dap_prim_car_numb, dap_pers_fee_code, dap_memb_fee_code, dap_new_card_desi, dap_card_expr_deli, dap_vca_code, dap_pro_code, dap_cust_pare, dap_phon_number, dap_email_adr, dap_gree_pin_flag, firstaddresstype, firstaddressline1, firstaddressline2, firstaddressline3, firstaddresszipcode, firstadressphone1, firstadressphone2, firstcity, emailaddress, secondpobox, secondstreet, secondstate, secondfax, created_at, updated_at, batch_id) FROM stdin;
1769757859041	1	0001	CCMSUSER	10	I	N	CUST00000058	2026-01-29	730	Krishna	Sharma	Hari	1	1985-07-20	House No. 45,Kathmandu,Chabahil-6	DOC-114546	CitizenShip			1	1	524	Self-employed	Businessman	1500000.00	1200000.00	40	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	AC061400010744465141	NPR	731	\N	A	730	2026-01-29	2031-01-29	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9841986994	krishna.hari@example.com	Y	08	House No. 45,Kathmandu,Chabahil-6				9841986994		0001	krishna.hari@example.com	\N	\N	\N	\N	2026-01-29 23:24:18.907826	2026-01-29 23:24:18.907826	BAT_0000001
1769757859169	1	0001	CCMSUSER	10	I	N	CUST00000059	2026-01-29	730	Rama	Setu	Hari	1	1985-07-20	House No. 45,Kathmandu,Chabahil-6	DOC-114634	CitizenShip			1	1	524	Self-employed	Businessman	1500000.00	1200000.00	40	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	AC061400010744949398	NPR	731	\N	A	730	2026-01-29	2031-01-29	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9841108266	krishna.hari@example.com	Y	08	House No. 45,Kathmandu,Chabahil-6				9841108266		0001	krishna.hari@example.com	\N	\N	\N	\N	2026-01-29 23:24:18.907826	2026-01-29 23:24:18.907826	BAT_0000001
\.


--
-- PostgreSQL database dump complete
--

\unrestrict rHCZ3RX2hNHPjgsgJqUUfaDZDW9MjUwcj2Cef7sjxUn6W1pxLFcVJ3yvQwDUvYU

