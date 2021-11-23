--Create table asset
CREATE TABLE public.asset
(
    id character varying(256) COLLATE pg_catalog."default" NOT NULL,
    project_id character varying(256) COLLATE pg_catalog."default",
    content character varying(256) COLLATE pg_catalog."default",
    type character varying(256) COLLATE pg_catalog."default",
    create_date bigint,
    CONSTRAINT asset_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.asset
    OWNER to postgres;




--Create table label 
CREATE TABLE public.label
(
    id character varying(256) COLLATE pg_catalog."default" NOT NULL,
    project_id character varying(256) COLLATE pg_catalog."default",
    asset_id character varying(256) COLLATE pg_catalog."default",
    type character varying(256) COLLATE pg_catalog."default",
    is_seed boolean,
    create_date bigint,
    update_date bigint,
    is_included boolean,
    label_time numeric,
    approved_by character varying(256) COLLATE pg_catalog."default",
    model_version integer,
    is_changed boolean,
    CONSTRAINT label_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.label
    OWNER to postgres;


--Create table organization 
CREATE TABLE public.organization
(
    id character varying(256) COLLATE pg_catalog."default" NOT NULL,
    name character varying(256) COLLATE pg_catalog."default",
    type character varying(256) COLLATE pg_catalog."default",
    create_date bigint,
    update_date bigint,
    CONSTRAINT organization_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.organization
    OWNER to postgres;


--Create table project 
CREATE TABLE public.project
(
    id character varying(256) COLLATE pg_catalog."default" NOT NULL,
    name character varying(256) COLLATE pg_catalog."default",
    organization_id character varying(256) COLLATE pg_catalog."default",
    type character varying(256) COLLATE pg_catalog."default",
    create_date bigint,
    update_date bigint,
    CONSTRAINT project_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.project
    OWNER to postgres;


--Create table review 
CREATE TABLE public.review
(
    id character varying(256) COLLATE pg_catalog."default" NOT NULL,
    label_id character varying(256) COLLATE pg_catalog."default",
    date_reviewed bigint,
    reviewed_by character varying(256) COLLATE pg_catalog."default",
    is_modified boolean,
    review_time numeric,
    CONSTRAINT review_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.review
    OWNER to postgres;


--Create table user 
CREATE TABLE public."user"
(
    id character varying(256) COLLATE pg_catalog."default" NOT NULL,
    name character varying(256) COLLATE pg_catalog."default",
    email character varying(256) COLLATE pg_catalog."default",
    organization_id character varying(256) COLLATE pg_catalog."default",
    type character varying(256) COLLATE pg_catalog."default",
    create_date character varying(256) COLLATE pg_catalog."default",
    update_date character varying(256) COLLATE pg_catalog."default",
    CONSTRAINT user_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public."user"
    OWNER to postgres;