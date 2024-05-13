-- Table: public.bookshelf

-- DROP TABLE IF EXISTS public.bookshelf;

CREATE TABLE IF NOT EXISTS public.bookshelf
(
    shelf_id integer NOT NULL,
    floor_num integer NOT NULL,
    CONSTRAINT shelf_pkey PRIMARY KEY (shelf_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.bookshelf
    OWNER to postgres;