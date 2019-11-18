--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2019-11-17 19:19:31 CST

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

SET default_with_oids = false;

--
-- TOC entry 217 (class 1259 OID 25576)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 25574)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 219 (class 1259 OID 25586)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 25584)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 215 (class 1259 OID 25568)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 25566)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 221 (class 1259 OID 25594)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- TOC entry 223 (class 1259 OID 25604)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 25602)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 220 (class 1259 OID 25592)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 225 (class 1259 OID 25612)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 25610)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 197 (class 1259 OID 25452)
-- Name: cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre_cliente character varying(128) NOT NULL,
    apellido_cliente character varying(128) NOT NULL,
    telefono_cliente character varying(9)
);


--
-- TOC entry 196 (class 1259 OID 25450)
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 196
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- TOC entry 230 (class 1259 OID 33643)
-- Name: destino; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.destino (
    id_destino integer NOT NULL,
    nombre_destino character varying(128) NOT NULL,
    tipo_destino character varying(128) NOT NULL,
    departamento_destino character varying(128) NOT NULL,
    fecha_registro_destino date NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 33641)
-- Name: destion_id_destino_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.destion_id_destino_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 229
-- Name: destion_id_destino_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.destion_id_destino_seq OWNED BY public.destino.id_destino;


--
-- TOC entry 227 (class 1259 OID 25672)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- TOC entry 226 (class 1259 OID 25670)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 226
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 213 (class 1259 OID 25558)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- TOC entry 212 (class 1259 OID 25556)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 211 (class 1259 OID 25547)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- TOC entry 210 (class 1259 OID 25545)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 210
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 228 (class 1259 OID 25703)
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- TOC entry 199 (class 1259 OID 25460)
-- Name: excursion; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.excursion (
    id_excursion integer NOT NULL,
    id_hospedaje integer NOT NULL,
    id_publiciste integer NOT NULL,
    id_transporte integer NOT NULL,
    id_guia integer NOT NULL,
    fecha_inicio_excursion date NOT NULL,
    fecha_fin_excursion date NOT NULL,
    precio_excursion numeric(8,2),
    id_destino integer
);


--
-- TOC entry 198 (class 1259 OID 25458)
-- Name: excursion_id_excursion_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.excursion_id_excursion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 198
-- Name: excursion_id_excursion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.excursion_id_excursion_seq OWNED BY public.excursion.id_excursion;


--
-- TOC entry 201 (class 1259 OID 25468)
-- Name: guia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.guia (
    id_guia integer NOT NULL,
    nombre_guia character varying(1024) NOT NULL,
    apellido_guia character varying(1024) NOT NULL
);


--
-- TOC entry 200 (class 1259 OID 25466)
-- Name: guia_id_guia_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.guia_id_guia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 200
-- Name: guia_id_guia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.guia_id_guia_seq OWNED BY public.guia.id_guia;


--
-- TOC entry 203 (class 1259 OID 25479)
-- Name: hospedaje; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.hospedaje (
    id_hospedaje integer NOT NULL,
    nombre_hospedaje character varying(1024) NOT NULL,
    direccion_hospedaje character varying(1024) NOT NULL,
    telefono_hospedaje character varying(10) NOT NULL,
    estrellas_hospedaje integer,
    departamento_hospedaje character varying(128)
);


--
-- TOC entry 202 (class 1259 OID 25477)
-- Name: hospedaje_id_hospedaje_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.hospedaje_id_hospedaje_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 202
-- Name: hospedaje_id_hospedaje_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.hospedaje_id_hospedaje_seq OWNED BY public.hospedaje.id_hospedaje;


--
-- TOC entry 205 (class 1259 OID 25490)
-- Name: publicista; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publicista (
    id_publiciste integer NOT NULL,
    nombre_publiciste character varying(128) NOT NULL,
    apellido_publiciste character varying(128) NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 25488)
-- Name: publicista_id_publiciste_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.publicista_id_publiciste_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 204
-- Name: publicista_id_publiciste_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.publicista_id_publiciste_seq OWNED BY public.publicista.id_publiciste;


--
-- TOC entry 207 (class 1259 OID 25498)
-- Name: reservan; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reservan (
    id_van_a integer NOT NULL,
    id_excursion integer NOT NULL,
    id_cliente integer NOT NULL,
    nota_publiciste integer,
    nota_guia integer,
    nota_hospedaje integer,
    fue boolean NOT NULL
);


--
-- TOC entry 206 (class 1259 OID 25496)
-- Name: reservan_id_van_a_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reservan_id_van_a_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 206
-- Name: reservan_id_van_a_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reservan_id_van_a_seq OWNED BY public.reservan.id_van_a;


--
-- TOC entry 209 (class 1259 OID 25506)
-- Name: transporte; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.transporte (
    id_transporte integer NOT NULL,
    placa_transporte character varying(1024) NOT NULL,
    capacidad_transporte integer NOT NULL,
    tipo_transporte character varying(1024)
);


--
-- TOC entry 208 (class 1259 OID 25504)
-- Name: transporte_id_transporte_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.transporte_id_transporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 208
-- Name: transporte_id_transporte_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.transporte_id_transporte_seq OWNED BY public.transporte.id_transporte;


--
-- TOC entry 2911 (class 2604 OID 25579)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2912 (class 2604 OID 25589)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2910 (class 2604 OID 25571)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2913 (class 2604 OID 25597)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2914 (class 2604 OID 25607)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2915 (class 2604 OID 25615)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2901 (class 2604 OID 25455)
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- TOC entry 2918 (class 2604 OID 33646)
-- Name: destino id_destino; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.destino ALTER COLUMN id_destino SET DEFAULT nextval('public.destion_id_destino_seq'::regclass);


--
-- TOC entry 2916 (class 2604 OID 25675)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2909 (class 2604 OID 25561)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2908 (class 2604 OID 25550)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 25463)
-- Name: excursion id_excursion; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excursion ALTER COLUMN id_excursion SET DEFAULT nextval('public.excursion_id_excursion_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 25471)
-- Name: guia id_guia; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.guia ALTER COLUMN id_guia SET DEFAULT nextval('public.guia_id_guia_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 25482)
-- Name: hospedaje id_hospedaje; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hospedaje ALTER COLUMN id_hospedaje SET DEFAULT nextval('public.hospedaje_id_hospedaje_seq'::regclass);


--
-- TOC entry 2905 (class 2604 OID 25493)
-- Name: publicista id_publiciste; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publicista ALTER COLUMN id_publiciste SET DEFAULT nextval('public.publicista_id_publiciste_seq'::regclass);


--
-- TOC entry 2906 (class 2604 OID 25501)
-- Name: reservan id_van_a; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservan ALTER COLUMN id_van_a SET DEFAULT nextval('public.reservan_id_van_a_seq'::regclass);


--
-- TOC entry 2907 (class 2604 OID 25509)
-- Name: transporte id_transporte; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transporte ALTER COLUMN id_transporte SET DEFAULT nextval('public.transporte_id_transporte_seq'::regclass);


--
-- TOC entry 3140 (class 0 OID 25576)
-- Dependencies: 217
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.auth_group (id, name) VALUES (1, 'operativo');
INSERT INTO public.auth_group (id, name) VALUES (2, 'tactico');
INSERT INTO public.auth_group (id, name) VALUES (3, 'estrategico');


--
-- TOC entry 3142 (class 0 OID 25586)
-- Dependencies: 219
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3138 (class 0 OID 25568)
-- Dependencies: 215
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');


--
-- TOC entry 3144 (class 0 OID 25594)
-- Dependencies: 221
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$150000$DuYRLWt2sJtz$DLzNBMY4WWfN01zd82KkwNdquGZukBSwHZVkHtmOy4c=', '2019-11-17 18:48:16.129152-06', true, 'admin', '', '', '', true, true, '2019-11-16 05:53:47.591962-06');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (3, 'pbkdf2_sha256$150000$zWTxJaEiYmK6$owP4bCE02VaByFE81r1/V3hlJg8vGp2YpMlfExUkfjA=', '2019-11-17 19:14:37.427523-06', false, 'tactico', '', '', '', false, true, '2019-11-17 17:44:40-06');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (4, 'pbkdf2_sha256$150000$jlAzIFe4aseU$ZTKPSzS63LW4K1pG3Aiedr7Kmb7E9CjdlglMY2edKjQ=', '2019-11-17 19:16:18.815952-06', false, 'estrategico', '', '', '', false, true, '2019-11-17 17:45:12-06');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$150000$evzcZ9Jcexa7$nRYXB79roqcdM97nLE4H7PG4cjks5BWSQaFZ6l+z5pQ=', '2019-11-17 19:17:17.192731-06', false, 'operativo', '', '', '', false, true, '2019-11-17 17:44:13-06');


--
-- TOC entry 3146 (class 0 OID 25604)
-- Dependencies: 223
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (1, 2, 1);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (2, 3, 2);
INSERT INTO public.auth_user_groups (id, user_id, group_id) VALUES (3, 4, 3);


--
-- TOC entry 3148 (class 0 OID 25612)
-- Dependencies: 225
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3120 (class 0 OID 25452)
-- Dependencies: 197
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (1, 'Candace', 'Salas', '7002-4363');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (2, 'Lamar', 'Cantrell', '5948-5730');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (3, 'Debra', 'Waller', '3583-8468');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (4, 'Giselle', 'Rocha', '2832-8534');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (5, 'Jenna', 'Olson', '6517-7355');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (6, 'Dennis', 'Mccarty', '5325-7789');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (7, 'Emily', 'Chen', '3570-7230');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (8, 'Jared', 'Huffman', '4534-8463');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (9, 'Jared', 'Gould', '9734-0139');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (10, 'Yardley', 'Dalton', '1743-3990');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (11, 'Dakota', 'Christensen', '5297-3747');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (12, 'Lucius', 'Shepherd', '6134-2969');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (13, 'Gannon', 'Velazquez', '1844-7069');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (14, 'Hashim', 'Whitfield', '8610-1977');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (15, 'Damon', 'Ayala', '8410-3067');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (16, 'Ethan', 'Beard', '3994-5877');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (17, 'Kristen', 'Shields', '7998-7029');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (18, 'Tad', 'Joyner', '6679-1568');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (19, 'Robert', 'Mclaughlin', '7807-9377');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (20, 'Rhonda', 'Underwood', '2809-9400');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (21, 'Richard', 'Bentley', '2510-7369');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (22, 'Ruth', 'Lancaster', '2560-9714');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (23, 'Damon', 'Jimenez', '6198-9051');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (24, 'Nero', 'Bennett', '6756-6410');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (25, 'Joel', 'Alexander', '9834-5517');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (26, 'Caleb', 'Austin', '9498-7301');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (27, 'Beatrice', 'Ramos', '7204-9755');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (28, 'Sloane', 'Kennedy', '5232-3654');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (29, 'Rahim', 'Calderon', '6275-1778');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (30, 'Sylvester', 'Humphrey', '0744-3184');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (31, 'Tad', 'Norris', '3970-8968');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (32, 'Clark', 'Dotson', '5024-5775');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (33, 'Rhonda', 'Wilder', '3329-2992');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (34, 'Porter', 'Monroe', '2542-8114');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (35, 'Sara', 'Griffith', '6156-4241');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (36, 'Brenda', 'Kidd', '7435-3434');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (37, 'Mollie', 'Serrano', '1145-1146');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (38, 'Jenette', 'Koch', '3034-9132');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (39, 'Jared', 'Cleveland', '5681-4897');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (40, 'Rachel', 'Cook', '1264-0180');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (41, 'Tana', 'Mclaughlin', '3197-3273');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (42, 'Tarik', 'Andrews', '8861-8378');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (43, 'Levi', 'Mack', '7374-8812');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (44, 'Zane', 'Norris', '3319-8913');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (45, 'Leo', 'Livingston', '9352-6320');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (46, 'Castor', 'Gonzalez', '4155-7429');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (47, 'Fatima', 'Simmons', '2679-2502');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (48, 'Kirsten', 'Downs', '0485-2443');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (49, 'Portia', 'Roman', '3989-9779');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (50, 'Melissa', 'Lowe', '6113-5150');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (51, 'Haydon', 'Tadman', '28032195');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (52, 'Alli', 'Goligher', '28345833');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (53, 'Siward', 'Bynold', '28070884');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (54, 'Windham', 'Stapley', '20043556');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (55, 'Emelda', 'Garlic', '25758692');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (56, 'Ashlan', 'Tritten', '25278640');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (57, 'Demetrius', 'Randlesome', '24876206');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (58, 'Cass', 'Kayley', '26499885');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (59, 'Roselia', 'Wakenshaw', '24380394');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (60, 'Freddie', 'Fitter', '29997191');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (61, 'Josie', 'Kirk', '22825356');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (62, 'Danette', 'Graveson', '20549462');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (63, 'Dennet', 'Ginner', '22623226');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (64, 'Leyla', 'Peschka', '24240495');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (65, 'Dukey', 'Doohey', '25482528');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (66, 'Randolf', 'Antoniazzi', '27333585');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (67, 'Colin', 'Gruczka', '25542081');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (68, 'Peria', 'Viscovi', '27736686');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (69, 'Laney', 'Gillbe', '25034923');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (70, 'Kean', 'Gregersen', '28216855');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (71, 'Maisie', 'Dolden', '27410990');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (72, 'Daile', 'Scipsey', '23926091');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (73, 'Calida', 'Fells', '26274127');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (74, 'Nikolia', 'Ondrousek', '29657883');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (75, 'Berni', 'Kleimt', '24482250');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (76, 'William', 'Schwandermann', '20514263');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (77, 'Thane', 'Jakeman', '27553708');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (78, 'Melodee', 'Castells', '21331509');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (79, 'Rubetta', 'Meegin', '21697578');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (80, 'Lilyan', 'Turbefield', '22797475');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (81, 'Way', 'Simondson', '22681968');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (82, 'Melita', 'Bratt', '27538285');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (83, 'Karel', 'Newlyn', '29751914');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (84, 'Trish', 'Goley', '21643013');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (85, 'Crawford', 'Rorke', '28226682');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (86, 'Rosina', 'Kingsman', '22376144');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (87, 'Arni', 'Ducker', '26939754');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (88, 'Elicia', 'Metham', '27971722');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (89, 'Melloney', 'McDoual', '28626654');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (90, 'Pedro', 'Danhel', '29628878');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (91, 'Bill', 'Lumly', '26778263');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (92, 'Averil', 'Chin', '21764622');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (93, 'Jaquelyn', 'Lucks', '26518292');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (94, 'Rhetta', 'Busen', '23479805');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (95, 'Langsdon', 'Pankethman', '21920174');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (96, 'Tabbi', 'Kilalea', '29093680');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (97, 'Vivianna', 'Wankel', '29773619');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (98, 'Roshelle', 'Morad', '27671107');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (99, 'Elinor', 'Hauck', '23520172');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (100, 'Davine', 'Dreng', '21817613');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (101, 'Abba', 'Downham', '27351937');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (102, 'Frankie', 'Kettlestringe', '28267214');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (103, 'Burlie', 'Atter', '27725836');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (104, 'Amandi', 'Fassam', '26011985');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (105, 'Henrik', 'Chaston', '26876378');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (106, 'Tamma', 'McClune', '26138583');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (107, 'Tanny', 'Geekin', '26058889');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (108, 'Floyd', 'Crufts', '25277995');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (109, 'Nikki', 'Iamittii', '29757097');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (110, 'Brittani', 'Mechi', '21734362');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (111, 'Waly', 'Dundridge', '27134041');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (112, 'Jaimie', 'Varfalameev', '25250076');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (113, 'Issie', 'Orrum', '26396165');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (114, 'Tomasine', 'Lidbetter', '27050592');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (115, 'Delmer', 'Bollin', '29631652');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (116, 'Dionis', 'Jenkyn', '25124544');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (117, 'Blithe', 'Ewert', '23150249');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (118, 'Janella', 'Mantrup', '24868890');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (119, 'Hilde', 'Quince', '26178894');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (120, 'Remy', 'Beal', '27066409');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (121, 'Dom', 'Boler', '23535682');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (122, 'Addison', 'Lovel', '26433249');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (123, 'Burty', 'Burditt', '23673839');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (124, 'Benni', 'Braidman', '29939623');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (125, 'Fidel', 'Sherrell', '24146948');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (126, 'Elbertine', 'Cale', '25971423');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (127, 'Sandy', 'Inch', '20234282');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (128, 'Sergeant', 'Hellard', '23073959');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (129, 'Shermie', 'Kauble', '24710457');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (130, 'Andeee', 'Brinded', '26361645');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (131, 'Alma', 'Cattow', '29524869');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (132, 'Tailor', 'Stolberg', '20398396');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (133, 'Corella', 'Sturm', '24688584');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (134, 'Stearn', 'Thorn', '27995617');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (135, 'Terri', 'Abrehart', '27921801');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (136, 'Meridel', 'McGunley', '28476863');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (137, 'Buddy', 'Pirri', '28227485');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (138, 'Brittani', 'Greest', '23019848');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (139, 'Dusty', 'McCobb', '25963257');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (140, 'Olva', 'Lundon', '22135423');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (141, 'Pippo', 'Addekin', '21276658');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (142, 'Enriqueta', 'Simonich', '28882833');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (143, 'Jenny', 'Ollet', '24248493');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (144, 'Lavinia', 'Ambrogi', '21798719');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (145, 'Raimondo', 'Reasun', '23689689');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (146, 'Colleen', 'Handscombe', '23827441');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (147, 'Birdie', 'Pickavance', '27156225');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (148, 'Laney', 'Rapo', '26445791');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (149, 'Juieta', 'Petrovsky', '29681983');
INSERT INTO public.cliente (id_cliente, nombre_cliente, apellido_cliente, telefono_cliente) VALUES (150, 'Halli', 'Paragreen', '23992248');


--
-- TOC entry 3153 (class 0 OID 33643)
-- Dependencies: 230
-- Data for Name: destino; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (1, 'Dunstable', 'Ruinas', 'Cabañas', '2018-11-18');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (2, 'Neuville', 'Playa', 'San Salvador', '2018-11-08');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (3, 'Santa Flavia', 'Ruinas', 'San Vicente', '2018-11-03');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (4, 'Gießen', 'Montaña', 'La Union', '2018-11-05');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (5, 'Kharagpur', 'Ruinas', 'Ahuachapan', '2018-11-03');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (6, 'Pamplona', 'Playa', 'Usulutan', '2018-11-09');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (7, 'Heinsch', 'Playa', 'Ahuachapan', '2018-11-12');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (8, 'Mataró', 'Playa', 'Cuscatlan', '2018-11-20');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (9, 'Laren', 'Montaña', 'La Union', '2018-11-09');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (10, 'Patos', 'Ruinas', 'San Vicente', '2018-11-28');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (11, 'Cupar', 'Ruinas', 'La Union', '2018-11-29');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (12, 'Monte San Giovanni in Sabina', 'Valle', 'Usulutan', '2018-11-28');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (13, 'Hull', 'Montaña', 'Chalatenango', '2018-11-04');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (14, 'Brighton', 'Valle', 'La Union', '2018-11-13');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (15, 'Frasnes-lez-Gosselies', 'Ruinas', 'La Paz', '2018-11-16');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (16, 'Oswestry', 'Montaña', 'San Vicente', '2018-11-21');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (17, 'Forbach', 'Ruinas', 'La Paz', '2018-11-03');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (18, 'Lauder', 'Valle', 'La Union', '2018-11-10');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (19, 'Flamierge', 'Ruinas', 'Morazan', '2018-11-02');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (20, 'Markkleeberg', 'Ruinas', 'Ahuachapan', '2018-11-08');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (22, 'Mi destino de Prueba', 'Montaña', 'Ahuachapan', '2019-11-17');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (23, 'Mi segunda prueba', 'Montaña', 'Ahuachapan', '2019-11-17');
INSERT INTO public.destino (id_destino, nombre_destino, tipo_destino, departamento_destino, fecha_registro_destino) VALUES (24, 'Mi tercera prueba', 'Montaña', 'Ahuachapan', '2019-11-17');


--
-- TOC entry 3150 (class 0 OID 25672)
-- Dependencies: 227
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2019-11-17 17:42:59.567333-06', '1', 'operativo', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2019-11-17 17:43:06.221893-06', '2', 'tactico', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2019-11-17 17:43:12.563319-06', '3', 'estrategico', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2019-11-17 17:44:13.395812-06', '2', 'operativo', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2019-11-17 17:44:26.996712-06', '2', 'operativo', 2, '[{"changed": {"fields": ["groups"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2019-11-17 17:44:40.643454-06', '3', 'tactico', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2019-11-17 17:44:58.065941-06', '3', 'tactico', 2, '[{"changed": {"fields": ["groups"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2019-11-17 17:45:12.355528-06', '4', 'estrategico', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2019-11-17 17:45:21.903918-06', '4', 'estrategico', 2, '[{"changed": {"fields": ["groups"]}}]', 4, 1);


--
-- TOC entry 3136 (class 0 OID 25558)
-- Dependencies: 213
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'viajes', 'transporte');


--
-- TOC entry 3134 (class 0 OID 25547)
-- Dependencies: 211
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2019-11-16 05:33:09.756379-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2019-11-16 05:33:10.309877-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2019-11-16 05:33:10.983863-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-11-16 05:33:11.154079-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-11-16 05:33:11.195482-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-11-16 05:33:11.304625-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-11-16 05:33:11.362461-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-11-16 05:33:11.412659-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-11-16 05:33:11.446523-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-11-16 05:33:11.484446-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-11-16 05:33:11.503041-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-11-16 05:33:11.536635-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-11-16 05:33:11.629352-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-11-16 05:33:11.673876-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2019-11-16 05:33:11.719056-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2019-11-16 05:33:11.762243-06');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'sessions', '0001_initial', '2019-11-16 05:33:11.861667-06');


--
-- TOC entry 3151 (class 0 OID 25703)
-- Dependencies: 228
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('bysecgxra0q64igdmgqd9yxpq2dnc5g3', 'MTlkMjVmM2M1OGJjMDU4ZTJlOThjOWNkZjQ1NTFmODg0ZTcxNDUxNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NjNlNDBmYzVlMTdkZGFkNDhjYmY2YzNiZTJhZmQ3YTVhMjRkNjMxIn0=', '2019-11-30 05:56:31.611429-06');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('h8msw4nb5r8td3mora9qs7rlg38yyfyc', 'ODk4NzgxMTNkNjFhMzFmM2E0NmMyMTNjMGQ1ZjQxOTI5N2I3OWE4MDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MTcwMmE5YmQ2YjkxMWFjNjUwMjlkOWUzZDM1NzJhMWMwZTk5OTgxIiwiYmFzZSI6ImJhc2UvYmFzZV9vcGVyYXRpdmEuaHRtbCJ9', '2019-12-01 19:17:23.694697-06');


--
-- TOC entry 3122 (class 0 OID 25460)
-- Dependencies: 199
-- Data for Name: excursion; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (1, 1, 3, 16, 5, '2018-11-16', '2018-11-23', 46.49, 11);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (2, 1, 4, 11, 1, '2018-11-17', '2018-11-24', 23.65, 9);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (3, 4, 4, 13, 6, '2018-11-19', '2018-11-22', 15.19, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (4, 8, 2, 14, 9, '2018-11-19', '2018-11-27', 41.25, 12);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (5, 9, 4, 14, 6, '2018-11-20', '2018-11-27', 35.42, 12);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (6, 3, 1, 11, 1, '2018-11-18', '2018-11-27', 69.58, 17);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (7, 1, 3, 11, 9, '2018-11-19', '2018-11-26', 99.18, 20);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (8, 10, 5, 8, 6, '2018-11-20', '2018-11-25', 83.53, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (9, 3, 6, 14, 3, '2018-11-18', '2018-11-24', 93.57, 13);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (10, 3, 10, 8, 2, '2018-11-17', '2018-11-26', 97.06, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (11, 8, 8, 8, 10, '2018-11-19', '2018-11-22', 9.77, 13);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (12, 4, 10, 11, 7, '2018-11-19', '2018-11-23', 31.95, 15);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (13, 3, 3, 17, 10, '2018-11-20', '2018-11-21', 29.66, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (14, 3, 9, 12, 4, '2018-11-18', '2018-11-24', 97.29, 14);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (15, 5, 1, 17, 3, '2018-11-17', '2018-11-23', 59.33, 16);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (16, 8, 7, 16, 8, '2018-11-16', '2018-11-23', 74.75, 19);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (17, 9, 6, 10, 2, '2018-11-16', '2018-11-25', 50.03, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (18, 10, 2, 8, 10, '2018-11-20', '2018-11-25', 86.51, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (19, 9, 9, 13, 8, '2018-11-19', '2018-11-21', 27.66, 17);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (20, 10, 10, 10, 1, '2018-11-20', '2018-11-27', 4.54, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (21, 2, 4, 13, 5, '2017-12-31', '2019-10-24', 22.41, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (22, 2, 10, 17, 7, '2019-04-01', '2019-10-23', 35.77, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (23, 6, 10, 8, 10, '2018-04-17', '2018-01-14', 21.35, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (24, 8, 8, 9, 6, '2019-08-24', '2019-09-25', 48.29, 10);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (25, 5, 10, 8, 4, '2019-09-29', '2018-04-24', 34.56, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (26, 1, 2, 12, 6, '2019-03-23', '2018-08-10', 17.97, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (27, 7, 7, 8, 5, '2019-02-07', '2018-01-07', 46.61, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (28, 3, 10, 14, 6, '2018-03-19', '2018-12-17', 36.30, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (29, 5, 9, 12, 2, '2018-04-07', '2017-12-13', 25.51, 10);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (30, 7, 7, 17, 3, '2019-07-23', '2019-04-15', 43.39, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (31, 10, 4, 13, 9, '2019-07-20', '2018-07-19', 27.54, 9);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (32, 3, 7, 12, 5, '2019-10-17', '2019-06-09', 43.19, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (33, 3, 10, 12, 2, '2019-10-11', '2018-02-15', 55.66, 9);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (34, 3, 4, 13, 10, '2018-02-06', '2019-07-22', 30.04, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (35, 9, 3, 12, 7, '2019-07-29', '2019-04-17', 45.07, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (36, 6, 9, 10, 9, '2018-05-10', '2019-06-27', 57.26, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (37, 7, 5, 9, 1, '2019-11-06', '2019-02-16', 27.43, 4);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (38, 5, 8, 11, 1, '2018-02-21', '2019-01-12', 40.42, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (39, 2, 8, 13, 5, '2019-08-31', '2019-07-28', 55.09, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (40, 10, 6, 8, 1, '2019-01-18', '2018-12-19', 46.95, 10);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (41, 2, 7, 12, 5, '2018-10-30', '2019-07-01', 12.36, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (42, 2, 4, 11, 8, '2019-04-03', '2018-09-07', 15.53, 4);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (43, 10, 5, 13, 6, '2018-05-17', '2018-03-07', 26.85, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (44, 3, 7, 17, 9, '2019-09-23', '2018-08-25', 10.91, 4);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (45, 2, 4, 16, 10, '2018-01-03', '2018-10-09', 51.07, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (46, 3, 2, 8, 7, '2019-09-04', '2017-12-22', 58.86, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (47, 10, 2, 11, 6, '2019-10-31', '2018-01-18', 56.64, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (48, 9, 3, 11, 1, '2018-01-04', '2019-02-28', 13.39, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (49, 5, 10, 16, 2, '2018-10-29', '2018-10-21', 33.54, 10);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (50, 5, 4, 17, 2, '2019-04-21', '2019-10-02', 33.44, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (51, 2, 3, 16, 4, '2018-05-25', '2018-11-12', 26.06, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (52, 1, 4, 10, 5, '2018-03-04', '2019-04-08', 11.18, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (53, 7, 8, 9, 10, '2019-09-03', '2018-03-20', 27.65, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (54, 9, 5, 9, 3, '2018-05-20', '2019-01-06', 50.95, 10);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (55, 1, 2, 12, 4, '2018-04-15', '2017-11-30', 14.37, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (56, 6, 4, 13, 6, '2018-04-28', '2018-07-11', 26.68, 10);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (57, 4, 4, 9, 8, '2019-07-16', '2019-03-31', 42.35, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (58, 7, 5, 12, 3, '2019-05-28', '2018-11-02', 43.08, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (59, 2, 4, 10, 5, '2018-04-20', '2017-11-18', 52.87, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (60, 7, 9, 15, 8, '2019-06-17', '2019-02-12', 51.03, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (61, 4, 7, 16, 1, '2019-03-02', '2019-09-03', 23.12, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (62, 1, 1, 16, 3, '2018-04-28', '2018-11-16', 41.77, 10);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (63, 4, 1, 17, 3, '2018-09-08', '2019-05-04', 48.40, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (64, 5, 2, 16, 5, '2019-08-19', '2018-12-10', 20.26, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (65, 5, 4, 14, 2, '2019-02-16', '2018-11-29', 56.04, 4);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (66, 7, 8, 16, 8, '2019-06-16', '2019-08-21', 47.19, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (67, 10, 3, 9, 9, '2018-05-14', '2019-07-03', 49.28, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (68, 3, 3, 14, 8, '2018-01-23', '2018-10-22', 32.43, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (69, 7, 10, 15, 4, '2018-09-12', '2019-10-22', 47.35, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (70, 4, 1, 9, 2, '2018-04-23', '2019-05-11', 27.53, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (71, 7, 7, 8, 10, '2019-06-06', '2018-03-11', 15.58, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (72, 10, 10, 15, 8, '2018-07-23', '2018-07-22', 29.20, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (73, 9, 2, 16, 3, '2019-01-07', '2019-02-03', 12.25, 10);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (74, 6, 3, 16, 1, '2019-04-20', '2018-08-18', 57.63, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (75, 1, 10, 17, 2, '2019-10-30', '2019-03-13', 34.54, 9);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (76, 4, 3, 10, 3, '2018-12-18', '2019-06-24', 54.70, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (77, 6, 8, 9, 3, '2018-08-29', '2018-08-27', 27.03, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (78, 3, 10, 10, 2, '2019-05-17', '2018-11-01', 12.35, 4);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (79, 5, 5, 8, 2, '2018-10-26', '2018-01-20', 40.46, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (80, 5, 3, 17, 8, '2018-11-07', '2019-01-07', 49.62, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (81, 5, 9, 9, 6, '2018-09-14', '2018-08-11', 30.74, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (82, 10, 4, 10, 9, '2018-11-04', '2018-01-07', 34.52, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (83, 9, 6, 11, 5, '2019-03-11', '2018-05-08', 26.56, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (84, 10, 6, 13, 7, '2019-05-25', '2019-10-18', 49.26, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (85, 9, 3, 16, 10, '2019-02-18', '2018-06-30', 41.70, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (86, 5, 3, 17, 7, '2018-04-15', '2018-11-15', 30.22, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (87, 4, 7, 16, 4, '2018-09-15', '2018-09-14', 35.52, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (88, 1, 4, 14, 5, '2018-09-26', '2018-09-14', 37.66, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (89, 10, 8, 9, 1, '2019-07-23', '2018-12-10', 47.67, 9);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (90, 10, 4, 12, 4, '2019-10-24', '2019-08-02', 21.67, 9);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (91, 4, 3, 13, 3, '2018-09-19', '2019-10-16', 20.70, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (92, 2, 5, 9, 4, '2018-11-16', '2017-12-19', 28.22, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (93, 3, 6, 9, 4, '2018-03-03', '2018-02-07', 43.10, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (94, 9, 2, 12, 7, '2018-10-22', '2019-04-10', 43.63, 9);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (95, 5, 4, 15, 10, '2019-09-16', '2019-04-24', 45.37, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (96, 6, 3, 11, 9, '2018-04-01', '2018-06-04', 34.15, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (97, 1, 4, 14, 7, '2019-06-10', '2019-10-16', 15.09, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (98, 5, 6, 17, 8, '2018-10-15', '2018-10-12', 33.72, 7);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (99, 10, 8, 9, 5, '2019-10-31', '2018-12-24', 16.60, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (100, 1, 7, 11, 3, '2018-03-01', '2019-06-07', 25.90, 4);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (101, 10, 10, 16, 2, '2019-08-11', '2019-04-21', 39.67, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (102, 2, 2, 16, 1, '2019-06-28', '2019-04-16', 50.07, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (103, 4, 10, 13, 3, '2018-11-15', '2019-02-10', 56.30, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (104, 4, 4, 9, 8, '2018-07-08', '2019-02-12', 53.77, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (105, 1, 9, 16, 4, '2019-06-23', '2018-02-17', 54.54, 9);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (106, 10, 8, 14, 4, '2018-11-25', '2018-05-15', 26.82, 4);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (107, 2, 7, 9, 7, '2018-02-18', '2018-05-27', 49.15, 10);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (108, 5, 3, 14, 1, '2019-09-26', '2018-11-01', 38.17, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (109, 9, 4, 16, 3, '2019-04-06', '2019-04-11', 27.46, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (110, 3, 2, 17, 7, '2018-01-08', '2018-05-19', 43.65, 9);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (111, 3, 8, 13, 9, '2017-12-18', '2018-07-15', 53.84, 5);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (112, 3, 9, 10, 9, '2018-05-18', '2019-03-23', 39.01, 1);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (113, 7, 8, 14, 1, '2019-06-11', '2018-07-04', 56.50, 4);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (114, 2, 8, 14, 7, '2018-03-14', '2018-10-11', 54.49, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (115, 3, 4, 10, 5, '2018-06-28', '2018-10-20', 13.46, 4);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (116, 7, 2, 13, 6, '2018-06-13', '2018-04-10', 42.88, 3);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (117, 8, 5, 8, 8, '2018-06-14', '2017-12-30', 55.46, 6);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (118, 3, 4, 9, 2, '2018-07-16', '2017-12-13', 10.75, 8);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (119, 10, 10, 9, 2, '2018-09-18', '2018-07-24', 36.29, 2);
INSERT INTO public.excursion (id_excursion, id_hospedaje, id_publiciste, id_transporte, id_guia, fecha_inicio_excursion, fecha_fin_excursion, precio_excursion, id_destino) VALUES (120, 10, 5, 15, 6, '2018-08-07', '2018-05-28', 15.06, 5);


--
-- TOC entry 3124 (class 0 OID 25468)
-- Dependencies: 201
-- Data for Name: guia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (1, 'Dai', 'Maxwell');
INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (2, 'Sarah', 'Benson');
INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (3, 'Kirk', 'Santos');
INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (4, 'Jack', 'Valdez');
INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (5, 'Bradley', 'Guerrero');
INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (6, 'Bertha', 'Robertson');
INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (7, 'Hiroko', 'Garrett');
INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (8, 'Shannon', 'Preston');
INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (9, 'Rashad', 'Gibson');
INSERT INTO public.guia (id_guia, nombre_guia, apellido_guia) VALUES (10, 'Shelby', 'Obrien');


--
-- TOC entry 3126 (class 0 OID 25479)
-- Dependencies: 203
-- Data for Name: hospedaje; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (1, 'semper erat, in', '850-8572 Ligula Av.', '9749-2450', 2, 'San Miguel');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (2, 'diam vel arcu.', '5291 Integer Street', '2205-3648', 2, 'San Salvador');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (3, 'Cras interdum. Nunc', '296-1502 Lacus. Avenue', '2384-7747', 3, 'Chalatenango');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (4, 'quis, pede. Praesent', '4940 Ipsum Ave', '1404-9768', 2, 'Chalatenango');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (5, 'montes, nascetur ridiculus', '3538 Montes, Rd.', '3443-1934', 2, 'Ahuachapan');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (6, 'mus. Proin vel', '7319 A Ave', '1137-8904', 3, 'Chalatenango');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (7, 'viverra. Maecenas iaculis', 'P.O. Box 124, 1230 Tincidunt, Rd.', '2506-6517', 5, 'Chalatenango');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (8, 'rutrum, justo. Praesent', '518-578 Suspendisse St.', '8351-9684', 5, 'San Miguel');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (9, 'venenatis lacus. Etiam', 'Ap #108-5310 Et St.', '6560-1576', 2, 'Chalatenango');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (10, 'Sed pharetra, felis', '1724 Faucibus Av.', '2275-1543', 5, 'Ahuachapan');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (11, 'Registro de Prueba', 'Direccion de Prueba', '2222-222', 4, 'Chalatenango');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (12, 'asdasd', 'asdasd', '1234-2222', 1, 'Chalatenango');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (13, 'Hospedaje rapido', 'Col. tal, calle 23, Av 5,', '2233-1211', 5, 'Morazan');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (46, 'Hospedaje rapido', 'Col. tal, pje 5,', '1234-2222', 4, 'Morazan');
INSERT INTO public.hospedaje (id_hospedaje, nombre_hospedaje, direccion_hospedaje, telefono_hospedaje, estrellas_hospedaje, departamento_hospedaje) VALUES (47, 'asdasd', 'asdasd', '2525-2525', 2, 'Morazan');


--
-- TOC entry 3128 (class 0 OID 25490)
-- Dependencies: 205
-- Data for Name: publicista; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (1, 'Cleo', 'Bean');
INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (2, 'Hoyt', 'Joseph');
INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (3, 'Leandra', 'Diaz');
INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (4, 'Rigel', 'Witt');
INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (5, 'Prescott', 'Santiago');
INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (6, 'Hyatt', 'Ashley');
INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (7, 'Meghan', 'Shields');
INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (8, 'Jordan', 'Dale');
INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (9, 'Merrill', 'Aguilar');
INSERT INTO public.publicista (id_publiciste, nombre_publiciste, apellido_publiciste) VALUES (10, 'Lucian', 'Vaughan');


--
-- TOC entry 3130 (class 0 OID 25498)
-- Dependencies: 207
-- Data for Name: reservan; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (1, 14, 22, 3, 9, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (2, 14, 42, 4, 2, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (3, 19, 16, 9, 4, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (4, 20, 41, 10, 9, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (5, 3, 29, 1, 8, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (6, 16, 18, 2, 10, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (7, 11, 2, 8, 3, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (8, 12, 35, 4, 9, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (9, 10, 46, 10, 10, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (10, 16, 30, 6, 9, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (11, 11, 12, 2, 9, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (12, 6, 44, 3, 9, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (13, 8, 25, 2, 2, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (14, 6, 37, 1, 9, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (15, 14, 3, 3, 6, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (16, 8, 36, 10, 4, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (17, 14, 27, 6, 1, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (18, 18, 49, 5, 3, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (19, 1, 13, 6, 2, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (20, 9, 10, 2, 5, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (21, 9, 2, 10, 7, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (22, 78, 24, 6, 6, 7, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (23, 24, 4, 5, 1, 3, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (24, 115, 7, 9, 3, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (25, 102, 18, 8, 10, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (26, 83, 3, 8, 3, 9, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (27, 40, 2, 5, 8, 9, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (28, 96, 18, 8, 4, 3, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (29, 60, 27, 8, 7, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (30, 19, 1, 7, 10, 5, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (31, 105, 10, 8, 8, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (32, 27, 20, 1, 6, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (33, 59, 29, 1, 9, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (34, 15, 9, 6, 1, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (35, 2, 1, 5, 2, 10, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (36, 13, 1, 9, 8, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (37, 19, 5, 3, 3, 5, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (38, 29, 22, 10, 2, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (39, 24, 7, 6, 10, 3, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (40, 70, 15, 3, 4, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (41, 58, 24, 9, 3, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (42, 110, 10, 6, 8, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (43, 47, 1, 1, 6, 4, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (44, 12, 16, 5, 10, 6, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (45, 88, 15, 2, 3, 10, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (46, 103, 15, 10, 6, 8, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (47, 83, 29, 8, 5, 10, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (48, 61, 12, 4, 1, 5, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (49, 87, 24, 4, 7, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (50, 18, 28, 6, 1, 9, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (51, 118, 3, 4, 6, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (52, 55, 27, 7, 10, 1, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (53, 69, 10, 8, 7, 9, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (54, 27, 1, 3, 10, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (55, 25, 2, 4, 3, 9, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (56, 90, 13, 8, 1, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (57, 60, 18, 5, 2, 1, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (58, 1, 11, 4, 5, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (59, 23, 5, 4, 9, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (60, 41, 3, 10, 7, 10, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (61, 3, 3, 7, 2, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (62, 7, 28, 3, 9, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (63, 83, 24, 2, 1, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (64, 99, 23, 4, 8, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (65, 27, 2, 9, 1, 9, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (66, 9, 12, 5, 8, 4, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (67, 58, 8, 1, 8, 10, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (68, 85, 22, 8, 4, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (69, 59, 20, 6, 8, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (70, 63, 10, 9, 7, 2, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (71, 83, 29, 2, 8, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (72, 79, 26, 7, 7, 1, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (73, 118, 22, 1, 4, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (74, 42, 19, 1, 2, 4, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (75, 100, 8, 9, 3, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (76, 109, 25, 6, 1, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (77, 114, 21, 2, 2, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (78, 2, 19, 6, 9, 1, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (79, 25, 22, 10, 7, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (80, 86, 13, 6, 8, 3, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (81, 25, 7, 4, 2, 1, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (82, 83, 25, 5, 9, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (83, 61, 27, 7, 5, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (84, 61, 26, 6, 1, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (85, 84, 3, 2, 3, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (86, 88, 25, 9, 7, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (87, 66, 3, 4, 8, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (88, 31, 21, 4, 6, 3, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (89, 36, 20, 1, 8, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (90, 95, 22, 5, 2, 10, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (91, 101, 2, 3, 5, 7, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (92, 98, 1, 9, 3, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (93, 33, 27, 7, 10, 3, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (94, 76, 2, 8, 2, 6, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (95, 29, 7, 3, 8, 3, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (96, 55, 22, 8, 10, 10, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (97, 69, 25, 1, 9, 6, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (98, 87, 15, 1, 3, 6, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (99, 47, 24, 1, 7, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (100, 51, 29, 6, 1, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (101, 53, 30, 6, 5, 4, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (102, 118, 13, 6, 5, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (103, 107, 20, 5, 10, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (104, 81, 6, 5, 9, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (105, 14, 12, 7, 10, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (106, 56, 29, 3, 7, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (107, 76, 15, 8, 6, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (108, 21, 2, 9, 9, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (109, 101, 2, 7, 5, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (110, 1, 28, 5, 4, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (111, 98, 1, 2, 3, 9, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (112, 47, 8, 8, 6, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (113, 71, 5, 3, 2, 3, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (114, 4, 9, 1, 8, 8, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (115, 71, 21, 1, 4, 2, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (116, 83, 24, 9, 8, 5, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (117, 35, 4, 8, 1, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (118, 67, 19, 4, 5, 8, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (119, 46, 1, 7, 4, 2, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (120, 114, 13, 2, 4, 2, false);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (121, 57, 26, 1, 1, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (122, 89, 21, 6, 5, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (123, 16, 12, 9, 4, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (124, 41, 22, 7, 5, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (125, 101, 20, 3, 5, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (126, 109, 30, 2, 7, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (127, 1, 19, 8, 9, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (128, 15, 14, 3, 9, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (129, 83, 28, 1, 7, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (130, 53, 8, 1, 3, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (131, 105, 15, 5, 2, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (132, 26, 5, 3, 4, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (133, 24, 21, 10, 8, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (134, 70, 9, 2, 3, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (135, 4, 30, 8, 6, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (136, 52, 28, 10, 6, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (137, 56, 17, 6, 5, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (138, 16, 11, 7, 9, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (139, 63, 29, 4, 3, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (140, 15, 17, 4, 8, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (141, 92, 2, 2, 1, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (142, 66, 19, 8, 4, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (143, 15, 20, 8, 6, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (144, 19, 17, 8, 5, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (145, 13, 21, 4, 3, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (146, 63, 26, 2, 4, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (147, 75, 4, 8, 7, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (148, 20, 15, 6, 1, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (149, 87, 4, 10, 3, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (150, 32, 4, 9, 8, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (151, 42, 26, 5, 9, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (152, 73, 28, 3, 2, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (153, 1, 4, 7, 1, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (154, 56, 17, 4, 9, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (155, 57, 18, 1, 6, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (156, 24, 5, 3, 10, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (157, 85, 26, 5, 8, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (158, 19, 6, 9, 10, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (159, 12, 22, 6, 4, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (160, 14, 27, 2, 8, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (161, 33, 16, 3, 5, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (162, 117, 27, 6, 8, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (163, 71, 24, 1, 8, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (164, 112, 30, 4, 7, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (165, 44, 1, 3, 8, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (166, 21, 9, 5, 6, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (167, 68, 26, 3, 4, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (168, 5, 6, 3, 2, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (169, 8, 29, 3, 1, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (170, 57, 13, 7, 1, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (171, 16, 24, 2, 5, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (172, 51, 21, 5, 4, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (173, 106, 10, 2, 9, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (174, 101, 22, 9, 6, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (175, 59, 1, 3, 6, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (176, 4, 20, 3, 3, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (177, 74, 11, 3, 10, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (178, 26, 3, 1, 2, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (179, 45, 5, 8, 3, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (180, 57, 26, 7, 6, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (181, 78, 27, 9, 8, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (182, 83, 29, 9, 3, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (183, 90, 6, 9, 5, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (184, 82, 18, 1, 3, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (185, 56, 4, 6, 9, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (186, 99, 13, 6, 5, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (187, 60, 22, 7, 5, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (188, 110, 13, 7, 4, 4, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (189, 78, 6, 3, 1, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (190, 67, 13, 8, 4, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (191, 71, 9, 10, 3, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (192, 62, 2, 8, 2, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (193, 26, 14, 3, 1, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (194, 50, 19, 4, 3, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (195, 69, 13, 4, 8, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (196, 107, 20, 2, 2, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (197, 3, 6, 10, 2, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (198, 112, 17, 10, 9, 5, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (199, 87, 3, 8, 1, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (200, 49, 23, 3, 8, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (201, 35, 20, 2, 9, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (202, 116, 17, 8, 9, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (203, 52, 25, 9, 5, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (204, 40, 28, 6, 3, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (205, 97, 25, 3, 3, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (206, 12, 4, 10, 4, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (207, 53, 24, 6, 3, 1, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (208, 83, 3, 9, 9, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (209, 44, 12, 9, 4, 6, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (210, 76, 20, 4, 10, 3, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (211, 103, 3, 9, 9, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (212, 103, 23, 2, 6, 2, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (213, 12, 24, 10, 4, 9, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (214, 15, 29, 10, 1, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (215, 36, 20, 9, 2, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (216, 20, 20, 2, 10, 10, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (217, 62, 6, 6, 9, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (218, 32, 17, 10, 7, 7, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (219, 94, 5, 9, 2, 8, true);
INSERT INTO public.reservan (id_van_a, id_excursion, id_cliente, nota_publiciste, nota_guia, nota_hospedaje, fue) VALUES (220, 91, 6, 6, 9, 10, true);


--
-- TOC entry 3132 (class 0 OID 25506)
-- Dependencies: 209
-- Data for Name: transporte; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (8, 'U7J 0Z2', 13, 'Bus');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (9, 'C5O 8A9', 20, 'Otro');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (10, 'C7E 1J5', 4, 'Otro');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (11, 'H7V 0D1', 19, 'Camioneta');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (12, 'L6T 0R8', 33, 'Bus');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (13, 'A6W 0X4', 35, 'Camioneta');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (14, 'B1J 5K9', 15, 'Otro');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (15, 'D4V 4D4', 42, 'Sedan');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (16, 'S0R 3L7', 30, 'Sedan');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (17, 'R0A 5R2', 48, 'Camioneta');
INSERT INTO public.transporte (id_transporte, placa_transporte, capacidad_transporte, tipo_transporte) VALUES (18, 'Vehiculo Prueba', 5, 'Pick up');


--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);


--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);


--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 222
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 224
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 196
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 150, true);


--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 229
-- Name: destion_id_destino_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.destion_id_destino_seq', 24, true);


--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 226
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 9, true);


--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);


--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 210
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 17, true);


--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 198
-- Name: excursion_id_excursion_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.excursion_id_excursion_seq', 120, true);


--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 200
-- Name: guia_id_guia_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.guia_id_guia_seq', 10, true);


--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 202
-- Name: hospedaje_id_hospedaje_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.hospedaje_id_hospedaje_seq', 47, true);


--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 204
-- Name: publicista_id_publiciste_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.publicista_id_publiciste_seq', 10, true);


--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 206
-- Name: reservan_id_van_a_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reservan_id_van_a_seq', 220, true);


--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 208
-- Name: transporte_id_transporte_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.transporte_id_transporte_seq', 18, true);


--
-- TOC entry 2946 (class 2606 OID 25701)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2951 (class 2606 OID 25638)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2954 (class 2606 OID 25591)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2948 (class 2606 OID 25581)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2941 (class 2606 OID 25624)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2943 (class 2606 OID 25573)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2962 (class 2606 OID 25609)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2965 (class 2606 OID 25653)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2956 (class 2606 OID 25599)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2968 (class 2606 OID 25617)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2971 (class 2606 OID 25667)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2959 (class 2606 OID 25695)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2981 (class 2606 OID 33648)
-- Name: destino destion_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.destino
    ADD CONSTRAINT destion_pkey PRIMARY KEY (id_destino);


--
-- TOC entry 2974 (class 2606 OID 25681)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2936 (class 2606 OID 25565)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2938 (class 2606 OID 25563)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2934 (class 2606 OID 25555)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2978 (class 2606 OID 25710)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2920 (class 2606 OID 25457)
-- Name: cliente pk_cliente; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente);


--
-- TOC entry 2922 (class 2606 OID 25465)
-- Name: excursion pk_excursion; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excursion
    ADD CONSTRAINT pk_excursion PRIMARY KEY (id_excursion);


--
-- TOC entry 2924 (class 2606 OID 25476)
-- Name: guia pk_guia; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.guia
    ADD CONSTRAINT pk_guia PRIMARY KEY (id_guia);


--
-- TOC entry 2926 (class 2606 OID 25487)
-- Name: hospedaje pk_hospedaje; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.hospedaje
    ADD CONSTRAINT pk_hospedaje PRIMARY KEY (id_hospedaje);


--
-- TOC entry 2928 (class 2606 OID 25495)
-- Name: publicista pk_publicista; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publicista
    ADD CONSTRAINT pk_publicista PRIMARY KEY (id_publiciste);


--
-- TOC entry 2930 (class 2606 OID 25503)
-- Name: reservan pk_reservan; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservan
    ADD CONSTRAINT pk_reservan PRIMARY KEY (id_van_a);


--
-- TOC entry 2932 (class 2606 OID 25514)
-- Name: transporte pk_transporte; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.transporte
    ADD CONSTRAINT pk_transporte PRIMARY KEY (id_transporte);


--
-- TOC entry 2944 (class 1259 OID 25702)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2949 (class 1259 OID 25639)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2952 (class 1259 OID 25640)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2939 (class 1259 OID 25625)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2960 (class 1259 OID 25655)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2963 (class 1259 OID 25654)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2966 (class 1259 OID 25669)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2969 (class 1259 OID 25668)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2957 (class 1259 OID 25696)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2972 (class 1259 OID 25692)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2975 (class 1259 OID 25693)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2976 (class 1259 OID 25712)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2979 (class 1259 OID 25711)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2991 (class 2606 OID 25632)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2990 (class 2606 OID 25627)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2989 (class 2606 OID 25618)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2993 (class 2606 OID 25647)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2992 (class 2606 OID 25642)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2995 (class 2606 OID 25661)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2994 (class 2606 OID 25656)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2996 (class 2606 OID 25682)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2997 (class 2606 OID 25687)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2982 (class 2606 OID 25515)
-- Name: excursion fk_excursio_acompania_guia; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excursion
    ADD CONSTRAINT fk_excursio_acompania_guia FOREIGN KEY (id_guia) REFERENCES public.guia(id_guia) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2983 (class 2606 OID 25520)
-- Name: excursion fk_excursio_hospeda_hospedaj; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excursion
    ADD CONSTRAINT fk_excursio_hospeda_hospedaj FOREIGN KEY (id_hospedaje) REFERENCES public.hospedaje(id_hospedaje) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2984 (class 2606 OID 25525)
-- Name: excursion fk_excursio_lleva_transpor; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excursion
    ADD CONSTRAINT fk_excursio_lleva_transpor FOREIGN KEY (id_transporte) REFERENCES public.transporte(id_transporte) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2985 (class 2606 OID 25530)
-- Name: excursion fk_excursio_promocion_publicis; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excursion
    ADD CONSTRAINT fk_excursio_promocion_publicis FOREIGN KEY (id_publiciste) REFERENCES public.publicista(id_publiciste) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2986 (class 2606 OID 33649)
-- Name: excursion fk_excursion_va_destino; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.excursion
    ADD CONSTRAINT fk_excursion_va_destino FOREIGN KEY (id_destino) REFERENCES public.destino(id_destino) ON DELETE RESTRICT NOT VALID;


--
-- TOC entry 2988 (class 2606 OID 25540)
-- Name: reservan fk_reservan_relations_cliente; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservan
    ADD CONSTRAINT fk_reservan_relations_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2987 (class 2606 OID 25535)
-- Name: reservan fk_reservan_relations_excursio; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reservan
    ADD CONSTRAINT fk_reservan_relations_excursio FOREIGN KEY (id_excursion) REFERENCES public.excursion(id_excursion) ON UPDATE RESTRICT ON DELETE RESTRICT;


-- Completed on 2019-11-17 19:19:32 CST

--
-- PostgreSQL database dump complete
--

