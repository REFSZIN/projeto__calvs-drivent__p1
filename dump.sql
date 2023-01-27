--
-- PostgreSQL database dump
--

-- Dumped from database version 12.13 (Ubuntu 12.13-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.13 (Ubuntu 12.13-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: Address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Address" (
    id integer NOT NULL,
    cep character varying(255) NOT NULL,
    street character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    number character varying(255) NOT NULL,
    neighborhood character varying(255) NOT NULL,
    "addressDetail" character varying(255),
    "enrollmentId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


--
-- Name: Address_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Address_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Address_id_seq" OWNED BY public."Address".id;


--
-- Name: Enrollment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Enrollment" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    cpf character varying(255) NOT NULL,
    birthday timestamp(3) without time zone NOT NULL,
    phone character varying(255) NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


--
-- Name: Enrollment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Enrollment_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Enrollment_id_seq" OWNED BY public."Enrollment".id;


--
-- Name: Event; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Event" (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    "backgroundImageUrl" character varying(255) NOT NULL,
    "logoImageUrl" character varying(255) NOT NULL,
    "startsAt" timestamp(3) without time zone NOT NULL,
    "endsAt" timestamp(3) without time zone NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


--
-- Name: Event_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Event_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Event_id_seq" OWNED BY public."Event".id;


--
-- Name: Session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Session" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    token text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


--
-- Name: Session_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Session_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: Session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Session_id_seq" OWNED BY public."Session".id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


--
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


--
-- Name: Address id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Address" ALTER COLUMN id SET DEFAULT nextval('public."Address_id_seq"'::regclass);


--
-- Name: Enrollment id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Enrollment" ALTER COLUMN id SET DEFAULT nextval('public."Enrollment_id_seq"'::regclass);


--
-- Name: Event id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Event" ALTER COLUMN id SET DEFAULT nextval('public."Event_id_seq"'::regclass);


--
-- Name: Session id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Session" ALTER COLUMN id SET DEFAULT nextval('public."Session_id_seq"'::regclass);


--
-- Name: User id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- Data for Name: Address; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Enrollment; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: Event; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Event" VALUES (7, 'Corporis quas delectus quos inventore dolore.', 'http://loremflickr.com/640/480', 'http://loremflickr.com/640/480', '2023-01-17 15:55:48.001', '2023-01-23 15:55:48.002', '2023-01-18 15:55:48.003', '2023-01-18 15:55:48.004');


--
-- Data for Name: Session; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."User" VALUES (15, 'Ashtyn.Armstrong@yahoo.com', '$2b$10$rEVQ68YUMZe8r4DTeHR3Hehbd.9FZHxERCsWat2gYW2NgZVhYgmtW', '2023-01-18 15:55:48.06', '2023-01-18 15:55:48.061');
INSERT INTO public."User" VALUES (16, 'Cordie_Cremin@gmail.com', '$2b$12$xQ8H0Yy8oFxPD7UPw1XTUO.ned.x36AOiWBKySX/ZPJyuV57HS2we', '2023-01-18 15:55:48.282', '2023-01-18 15:55:48.283');
INSERT INTO public."User" VALUES (17, 'Lynn33@gmail.com', '$2b$12$6iU5sXTWjQyV8pYR6S5a6OhboUDhyld/PTJyOhmi3NwIL.wDx3htG', '2023-01-18 15:55:48.529', '2023-01-18 15:55:48.529');
INSERT INTO public."User" VALUES (18, 'Hope_Nienow@gmail.com', '$2b$12$YDunpA6CO2C2/Xb9EGyQvef7fu9EEVXUQ3vYo1/2JIfsmWFgUUAjq', '2023-01-18 15:55:48.745', '2023-01-18 15:55:48.746');


--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public._prisma_migrations VALUES ('efc45a89-8c30-4b8d-94d8-45c696f16742', '33aae9404e976450f09d32c6fc67583bb1a8089e4e8d3ffcec2a31ccce8585ff', '2023-01-18 12:47:51.293531-03', '20220519200857_init', NULL, NULL, '2023-01-18 12:47:51.277822-03', 1);
INSERT INTO public._prisma_migrations VALUES ('0218a880-7e64-4eb5-a67c-444f70a5364b', 'ba7c8810f0df555b56962c3041e14416cd17d65de471d78bf21b8b018bb49a42', '2023-01-18 12:47:51.305837-03', '20220521144316_create_session_table', NULL, NULL, '2023-01-18 12:47:51.29527-03', 1);
INSERT INTO public._prisma_migrations VALUES ('b5cf796f-618d-488c-9602-099c784b948e', 'ed1e5e8af722430f2786f7fbe89abebbad98939e43ba4c78628fbf8d076fa793', '2023-01-18 12:47:51.315553-03', '20220521144521_change_token_collumn_to_text_type_for_session_table', NULL, NULL, '2023-01-18 12:47:51.307285-03', 1);
INSERT INTO public._prisma_migrations VALUES ('aa4cfd43-aa60-4a89-bc55-f442f20fff2e', 'dfe62bfeddd8ab53b2e50e36708deeb340d36f5ad32cbf9d59932b82a696e3ac', '2023-01-18 12:47:51.331582-03', '20220521170313_create_settings_table', NULL, NULL, '2023-01-18 12:47:51.31716-03', 1);
INSERT INTO public._prisma_migrations VALUES ('b9ba453a-3e9c-43a9-b88f-ffd008bf3406', 'c14ccd3fb6c78d024941ecd61b4835ba1cb21b94dbb95abc4956009a794375cf', '2023-01-18 12:47:51.3456-03', '20220521172530_create_events_table', NULL, NULL, '2023-01-18 12:47:51.333304-03', 1);
INSERT INTO public._prisma_migrations VALUES ('7044f2bb-790d-46a2-a728-f22522ef6cba', '65a9f2d4602ec7b7b1fd2eaeb169ca528cfbe59b2f4d51e3b0344056c956c756', '2023-01-18 12:47:51.366839-03', '20220521191854_create_enrollment_and_adress_tables', NULL, NULL, '2023-01-18 12:47:51.347016-03', 1);
INSERT INTO public._prisma_migrations VALUES ('f6cdbd81-0a79-481f-8cf6-23bbb86810bb', '1b637140d19eadd7ec8189e3339ec6350847ef801bd11d8d91968b9f80bd2f6a', '2023-01-18 12:47:51.381818-03', '20220521192104_rename_address_table', NULL, NULL, '2023-01-18 12:47:51.368363-03', 1);
INSERT INTO public._prisma_migrations VALUES ('ae4a3632-5d01-473b-bba2-ce9e02e72f19', '4eb3418748144d88b6ac75bcdcf91027282833c012f735f4a91edd6e6ac07ec9', '2023-01-18 12:47:51.388132-03', '20220521192311_change_address_detail_column_type_to_not_requerired_for_address_table', NULL, NULL, '2023-01-18 12:47:51.383435-03', 1);
INSERT INTO public._prisma_migrations VALUES ('779955e6-fc1b-492c-883c-46861835de84', '3e0c34445b4f7f94fe19a01c512154b8f34472d49516ae6b02367d712acdaef6', '2023-01-18 12:47:51.397065-03', '20220522143837_change_user_id_collumn_in_enrollments_table_to_unique', NULL, NULL, '2023-01-18 12:47:51.38951-03', 1);
INSERT INTO public._prisma_migrations VALUES ('2ab61245-5c2a-43f1-8963-b80d2535cd45', '6620ae7b3d99518f4fe80a866e0a0d61c6d5187a178fe1ed11b5cbed277f9691', '2023-01-18 12:47:51.406816-03', '20220525152602_change_enrollmentid_on_address_to_unique', NULL, NULL, '2023-01-18 12:47:51.398705-03', 1);


--
-- Name: Address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Address_id_seq"', 1, false);


--
-- Name: Enrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Enrollment_id_seq"', 1, false);


--
-- Name: Event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Event_id_seq"', 7, true);


--
-- Name: Session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Session_id_seq"', 5, true);


--
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."User_id_seq"', 18, true);


--
-- Name: Address Address_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_pkey" PRIMARY KEY (id);


--
-- Name: Enrollment Enrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Enrollment"
    ADD CONSTRAINT "Enrollment_pkey" PRIMARY KEY (id);


--
-- Name: Event Event_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Event"
    ADD CONSTRAINT "Event_pkey" PRIMARY KEY (id);


--
-- Name: Session Session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Session"
    ADD CONSTRAINT "Session_pkey" PRIMARY KEY (id);


--
-- Name: User User_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: Address_enrollmentId_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "Address_enrollmentId_key" ON public."Address" USING btree ("enrollmentId");


--
-- Name: Enrollment_userId_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "Enrollment_userId_key" ON public."Enrollment" USING btree ("userId");


--
-- Name: User_email_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);


--
-- Name: Address Address_enrollmentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Address"
    ADD CONSTRAINT "Address_enrollmentId_fkey" FOREIGN KEY ("enrollmentId") REFERENCES public."Enrollment"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Enrollment Enrollment_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Enrollment"
    ADD CONSTRAINT "Enrollment_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Session Session_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Session"
    ADD CONSTRAINT "Session_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--

