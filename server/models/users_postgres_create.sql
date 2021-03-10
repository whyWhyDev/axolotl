
-- SQL SCHEMA 

-- SET statement_timeout = 0;
-- SET lock_timeout = 0;
-- SET idle_in_transaction_session_timeout = 0;
-- SET client_encoding = 'UTF8';
-- SET standard_conforming_strings = on;
-- SELECT pg_catalog.set_config('search_path', '', false);
-- SET check_function_bodies = false;
-- SET xmloption = content;
-- SET client_min_messages = warning;
-- SET row_security = off;

CREATE TABLE public.people (
  _id serial PRIMARY KEY NOT NULL,
  username varchar NOT NULL,
  token varchar NOT NULL,
  matches integer,
  potentials integer,
  interests integer,
  githubavatar varchar,
  githublink varchar
);

CREATE TABLE public.matches (
  _id serial PRIMARY KEY NOT NULL,
  match integer
);

CREATE TABLE public.potentials (
  _id integer,
  username varchar, 
  potential_matches_id integer,
  potential_matches_username varchar
);

CREATE TABLE public.interests (
  _id serial PRIMARY KEY NOT NULL,
  Algo boolean,
  BackEnd boolean,
  Express boolean,
  FrontEnd boolean,
  Node boolean,
  NoSQLDB boolean,
  React boolean,
  Redux boolean,
  SQLDB boolean
)

ALTER TABLE public.people ADD CONSTRAINT "people_fk0" FOREIGN KEY (matches) REFERENCES public.matches(_id);
ALTER TABLE public.people ADD CONSTRAINT "people_fk1" FOREIGN KEY (potential) REFERENCES public.potentials(_id);
ALTER TABLE public.people ADD CONSTRAINT "people_fk2" FOREIGN KEY (interests) REFERENCES public.interests(_id);

