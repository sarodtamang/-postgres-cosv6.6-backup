--
-- PostgreSQL database cluster dump
--

\restrict O5CIY2IVrm1uT6y1TXQqzHcaV6ZLaCeDFqkOHGQCBaYEIFRKNSTKAOrXQdk17bD

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:wmraWNd5W+GG18JL4H46Dg==$xGItcDyJdBVTFBCjupx/A1+NHMOM/z0EfCduep6CqEk=:Cf4B66grqrE090+CDVUBCM5k5njhnvROGEIDA7EfBJA=';

--
-- User Configurations
--






\unrestrict O5CIY2IVrm1uT6y1TXQqzHcaV6ZLaCeDFqkOHGQCBaYEIFRKNSTKAOrXQdk17bD

--
-- PostgreSQL database cluster dump complete
--

