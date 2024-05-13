-- Table: public.book

-- DROP TABLE IF EXISTS public.book;

CREATE TABLE IF NOT EXISTS public.book
(
    book_id integer NOT NULL,
    shelf_id integer NOT NULL,
    author_name text COLLATE pg_catalog."default" NOT NULL,
    isbn bigint NOT NULL,
    CONSTRAINT book_pkey PRIMARY KEY (book_id),
    CONSTRAINT shelf_fkey FOREIGN KEY (shelf_id)
        REFERENCES public.bookshelf (shelf_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.book
    OWNER to postgres;