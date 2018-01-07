-- Table: public.items

-- DROP TABLE public.items;

CREATE TABLE public.items
(
    id integer NOT NULL DEFAULT nextval('items_id_seq'::regclass),
    userid character varying(40) COLLATE pg_catalog."default" NOT NULL,
    text character varying COLLATE pg_catalog."default",
    happiness smallint NOT NULL,
    anonymous boolean NOT NULL,
    submitdate timestamp without time zone DEFAULT now(),
    CONSTRAINT items_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.items
    OWNER to postgres;