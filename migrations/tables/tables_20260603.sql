-- Table definitions for cos database
-- Generated: 2026-06-03 15:04:49

-- Table: public.migrations 
--
-- PostgreSQL database dump
--

\restrict 2if80euAoiwWLs7hqcUMOxl1bb1NQ1lcn52GfIQ3FZgvp3slNJEFr1hMuHsVkbR

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict 2if80euAoiwWLs7hqcUMOxl1bb1NQ1lcn52GfIQ3FZgvp3slNJEFr1hMuHsVkbR

 
-- Table: public.cache 
--
-- PostgreSQL database dump
--

\restrict lUrL5uiwpeIhJZDqbqC4zHbNdFKYLMAZAF6VheqGbXSndImGS1HI6bYB7fBqFWH

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cache; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- PostgreSQL database dump complete
--

\unrestrict lUrL5uiwpeIhJZDqbqC4zHbNdFKYLMAZAF6VheqGbXSndImGS1HI6bYB7fBqFWH

 
-- Table: public.cache_locks 
--
-- PostgreSQL database dump
--

\restrict JNn1rJWZD32tCzkZotCixEf9ZlG0IH5QeeahVLxByjXN3LCL7DZgfNqgHwkSfaX

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- PostgreSQL database dump complete
--

\unrestrict JNn1rJWZD32tCzkZotCixEf9ZlG0IH5QeeahVLxByjXN3LCL7DZgfNqgHwkSfaX

 
-- Table: public.jobs 
--
-- PostgreSQL database dump
--

\restrict yd1pQtyQoBfjXOUvWMelUboVHm0YX5SmNsS9AhmH5MLtBs07E6jBJJNfGXe3W0e

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- PostgreSQL database dump complete
--

\unrestrict yd1pQtyQoBfjXOUvWMelUboVHm0YX5SmNsS9AhmH5MLtBs07E6jBJJNfGXe3W0e

 
-- Table: public.job_batches 
--
-- PostgreSQL database dump
--

\restrict G8AXgyeTRXhRDPYsghwsBlypNRdMq9CXcebLAsBd9GdYWPGkSCCFHes70FZ5ct1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict G8AXgyeTRXhRDPYsghwsBlypNRdMq9CXcebLAsBd9GdYWPGkSCCFHes70FZ5ct1

 
-- Table: public.failed_jobs 
--
-- PostgreSQL database dump
--

\restrict Q2i8L5SNP6HnB2f9hLwdjK7Zs4VgXErHJ8BUxCFU22Gw7xbgTGEEN8EIucg3fus

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- PostgreSQL database dump complete
--

\unrestrict Q2i8L5SNP6HnB2f9hLwdjK7Zs4VgXErHJ8BUxCFU22Gw7xbgTGEEN8EIucg3fus

 
-- Table: public.institution 
--
-- PostgreSQL database dump
--

\restrict hBF7hQ4SThN188O644W3PRMuzteuW8clyH8p6BVosZkXkNBmYL4iXFrtIhorzbg

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: institution; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.institution (
    id integer NOT NULL,
    prefix character varying(15) NOT NULL,
    name character varying(50) NOT NULL,
    primarycolor character varying(255) NOT NULL,
    secondarycolor character varying(255) NOT NULL,
    theme character varying(255) NOT NULL,
    status character varying(255) DEFAULT 'InActive'::character varying NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: institution_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.institution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: institution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.institution_id_seq OWNED BY public.institution.id;


--
-- Name: institution id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.institution ALTER COLUMN id SET DEFAULT nextval('public.institution_id_seq'::regclass);


--
-- Name: institution institution_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.institution
    ADD CONSTRAINT institution_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict hBF7hQ4SThN188O644W3PRMuzteuW8clyH8p6BVosZkXkNBmYL4iXFrtIhorzbg

 
-- Table: public.usertype 
--
-- PostgreSQL database dump
--

\restrict 2qXLZKHhu6dNAl7egXyNiVkfYKmbMpciwBEcKZ9kHlZCDmfYaaS4FLjcW3u2AAf

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: usertype; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usertype (
    id integer NOT NULL,
    institutionid integer NOT NULL,
    typename character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: usertype_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usertype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: usertype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usertype_id_seq OWNED BY public.usertype.id;


--
-- Name: usertype id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usertype ALTER COLUMN id SET DEFAULT nextval('public.usertype_id_seq'::regclass);


--
-- Name: usertype usertype_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usertype
    ADD CONSTRAINT usertype_pkey PRIMARY KEY (id);


--
-- Name: usertype usertype_institutionid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usertype
    ADD CONSTRAINT usertype_institutionid_foreign FOREIGN KEY (institutionid) REFERENCES public.institution(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict 2qXLZKHhu6dNAl7egXyNiVkfYKmbMpciwBEcKZ9kHlZCDmfYaaS4FLjcW3u2AAf

 
-- Table: public.student 
--
-- PostgreSQL database dump
--

\restrict aPw0dlR7d0KhnwPU2coDnGsJJZgpeYUv0yAqzGyCsRlNAoSVRaXeU6M7fH3cwNy

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: student; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.student (
    name character varying(100),
    rollno character varying(20) NOT NULL,
    mobile character varying(15),
    subject character varying(100),
    college character varying(200)
);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (rollno);


--
-- PostgreSQL database dump complete
--

\unrestrict aPw0dlR7d0KhnwPU2coDnGsJJZgpeYUv0yAqzGyCsRlNAoSVRaXeU6M7fH3cwNy

 
-- Table: public.card_request_cycle 
--
-- PostgreSQL database dump
--

\restrict ciZ2faroZSXoXQElTBVCLVTw5ZKgJUtQhIzjRjN1uI3BebpDcGvgopwog41YEYb

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: card_request_cycle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.card_request_cycle (
    request_id character varying(11) DEFAULT public.fcreatecardcyclecode(),
    full_name character varying(30) NOT NULL,
    mobile character varying(15),
    account_no character varying(20),
    request_type character varying(50) NOT NULL,
    card_type character varying(50) NOT NULL,
    currency_type character varying(10) NOT NULL,
    card_scheme character varying(50) NOT NULL,
    request_branch_id character varying(100) NOT NULL,
    delivery_branch_id character varying(100) NOT NULL,
    customer_branch_id character varying(100) NOT NULL,
    customer_branch_code character varying(4) NOT NULL,
    account_type character varying(100) NOT NULL,
    instcode character varying(12) NOT NULL,
    remarks text,
    status character varying(20) DEFAULT 'Pending'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    requstor_branch_code character varying(4),
    receiver_branch_code character varying(4),
    pintype character varying(15) NOT NULL,
    filelocation text
);


--
-- PostgreSQL database dump complete
--

\unrestrict ciZ2faroZSXoXQElTBVCLVTw5ZKgJUtQhIzjRjN1uI3BebpDcGvgopwog41YEYb

 
-- Table: public.modules 
--
-- PostgreSQL database dump
--

\restrict zg0hlq8NcBiBL8dXpgjGQsf5TKvpV0ZlucCKSlMpBWroiJZeZeHqp3tgYDpBZ0F

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: modules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.modules (
    id integer NOT NULL,
    modulename character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    icon character varying(255) NOT NULL,
    orderby integer NOT NULL,
    parentmoduleid integer DEFAULT 0 NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: modules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.modules_id_seq OWNED BY public.modules.id;


--
-- Name: modules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modules ALTER COLUMN id SET DEFAULT nextval('public.modules_id_seq'::regclass);


--
-- Name: modules modules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modules
    ADD CONSTRAINT modules_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict zg0hlq8NcBiBL8dXpgjGQsf5TKvpV0ZlucCKSlMpBWroiJZeZeHqp3tgYDpBZ0F

 
-- Table: public.module_permission 
--
-- PostgreSQL database dump
--

\restrict CWWPJmoeM4tA78MwzxxUNs9nLeEgugPactQRMktIN0bEJ0rPzUBd9pdGaf5C7bh

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: module_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.module_permission (
    id integer NOT NULL,
    modulesid integer NOT NULL,
    usertypeid integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: module_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.module_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: module_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.module_permission_id_seq OWNED BY public.module_permission.id;


--
-- Name: module_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.module_permission ALTER COLUMN id SET DEFAULT nextval('public.module_permission_id_seq'::regclass);


--
-- Name: module_permission module_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.module_permission
    ADD CONSTRAINT module_permission_pkey PRIMARY KEY (id);


--
-- Name: module_permission module_permission_modulesid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.module_permission
    ADD CONSTRAINT module_permission_modulesid_foreign FOREIGN KEY (modulesid) REFERENCES public.modules(id) ON DELETE CASCADE;


--
-- Name: module_permission module_permission_usertypeid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.module_permission
    ADD CONSTRAINT module_permission_usertypeid_foreign FOREIGN KEY (usertypeid) REFERENCES public.usertype(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict CWWPJmoeM4tA78MwzxxUNs9nLeEgugPactQRMktIN0bEJ0rPzUBd9pdGaf5C7bh

 
-- Table: public.form_permission 
--
-- PostgreSQL database dump
--

\restrict pXTdIL2zadklakqsPuVIFllDK9oayMiAUh0mWI7Yffpgg5fBDp61Bbqs1dsBYEe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: form_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.form_permission (
    id integer NOT NULL,
    formname character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    isview character(1) DEFAULT 'N'::bpchar NOT NULL,
    isinsert character(1) DEFAULT 'N'::bpchar NOT NULL,
    isupdate character(1) DEFAULT 'N'::bpchar NOT NULL,
    isedit character(1) DEFAULT 'N'::bpchar NOT NULL,
    isdelete character(1) DEFAULT 'N'::bpchar NOT NULL,
    usertypeid integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: form_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.form_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: form_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.form_permission_id_seq OWNED BY public.form_permission.id;


--
-- Name: form_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_permission ALTER COLUMN id SET DEFAULT nextval('public.form_permission_id_seq'::regclass);


--
-- Name: form_permission form_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_permission
    ADD CONSTRAINT form_permission_pkey PRIMARY KEY (id);


--
-- Name: form_permission form_permission_usertypeid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.form_permission
    ADD CONSTRAINT form_permission_usertypeid_foreign FOREIGN KEY (usertypeid) REFERENCES public.usertype(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict pXTdIL2zadklakqsPuVIFllDK9oayMiAUh0mWI7Yffpgg5fBDp61Bbqs1dsBYEe

 
-- Table: public.sessions 
--
-- PostgreSQL database dump
--

\restrict 5OvnjB74kdAwsDB8sEbDqiK4jH4ZWCV3GajiSF8n4dcPuETORrEfvOoMWZnkbzs

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict 5OvnjB74kdAwsDB8sEbDqiK4jH4ZWCV3GajiSF8n4dcPuETORrEfvOoMWZnkbzs

 
-- Table: public.email_variables 
--
-- PostgreSQL database dump
--

\restrict lzajfU0kRq3dIfk9mt29ZizpDGOv1IIr0lhB9t3wbSgCipbjouPeDEtV1id6ySm

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: email_variables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.email_variables (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    variable_key character varying(100) NOT NULL,
    display_name character varying(200) NOT NULL,
    description text,
    data_source character varying(100),
    sample_value character varying(500),
    category character varying(50) DEFAULT 'general'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: email_variables email_variables_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_variables
    ADD CONSTRAINT email_variables_pkey PRIMARY KEY (id);


--
-- Name: email_variables email_variables_variable_key_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_variables
    ADD CONSTRAINT email_variables_variable_key_key UNIQUE (variable_key);


--
-- PostgreSQL database dump complete
--

\unrestrict lzajfU0kRq3dIfk9mt29ZizpDGOv1IIr0lhB9t3wbSgCipbjouPeDEtV1id6ySm

 
-- Table: public.log_auth 
--
-- PostgreSQL database dump
--

\restrict oCnCgslpBUkpEYYhEQWGrsNE3kYd5qctAsZjgI61xDll5nNvDmTtjh5TYR4H8ya

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: log_auth; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.log_auth (
    id bigint NOT NULL,
    username character varying(255),
    ip inet,
    user_agent character varying(255),
    success boolean DEFAULT false NOT NULL,
    failure_reason character varying(255),
    attempted_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: log_auth_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.log_auth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: log_auth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.log_auth_id_seq OWNED BY public.log_auth.id;


--
-- Name: log_auth id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_auth ALTER COLUMN id SET DEFAULT nextval('public.log_auth_id_seq'::regclass);


--
-- Name: log_auth log_auth_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_auth
    ADD CONSTRAINT log_auth_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict oCnCgslpBUkpEYYhEQWGrsNE3kYd5qctAsZjgI61xDll5nNvDmTtjh5TYR4H8ya

 
-- Table: public.log_user 
--
-- PostgreSQL database dump
--

\restrict l2k5oTSlB81JmMguORpf8RoKbK0BdK3sTD4NawrS6sZodcg48YbZESsgEQbkMjh

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: log_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.log_user (
    id bigint NOT NULL,
    userid integer NOT NULL,
    from_url character varying(255),
    to_url character varying(255) NOT NULL,
    ip inet,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: log_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.log_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: log_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.log_user_id_seq OWNED BY public.log_user.id;


--
-- Name: log_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_user ALTER COLUMN id SET DEFAULT nextval('public.log_user_id_seq'::regclass);


--
-- Name: log_user log_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_user
    ADD CONSTRAINT log_user_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict l2k5oTSlB81JmMguORpf8RoKbK0BdK3sTD4NawrS6sZodcg48YbZESsgEQbkMjh

 
-- Table: public.log_user_access 
--
-- PostgreSQL database dump
--

\restrict e1efRzXSg77FOHUaP25WMc51SS7T2qB0u5FddE9Uvux3kgq4q9hCLOa9ceBeNTj

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: log_user_access; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.log_user_access (
    id bigint NOT NULL,
    userid bigint NOT NULL,
    ip inet,
    user_agent character varying(255),
    action character varying(255) NOT NULL,
    status_code integer,
    route character varying(255),
    description text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: log_user_access_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.log_user_access_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: log_user_access_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.log_user_access_id_seq OWNED BY public.log_user_access.id;


--
-- Name: log_user_access id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_user_access ALTER COLUMN id SET DEFAULT nextval('public.log_user_access_id_seq'::regclass);


--
-- Name: log_user_access log_user_access_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_user_access
    ADD CONSTRAINT log_user_access_pkey PRIMARY KEY (id);


--
-- Name: log_user_access_action_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX log_user_access_action_index ON public.log_user_access USING btree (action);


--
-- Name: log_user_access_userid_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX log_user_access_userid_index ON public.log_user_access USING btree (userid);


--
-- PostgreSQL database dump complete
--

\unrestrict e1efRzXSg77FOHUaP25WMc51SS7T2qB0u5FddE9Uvux3kgq4q9hCLOa9ceBeNTj

 
-- Table: public.ldap_configuration 
--
-- PostgreSQL database dump
--

\restrict wxIH4vRDnA4Jy2PPwaT6U0MC7CLromPbO8URVUaupwgoESe2yVvvOkP5EHOXGIX

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ldap_configuration; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ldap_configuration (
    id bigint NOT NULL,
    institutionid integer NOT NULL,
    ldap_host character varying(255),
    ldap_enabled boolean DEFAULT false NOT NULL,
    ldap_base_dn character varying(255),
    ldap_username character varying(255),
    ldap_password text,
    ldap_port integer DEFAULT 389 NOT NULL
);


--
-- Name: ldap_configuration_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ldap_configuration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ldap_configuration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ldap_configuration_id_seq OWNED BY public.ldap_configuration.id;


--
-- Name: ldap_configuration id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ldap_configuration ALTER COLUMN id SET DEFAULT nextval('public.ldap_configuration_id_seq'::regclass);


--
-- Name: ldap_configuration ldap_configuration_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ldap_configuration
    ADD CONSTRAINT ldap_configuration_pkey PRIMARY KEY (id);


--
-- Name: ldap_configuration ldap_configuration_institutionid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ldap_configuration
    ADD CONSTRAINT ldap_configuration_institutionid_foreign FOREIGN KEY (institutionid) REFERENCES public.institution(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict wxIH4vRDnA4Jy2PPwaT6U0MC7CLromPbO8URVUaupwgoESe2yVvvOkP5EHOXGIX

 
-- Table: public.authlogin 
--
-- PostgreSQL database dump
--

\restrict 1pspME5s2jrNei36oWWBHijnvsH4TTo0dGjE3P4L0yJjOqLI08NQqLaFj43q0cB

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: authlogin; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authlogin (
    id integer NOT NULL,
    userid integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    otp boolean DEFAULT false NOT NULL,
    verif character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: authlogin_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.authlogin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: authlogin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.authlogin_id_seq OWNED BY public.authlogin.id;


--
-- Name: authlogin id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authlogin ALTER COLUMN id SET DEFAULT nextval('public.authlogin_id_seq'::regclass);


--
-- Name: authlogin authlogin_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authlogin
    ADD CONSTRAINT authlogin_pkey PRIMARY KEY (id);


--
-- Name: authlogin authlogin_username_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authlogin
    ADD CONSTRAINT authlogin_username_unique UNIQUE (username);


--
-- PostgreSQL database dump complete
--

\unrestrict 1pspME5s2jrNei36oWWBHijnvsH4TTo0dGjE3P4L0yJjOqLI08NQqLaFj43q0cB

 
-- Table: public.operation_log 
--
-- PostgreSQL database dump
--

\restrict bleHHenGhW6EKdlfffOE1fjzO3bijsZY6fR7MffbwfcD8xvzZaqw7srmz2f9YCr

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: operation_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.operation_log (
    operation_id bigint NOT NULL,
    function_name character varying(100) NOT NULL,
    start_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    end_time timestamp without time zone,
    execution_status character varying(20) DEFAULT 'STARTED'::character varying,
    records_processed integer DEFAULT 0,
    records_affected integer DEFAULT 0,
    total_amount numeric(15,2) DEFAULT 0,
    error_message text,
    execution_duration_ms integer,
    username character varying(100) DEFAULT CURRENT_USER,
    additional_info text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: operation_log_operation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.operation_log_operation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: operation_log_operation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.operation_log_operation_id_seq OWNED BY public.operation_log.operation_id;


--
-- Name: operation_log operation_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_log ALTER COLUMN operation_id SET DEFAULT nextval('public.operation_log_operation_id_seq'::regclass);


--
-- Name: operation_log operation_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_log
    ADD CONSTRAINT operation_log_pkey PRIMARY KEY (operation_id);


--
-- PostgreSQL database dump complete
--

\unrestrict bleHHenGhW6EKdlfffOE1fjzO3bijsZY6fR7MffbwfcD8xvzZaqw7srmz2f9YCr

 
-- Table: public.ledgers 
--
-- PostgreSQL database dump
--

\restrict 9BP3OH8h6Z9mehbV3lij3mP0n6RTJ6YrYk4Wv7JUh8YV4l5YnT7OJ98dweVk1EG

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ledgers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ledgers (
    id bigint NOT NULL,
    reference_table character varying(50) NOT NULL,
    reference_id bigint NOT NULL,
    ledger_type character varying(30) NOT NULL,
    ledger_date timestamp without time zone DEFAULT now() NOT NULL,
    account_dr character varying(30) NOT NULL,
    account_cr character varying(30) NOT NULL,
    amount numeric(12,2) NOT NULL,
    currency character varying(3) DEFAULT 'NPR'::character varying NOT NULL,
    narration text,
    created_by character varying(50) DEFAULT 'system'::character varying,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT ledgers_amount_check CHECK ((amount >= (0)::numeric))
);


--
-- Name: ledgers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ledgers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ledgers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ledgers_id_seq OWNED BY public.ledgers.id;


--
-- Name: ledgers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ledgers ALTER COLUMN id SET DEFAULT nextval('public.ledgers_id_seq'::regclass);


--
-- Name: ledgers ledgers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ledgers
    ADD CONSTRAINT ledgers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict 9BP3OH8h6Z9mehbV3lij3mP0n6RTJ6YrYk4Wv7JUh8YV4l5YnT7OJ98dweVk1EG

 
-- Table: public.customer 
--
-- PostgreSQL database dump
--

\restrict ehNdk5TX8JSdNzK6XtusqFWrBcjtAHx0pSnTrckMIzqQkaK8esDGJ7d3g5X14jZ

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customer (
    customercode character varying(12) DEFAULT public.fcreatecustomercode() NOT NULL,
    cbs_customer_code character varying(12),
    fname character varying(50),
    lname character varying(50),
    middlename character varying(50),
    salutation character varying(20),
    emailid character varying(100),
    mobileno character varying(15),
    branchcode character varying(10),
    bankcode character varying(10),
    maritalstatus character(1),
    status character(1),
    dob date,
    address character varying(255),
    nationality character varying(30),
    gender character varying(10),
    documenttype character varying(25),
    documentid character varying(15),
    occupation character varying(25),
    employment_type character varying(30),
    annualincome numeric(15,2),
    fathername character varying(50),
    grandfathername character varying(50),
    mothername character varying(50),
    spousename character varying(50),
    generateddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updateddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    notes text,
    full_name character varying(150) GENERATED ALWAYS AS (
CASE
    WHEN ((salutation IS NOT NULL) AND ((salutation)::text <> ''::text)) THEN ((((fname)::text || ' '::text) || COALESCE(((middlename)::text || ' '::text), ''::text)) || (lname)::text)
    ELSE ((((fname)::text || ' '::text) || COALESCE(((middlename)::text || ' '::text), ''::text)) || (lname)::text)
END) STORED
);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customercode);


--
-- PostgreSQL database dump complete
--

\unrestrict ehNdk5TX8JSdNzK6XtusqFWrBcjtAHx0pSnTrckMIzqQkaK8esDGJ7d3g5X14jZ

 
-- Table: public.department 
--
-- PostgreSQL database dump
--

\restrict AYHc1pWoRE00zQZgGQBKseMm9F4oPxfXFrYtDiWQrqw7IUHghuxTWiboIeRbu2c

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: department; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.department (
    id integer DEFAULT nextval('public.department_id_seq'::regclass) NOT NULL,
    institutionid integer NOT NULL,
    name character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: department department_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- Name: department institution_name_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT institution_name_unique UNIQUE (institutionid, name);


--
-- Name: department department_institutionid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_institutionid_foreign FOREIGN KEY (institutionid) REFERENCES public.institution(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict AYHc1pWoRE00zQZgGQBKseMm9F4oPxfXFrYtDiWQrqw7IUHghuxTWiboIeRbu2c

 
-- Table: public.dispatch 
--
-- PostgreSQL database dump
--

\restrict udggDGKXYQJZ8f6F96YXSQ1XwoQSvEKDRwjyqRX5yhdIfCUY9nHVH8h0dPhGl66

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dispatch; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dispatch (
    request_id character varying(12) NOT NULL,
    username character varying(100) NOT NULL,
    receivername character varying(100) NOT NULL,
    idtype character varying(50) NOT NULL,
    mobileno character varying(20) NOT NULL,
    address text NOT NULL,
    urldoclink text,
    deliverydate date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: dispatch dispatch_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dispatch
    ADD CONSTRAINT dispatch_pkey PRIMARY KEY (request_id);


--
-- Name: dispatch trigger_update_dispatch; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_update_dispatch BEFORE UPDATE ON public.dispatch FOR EACH ROW EXECUTE FUNCTION public.dispatch_updated_at_column();


--
-- PostgreSQL database dump complete
--

\unrestrict udggDGKXYQJZ8f6F96YXSQ1XwoQSvEKDRwjyqRX5yhdIfCUY9nHVH8h0dPhGl66

 
-- Table: public.cardprofilemapping 
--
-- PostgreSQL database dump
--

\restrict hIr3pn5lJRbfB167ZppNLaBF6dGFbHYayUQkIuFlkrQS1HaqHTXpJnUAgtUWaBr

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cardprofilemapping; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cardprofilemapping (
    card_profile_id character varying(12) DEFAULT public.fcreateprofilecardmappingid() NOT NULL,
    cardid character varying(11) NOT NULL,
    profileid character varying(10) NOT NULL,
    status character varying(20) DEFAULT 'ACTIVE'::character varying NOT NULL,
    effective_date date NOT NULL,
    expiry_date date,
    assigned_by character varying(50),
    assigned_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: cardprofilemapping cardprofilemapping_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cardprofilemapping
    ADD CONSTRAINT cardprofilemapping_pkey PRIMARY KEY (card_profile_id);


--
-- Name: cardprofilemapping uq_card_profile; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cardprofilemapping
    ADD CONSTRAINT uq_card_profile UNIQUE (cardid, profileid);


--
-- Name: idx_cardprofile_active; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_cardprofile_active ON public.cardprofilemapping USING btree (cardid, profileid) WHERE ((status)::text = 'ACTIVE'::text);


--
-- Name: cardprofilemapping cardprofilemapping_profileid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cardprofilemapping
    ADD CONSTRAINT cardprofilemapping_profileid_fkey FOREIGN KEY (profileid) REFERENCES public.profilemaster(profileid) ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

\unrestrict hIr3pn5lJRbfB167ZppNLaBF6dGFbHYayUQkIuFlkrQS1HaqHTXpJnUAgtUWaBr

 
-- Table: public.product_types 
--
-- PostgreSQL database dump
--

\restrict XIFYrdm51jUilVTZIyS5H9DkIvLV7vuXS79tZsgyeCVgcDvowgySS7LLMGVpmTL

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: product_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_types (
    id integer NOT NULL,
    type_code character varying(15) NOT NULL,
    type_name character varying(50) NOT NULL,
    description text,
    is_active boolean DEFAULT true,
    sort_order integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: product_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.product_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: product_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.product_types_id_seq OWNED BY public.product_types.id;


--
-- Name: product_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_types ALTER COLUMN id SET DEFAULT nextval('public.product_types_id_seq'::regclass);


--
-- Name: product_types product_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_types
    ADD CONSTRAINT product_types_pkey PRIMARY KEY (id);


--
-- Name: product_types product_types_type_code_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_types
    ADD CONSTRAINT product_types_type_code_key UNIQUE (type_code);


--
-- PostgreSQL database dump complete
--

\unrestrict XIFYrdm51jUilVTZIyS5H9DkIvLV7vuXS79tZsgyeCVgcDvowgySS7LLMGVpmTL

 
-- Table: public.rpt_header_config 
--
-- PostgreSQL database dump
--

\restrict uoHhsMCJZGT8onaDYmGfhnRElxClw38AqYvi97xHt1CoCnJtvFfeB6Ku70n8g2y

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: rpt_header_config; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rpt_header_config (
    config_id character varying(8) DEFAULT public.fcreatereportcode() NOT NULL,
    report_type character varying(100) NOT NULL,
    report_name character varying(200) NOT NULL,
    header_config jsonb NOT NULL,
    is_active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: rpt_header_config rpt_header_config_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rpt_header_config
    ADD CONSTRAINT rpt_header_config_pkey PRIMARY KEY (config_id);


--
-- Name: idx_rpt_config_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rpt_config_type ON public.rpt_header_config USING btree (report_type);


--
-- PostgreSQL database dump complete
--

\unrestrict uoHhsMCJZGT8onaDYmGfhnRElxClw38AqYvi97xHt1CoCnJtvFfeB6Ku70n8g2y

 
-- Table: public.products 
--
-- PostgreSQL database dump
--

\restrict aeIfUvGFjhfw7JH4Vzl4qanaMThbL7WDBJo5ByjUxhiiPnkmiApK5yxKr7GFzzg

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products (
    productid character varying(6) NOT NULL,
    productname character varying(100) NOT NULL,
    productdescription character varying(255),
    producttype character varying(15),
    schemetype character varying(15),
    currency character varying(3),
    productbin character varying(10),
    status character varying(20),
    updateddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (productid);


--
-- Name: products uq_product_combination; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT uq_product_combination UNIQUE (producttype, schemetype, currency, productbin);


--
-- Name: products trg_set_productid; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_set_productid BEFORE INSERT ON public.products FOR EACH ROW EXECUTE FUNCTION public.fcreateproductid();


--
-- PostgreSQL database dump complete
--

\unrestrict aeIfUvGFjhfw7JH4Vzl4qanaMThbL7WDBJo5ByjUxhiiPnkmiApK5yxKr7GFzzg

 
-- Table: public.scheme_types 
--
-- PostgreSQL database dump
--

\restrict Zp2YHQVIaUXZTHaRQyC0k0PWk8Ph55aKRJmzKjOIoz5yA339vnzaG3nazIo31St

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: scheme_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.scheme_types (
    id integer NOT NULL,
    scheme_code character varying(15) NOT NULL,
    scheme_name character varying(50) NOT NULL,
    description text,
    is_active boolean DEFAULT true,
    sort_order integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: scheme_types_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.scheme_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: scheme_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.scheme_types_id_seq OWNED BY public.scheme_types.id;


--
-- Name: scheme_types id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.scheme_types ALTER COLUMN id SET DEFAULT nextval('public.scheme_types_id_seq'::regclass);


--
-- Name: scheme_types scheme_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.scheme_types
    ADD CONSTRAINT scheme_types_pkey PRIMARY KEY (id);


--
-- Name: scheme_types scheme_types_scheme_code_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.scheme_types
    ADD CONSTRAINT scheme_types_scheme_code_key UNIQUE (scheme_code);


--
-- PostgreSQL database dump complete
--

\unrestrict Zp2YHQVIaUXZTHaRQyC0k0PWk8Ph55aKRJmzKjOIoz5yA339vnzaG3nazIo31St

 
-- Table: public.currencies 
--
-- PostgreSQL database dump
--

\restrict iomiOduBb8k4pPv3Cnr4fKZhg0dd7RgB95KYJR2eysdfrDz5ieBcmOjhHeiVeVn

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: currencies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.currencies (
    id integer NOT NULL,
    currency_code character varying(3) NOT NULL,
    currency_name character varying(50) NOT NULL,
    symbol character varying(5),
    is_active boolean DEFAULT true,
    sort_order integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: currencies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.currencies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: currencies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.currencies_id_seq OWNED BY public.currencies.id;


--
-- Name: currencies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.currencies ALTER COLUMN id SET DEFAULT nextval('public.currencies_id_seq'::regclass);


--
-- Name: currencies currencies_currency_code_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT currencies_currency_code_key UNIQUE (currency_code);


--
-- Name: currencies currencies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.currencies
    ADD CONSTRAINT currencies_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict iomiOduBb8k4pPv3Cnr4fKZhg0dd7RgB95KYJR2eysdfrDz5ieBcmOjhHeiVeVn

 
-- Table: public.rulelogs 
--
-- PostgreSQL database dump
--

\restrict OvK96DZeE9fR67bNH0hY1nktEy5JdCsGlaUw0UEnyx87dtIgdyVPAdPOkLUaXcF

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: rulelogs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rulelogs (
    log_id integer NOT NULL,
    ruleid character varying(5) NOT NULL,
    rule_name character varying(100),
    conditions_met boolean NOT NULL,
    input_context jsonb,
    executed_actions jsonb,
    evaluation_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    remarks text
);


--
-- Name: rulelogs_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.rulelogs_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: rulelogs_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.rulelogs_log_id_seq OWNED BY public.rulelogs.log_id;


--
-- Name: rulelogs log_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rulelogs ALTER COLUMN log_id SET DEFAULT nextval('public.rulelogs_log_id_seq'::regclass);


--
-- Name: rulelogs rulelogs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rulelogs
    ADD CONSTRAINT rulelogs_pkey PRIMARY KEY (log_id);


--
-- PostgreSQL database dump complete
--

\unrestrict OvK96DZeE9fR67bNH0hY1nktEy5JdCsGlaUw0UEnyx87dtIgdyVPAdPOkLUaXcF

 
-- Table: public.branch 
--
-- PostgreSQL database dump
--

\restrict 8YKTLvjhAqito0CvfRYc3EHHfbd4ut94YcM4GaTTrvSwwRV30xd3AlElENPyv4r

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: branch; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.branch (
    id bigint NOT NULL,
    branch_no character varying(255) NOT NULL,
    institutionid integer NOT NULL,
    branch_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    province character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    zipcode character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    branch_manager character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: branch_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.branch_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: branch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.branch_id_seq OWNED BY public.branch.id;


--
-- Name: branch id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch ALTER COLUMN id SET DEFAULT nextval('public.branch_id_seq'::regclass);


--
-- Name: branch branch_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch
    ADD CONSTRAINT branch_pkey PRIMARY KEY (id);


--
-- Name: branch branch_institutionid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.branch
    ADD CONSTRAINT branch_institutionid_foreign FOREIGN KEY (institutionid) REFERENCES public.institution(id);


--
-- PostgreSQL database dump complete
--

\unrestrict 8YKTLvjhAqito0CvfRYc3EHHfbd4ut94YcM4GaTTrvSwwRV30xd3AlElENPyv4r

 
-- Table: public.total_fee 
--
-- PostgreSQL database dump
--

\restrict MmnLOCws7Ff9MLl44yahQmfcM5U2ZYhJVkphcMuxaCyeI8XSee2KKvkCc0mrFWg

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: total_fee; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.total_fee (
    "coalesce" numeric
);


--
-- PostgreSQL database dump complete
--

\unrestrict MmnLOCws7Ff9MLl44yahQmfcM5U2ZYhJVkphcMuxaCyeI8XSee2KKvkCc0mrFWg

 
-- Table: public.v_eligible_count 
--
-- PostgreSQL database dump
--

\restrict R0oFpNPqMmh3hXxoCDe81SUgTxL03PcYFggpAI3xHJZZD7RbCLmVIBCtG29I7hw

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: v_eligible_count; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.v_eligible_count (
    count bigint
);


--
-- PostgreSQL database dump complete
--

\unrestrict R0oFpNPqMmh3hXxoCDe81SUgTxL03PcYFggpAI3xHJZZD7RbCLmVIBCtG29I7hw

 
-- Table: public.fineconfigurations 
--
-- PostgreSQL database dump
--

\restrict mT1gmxP26zccNZ2fHsGHVrQw3ZTc35rv5HtEA9SkxHpY5rrO7LcKv3yYWebCzOe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: fineconfigurations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fineconfigurations (
    fineid character varying(6) DEFAULT public.fcreatefineid() NOT NULL,
    name character varying(100) NOT NULL,
    finetype character varying(50),
    dayfineleveied integer,
    amount numeric(10,2),
    finepercent numeric(5,2),
    frequency character varying(20),
    startdate_ad date,
    enddatead date,
    startdatebs character varying(20),
    enddatebs character varying(20),
    maxcap numeric(10,2),
    waiverallowed boolean DEFAULT false,
    waiver numeric(10,2),
    graceperiod integer DEFAULT 0,
    status character varying(20) DEFAULT 'active'::character varying,
    active boolean DEFAULT true,
    description text,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updatedat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: fineconfigurations fineconfigurations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fineconfigurations
    ADD CONSTRAINT fineconfigurations_pkey PRIMARY KEY (fineid);


--
-- PostgreSQL database dump complete
--

\unrestrict mT1gmxP26zccNZ2fHsGHVrQw3ZTc35rv5HtEA9SkxHpY5rrO7LcKv3yYWebCzOe

 
-- Table: public.error_log 
--
-- PostgreSQL database dump
--

\restrict FPlPkISjhIaKHAGUmFMFEKk2OiTGAAbEZvRQmaaMWDOTVrrlYlNOrbGs6sI6CBS

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: error_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.error_log (
    error_id bigint NOT NULL,
    operation_id bigint,
    function_name character varying(100) NOT NULL,
    error_timestamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    error_level character varying(20),
    error_message text NOT NULL,
    error_detail text,
    error_context text,
    sql_state character varying(10),
    failed_query text,
    input_parameters jsonb,
    username character varying(100) DEFAULT CURRENT_USER,
    resolved boolean DEFAULT false,
    resolved_at timestamp without time zone,
    resolved_by character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT error_log_error_level_check CHECK (((error_level)::text = ANY ((ARRAY['WARNING'::character varying, 'ERROR'::character varying, 'CRITICAL'::character varying])::text[])))
);


--
-- Name: error_log_error_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.error_log_error_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: error_log_error_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.error_log_error_id_seq OWNED BY public.error_log.error_id;


--
-- Name: error_log error_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.error_log ALTER COLUMN error_id SET DEFAULT nextval('public.error_log_error_id_seq'::regclass);


--
-- Name: error_log error_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.error_log
    ADD CONSTRAINT error_log_pkey PRIMARY KEY (error_id);


--
-- Name: idx_error_log_operation; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_error_log_operation ON public.error_log USING btree (operation_id);


--
-- Name: idx_error_log_resolved; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_error_log_resolved ON public.error_log USING btree (resolved);


--
-- Name: idx_error_log_time; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_error_log_time ON public.error_log USING btree (error_timestamp);


--
-- PostgreSQL database dump complete
--

\unrestrict FPlPkISjhIaKHAGUmFMFEKk2OiTGAAbEZvRQmaaMWDOTVrrlYlNOrbGs6sI6CBS

 
-- Table: public.profilemaster 
--
-- PostgreSQL database dump
--

\restrict 9EkDhwYNPC7aM5UTPh69YYpfcggkHJc3FbtnYua0h50ixTvPjo4WBnYa2fkdhx9

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: profilemaster; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.profilemaster (
    profileid character varying(10) DEFAULT public.fcreateprofileid() NOT NULL,
    profilename character varying(100) NOT NULL,
    description text,
    status character varying(20) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: profilemaster profilemaster_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.profilemaster
    ADD CONSTRAINT profilemaster_pkey PRIMARY KEY (profileid);


--
-- PostgreSQL database dump complete
--

\unrestrict 9EkDhwYNPC7aM5UTPh69YYpfcggkHJc3FbtnYua0h50ixTvPjo4WBnYa2fkdhx9

 
-- Table: public.rulesmaster 
--
-- PostgreSQL database dump
--

\restrict AhOaMleNCnXQ4pTW3rDgMmMXGAiLgostzCzctPvrGgLJnayGcEZTMdKZkAGI3vf

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: rulesmaster; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rulesmaster (
    ruleid character varying(5) DEFAULT public.fcreateruleid() NOT NULL,
    rulename character varying(100) NOT NULL,
    ruletype character varying(30) NOT NULL,
    appliesto character varying(50) NOT NULL,
    description text,
    priority integer NOT NULL,
    isactive boolean DEFAULT true,
    startdate date NOT NULL,
    enddate date,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: rulesmaster rulesmaster_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rulesmaster
    ADD CONSTRAINT rulesmaster_pkey PRIMARY KEY (ruleid);


--
-- Name: idx_rulesmaster_active; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rulesmaster_active ON public.rulesmaster USING btree (ruleid) WHERE (isactive = true);


--
-- PostgreSQL database dump complete
--

\unrestrict AhOaMleNCnXQ4pTW3rDgMmMXGAiLgostzCzctPvrGgLJnayGcEZTMdKZkAGI3vf

 
-- Table: public.card_request_cycle_action_log 
--
-- PostgreSQL database dump
--

\restrict 0bqoANuAPlctoe8pNGKqRM6CLCgbzwmXxi45KyWb0KSeFy4z035f2ilbsfDG0f1

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: card_request_cycle_action_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.card_request_cycle_action_log (
    log_id character varying(12) DEFAULT public.fcreatecardcyclelogid() NOT NULL,
    action character varying(10) NOT NULL,
    request_id character varying(11),
    user_id character varying(50),
    full_name character varying(90),
    mobile character varying(15),
    account_no character varying(20),
    branch_code character varying(10),
    status_old character varying(20),
    status_new character varying(20),
    called_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: card_request_cycle_action_log card_request_cycle_actio_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card_request_cycle_action_log
    ADD CONSTRAINT card_request_cycle_actio_log_pkey PRIMARY KEY (log_id);


--
-- PostgreSQL database dump complete
--

\unrestrict 0bqoANuAPlctoe8pNGKqRM6CLCgbzwmXxi45KyWb0KSeFy4z035f2ilbsfDG0f1

 
-- Table: public.users 
--
-- PostgreSQL database dump
--

\restrict M6ChcHU5ksJjIJdZRC5HKHO2yl7q5ovFfHfnPmXiLVytBcUiI2Sj5Mx3K53tuOX

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer DEFAULT nextval('public.users_id_seq'::regclass) NOT NULL,
    fname character varying(255) NOT NULL,
    lname character varying(255) NOT NULL,
    mobilenumber character varying(255) NOT NULL,
    usertypeid integer NOT NULL,
    institutionid integer NOT NULL,
    branchid integer NOT NULL,
    departmentid integer NOT NULL,
    crossbranch boolean DEFAULT false NOT NULL,
    isactive character varying(255) DEFAULT 'Y'::character varying NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_branchid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_branchid_foreign FOREIGN KEY (branchid) REFERENCES public.branch(id);


--
-- Name: users users_departmentid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_departmentid_foreign FOREIGN KEY (departmentid) REFERENCES public.department(id);


--
-- Name: users users_institutionid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_institutionid_foreign FOREIGN KEY (institutionid) REFERENCES public.institution(id);


--
-- Name: users users_usertypeid_foreign; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_usertypeid_foreign FOREIGN KEY (usertypeid) REFERENCES public.usertype(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict M6ChcHU5ksJjIJdZRC5HKHO2yl7q5ovFfHfnPmXiLVytBcUiI2Sj5Mx3K53tuOX

 
-- Table: public.ruleconditions 
--
-- PostgreSQL database dump
--

\restrict ngexWjUuSA3YiTKPxwLpV79rQ1vg4jQaLAwiP14iPWEF6W2PtIHtsndjZhSbJVO

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ruleconditions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ruleconditions (
    conditionid character varying(11) DEFAULT public.fcreateconditionid() NOT NULL,
    ruleid character varying(11) NOT NULL,
    field_name character varying(50) NOT NULL,
    operator character varying(25) NOT NULL,
    value text NOT NULL,
    data_type character varying(20) NOT NULL,
    validation_message text,
    condition_order integer DEFAULT 0,
    is_active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT ruleconditions_data_type_check CHECK (((data_type)::text = ANY ((ARRAY['string'::character varying, 'integer'::character varying, 'boolean'::character varying, 'date'::character varying, 'decimal'::character varying, 'timestamp'::character varying])::text[]))),
    CONSTRAINT ruleconditions_operator_check CHECK (((operator)::text = ANY ((ARRAY['EQUALS'::character varying, 'NOT_EQUALS'::character varying, 'GREATER_THAN'::character varying, 'LESS_THAN'::character varying, 'GREATER_EQUAL'::character varying, 'LESS_EQUAL'::character varying, 'BETWEEN'::character varying, 'IN'::character varying, 'CONTAINS'::character varying, 'STARTS_WITH'::character varying, 'ENDS_WITH'::character varying, 'REGEX'::character varying])::text[])))
);


--
-- Name: ruleconditions ruleconditions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ruleconditions
    ADD CONSTRAINT ruleconditions_pkey PRIMARY KEY (conditionid);


--
-- Name: idx_ruleconditions_ruleid_active; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ruleconditions_ruleid_active ON public.ruleconditions USING btree (ruleid) WHERE is_active;


--
-- Name: ruleconditions ruleconditions_ruleid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ruleconditions
    ADD CONSTRAINT ruleconditions_ruleid_fkey FOREIGN KEY (ruleid) REFERENCES public.rulesmaster(ruleid) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict ngexWjUuSA3YiTKPxwLpV79rQ1vg4jQaLAwiP14iPWEF6W2PtIHtsndjZhSbJVO

 
-- Table: public.profilerulemapping 
--
-- PostgreSQL database dump
--

\restrict 38Hm1cQqSLalajEr52Y4RiKiBwYMUg4bujhWAuCPKph1v7ufU982KZjcU013AQf

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: profilerulemapping; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.profilerulemapping (
    profile_rule_id character varying(6) DEFAULT public.fcreateprofilerulemappingid() NOT NULL,
    profileid character varying(10) NOT NULL,
    ruleid character varying(5) NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: profilerulemapping profilerulemapping_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.profilerulemapping
    ADD CONSTRAINT profilerulemapping_pkey PRIMARY KEY (profile_rule_id);


--
-- Name: profilerulemapping uq_profile_rule; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.profilerulemapping
    ADD CONSTRAINT uq_profile_rule UNIQUE (profileid, ruleid);


--
-- Name: idx_profilerulemapping_active; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_profilerulemapping_active ON public.profilerulemapping USING btree (profileid, ruleid) WHERE is_active;


--
-- Name: profilerulemapping fk_profile; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.profilerulemapping
    ADD CONSTRAINT fk_profile FOREIGN KEY (profileid) REFERENCES public.profilemaster(profileid);


--
-- PostgreSQL database dump complete
--

\unrestrict 38Hm1cQqSLalajEr52Y4RiKiBwYMUg4bujhWAuCPKph1v7ufU982KZjcU013AQf

 
-- Table: public.ruleactions 
--
-- PostgreSQL database dump
--

\restrict tmnb4bMolRskc0j6M5srWwps3OG63BGO6A6PK2gFujUGcoeFz3euuS31cYbeZGG

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ruleactions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ruleactions (
    actionid character varying(5) DEFAULT public.fcreateactionid() NOT NULL,
    ruleid character varying(5) NOT NULL,
    action_type character varying(50) NOT NULL,
    action_value jsonb NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: ruleactions ruleactions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ruleactions
    ADD CONSTRAINT ruleactions_pkey PRIMARY KEY (actionid);


--
-- Name: idx_ruleactions_ruleid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ruleactions_ruleid ON public.ruleactions USING btree (ruleid);


--
-- Name: idx_ruleactions_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ruleactions_type ON public.ruleactions USING btree (action_type);


--
-- Name: idx_ruleactions_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_ruleactions_value ON public.ruleactions USING gin (action_value);


--
-- Name: ruleactions ruleactions_ruleid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ruleactions
    ADD CONSTRAINT ruleactions_ruleid_fkey FOREIGN KEY (ruleid) REFERENCES public.rulesmaster(ruleid) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict tmnb4bMolRskc0j6M5srWwps3OG63BGO6A6PK2gFujUGcoeFz3euuS31cYbeZGG

 
-- Table: public.email_logs 
--
-- PostgreSQL database dump
--

\restrict v0bOyXAkFx7bNqZuUZa5nYCw2L6uMx3z35iMezgka3UcDTgIEZtODvent5X1n1n

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: email_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.email_logs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    email_id uuid,
    action character varying(50) NOT NULL,
    details jsonb,
    ip_address inet,
    user_agent text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: email_logs email_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_logs
    ADD CONSTRAINT email_logs_pkey PRIMARY KEY (id);


--
-- Name: email_logs email_logs_email_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_logs
    ADD CONSTRAINT email_logs_email_id_fkey FOREIGN KEY (email_id) REFERENCES public.email_queue(id);


--
-- PostgreSQL database dump complete
--

\unrestrict v0bOyXAkFx7bNqZuUZa5nYCw2L6uMx3z35iMezgka3UcDTgIEZtODvent5X1n1n

 
-- Table: public.instant_card_applications_backupv1 
--
-- PostgreSQL database dump
--

\restrict o9kAdvfZx6a3x64i8VcNRI58sANM20cjcdHQ3IDYjHPJP4RMxz7VI2qWuoaKTKO

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: instant_card_applications_backupv1; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instant_card_applications_backupv1 (
    dap_iden character varying(20) NOT NULL,
    dap_ban_code character varying(10),
    dap_bra_code character varying(10),
    dap_user character varying(50),
    dap_bat_code character varying(10),
    dap_cus_type character(1),
    dap_cus_old_new character(1),
    dap_cus_iden character varying(20),
    dap_date date,
    dap_ast_code character varying(10),
    dap_firs_nam1 character varying(100),
    dap_last_nam1 character varying(100),
    dap_midd_nam1 character varying(100),
    dap_tit1 character varying(10),
    dap_birt_dat1 date,
    dap_birt_loc1 character varying(100),
    dap_firs_ide1 character varying(50),
    dap_firs_iden_typ1 character varying(10),
    dap_seco_ide1 character varying(50),
    dap_seco_iden_typ1 character varying(10),
    dap_gend1 character(1),
    dap_mst_cod1 character varying(10),
    dap_cou_cod1 character varying(10),
    dap_empl_cod1 character varying(20),
    dap_empl_nam1 character varying(100),
    dap_gros_sal1 numeric(15,2),
    dap_net_sal1 numeric(15,2),
    dap_empl_age1 integer,
    dap_firs_nam2 character varying(100),
    dap_last_nam2 character varying(100),
    dap_midd_nam2 character varying(100),
    dap_tit2 character varying(10),
    dap_birt_dat2 date,
    dap_birt_loc2 character varying(100),
    dap_firs_ide2 character varying(50),
    dap_firs_iden_typ2 character varying(10),
    dap_seco_ide2 character varying(50),
    dap_seco_iden_typ2 character varying(10),
    dap_gend2 character(1),
    dap_mst_cod2 character varying(10),
    dap_cou_cod2 character varying(10),
    dap_empl_cod2 character varying(20),
    dap_empl_nam2 character varying(100),
    dap_gros_sal2 numeric(15,2),
    dap_net_sal2 numeric(15,2),
    dap_empl_age2 integer,
    dap_deci_date date,
    dap_deci_auth character varying(50),
    dap_clas_numb character varying(20),
    dap_old_new_acct character(1),
    dap_requ_acc_numb_mxp character varying(20),
    dap_requ_acc_numb character varying(20),
    dap_requ_acc_curr_code character varying(10),
    dap_requ_cpr_code character varying(10),
    dap_requ_card_numb character varying(20),
    dap_pan_gene_manu_auto character(1),
    dap_requ_dpr_code character varying(10),
    dap_requ_effe_date date,
    dap_requ_expi_date date,
    dap_chld_titl character varying(10),
    dap_chld_firs_name character varying(100),
    dap_chld_last_name character varying(100),
    dap_chld_midd_name character varying(100),
    dap_chld_corp_name character varying(100),
    dap_chld_name character varying(100),
    dap_prim_seco_card character(1),
    dap_prim_car_numb character varying(20),
    dap_pers_fee_code character varying(10),
    dap_memb_fee_code character varying(10),
    dap_new_card_desi character varying(50),
    dap_card_expr_deli character varying(50),
    dap_vca_code character varying(10),
    dap_pro_code character varying(10),
    dap_cust_pare character varying(100),
    dap_phon_number character varying(20),
    dap_email_adr character varying(100),
    dap_gree_pin_flag character(1),
    firstaddresstype character varying(10),
    firstaddressline1 character varying(200),
    firstaddressline2 character varying(200),
    firstaddressline3 character varying(200),
    firstaddresszipcode character varying(20),
    firstadressphone1 character varying(20),
    firstadressphone2 character varying(20),
    firstcity character varying(50),
    emailaddress character varying(100),
    secondpobox character varying(50),
    secondstreet character varying(200),
    secondstate character varying(100),
    secondfax character varying(20),
    batchid character varying(20) NOT NULL,
    statusflag character varying(10) DEFAULT 'PENDING'::character varying,
    formatid character varying(20) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: instant_card_applications_backupv1 pk_instant_card_applicationsv1; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instant_card_applications_backupv1
    ADD CONSTRAINT pk_instant_card_applicationsv1 PRIMARY KEY (dap_iden, batchid);


--
-- PostgreSQL database dump complete
--

\unrestrict o9kAdvfZx6a3x64i8VcNRI58sANM20cjcdHQ3IDYjHPJP4RMxz7VI2qWuoaKTKO

 
-- Table: public.debit_card_application 
--
-- PostgreSQL database dump
--

\restrict zfAfZog6XAlOrrqbHQ4dnshNAkOkHqdNUa83mNXlyKSWpnTvda06AuNcvczrD68

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: debit_card_application; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.debit_card_application (
    dap_iden bigint NOT NULL,
    dap_ban_code character varying(20) NOT NULL,
    dap_bra_code character varying(10) NOT NULL,
    dap_user character varying(50),
    dap_bat_code character varying(10),
    dap_cus_type character(1),
    dap_cus_old_new character(1),
    dap_cus_iden character varying(50),
    dap_date date,
    dap_ast_code character varying(20),
    dap_firs_nam1 character varying(100),
    dap_last_nam1 character varying(100),
    dap_midd_nam1 character varying(100),
    dap_tit1 character(1),
    dap_birt_dat1 date,
    dap_birt_loc1 character varying(200),
    dap_firs_ide1 character varying(50),
    dap_firs_iden_typ1 character varying(20),
    dap_seco_ide1 character varying(50),
    dap_seco_iden_typ1 character varying(20),
    dap_gend1 character(1),
    dap_mst_cod1 character varying(10),
    dap_cou_cod1 character varying(10),
    dap_empl_cod1 character varying(20),
    dap_empl_nam1 character varying(200),
    dap_gros_sal1 numeric(15,2),
    dap_net_sal1 numeric(15,2),
    dap_empl_age1 integer,
    dap_firs_nam2 character varying(100),
    dap_last_nam2 character varying(100),
    dap_midd_nam2 character varying(100),
    dap_tit2 character(1),
    dap_birt_dat2 date,
    dap_birt_loc2 character varying(200),
    dap_firs_ide2 character varying(50),
    dap_firs_iden_typ2 character varying(20),
    dap_seco_ide2 character varying(50),
    dap_seco_iden_typ2 character varying(20),
    dap_gend2 character(1),
    dap_mst_cod2 character varying(10),
    dap_cou_cod2 character varying(10),
    dap_empl_cod2 character varying(20),
    dap_empl_nam2 character varying(200),
    dap_gros_sal2 numeric(15,2),
    dap_net_sal2 numeric(15,2),
    dap_empl_age2 integer,
    dap_deci_date date,
    dap_deci_auth character varying(100),
    dap_clas_numb character varying(50),
    dap_old_new_acct character(1),
    dap_requ_acc_numb_mxp character varying(50),
    dap_requ_acc_numb character varying(50),
    dap_requ_acc_curr_code character varying(10),
    dap_requ_cpr_code character varying(10),
    dap_requ_card_numb character varying(50),
    dap_pan_gene_manu_auto character(1),
    dap_requ_dpr_code character varying(10),
    dap_requ_effe_date date,
    dap_requ_expi_date date,
    dap_chld_titl character varying(10),
    dap_chld_firs_name character varying(100),
    dap_chld_last_name character varying(100),
    dap_chld_midd_name character varying(100),
    dap_chld_corp_name character varying(200),
    dap_chld_name character varying(200),
    dap_prim_seco_card character(1),
    dap_prim_car_numb character varying(50),
    dap_pers_fee_code character varying(10),
    dap_memb_fee_code character varying(10),
    dap_new_card_desi character varying(50),
    dap_card_expr_deli character varying(50),
    dap_vca_code character varying(10),
    dap_pro_code character varying(10),
    dap_cust_pare character varying(10),
    dap_phon_number character varying(50),
    dap_email_adr character varying(255),
    dap_gree_pin_flag character(1),
    firstaddresstype character varying(10),
    firstaddressline1 character varying(200),
    firstaddressline2 character varying(200),
    firstaddressline3 character varying(200),
    firstaddresszipcode character varying(20),
    firstadressphone1 character varying(50),
    firstadressphone2 character varying(50),
    firstcity character varying(100),
    emailaddress character varying(255),
    secondpobox character varying(50),
    secondstreet character varying(200),
    secondstate character varying(100),
    secondfax character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    batch_id character varying(12)
);


--
-- Name: TABLE debit_card_application; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.debit_card_application IS 'Debit card application data from CCMS system with 89 fields as per specification';


--
-- Name: debit_card_application debit_card_application_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.debit_card_application
    ADD CONSTRAINT debit_card_application_pkey PRIMARY KEY (dap_iden);


--
-- Name: idx_dap_birt_dat1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dap_birt_dat1 ON public.debit_card_application USING btree (dap_birt_dat1);


--
-- Name: idx_dap_bra_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dap_bra_code ON public.debit_card_application USING btree (dap_bra_code);


--
-- Name: idx_dap_cus_idendebit; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dap_cus_idendebit ON public.debit_card_application USING btree (dap_cus_iden);


--
-- Name: idx_dap_firs_ide1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dap_firs_ide1 ON public.debit_card_application USING btree (dap_firs_ide1);


--
-- PostgreSQL database dump complete
--

\unrestrict zfAfZog6XAlOrrqbHQ4dnshNAkOkHqdNUa83mNXlyKSWpnTvda06AuNcvczrD68

 
-- Table: public.credit_card_application 
--
-- PostgreSQL database dump
--

\restrict VR6B2j10YSWtEdqTB9CjhzrV9PhreLDNeXaTryM7aYWvKhis8YUACRouNGCL8ym

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: credit_card_application; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.credit_card_application (
    dap_iden bigint NOT NULL,
    dap_ban_code character varying(20) NOT NULL,
    dap_bra_code character varying(10) NOT NULL,
    dap_user character varying(50),
    dap_bat_code character varying(10),
    dap_cus_type character(1),
    dap_cus_old_new character(1),
    dap_cus_iden character varying(50),
    dap_date date,
    dap_ast_code character varying(20),
    dap_firs_nam1 character varying(100),
    dap_last_nam1 character varying(100),
    dap_midd_nam1 character varying(100),
    dap_tit1 character(1),
    dap_birt_dat1 date,
    dap_birt_loc1 character varying(200),
    dap_firs_ide1 character varying(50),
    dap_firs_iden_typ1 character varying(20),
    dap_seco_ide1 character varying(50),
    dap_seco_iden_typ1 character varying(20),
    dap_gend1 character(1),
    dap_mst_cod1 character varying(10),
    dap_cou_cod1 character varying(10),
    dap_empl_cod1 character varying(20),
    dap_empl_nam1 character varying(200),
    dap_gros_sal1 numeric(15,2),
    dap_net_sal1 numeric(15,2),
    dap_empl_age1 integer,
    dap_firs_nam2 character varying(100),
    dap_last_nam2 character varying(100),
    dap_midd_nam2 character varying(100),
    dap_tit2 character(1),
    dap_birt_dat2 date,
    dap_birt_loc2 character varying(200),
    dap_firs_ide2 character varying(50),
    dap_firs_iden_typ2 character varying(20),
    dap_seco_ide2 character varying(50),
    dap_seco_iden_typ2 character varying(20),
    dap_gend2 character(1),
    dap_mst_cod2 character varying(10),
    dap_cou_cod2 character varying(10),
    dap_empl_cod2 character varying(20),
    dap_empl_nam2 character varying(200),
    dap_gros_sal2 numeric(15,2),
    dap_net_sal2 numeric(15,2),
    dap_empl_age2 integer,
    dap_deci_date date,
    dap_deci_auth character varying(100),
    dap_clas_numb character varying(50),
    dap_old_new_acct character(1),
    dap_requ_acc_numb_mxp character varying(50),
    dap_requ_acc_numb character varying(50),
    dap_requ_acc_curr_code character varying(10),
    dap_requ_cpr_code character varying(10),
    dap_requ_card_numb character varying(50),
    dap_pan_gene_manu_auto character(1),
    dap_requ_dpr_code character varying(10),
    dap_requ_effe_date date,
    dap_requ_expi_date date,
    dap_chld_titl character varying(10),
    dap_chld_firs_name character varying(100),
    dap_chld_last_name character varying(100),
    dap_chld_midd_name character varying(100),
    dap_chld_corp_name character varying(200),
    dap_chld_name character varying(200),
    dap_prim_seco_card character(1),
    dap_prim_car_numb character varying(50),
    dap_pers_fee_code character varying(10),
    dap_memb_fee_code character varying(10),
    dap_new_card_desi character varying(50),
    dap_card_expr_deli character varying(50),
    dap_vca_code character varying(10),
    dap_pro_code character varying(10),
    dap_cust_pare character varying(10),
    dap_phon_number character varying(50),
    dap_email_adr character varying(255),
    dap_gree_pin_flag character(1),
    firstaddresstype character varying(10),
    firstaddressline1 character varying(200),
    firstaddressline2 character varying(200),
    firstaddressline3 character varying(200),
    firstaddresszipcode character varying(20),
    firstadressphone1 character varying(50),
    firstadressphone2 character varying(50),
    firstcity character varying(100),
    emailaddress character varying(255),
    secondpobox character varying(50),
    secondstreet character varying(200),
    secondstate character varying(100),
    secondfax character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    batch_id character varying(12)
);


--
-- Name: TABLE credit_card_application; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.credit_card_application IS 'Debit card application data from CCMS system with 89 fields as per specification';


--
-- Name: credit_card_application credit_card_application_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.credit_card_application
    ADD CONSTRAINT credit_card_application_pkey PRIMARY KEY (dap_iden);


--
-- PostgreSQL database dump complete
--

\unrestrict VR6B2j10YSWtEdqTB9CjhzrV9PhreLDNeXaTryM7aYWvKhis8YUACRouNGCL8ym

 
-- Table: public.chargeconfig 
--
-- PostgreSQL database dump
--

\restrict KFdumonINuWyPjeWLsPCiRWheCRbbGtvzcTV8AL4zbB6eC7VOZnRsQX3Ww9P1Hc

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: chargeconfig; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chargeconfig (
    chargeid character varying(5) DEFAULT public.fcreatechargeconfigidid() NOT NULL,
    chargename character varying(50) NOT NULL,
    charge_type character varying(10),
    productid character varying(5),
    percentage double precision,
    amount numeric(10,2),
    currency character varying(3) DEFAULT 'NPR'::character varying,
    status character varying(1),
    paymentmethod character varying(20),
    graceperiod integer,
    applies_to character varying(50),
    calculation_rule text,
    istaxable boolean DEFAULT false,
    isactive boolean DEFAULT true,
    effectivedate date,
    expirydate date,
    created_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chargeconfig_charge_type_check CHECK (((charge_type)::text = ANY ((ARRAY['PER'::character varying, 'FLAT'::character varying, 'BOTH'::character varying])::text[]))),
    CONSTRAINT chargeconfig_status_check CHECK (((status)::text = ANY ((ARRAY['A'::character varying, 'I'::character varying])::text[])))
);


--
-- Name: chargeconfig chargeconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chargeconfig
    ADD CONSTRAINT chargeconfig_pkey PRIMARY KEY (chargeid);


--
-- Name: chargeconfig chargeconfig_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chargeconfig
    ADD CONSTRAINT chargeconfig_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(productid);


--
-- PostgreSQL database dump complete
--

\unrestrict KFdumonINuWyPjeWLsPCiRWheCRbbGtvzcTV8AL4zbB6eC7VOZnRsQX3Ww9P1Hc

 
-- Table: public.account 
--
-- PostgreSQL database dump
--

\restrict 5xNEpDuIbXjS2RBjuA1NiIUQBypw00gOd5fiK79DbsVjSiGR1aktk80hTESiFyq

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.account (
    accountid character varying(12) DEFAULT public.fcreateaccountcode(),
    customercode character varying(12) NOT NULL,
    accountnumber character varying(20) NOT NULL,
    accounttype character varying(20) NOT NULL,
    balance numeric(18,2),
    accountlimit numeric(18,2),
    branchcode character varying(10),
    status character(1),
    generateddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updateddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: account account_accountid_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_accountid_key UNIQUE (accountid);


--
-- Name: account account_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (customercode, accounttype, accountnumber);


--
-- Name: account fk_account_customer; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT fk_account_customer FOREIGN KEY (customercode) REFERENCES public.customer(customercode);


--
-- PostgreSQL database dump complete
--

\unrestrict 5xNEpDuIbXjS2RBjuA1NiIUQBypw00gOd5fiK79DbsVjSiGR1aktk80hTESiFyq

 
-- Table: public.card 
--
-- PostgreSQL database dump
--

\restrict rdUVjWWShJ82NikuseHpCWqZezRSx2ox3cobehmBITpNIZPO4IzztauyvQu7SaP

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: card; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.card (
    cardid character varying(12) DEFAULT public.fcreatecardcode(),
    accountid character varying(12),
    customercode character varying(12) NOT NULL,
    schemetype character varying(20) NOT NULL,
    cardnumber character varying(20),
    cardtype character varying(20) NOT NULL,
    expirydate date,
    issuedate date,
    status character(1),
    generateddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updateddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    productid character varying(6),
    autorenewal boolean DEFAULT false
);


--
-- Name: card card_cardnumber_cardid_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_cardnumber_cardid_key UNIQUE (cardnumber, cardid);


--
-- Name: card card_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT card_pkey PRIMARY KEY (customercode, schemetype, cardtype);


--
-- Name: card fk_card_account; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT fk_card_account FOREIGN KEY (accountid) REFERENCES public.account(accountid);


--
-- Name: card fk_card_customer; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card
    ADD CONSTRAINT fk_card_customer FOREIGN KEY (customercode) REFERENCES public.customer(customercode);


--
-- PostgreSQL database dump complete
--

\unrestrict rdUVjWWShJ82NikuseHpCWqZezRSx2ox3cobehmBITpNIZPO4IzztauyvQu7SaP

 
-- Table: public.operation_logs 
--
-- PostgreSQL database dump
--

\restrict gtpotUAObvgZc1NvW4C4WzwZl2XBQlkJrgDUJ8OOI5IkpASkJZRMSZe82Xqnvbn

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: operation_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.operation_logs (
    operation_id bigint NOT NULL,
    function_name text NOT NULL,
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone,
    status text NOT NULL,
    eligible_count integer DEFAULT 0,
    processed_count integer DEFAULT 0,
    total_amount numeric(15,2) DEFAULT 0,
    error_message text,
    additional_info jsonb,
    duration_ms numeric(10,2),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: operation_logs_operation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.operation_logs_operation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: operation_logs_operation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.operation_logs_operation_id_seq OWNED BY public.operation_logs.operation_id;


--
-- Name: operation_logs operation_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_logs ALTER COLUMN operation_id SET DEFAULT nextval('public.operation_logs_operation_id_seq'::regclass);


--
-- Name: operation_logs operation_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_logs
    ADD CONSTRAINT operation_logs_pkey PRIMARY KEY (operation_id);


--
-- PostgreSQL database dump complete
--

\unrestrict gtpotUAObvgZc1NvW4C4WzwZl2XBQlkJrgDUJ8OOI5IkpASkJZRMSZe82Xqnvbn

 
-- Table: public.error_logs 
--
-- PostgreSQL database dump
--

\restrict dTmabJvv6GUiUzPuQb9tWNqOAC7MNu5r0j0iBweyKotsIewBeARQGmY9DwTU9RV

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: error_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.error_logs (
    error_id bigint NOT NULL,
    operation_id bigint,
    function_name text NOT NULL,
    error_message text NOT NULL,
    error_detail text,
    sql_state text,
    context text,
    additional_info jsonb,
    error_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: error_logs_error_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.error_logs_error_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: error_logs_error_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.error_logs_error_id_seq OWNED BY public.error_logs.error_id;


--
-- Name: error_logs error_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.error_logs ALTER COLUMN error_id SET DEFAULT nextval('public.error_logs_error_id_seq'::regclass);


--
-- Name: error_logs error_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.error_logs
    ADD CONSTRAINT error_logs_pkey PRIMARY KEY (error_id);


--
-- Name: error_logs error_logs_operation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.error_logs
    ADD CONSTRAINT error_logs_operation_id_fkey FOREIGN KEY (operation_id) REFERENCES public.operation_logs(operation_id);


--
-- PostgreSQL database dump complete
--

\unrestrict dTmabJvv6GUiUzPuQb9tWNqOAC7MNu5r0j0iBweyKotsIewBeARQGmY9DwTU9RV

 
-- Table: public.operation_events 
--
-- PostgreSQL database dump
--

\restrict TpXseuTTeVAW68IuEXJ0SDkKAZ6tfTxBWEAYsdRBG9M79rHQVd4Az31yWhsDgz0

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: operation_events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.operation_events (
    event_id bigint NOT NULL,
    operation_id bigint,
    event_type text NOT NULL,
    event_data jsonb,
    description text,
    event_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: operation_events_event_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.operation_events_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: operation_events_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.operation_events_event_id_seq OWNED BY public.operation_events.event_id;


--
-- Name: operation_events event_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_events ALTER COLUMN event_id SET DEFAULT nextval('public.operation_events_event_id_seq'::regclass);


--
-- Name: operation_events operation_events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_events
    ADD CONSTRAINT operation_events_pkey PRIMARY KEY (event_id);


--
-- Name: operation_events operation_events_operation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation_events
    ADD CONSTRAINT operation_events_operation_id_fkey FOREIGN KEY (operation_id) REFERENCES public.operation_logs(operation_id);


--
-- PostgreSQL database dump complete
--

\unrestrict TpXseuTTeVAW68IuEXJ0SDkKAZ6tfTxBWEAYsdRBG9M79rHQVd4Az31yWhsDgz0

 
-- Table: public.card_charges 
--
-- PostgreSQL database dump
--

\restrict z3SGP5YP2ssyjh6kcwuAc3wtiIjhkiVd2V7fvLOaSZfvy9UjzLXBoFd8Uw00GqL

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: card_charges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.card_charges (
    charge_id character varying(20) DEFAULT public.fcreatefeesidanual() NOT NULL,
    cardid character varying(11) NOT NULL,
    cardnumber character varying(20) NOT NULL,
    accountid character varying(11) NOT NULL,
    charge_type character varying(50) NOT NULL,
    amount numeric(12,2) NOT NULL,
    currency character varying(3),
    charge_date date NOT NULL,
    charge_year integer DEFAULT EXTRACT(year FROM CURRENT_DATE) NOT NULL,
    description text,
    cbs_posted character varying(3) DEFAULT 'NO'::character varying,
    status character varying(20) DEFAULT 'APPLIED'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    card_type character varying(10),
    scheme_type character varying(15),
    productname character varying(50),
    productbin character varying(12)
);


--
-- Name: card_charges card_charges_cardid_charge_type_charge_year_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card_charges
    ADD CONSTRAINT card_charges_cardid_charge_type_charge_year_key UNIQUE (cardid, charge_type, charge_year);


--
-- Name: card_charges card_charges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.card_charges
    ADD CONSTRAINT card_charges_pkey PRIMARY KEY (charge_id);


--
-- Name: idx_card_charges_cardid_year_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_card_charges_cardid_year_type ON public.card_charges USING btree (cardid, charge_year, charge_type) WHERE ((status)::text <> 'CANCELLED'::text);


--
-- PostgreSQL database dump complete
--

\unrestrict z3SGP5YP2ssyjh6kcwuAc3wtiIjhkiVd2V7fvLOaSZfvy9UjzLXBoFd8Uw00GqL

 
-- Table: public.instant_card_generation_batches 
--
-- PostgreSQL database dump
--

\restrict 9YdzIVMRb2YAbCrJvwqLrZ2qVMeJXUu9Krwo8m33IOGNLMDBvya8HPaEymSPKKD

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: instant_card_generation_batches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instant_card_generation_batches (
    s_no integer NOT NULL,
    batch_id character varying(50) NOT NULL,
    request_ids jsonb DEFAULT '[]'::jsonb NOT NULL,
    status character varying(50) DEFAULT 'PROCESSING'::character varying NOT NULL,
    cards_generated integer DEFAULT 0 NOT NULL,
    cards_failed integer DEFAULT 0 NOT NULL,
    schemes jsonb DEFAULT '[]'::jsonb NOT NULL,
    card_types jsonb DEFAULT '[]'::jsonb NOT NULL,
    duration character varying(50),
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    flags jsonb DEFAULT '[]'::jsonb NOT NULL,
    total_cards integer GENERATED ALWAYS AS ((cards_generated + cards_failed)) STORED,
    success_rate numeric(5,2) GENERATED ALWAYS AS (
CASE
    WHEN ((cards_generated + cards_failed) > 0) THEN (((cards_generated)::numeric * 100.0) / ((cards_generated + cards_failed))::numeric)
    ELSE (0)::numeric
END) STORED,
    request_count integer GENERATED ALWAYS AS (jsonb_array_length(request_ids)) STORED,
    report_id character varying(8),
    pintype character varying(15),
    CONSTRAINT positive_cards CHECK (((cards_generated >= 0) AND (cards_failed >= 0)))
);


--
-- Name: instant_card_generation_batches_s_no_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.instant_card_generation_batches_s_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: instant_card_generation_batches_s_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.instant_card_generation_batches_s_no_seq OWNED BY public.instant_card_generation_batches.s_no;


--
-- Name: instant_card_generation_batches s_no; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instant_card_generation_batches ALTER COLUMN s_no SET DEFAULT nextval('public.instant_card_generation_batches_s_no_seq'::regclass);


--
-- Name: instant_card_generation_batches instant_card_generation_batches_batch_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instant_card_generation_batches
    ADD CONSTRAINT instant_card_generation_batches_batch_id_key UNIQUE (batch_id);


--
-- Name: instant_card_generation_batches instant_card_generation_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instant_card_generation_batches
    ADD CONSTRAINT instant_card_generation_batches_pkey PRIMARY KEY (s_no);


--
-- Name: idx_batch_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_batch_id ON public.instant_card_generation_batches USING btree (batch_id);


--
-- Name: idx_card_types; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_card_types ON public.instant_card_generation_batches USING gin (card_types);


--
-- Name: idx_request_ids; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_request_ids ON public.instant_card_generation_batches USING gin (request_ids);


--
-- Name: idx_schemes; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_schemes ON public.instant_card_generation_batches USING gin (schemes);


--
-- Name: idx_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_status ON public.instant_card_generation_batches USING btree (status);


--
-- Name: idx_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_timestamp ON public.instant_card_generation_batches USING btree ("timestamp");


--
-- Name: instant_card_generation_batches fk_batch_report_config; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instant_card_generation_batches
    ADD CONSTRAINT fk_batch_report_config FOREIGN KEY (report_id) REFERENCES public.rpt_header_config(config_id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict 9YdzIVMRb2YAbCrJvwqLrZ2qVMeJXUu9Krwo8m33IOGNLMDBvya8HPaEymSPKKD

 
-- Table: public.iso_transaction 
--
-- PostgreSQL database dump
--

\restrict ggcXQXhLeN4GBGt3zvsJvrfe2lVd0nFxH9Bwit9WXqmNcgUWeHbfXQcyHe0Vuk8

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: iso_transaction; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.iso_transaction (
    mti character(4),
    pan_2 character(19),
    pcode_3 character(6),
    tran_amount_4 character(12),
    tran_datetime_7 character(10) NOT NULL,
    trace_11 character(6),
    local_time_12 character(6),
    local_date_13 character(4),
    expiry_date_14 character(4),
    settlement_date_15 character(4),
    merchant_category_code_18 character(4),
    acquiring_institution_country_code_19 character(4),
    point_of_service_entry_mode_22 character(3),
    point_of_service_conditon_mode_25 character(2),
    acquirer_id_32 character(10),
    track_ii_35 character(40),
    rrn_37 character(12),
    auth_id_38 character(6),
    resp_code_39 character(2),
    authorization_number character(10),
    card_acceptor_terminal_id_41 character(8),
    card_acceptor_identification_code_42 character(15),
    card_acceptor_name_location_43 character(40),
    additional_response_data_44 character(100),
    additional_data_iso_46 character(100),
    additional_data_private_48 character(100),
    currency_code_49 character(3),
    account_103 character(20),
    account_102 character(20),
    additional_amount_54 character(40),
    original_data_90 character(50),
    settlement_inst_identification_code_99 character(100),
    reserved_private_111 character(100),
    reserved_private_116 character(100),
    field_123 character(100),
    field_124 text
);


--
-- PostgreSQL database dump complete
--

\unrestrict ggcXQXhLeN4GBGt3zvsJvrfe2lVd0nFxH9Bwit9WXqmNcgUWeHbfXQcyHe0Vuk8

 
-- Table: public.log_instant_card_allocation 
--
-- PostgreSQL database dump
--

\restrict z6KoT287VzME9w7np5bTZiF8uunep5ngz2fxpyA8AkbMnKGauddyZxWkWhWCVfs

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: log_instant_card_allocation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.log_instant_card_allocation (
    log_id bigint NOT NULL,
    cardnumber character varying(19) NOT NULL,
    operation_type character varying(20) NOT NULL,
    from_branch character varying(4),
    to_branch character varying(4),
    from_status character varying(25),
    to_status character varying(25),
    performed_by character varying(50) NOT NULL,
    log_timestamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    performed_by_userid integer,
    isgreenpin boolean,
    CONSTRAINT chk_operation_type CHECK (((operation_type)::text = ANY (ARRAY[('ALLOCATE'::character varying)::text, ('DEALLOCATE'::character varying)::text, ('STATUS_CHANGE'::character varying)::text, ('DELETE'::character varying)::text, ('UPDATE'::character varying)::text])))
);


--
-- Name: log_instant_card_allocation_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.log_instant_card_allocation_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: log_instant_card_allocation_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.log_instant_card_allocation_log_id_seq OWNED BY public.log_instant_card_allocation.log_id;


--
-- Name: log_instant_card_allocation log_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_instant_card_allocation ALTER COLUMN log_id SET DEFAULT nextval('public.log_instant_card_allocation_log_id_seq'::regclass);


--
-- Name: log_instant_card_allocation log_instant_card_allocation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_instant_card_allocation
    ADD CONSTRAINT log_instant_card_allocation_pkey PRIMARY KEY (log_id);


--
-- Name: idx_log_cardnumber; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_log_cardnumber ON public.log_instant_card_allocation USING btree (cardnumber);


--
-- Name: idx_log_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_log_timestamp ON public.log_instant_card_allocation USING btree (log_timestamp DESC);


--
-- Name: idx_log_user_ops; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_log_user_ops ON public.log_instant_card_allocation USING btree (performed_by, log_timestamp);


--
-- PostgreSQL database dump complete
--

\unrestrict z6KoT287VzME9w7np5bTZiF8uunep5ngz2fxpyA8AkbMnKGauddyZxWkWhWCVfs

 
-- Table: public.creditcard_credit_assessment 
--
-- PostgreSQL database dump
--

\restrict zhBdknljbTWlbafv4DsaBjihjnwqIeulNECPOq9TuWLLorUfbu69UKj0AdSeGXq

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: creditcard_credit_assessment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.creditcard_credit_assessment (
    assessment_id character varying(10) DEFAULT public.fcreateassessmentcode() NOT NULL,
    request_id character varying(12),
    applicant_score integer,
    dbr_percentage numeric(5,2),
    monthly_income numeric(15,2),
    existing_monthly_emi numeric(15,2),
    limit_justification text,
    calculated_by character varying(50),
    calculated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    suggested_limit numeric(15,2),
    requested_limit numeric(15,2),
    operater_limit numeric(15,2),
    monthly_expenditure numeric(15,2)
);


--
-- Name: creditcard_credit_assessment creditcard_credit_assessment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creditcard_credit_assessment
    ADD CONSTRAINT creditcard_credit_assessment_pkey PRIMARY KEY (assessment_id);


--
-- Name: creditcard_credit_assessment creditcard_credit_assessment_request_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creditcard_credit_assessment
    ADD CONSTRAINT creditcard_credit_assessment_request_id_key UNIQUE (request_id);


--
-- Name: creditcard_credit_assessment fk_credit_assessment_creditcardcycle; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creditcard_credit_assessment
    ADD CONSTRAINT fk_credit_assessment_creditcardcycle FOREIGN KEY (request_id) REFERENCES public.creditcardcycle(request_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict zhBdknljbTWlbafv4DsaBjihjnwqIeulNECPOq9TuWLLorUfbu69UKj0AdSeGXq

 
-- Table: public.instantcardstock 
--
-- PostgreSQL database dump
--

\restrict FGE3k1TaKJa6hBrUQrKScTPyn67yi8qcM7AiRGoB2nHi0fKY5effEGzP07vM4Hj

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: instantcardstock; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instantcardstock (
    uploadid character varying(12) DEFAULT public.fcreateinstantcarduploadcode() NOT NULL,
    batchid character varying(12),
    cardnumber character varying(19),
    bankcode character varying(10),
    requestbranch character varying(4),
    allocatedbranch character varying(4),
    assingtocustomer character varying(1),
    status character varying(25),
    embossedname character varying(30),
    opendingdate date,
    expirydate date,
    lastbatchprodnum character varying(20),
    accountnumber character varying(20),
    uploaddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    clientcode character varying(50),
    createddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    createdby character varying(30),
    lastupdateddate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    lastupdatedby character varying(30),
    isgreenpin character(1),
    CONSTRAINT chk_assign_customer CHECK (((assingtocustomer)::text = ANY (ARRAY[('Y'::character varying)::text, ('N'::character varying)::text]))),
    CONSTRAINT chk_cardnumber_length CHECK ((length((cardnumber)::text) <= 19)),
    CONSTRAINT chk_status_not_null CHECK ((status IS NOT NULL))
);


--
-- Name: instantcardstock instantcardstock_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instantcardstock
    ADD CONSTRAINT instantcardstock_pkey PRIMARY KEY (uploadid);


--
-- Name: idx_instatcardstock_accountnumber; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_instatcardstock_accountnumber ON public.instantcardstock USING btree (accountnumber);


--
-- Name: idx_instatcardstock_allocatedbranch; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_instatcardstock_allocatedbranch ON public.instantcardstock USING btree (allocatedbranch);


--
-- Name: idx_instatcardstock_batchid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_instatcardstock_batchid ON public.instantcardstock USING btree (batchid);


--
-- Name: idx_instatcardstock_cardnumber; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_instatcardstock_cardnumber ON public.instantcardstock USING btree (cardnumber);


--
-- Name: idx_instatcardstock_expirydate; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_instatcardstock_expirydate ON public.instantcardstock USING btree (expirydate);


--
-- Name: idx_instatcardstock_requestbranch; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_instatcardstock_requestbranch ON public.instantcardstock USING btree (requestbranch);


--
-- Name: idx_instatcardstock_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_instatcardstock_status ON public.instantcardstock USING btree (status);


--
-- PostgreSQL database dump complete
--

\unrestrict FGE3k1TaKJa6hBrUQrKScTPyn67yi8qcM7AiRGoB2nHi0fKY5effEGzP07vM4Hj

 
-- Table: public.instant_card_applications 
--
-- PostgreSQL database dump
--

\restrict e5YMbWVAAUNEZMi1u7dHuN3RZerlHhb9SbQ19actybJFNPO4QWctfZ8QliVR75n

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: instant_card_applications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instant_card_applications (
    dap_iden character varying(20) NOT NULL,
    dap_ban_code character varying(10),
    dap_bra_code character varying(10),
    dap_user character varying(50),
    dap_bat_code character varying(10),
    dap_cus_type character(1),
    dap_cus_old_new character(1),
    dap_cus_iden character varying(20),
    dap_date date,
    dap_ast_code character varying(10),
    dap_firs_nam1 character varying(100),
    dap_last_nam1 character varying(100),
    dap_midd_nam1 character varying(100),
    dap_tit1 character varying(10),
    dap_birt_dat1 date,
    dap_birt_loc1 character varying(100),
    dap_firs_ide1 character varying(50),
    dap_firs_iden_typ1 character varying(10),
    dap_seco_ide1 character varying(50),
    dap_seco_iden_typ1 character varying(10),
    dap_gend1 character(1),
    dap_mst_cod1 character varying(10),
    dap_cou_cod1 character varying(10),
    dap_empl_cod1 character varying(20),
    dap_empl_nam1 character varying(100),
    dap_gros_sal1 numeric(15,2),
    dap_net_sal1 numeric(15,2),
    dap_empl_age1 integer,
    dap_firs_nam2 character varying(100),
    dap_last_nam2 character varying(100),
    dap_midd_nam2 character varying(100),
    dap_tit2 character varying(10),
    dap_birt_dat2 date,
    dap_birt_loc2 character varying(100),
    dap_firs_ide2 character varying(50),
    dap_firs_iden_typ2 character varying(10),
    dap_seco_ide2 character varying(50),
    dap_seco_iden_typ2 character varying(10),
    dap_gend2 character(1),
    dap_mst_cod2 character varying(10),
    dap_cou_cod2 character varying(10),
    dap_empl_cod2 character varying(20),
    dap_empl_nam2 character varying(100),
    dap_gros_sal2 numeric(15,2),
    dap_net_sal2 numeric(15,2),
    dap_empl_age2 integer,
    dap_deci_date date,
    dap_deci_auth character varying(50),
    dap_clas_numb character varying(20),
    dap_old_new_acct character(1),
    dap_requ_acc_numb_mxp character varying(20),
    dap_requ_acc_numb character varying(20),
    dap_requ_acc_curr_code character varying(10),
    dap_requ_cpr_code character varying(10),
    dap_requ_card_numb character varying(20),
    dap_pan_gene_manu_auto character(1),
    dap_requ_dpr_code character varying(10),
    dap_requ_effe_date date,
    dap_requ_expi_date date,
    dap_chld_titl character varying(10),
    dap_chld_firs_name character varying(100),
    dap_chld_last_name character varying(100),
    dap_chld_midd_name character varying(100),
    dap_chld_corp_name character varying(100),
    dap_chld_name character varying(100),
    dap_prim_seco_card character(1),
    dap_prim_car_numb character varying(20),
    dap_pers_fee_code character varying(10),
    dap_memb_fee_code character varying(10),
    dap_new_card_desi character varying(50),
    dap_card_expr_deli character varying(50),
    dap_vca_code character varying(10),
    dap_pro_code character varying(10),
    dap_cust_pare character varying(100),
    dap_phon_number character varying(20),
    dap_email_adr character varying(100),
    dap_gree_pin_flag character(1),
    firstaddresstype character varying(10),
    firstaddressline1 character varying(200),
    firstaddressline2 character varying(200),
    firstaddressline3 character varying(200),
    firstaddresszipcode character varying(20),
    firstadressphone1 character varying(20),
    firstadressphone2 character varying(20),
    firstcity character varying(50),
    emailaddress character varying(100),
    secondpobox character varying(50),
    secondstreet character varying(200),
    secondstate character varying(100),
    secondfax character varying(20),
    batchid character varying(20) NOT NULL,
    statusflag character varying(10) DEFAULT 'PENDING'::character varying,
    formatid character varying(20) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: instant_card_applications pk_instant_card_applications; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instant_card_applications
    ADD CONSTRAINT pk_instant_card_applications PRIMARY KEY (dap_iden, batchid);


--
-- Name: idx_batchid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_batchid ON public.instant_card_applications USING btree (batchid);


--
-- Name: idx_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_created_at ON public.instant_card_applications USING btree (created_at);


--
-- Name: idx_dap_cus_iden; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dap_cus_iden ON public.instant_card_applications USING btree (dap_cus_iden);


--
-- Name: idx_dap_cus_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dap_cus_type ON public.instant_card_applications USING btree (dap_cus_type);


--
-- Name: idx_dap_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dap_date ON public.instant_card_applications USING btree (dap_date);


--
-- Name: idx_dap_requ_acc_numb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_dap_requ_acc_numb ON public.instant_card_applications USING btree (dap_requ_acc_numb);


--
-- Name: idx_statusflag; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_statusflag ON public.instant_card_applications USING btree (statusflag);


--
-- Name: instant_card_applications update_instant_card_applications_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_instant_card_applications_updated_at BEFORE UPDATE ON public.instant_card_applications FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- PostgreSQL database dump complete
--

\unrestrict e5YMbWVAAUNEZMi1u7dHuN3RZerlHhb9SbQ19actybJFNPO4QWctfZ8QliVR75n

 
-- Table: public.rpt_raw_data 
--
-- PostgreSQL database dump
--

\restrict nbzfWux13aQpZthnHIsVfGZzrGLl9GJqhWKt4PNbTG02qmUQF2l4VX12QcyMyB7

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: rpt_raw_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rpt_raw_data (
    data_id bigint NOT NULL,
    batch_id character varying(50) NOT NULL,
    report_config_id character varying(8),
    request_id character varying(50) NOT NULL,
    card_data jsonb NOT NULL,
    status character varying(50) DEFAULT 'GENERATED'::character varying,
    flags character varying(10),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: rpt_raw_data_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.rpt_raw_data ALTER COLUMN data_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rpt_raw_data_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: rpt_raw_data rpt_raw_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rpt_raw_data
    ADD CONSTRAINT rpt_raw_data_pkey PRIMARY KEY (data_id);


--
-- Name: rpt_raw_data unique_request_in_batch; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rpt_raw_data
    ADD CONSTRAINT unique_request_in_batch UNIQUE (batch_id, request_id, data_id);


--
-- Name: idx_rpt_raw_data_batch_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rpt_raw_data_batch_id ON public.rpt_raw_data USING btree (batch_id);


--
-- Name: idx_rpt_raw_data_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rpt_raw_data_created_at ON public.rpt_raw_data USING btree (created_at DESC);


--
-- Name: idx_rpt_raw_data_json; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rpt_raw_data_json ON public.rpt_raw_data USING gin (card_data);


--
-- Name: idx_rpt_raw_data_report_config; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rpt_raw_data_report_config ON public.rpt_raw_data USING btree (report_config_id);


--
-- Name: idx_rpt_raw_data_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rpt_raw_data_request_id ON public.rpt_raw_data USING btree (request_id);


--
-- Name: idx_rpt_raw_data_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_rpt_raw_data_status ON public.rpt_raw_data USING btree (status);


--
-- Name: rpt_raw_data fk_batch; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rpt_raw_data
    ADD CONSTRAINT fk_batch FOREIGN KEY (batch_id) REFERENCES public.instant_card_generation_batches(batch_id) ON DELETE CASCADE;


--
-- Name: rpt_raw_data fk_report_config; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rpt_raw_data
    ADD CONSTRAINT fk_report_config FOREIGN KEY (report_config_id) REFERENCES public.rpt_header_config(config_id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict nbzfWux13aQpZthnHIsVfGZzrGLl9GJqhWKt4PNbTG02qmUQF2l4VX12QcyMyB7

 
-- Table: public.creditcard_stage_history 
--
-- PostgreSQL database dump
--

\restrict 1OPViuAY72X8duV9hyNa6VthRAzoLLjarfhkZpC9KbAucwS6fkSg6uERV3V5hun

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: creditcard_stage_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.creditcard_stage_history (
    history_id bigint NOT NULL,
    request_id character varying(12),
    from_stage character varying(50),
    to_stage character varying(50),
    action character varying(50),
    action_by character varying(50),
    action_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    remarks text,
    duration_seconds integer
);


--
-- Name: creditcard_stage_history_history_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.creditcard_stage_history_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: creditcard_stage_history_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.creditcard_stage_history_history_id_seq OWNED BY public.creditcard_stage_history.history_id;


--
-- Name: creditcard_stage_history history_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creditcard_stage_history ALTER COLUMN history_id SET DEFAULT nextval('public.creditcard_stage_history_history_id_seq'::regclass);


--
-- Name: creditcard_stage_history creditcard_stage_history_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creditcard_stage_history
    ADD CONSTRAINT creditcard_stage_history_pkey PRIMARY KEY (history_id);


--
-- PostgreSQL database dump complete
--

\unrestrict 1OPViuAY72X8duV9hyNa6VthRAzoLLjarfhkZpC9KbAucwS6fkSg6uERV3V5hun

 
-- Table: public.creditcardcycle 
--
-- PostgreSQL database dump
--

\restrict jp7i0coAPtccoJef8tJrlE1jxZORrEJwcYwmqikZWHfVPMnKBy5EC898jmuiSfZ

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: creditcardcycle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.creditcardcycle (
    request_id character varying(12) DEFAULT public.fcreatecardcyclecode() NOT NULL,
    full_name character varying(30) NOT NULL,
    mobile character varying(15),
    account_no character varying(20),
    request_type character varying(50) NOT NULL,
    card_type character varying(50) NOT NULL,
    currency_type character varying(10) NOT NULL,
    card_scheme character varying(50) NOT NULL,
    request_branch_id character varying(100) NOT NULL,
    delivery_branch_id character varying(100) NOT NULL,
    customer_branch_id character varying(100) NOT NULL,
    customer_branch_code character varying(4) NOT NULL,
    account_type character varying(100) NOT NULL,
    instcode character varying(12) NOT NULL,
    remarks text,
    status character varying(30) DEFAULT 'Pending'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    requstor_branch_code character varying(4),
    receiver_branch_code character varying(4),
    pintype character varying(15) NOT NULL,
    document_remarks character varying(255),
    limitapproval_remarks character varying(255),
    forwarddoc bit(1),
    forwardapproval bit(1),
    requested_limit numeric(15,2) DEFAULT NULL::numeric
);


--
-- Name: creditcardcycle creditcardcycle_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creditcardcycle
    ADD CONSTRAINT creditcardcycle_pkey PRIMARY KEY (request_id);


--
-- Name: creditcardcycle creditcardcycle_request_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creditcardcycle
    ADD CONSTRAINT creditcardcycle_request_id_key UNIQUE (request_id);


--
-- PostgreSQL database dump complete
--

\unrestrict jp7i0coAPtccoJef8tJrlE1jxZORrEJwcYwmqikZWHfVPMnKBy5EC898jmuiSfZ

 
-- Table: public.creditcard_documents 
--
-- PostgreSQL database dump
--

\restrict bFVGb9rvdMKDPmoihnARFN4edup7pduK2fYVfa1PrXhlabCV3cvZSvbNUWaLJir

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: creditcard_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.creditcard_documents (
    doc_id character varying(8) DEFAULT public.fcreatedocumentcode() NOT NULL,
    request_id character varying(12),
    document_type character varying(50),
    url_file_name character varying(255),
    uploaded_by character varying(50),
    uploaded_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(15)
);


--
-- Name: creditcard_documents creditcard_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creditcard_documents
    ADD CONSTRAINT creditcard_documents_pkey PRIMARY KEY (doc_id);


--
-- Name: creditcard_documents fk_creditcard_documents_creditcardcycle; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creditcard_documents
    ADD CONSTRAINT fk_creditcard_documents_creditcardcycle FOREIGN KEY (request_id) REFERENCES public.creditcardcycle(request_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict bFVGb9rvdMKDPmoihnARFN4edup7pduK2fYVfa1PrXhlabCV3cvZSvbNUWaLJir

 
-- Table: public.excluded_tables 
--
-- PostgreSQL database dump
--

\restrict WS2OxftoyruXZIZhe3Iara0ne9qDgNr2CqpkdhKaL4cxEbQ1K89QfgloFlYfgsK

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: excluded_tables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.excluded_tables (
    id integer NOT NULL,
    table_name character varying(255) NOT NULL,
    schema_name character varying(255) DEFAULT 'public'::character varying,
    reason text,
    excluded_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    excluded_by character varying(100)
);


--
-- Name: excluded_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.excluded_tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: excluded_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.excluded_tables_id_seq OWNED BY public.excluded_tables.id;


--
-- Name: excluded_tables id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excluded_tables ALTER COLUMN id SET DEFAULT nextval('public.excluded_tables_id_seq'::regclass);


--
-- Name: excluded_tables excluded_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excluded_tables
    ADD CONSTRAINT excluded_tables_pkey PRIMARY KEY (id);


--
-- Name: excluded_tables excluded_tables_table_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excluded_tables
    ADD CONSTRAINT excluded_tables_table_name_key UNIQUE (table_name);


--
-- PostgreSQL database dump complete
--

\unrestrict WS2OxftoyruXZIZhe3Iara0ne9qDgNr2CqpkdhKaL4cxEbQ1K89QfgloFlYfgsK

 
-- Table: public.template_categories 
--
-- PostgreSQL database dump
--

\restrict pkt1nuQcIfDsjKCEdoUtx8R4L2GexmDRtfwfng7ZElgxqst5JWfIhSMCgKz83Aw

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: template_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.template_categories (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    icon character varying(50),
    sort_order integer DEFAULT 0
);


--
-- Name: template_categories template_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.template_categories
    ADD CONSTRAINT template_categories_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict pkt1nuQcIfDsjKCEdoUtx8R4L2GexmDRtfwfng7ZElgxqst5JWfIhSMCgKz83Aw

 
-- Table: public.audit_trail 
--
-- PostgreSQL database dump
--

\restrict 8NNDc78lkgIDOhc4f0oDJPUDdUtIrZkJopIEDqFVlj56BxI2krxpegkpMOYfsJI

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: audit_trail; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.audit_trail (
    audit_id bigint NOT NULL,
    entity_type character varying(50) NOT NULL,
    action_type character varying(100) NOT NULL,
    description text,
    data jsonb,
    user_id character varying(100),
    ip_address inet,
    user_agent text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: audit_trail_audit_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.audit_trail_audit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_trail_audit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.audit_trail_audit_id_seq OWNED BY public.audit_trail.audit_id;


--
-- Name: audit_trail audit_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audit_trail ALTER COLUMN audit_id SET DEFAULT nextval('public.audit_trail_audit_id_seq'::regclass);


--
-- Name: audit_trail audit_trail_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audit_trail
    ADD CONSTRAINT audit_trail_pkey PRIMARY KEY (audit_id);


--
-- Name: idx_audit_created; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_audit_created ON public.audit_trail USING btree (created_at DESC);


--
-- Name: idx_audit_entity; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_audit_entity ON public.audit_trail USING btree (entity_type, action_type);


--
-- PostgreSQL database dump complete
--

\unrestrict 8NNDc78lkgIDOhc4f0oDJPUDdUtIrZkJopIEDqFVlj56BxI2krxpegkpMOYfsJI

 
-- Table: public.instantcardcycle 
--
-- PostgreSQL database dump
--

\restrict cSO4egPosKQpWxNeT2KkxVns6dPAnLuAU6Il4ke3EaLRKwQBPRmeAzPqoovYpiu

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: instantcardcycle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.instantcardcycle (
    requestid character varying(12) DEFAULT public.fcreateinstantrequestcode() NOT NULL,
    scheme character varying(20) NOT NULL,
    cardtype character varying(15) NOT NULL,
    currency character varying(3) NOT NULL,
    totalnumberofcard integer NOT NULL,
    flags character varying(1),
    pintype character varying(15),
    requesteddate timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    requestedby character varying(100) NOT NULL,
    requestedbranchname character varying(200) NOT NULL,
    requestbranchcode character varying(4) NOT NULL,
    approvedby character varying(100),
    approvedbranchcode character varying(4),
    approvedbranchname character varying(200),
    verifiedby character varying(100),
    verifiedbranchname character varying(200),
    verifiedbranchcode character varying(4),
    status character varying(50) DEFAULT 'PENDING'::character varying,
    approvedate timestamp with time zone,
    verifieddate timestamp with time zone,
    booked_cards integer DEFAULT 0,
    approved_cards integer DEFAULT 0,
    bookedcardallocated boolean DEFAULT false,
    approvedcardsallocated boolean DEFAULT false,
    CONSTRAINT instantcardcycle_status_check CHECK (((status)::text = ANY ((ARRAY['VERIFIED'::character varying, 'APPROVED'::character varying, 'ALLOCATED'::character varying, 'PENDING'::character varying, 'COMPLETED'::character varying, 'REJECTED'::character varying, 'PROCESSING'::character varying])::text[]))),
    CONSTRAINT instantcardcycle_totalnumberofcard_check CHECK ((totalnumberofcard > 0))
);


--
-- Name: instantcardcycle instantcardcycle_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.instantcardcycle
    ADD CONSTRAINT instantcardcycle_pkey PRIMARY KEY (requestid);


--
-- Name: instantcardcycle trg_instantcardcycle_status_updatebothflagtrue; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_instantcardcycle_status_updatebothflagtrue BEFORE UPDATE OF bookedcardallocated, approvedcardsallocated ON public.instantcardcycle FOR EACH ROW EXECUTE FUNCTION public.finstant_statusupdatebothflagtrue();


--
-- Name: instantcardcycle trigger_status_update_both_flags; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_status_update_both_flags BEFORE UPDATE ON public.instantcardcycle FOR EACH ROW EXECUTE FUNCTION public.finstant_statusupdatebothflagtrue();


--
-- PostgreSQL database dump complete
--

\unrestrict cSO4egPosKQpWxNeT2KkxVns6dPAnLuAU6Il4ke3EaLRKwQBPRmeAzPqoovYpiu

 
-- Table: public.credit_score_calculation_log 
--
-- PostgreSQL database dump
--

\restrict 74MPRRl9bzvqSWt74ahZzjL2VtlNgU34cc1amG9oZFS3haq2CzpyfXJZdiqDjxM

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: credit_score_calculation_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.credit_score_calculation_log (
    log_id integer NOT NULL,
    request_id character varying(12),
    assessment_id character varying(10),
    calculation_timestamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    debug_level integer DEFAULT 0,
    request_limit_amount numeric(15,2),
    vehicle_type character varying(50),
    residential_status character varying(50),
    occupation_type character varying(50),
    monthly_income numeric(15,2),
    monthly_expenditure numeric(15,2),
    existing_emi numeric(15,2),
    education_level character varying(50),
    other_loan_count integer,
    risk_category character varying(30),
    employment_years integer,
    organization_type character varying(50),
    raw_score integer,
    adjusted_score integer,
    final_score integer,
    dbr_percentage numeric(5,2),
    income_score integer,
    employment_score integer,
    debt_score integer,
    education_score integer,
    residence_score integer,
    risk_score integer,
    calculations_json jsonb,
    remarks text
);


--
-- Name: credit_score_calculation_log_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.credit_score_calculation_log_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: credit_score_calculation_log_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.credit_score_calculation_log_log_id_seq OWNED BY public.credit_score_calculation_log.log_id;


--
-- Name: credit_score_calculation_log log_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.credit_score_calculation_log ALTER COLUMN log_id SET DEFAULT nextval('public.credit_score_calculation_log_log_id_seq'::regclass);


--
-- Name: credit_score_calculation_log credit_score_calculation_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.credit_score_calculation_log
    ADD CONSTRAINT credit_score_calculation_log_pkey PRIMARY KEY (log_id);


--
-- Name: idx_credit_score_log_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_credit_score_log_request_id ON public.credit_score_calculation_log USING btree (request_id);


--
-- Name: idx_credit_score_log_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_credit_score_log_timestamp ON public.credit_score_calculation_log USING btree (calculation_timestamp);


--
-- PostgreSQL database dump complete
--

\unrestrict 74MPRRl9bzvqSWt74ahZzjL2VtlNgU34cc1amG9oZFS3haq2CzpyfXJZdiqDjxM

 
-- Table: public.log_credit_card_cycle 
--
-- PostgreSQL database dump
--

\restrict CSf2T6HPbAHMe4F09gjoE9b9wERye2X9VisNrqpdJuBEyDupJNcBOwouSb0Wh47

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: log_credit_card_cycle; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.log_credit_card_cycle (
    log_id bigint NOT NULL,
    action_type character varying(20) NOT NULL,
    request_id character varying(12),
    user_id character varying(50) DEFAULT CURRENT_USER,
    ip_address inet DEFAULT inet_client_addr(),
    user_agent text DEFAULT current_setting('application_name'::text, true),
    log_timestamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    full_name character varying(30),
    mobile character varying(15),
    account_no character varying(20),
    request_type character varying(50),
    card_type character varying(50),
    currency_type character varying(10),
    card_scheme character varying(50),
    debug_level integer DEFAULT 0,
    status character varying(30),
    error_message text,
    execution_time_ms integer,
    old_data jsonb,
    new_data jsonb,
    rows_affected integer,
    documents_count integer,
    assessment_id character varying(10),
    username character varying(30),
    user_branch character varying(30),
    crossbranch_access boolean
);


--
-- Name: log_credit_card_cycle_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.log_credit_card_cycle_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: log_credit_card_cycle_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.log_credit_card_cycle_log_id_seq OWNED BY public.log_credit_card_cycle.log_id;


--
-- Name: log_credit_card_cycle log_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_credit_card_cycle ALTER COLUMN log_id SET DEFAULT nextval('public.log_credit_card_cycle_log_id_seq'::regclass);


--
-- Name: log_credit_card_cycle log_credit_card_cycle_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.log_credit_card_cycle
    ADD CONSTRAINT log_credit_card_cycle_pkey PRIMARY KEY (log_id);


--
-- Name: idx_log_cc_action; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_log_cc_action ON public.log_credit_card_cycle USING btree (action_type);


--
-- Name: idx_log_cc_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_log_cc_request_id ON public.log_credit_card_cycle USING btree (request_id);


--
-- Name: idx_log_cc_timestamp; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_log_cc_timestamp ON public.log_credit_card_cycle USING btree (log_timestamp);


--
-- Name: idx_log_cc_user; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_log_cc_user ON public.log_credit_card_cycle USING btree (user_id);


--
-- PostgreSQL database dump complete
--

\unrestrict CSf2T6HPbAHMe4F09gjoE9b9wERye2X9VisNrqpdJuBEyDupJNcBOwouSb0Wh47

 
-- Table: public.email_templates 
--
-- PostgreSQL database dump
--

\restrict bzh1hGfxROvXlqhLdqcebFLQy6Kg7VnfAj2Ftyr60ntFe37rO6KUdearXErU3KA

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: email_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.email_templates (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    template_name character varying(255) NOT NULL,
    subject character varying(500) NOT NULL,
    body text NOT NULL,
    template_type character varying(50) NOT NULL,
    card_type character varying(50) DEFAULT NULL::character varying,
    event_type character varying(100) DEFAULT NULL::character varying,
    is_active boolean DEFAULT true,
    created_by integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    variables jsonb DEFAULT '[]'::jsonb
);


--
-- Name: email_templates email_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_pkey PRIMARY KEY (id);


--
-- Name: email_templates email_templates_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_templates
    ADD CONSTRAINT email_templates_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict bzh1hGfxROvXlqhLdqcebFLQy6Kg7VnfAj2Ftyr60ntFe37rO6KUdearXErU3KA

 
-- Table: public.email_queue 
--
-- PostgreSQL database dump
--

\restrict 1XyBRv6gfTnDaQca9VU3rdPx9gNOidbPZSX3eSRJup8p7fenGnufRe72StInT8y

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: email_queue; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.email_queue (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    template_id uuid,
    recipient_email character varying(255) NOT NULL,
    recipient_name character varying(255),
    subject character varying(500) NOT NULL,
    body text NOT NULL,
    variables_used jsonb DEFAULT '{}'::jsonb,
    status character varying(50) DEFAULT 'pending'::character varying,
    user_id integer,
    card_details jsonb,
    attempt_count integer DEFAULT 0,
    last_attempt_at timestamp without time zone,
    error_message text,
    scheduled_for timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    sent_at timestamp without time zone,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: email_queue email_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_queue
    ADD CONSTRAINT email_queue_pkey PRIMARY KEY (id);


--
-- Name: email_queue email_queue_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_queue
    ADD CONSTRAINT email_queue_template_id_fkey FOREIGN KEY (template_id) REFERENCES public.email_templates(id) ON DELETE SET NULL;


--
-- Name: email_queue email_queue_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.email_queue
    ADD CONSTRAINT email_queue_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

\unrestrict 1XyBRv6gfTnDaQca9VU3rdPx9gNOidbPZSX3eSRJup8p7fenGnufRe72StInT8y

 
