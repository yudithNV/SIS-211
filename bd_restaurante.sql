--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

-- Started on 2025-12-10 05:26:13

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
-- TOC entry 230 (class 1259 OID 58620)
-- Name: acompanamientos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.acompanamientos (
    id_acompanamiento integer NOT NULL,
    nombre character varying(50) NOT NULL,
    id_hamburguesa integer NOT NULL
);


ALTER TABLE public.acompanamientos OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 58619)
-- Name: acompanamientos_id_acompanamiento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.acompanamientos_id_acompanamiento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.acompanamientos_id_acompanamiento_seq OWNER TO postgres;

--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 229
-- Name: acompanamientos_id_acompanamiento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.acompanamientos_id_acompanamiento_seq OWNED BY public.acompanamientos.id_acompanamiento;


--
-- TOC entry 224 (class 1259 OID 58589)
-- Name: alimentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alimentos (
    id_alimento integer NOT NULL,
    f_vencimiento date NOT NULL,
    id_inventario integer NOT NULL
);


ALTER TABLE public.alimentos OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 58588)
-- Name: alimentos_id_alimento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alimentos_id_alimento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alimentos_id_alimento_seq OWNER TO postgres;

--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 223
-- Name: alimentos_id_alimento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alimentos_id_alimento_seq OWNED BY public.alimentos.id_alimento;


--
-- TOC entry 218 (class 1259 OID 58554)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    ci integer NOT NULL,
    id_persona integer NOT NULL
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 58553)
-- Name: clientes_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_id_cliente_seq OWNER TO postgres;

--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 217
-- Name: clientes_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;


--
-- TOC entry 226 (class 1259 OID 58601)
-- Name: consumible; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consumible (
    id_consumible integer NOT NULL,
    tipo character varying(50) NOT NULL,
    id_inventario integer NOT NULL
);


ALTER TABLE public.consumible OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 58600)
-- Name: consumible_id_consumible_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.consumible_id_consumible_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.consumible_id_consumible_seq OWNER TO postgres;

--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 225
-- Name: consumible_id_consumible_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.consumible_id_consumible_seq OWNED BY public.consumible.id_consumible;


--
-- TOC entry 252 (class 1259 OID 58773)
-- Name: detalle_pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detalle_pedidos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    precio numeric(10,2) NOT NULL,
    cantidad integer NOT NULL,
    comentario text,
    id_pedido integer NOT NULL
);


ALTER TABLE public.detalle_pedidos OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 58772)
-- Name: detalle_pedidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detalle_pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detalle_pedidos_id_seq OWNER TO postgres;

--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 251
-- Name: detalle_pedidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detalle_pedidos_id_seq OWNED BY public.detalle_pedidos.id;


--
-- TOC entry 220 (class 1259 OID 58568)
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    rol character varying(50) NOT NULL,
    identificacion character varying(15) NOT NULL,
    h_ingreso time without time zone NOT NULL,
    h_salida time without time zone NOT NULL,
    id_persona integer NOT NULL
);


ALTER TABLE public.empleados OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 58567)
-- Name: empleados_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleados_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleados_id_empleado_seq OWNER TO postgres;

--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 219
-- Name: empleados_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleados_id_empleado_seq OWNED BY public.empleados.id_empleado;


--
-- TOC entry 254 (class 1259 OID 58787)
-- Name: facturas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facturas (
    id integer NOT NULL,
    f_emision character varying(50),
    monto_total numeric(10,2) NOT NULL,
    id_pedido integer,
    id_itempedido integer
);


ALTER TABLE public.facturas OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 58786)
-- Name: facturas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facturas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.facturas_id_seq OWNER TO postgres;

--
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 253
-- Name: facturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facturas_id_seq OWNED BY public.facturas.id;


--
-- TOC entry 232 (class 1259 OID 58627)
-- Name: hamburguesas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hamburguesas (
    id_hamburguesa integer NOT NULL,
    termino_coccion character varying(50) NOT NULL,
    id_producto integer NOT NULL
);


ALTER TABLE public.hamburguesas OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 58626)
-- Name: hamburguesas_id_hamburguesa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hamburguesas_id_hamburguesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hamburguesas_id_hamburguesa_seq OWNER TO postgres;

--
-- TOC entry 5059 (class 0 OID 0)
-- Dependencies: 231
-- Name: hamburguesas_id_hamburguesa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hamburguesas_id_hamburguesa_seq OWNED BY public.hamburguesas.id_hamburguesa;


--
-- TOC entry 222 (class 1259 OID 58582)
-- Name: inventarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventarios (
    id_inventario integer NOT NULL,
    nom_item character varying(50) NOT NULL,
    can_disponible integer NOT NULL
);


ALTER TABLE public.inventarios OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 58581)
-- Name: inventarios_id_inventario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventarios_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventarios_id_inventario_seq OWNER TO postgres;

--
-- TOC entry 5060 (class 0 OID 0)
-- Dependencies: 221
-- Name: inventarios_id_inventario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventarios_id_inventario_seq OWNED BY public.inventarios.id_inventario;


--
-- TOC entry 240 (class 1259 OID 58699)
-- Name: itemspedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itemspedidos (
    id_itempedido integer NOT NULL,
    cantidad integer NOT NULL,
    id_producto integer NOT NULL,
    id_pedido integer NOT NULL
);


ALTER TABLE public.itemspedidos OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 58698)
-- Name: itemspedidos_id_itempedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itemspedidos_id_itempedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.itemspedidos_id_itempedido_seq OWNER TO postgres;

--
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 239
-- Name: itemspedidos_id_itempedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itemspedidos_id_itempedido_seq OWNED BY public.itemspedidos.id_itempedido;


--
-- TOC entry 236 (class 1259 OID 58651)
-- Name: mesas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mesas (
    id_mesa integer NOT NULL,
    capacidad integer NOT NULL,
    estado boolean NOT NULL
);


ALTER TABLE public.mesas OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 58650)
-- Name: mesas_id_mesa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mesas_id_mesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mesas_id_mesa_seq OWNER TO postgres;

--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 235
-- Name: mesas_id_mesa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mesas_id_mesa_seq OWNED BY public.mesas.id_mesa;


--
-- TOC entry 250 (class 1259 OID 58759)
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    id integer NOT NULL,
    id_sala integer NOT NULL,
    num_mesa integer NOT NULL,
    fecha timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    total numeric(10,2) NOT NULL,
    usuario character varying(100) NOT NULL,
    estado character varying(20) DEFAULT 'PENDIENTE'::character varying
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 58758)
-- Name: pedidos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedidos_id_seq OWNER TO postgres;

--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 249
-- Name: pedidos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_id_seq OWNED BY public.pedidos.id;


--
-- TOC entry 216 (class 1259 OID 58547)
-- Name: personas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personas (
    id_persona integer NOT NULL,
    nombre character varying(50) NOT NULL,
    paterno character varying(50) NOT NULL,
    celular integer NOT NULL
);


ALTER TABLE public.personas OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 58546)
-- Name: personas_id_persona_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personas_id_persona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.personas_id_persona_seq OWNER TO postgres;

--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 215
-- Name: personas_id_persona_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personas_id_persona_seq OWNED BY public.personas.id_persona;


--
-- TOC entry 248 (class 1259 OID 58741)
-- Name: platos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.platos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    precio numeric(10,2) NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE public.platos OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 58740)
-- Name: platos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.platos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.platos_id_seq OWNER TO postgres;

--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 247
-- Name: platos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.platos_id_seq OWNED BY public.platos.id;


--
-- TOC entry 228 (class 1259 OID 58613)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre character varying(50) NOT NULL,
    tipo character varying(50) NOT NULL,
    precio double precision NOT NULL
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 58612)
-- Name: productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_producto_seq OWNER TO postgres;

--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 227
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;


--
-- TOC entry 234 (class 1259 OID 58639)
-- Name: refrescos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.refrescos (
    id_refresco integer NOT NULL,
    tamano character varying(50) NOT NULL,
    id_producto integer NOT NULL
);


ALTER TABLE public.refrescos OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 58638)
-- Name: refrescos_id_refresco_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.refrescos_id_refresco_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.refrescos_id_refresco_seq OWNER TO postgres;

--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 233
-- Name: refrescos_id_refresco_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.refrescos_id_refresco_seq OWNED BY public.refrescos.id_refresco;


--
-- TOC entry 244 (class 1259 OID 58725)
-- Name: restaurante; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restaurante (
    id integer NOT NULL,
    ruc character varying(50),
    nombre character varying(100) NOT NULL,
    telefono character varying(20),
    direccion character varying(200),
    mensaje text
);


ALTER TABLE public.restaurante OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 58724)
-- Name: restaurante_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.restaurante_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.restaurante_id_seq OWNER TO postgres;

--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 243
-- Name: restaurante_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.restaurante_id_seq OWNED BY public.restaurante.id;


--
-- TOC entry 238 (class 1259 OID 58658)
-- Name: restaurantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restaurantes (
    id_restaurante integer NOT NULL,
    nombre character varying(50) NOT NULL,
    direccion character varying(50) NOT NULL,
    id_mesa integer
);


ALTER TABLE public.restaurantes OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 58657)
-- Name: restaurantes_id_restaurante_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.restaurantes_id_restaurante_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.restaurantes_id_restaurante_seq OWNER TO postgres;

--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 237
-- Name: restaurantes_id_restaurante_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.restaurantes_id_restaurante_seq OWNED BY public.restaurantes.id_restaurante;


--
-- TOC entry 246 (class 1259 OID 58734)
-- Name: salas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salas (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    mesas integer DEFAULT 4
);


ALTER TABLE public.salas OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 58733)
-- Name: salas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.salas_id_seq OWNER TO postgres;

--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 245
-- Name: salas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salas_id_seq OWNED BY public.salas.id;


--
-- TOC entry 242 (class 1259 OID 58716)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    correo character varying(100) NOT NULL,
    pass character varying(100) NOT NULL,
    rol character varying(50) NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 58715)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 241
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 4790 (class 2604 OID 58623)
-- Name: acompanamientos id_acompanamiento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acompanamientos ALTER COLUMN id_acompanamiento SET DEFAULT nextval('public.acompanamientos_id_acompanamiento_seq'::regclass);


--
-- TOC entry 4787 (class 2604 OID 58592)
-- Name: alimentos id_alimento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alimentos ALTER COLUMN id_alimento SET DEFAULT nextval('public.alimentos_id_alimento_seq'::regclass);


--
-- TOC entry 4784 (class 2604 OID 58557)
-- Name: clientes id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);


--
-- TOC entry 4788 (class 2604 OID 58604)
-- Name: consumible id_consumible; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consumible ALTER COLUMN id_consumible SET DEFAULT nextval('public.consumible_id_consumible_seq'::regclass);


--
-- TOC entry 4804 (class 2604 OID 58776)
-- Name: detalle_pedidos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_pedidos ALTER COLUMN id SET DEFAULT nextval('public.detalle_pedidos_id_seq'::regclass);


--
-- TOC entry 4785 (class 2604 OID 58571)
-- Name: empleados id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleados_id_empleado_seq'::regclass);


--
-- TOC entry 4805 (class 2604 OID 58790)
-- Name: facturas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas ALTER COLUMN id SET DEFAULT nextval('public.facturas_id_seq'::regclass);


--
-- TOC entry 4791 (class 2604 OID 58630)
-- Name: hamburguesas id_hamburguesa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hamburguesas ALTER COLUMN id_hamburguesa SET DEFAULT nextval('public.hamburguesas_id_hamburguesa_seq'::regclass);


--
-- TOC entry 4786 (class 2604 OID 58585)
-- Name: inventarios id_inventario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventarios_id_inventario_seq'::regclass);


--
-- TOC entry 4795 (class 2604 OID 58702)
-- Name: itemspedidos id_itempedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itemspedidos ALTER COLUMN id_itempedido SET DEFAULT nextval('public.itemspedidos_id_itempedido_seq'::regclass);


--
-- TOC entry 4793 (class 2604 OID 58654)
-- Name: mesas id_mesa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mesas ALTER COLUMN id_mesa SET DEFAULT nextval('public.mesas_id_mesa_seq'::regclass);


--
-- TOC entry 4801 (class 2604 OID 58762)
-- Name: pedidos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN id SET DEFAULT nextval('public.pedidos_id_seq'::regclass);


--
-- TOC entry 4783 (class 2604 OID 58550)
-- Name: personas id_persona; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas ALTER COLUMN id_persona SET DEFAULT nextval('public.personas_id_persona_seq'::regclass);


--
-- TOC entry 4800 (class 2604 OID 58744)
-- Name: platos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.platos ALTER COLUMN id SET DEFAULT nextval('public.platos_id_seq'::regclass);


--
-- TOC entry 4789 (class 2604 OID 58616)
-- Name: productos id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);


--
-- TOC entry 4792 (class 2604 OID 58642)
-- Name: refrescos id_refresco; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refrescos ALTER COLUMN id_refresco SET DEFAULT nextval('public.refrescos_id_refresco_seq'::regclass);


--
-- TOC entry 4797 (class 2604 OID 58728)
-- Name: restaurante id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurante ALTER COLUMN id SET DEFAULT nextval('public.restaurante_id_seq'::regclass);


--
-- TOC entry 4794 (class 2604 OID 58661)
-- Name: restaurantes id_restaurante; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurantes ALTER COLUMN id_restaurante SET DEFAULT nextval('public.restaurantes_id_restaurante_seq'::regclass);


--
-- TOC entry 4798 (class 2604 OID 58737)
-- Name: salas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salas ALTER COLUMN id SET DEFAULT nextval('public.salas_id_seq'::regclass);


--
-- TOC entry 4796 (class 2604 OID 58719)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 5022 (class 0 OID 58620)
-- Dependencies: 230
-- Data for Name: acompanamientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.acompanamientos (id_acompanamiento, nombre, id_hamburguesa) FROM stdin;
\.


--
-- TOC entry 5016 (class 0 OID 58589)
-- Dependencies: 224
-- Data for Name: alimentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alimentos (id_alimento, f_vencimiento, id_inventario) FROM stdin;
\.


--
-- TOC entry 5010 (class 0 OID 58554)
-- Dependencies: 218
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (id_cliente, ci, id_persona) FROM stdin;
\.


--
-- TOC entry 5018 (class 0 OID 58601)
-- Dependencies: 226
-- Data for Name: consumible; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consumible (id_consumible, tipo, id_inventario) FROM stdin;
\.


--
-- TOC entry 5044 (class 0 OID 58773)
-- Dependencies: 252
-- Data for Name: detalle_pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detalle_pedidos (id, nombre, precio, cantidad, comentario, id_pedido) FROM stdin;
1	Hamburguesa Clásica	35.00	1		1
\.


--
-- TOC entry 5012 (class 0 OID 58568)
-- Dependencies: 220
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleados (id_empleado, rol, identificacion, h_ingreso, h_salida, id_persona) FROM stdin;
1	Cajero	74581245	09:00:00	17:00:00	1
\.


--
-- TOC entry 5046 (class 0 OID 58787)
-- Dependencies: 254
-- Data for Name: facturas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facturas (id, f_emision, monto_total, id_pedido, id_itempedido) FROM stdin;
\.


--
-- TOC entry 5024 (class 0 OID 58627)
-- Dependencies: 232
-- Data for Name: hamburguesas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hamburguesas (id_hamburguesa, termino_coccion, id_producto) FROM stdin;
\.


--
-- TOC entry 5014 (class 0 OID 58582)
-- Dependencies: 222
-- Data for Name: inventarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventarios (id_inventario, nom_item, can_disponible) FROM stdin;
\.


--
-- TOC entry 5032 (class 0 OID 58699)
-- Dependencies: 240
-- Data for Name: itemspedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.itemspedidos (id_itempedido, cantidad, id_producto, id_pedido) FROM stdin;
\.


--
-- TOC entry 5028 (class 0 OID 58651)
-- Dependencies: 236
-- Data for Name: mesas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mesas (id_mesa, capacidad, estado) FROM stdin;
\.


--
-- TOC entry 5042 (class 0 OID 58759)
-- Dependencies: 250
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (id, id_sala, num_mesa, fecha, total, usuario, estado) FROM stdin;
1	2	1	2025-12-10 04:37:15.850111	35.00	Felipe Mejia	PENDIENTE
\.


--
-- TOC entry 5008 (class 0 OID 58547)
-- Dependencies: 216
-- Data for Name: personas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personas (id_persona, nombre, paterno, celular) FROM stdin;
1	Mario	Pacheco	74581245
\.


--
-- TOC entry 5040 (class 0 OID 58741)
-- Dependencies: 248
-- Data for Name: platos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.platos (id, nombre, precio, fecha) FROM stdin;
1	Hamburguesa Clásica	35.00	2025-12-10
2	Pizza Margarita	45.00	2025-12-10
3	Ensalada César	28.00	2025-12-10
4	Pasta Carbonara	40.00	2025-12-10
5	Lomo Saltado	50.00	2025-12-10
\.


--
-- TOC entry 5020 (class 0 OID 58613)
-- Dependencies: 228
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id_producto, nombre, tipo, precio) FROM stdin;
\.


--
-- TOC entry 5026 (class 0 OID 58639)
-- Dependencies: 234
-- Data for Name: refrescos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.refrescos (id_refresco, tamano, id_producto) FROM stdin;
\.


--
-- TOC entry 5036 (class 0 OID 58725)
-- Dependencies: 244
-- Data for Name: restaurante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restaurante (id, ruc, nombre, telefono, direccion, mensaje) FROM stdin;
1	123456789	Restaurante El Buen Sabor	591-12345678	Av. Principal #123	Gracias por su preferencia!
\.


--
-- TOC entry 5030 (class 0 OID 58658)
-- Dependencies: 238
-- Data for Name: restaurantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restaurantes (id_restaurante, nombre, direccion, id_mesa) FROM stdin;
\.


--
-- TOC entry 5038 (class 0 OID 58734)
-- Dependencies: 246
-- Data for Name: salas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salas (id, nombre, mesas) FROM stdin;
2	Sala VIP	4
3	Terraza	4
1	Sala Principal	0
\.


--
-- TOC entry 5034 (class 0 OID 58716)
-- Dependencies: 242
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, nombre, correo, pass, rol) FROM stdin;
1	Felipe Admin	felipe@gmail.com	felipe	ADMINISTRADOR
2	ejemplo	ejemplo@gmail.com	123123	Administrador
\.


--
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 229
-- Name: acompanamientos_id_acompanamiento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.acompanamientos_id_acompanamiento_seq', 1, false);


--
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 223
-- Name: alimentos_id_alimento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alimentos_id_alimento_seq', 1, false);


--
-- TOC entry 5074 (class 0 OID 0)
-- Dependencies: 217
-- Name: clientes_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 1, false);


--
-- TOC entry 5075 (class 0 OID 0)
-- Dependencies: 225
-- Name: consumible_id_consumible_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.consumible_id_consumible_seq', 1, false);


--
-- TOC entry 5076 (class 0 OID 0)
-- Dependencies: 251
-- Name: detalle_pedidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detalle_pedidos_id_seq', 1, true);


--
-- TOC entry 5077 (class 0 OID 0)
-- Dependencies: 219
-- Name: empleados_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleados_id_empleado_seq', 1, true);


--
-- TOC entry 5078 (class 0 OID 0)
-- Dependencies: 253
-- Name: facturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facturas_id_seq', 1, false);


--
-- TOC entry 5079 (class 0 OID 0)
-- Dependencies: 231
-- Name: hamburguesas_id_hamburguesa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hamburguesas_id_hamburguesa_seq', 1, false);


--
-- TOC entry 5080 (class 0 OID 0)
-- Dependencies: 221
-- Name: inventarios_id_inventario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventarios_id_inventario_seq', 1, false);


--
-- TOC entry 5081 (class 0 OID 0)
-- Dependencies: 239
-- Name: itemspedidos_id_itempedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itemspedidos_id_itempedido_seq', 1, false);


--
-- TOC entry 5082 (class 0 OID 0)
-- Dependencies: 235
-- Name: mesas_id_mesa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mesas_id_mesa_seq', 1, false);


--
-- TOC entry 5083 (class 0 OID 0)
-- Dependencies: 249
-- Name: pedidos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_id_seq', 1, true);


--
-- TOC entry 5084 (class 0 OID 0)
-- Dependencies: 215
-- Name: personas_id_persona_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personas_id_persona_seq', 1, true);


--
-- TOC entry 5085 (class 0 OID 0)
-- Dependencies: 247
-- Name: platos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.platos_id_seq', 6, true);


--
-- TOC entry 5086 (class 0 OID 0)
-- Dependencies: 227
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_producto_seq', 1, false);


--
-- TOC entry 5087 (class 0 OID 0)
-- Dependencies: 233
-- Name: refrescos_id_refresco_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.refrescos_id_refresco_seq', 1, false);


--
-- TOC entry 5088 (class 0 OID 0)
-- Dependencies: 243
-- Name: restaurante_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.restaurante_id_seq', 1, true);


--
-- TOC entry 5089 (class 0 OID 0)
-- Dependencies: 237
-- Name: restaurantes_id_restaurante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.restaurantes_id_restaurante_seq', 1, false);


--
-- TOC entry 5090 (class 0 OID 0)
-- Dependencies: 245
-- Name: salas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.salas_id_seq', 3, true);


--
-- TOC entry 5091 (class 0 OID 0)
-- Dependencies: 241
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 2, true);


--
-- TOC entry 4825 (class 2606 OID 58625)
-- Name: acompanamientos acompanamientos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.acompanamientos
    ADD CONSTRAINT acompanamientos_pkey PRIMARY KEY (id_acompanamiento);


--
-- TOC entry 4819 (class 2606 OID 58594)
-- Name: alimentos alimentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alimentos
    ADD CONSTRAINT alimentos_pkey PRIMARY KEY (id_alimento);


--
-- TOC entry 4809 (class 2606 OID 58561)
-- Name: clientes clientes_ci_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_ci_key UNIQUE (ci);


--
-- TOC entry 4811 (class 2606 OID 58559)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);


--
-- TOC entry 4821 (class 2606 OID 58606)
-- Name: consumible consumible_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consumible
    ADD CONSTRAINT consumible_pkey PRIMARY KEY (id_consumible);


--
-- TOC entry 4849 (class 2606 OID 58780)
-- Name: detalle_pedidos detalle_pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_pedidos
    ADD CONSTRAINT detalle_pedidos_pkey PRIMARY KEY (id);


--
-- TOC entry 4813 (class 2606 OID 58575)
-- Name: empleados empleados_identificacion_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_identificacion_key UNIQUE (identificacion);


--
-- TOC entry 4815 (class 2606 OID 58573)
-- Name: empleados empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 4851 (class 2606 OID 58792)
-- Name: facturas facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_pkey PRIMARY KEY (id);


--
-- TOC entry 4827 (class 2606 OID 58632)
-- Name: hamburguesas hamburguesas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hamburguesas
    ADD CONSTRAINT hamburguesas_pkey PRIMARY KEY (id_hamburguesa);


--
-- TOC entry 4817 (class 2606 OID 58587)
-- Name: inventarios inventarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventarios
    ADD CONSTRAINT inventarios_pkey PRIMARY KEY (id_inventario);


--
-- TOC entry 4835 (class 2606 OID 58704)
-- Name: itemspedidos itemspedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itemspedidos
    ADD CONSTRAINT itemspedidos_pkey PRIMARY KEY (id_itempedido);


--
-- TOC entry 4831 (class 2606 OID 58656)
-- Name: mesas mesas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mesas
    ADD CONSTRAINT mesas_pkey PRIMARY KEY (id_mesa);


--
-- TOC entry 4847 (class 2606 OID 58766)
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (id);


--
-- TOC entry 4807 (class 2606 OID 58552)
-- Name: personas personas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id_persona);


--
-- TOC entry 4845 (class 2606 OID 58746)
-- Name: platos platos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.platos
    ADD CONSTRAINT platos_pkey PRIMARY KEY (id);


--
-- TOC entry 4823 (class 2606 OID 58618)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 4829 (class 2606 OID 58644)
-- Name: refrescos refrescos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refrescos
    ADD CONSTRAINT refrescos_pkey PRIMARY KEY (id_refresco);


--
-- TOC entry 4841 (class 2606 OID 58732)
-- Name: restaurante restaurante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurante
    ADD CONSTRAINT restaurante_pkey PRIMARY KEY (id);


--
-- TOC entry 4833 (class 2606 OID 58663)
-- Name: restaurantes restaurantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurantes
    ADD CONSTRAINT restaurantes_pkey PRIMARY KEY (id_restaurante);


--
-- TOC entry 4843 (class 2606 OID 58739)
-- Name: salas salas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salas
    ADD CONSTRAINT salas_pkey PRIMARY KEY (id);


--
-- TOC entry 4837 (class 2606 OID 58723)
-- Name: usuarios usuarios_correo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_correo_key UNIQUE (correo);


--
-- TOC entry 4839 (class 2606 OID 58721)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4854 (class 2606 OID 58595)
-- Name: alimentos alimentos_id_inventario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alimentos
    ADD CONSTRAINT alimentos_id_inventario_fkey FOREIGN KEY (id_inventario) REFERENCES public.inventarios(id_inventario);


--
-- TOC entry 4852 (class 2606 OID 58562)
-- Name: clientes clientes_id_persona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_id_persona_fkey FOREIGN KEY (id_persona) REFERENCES public.personas(id_persona);


--
-- TOC entry 4855 (class 2606 OID 58607)
-- Name: consumible consumible_id_inventario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consumible
    ADD CONSTRAINT consumible_id_inventario_fkey FOREIGN KEY (id_inventario) REFERENCES public.inventarios(id_inventario);


--
-- TOC entry 4861 (class 2606 OID 58781)
-- Name: detalle_pedidos detalle_pedidos_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detalle_pedidos
    ADD CONSTRAINT detalle_pedidos_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id);


--
-- TOC entry 4853 (class 2606 OID 58576)
-- Name: empleados empleados_id_persona_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_persona_fkey FOREIGN KEY (id_persona) REFERENCES public.personas(id_persona);


--
-- TOC entry 4862 (class 2606 OID 58798)
-- Name: facturas facturas_id_itempedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_id_itempedido_fkey FOREIGN KEY (id_itempedido) REFERENCES public.detalle_pedidos(id);


--
-- TOC entry 4863 (class 2606 OID 58793)
-- Name: facturas facturas_id_pedido_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facturas
    ADD CONSTRAINT facturas_id_pedido_fkey FOREIGN KEY (id_pedido) REFERENCES public.pedidos(id);


--
-- TOC entry 4856 (class 2606 OID 58633)
-- Name: hamburguesas hamburguesas_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hamburguesas
    ADD CONSTRAINT hamburguesas_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- TOC entry 4859 (class 2606 OID 58705)
-- Name: itemspedidos itemspedidos_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itemspedidos
    ADD CONSTRAINT itemspedidos_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- TOC entry 4860 (class 2606 OID 58767)
-- Name: pedidos pedidos_id_sala_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_id_sala_fkey FOREIGN KEY (id_sala) REFERENCES public.salas(id);


--
-- TOC entry 4857 (class 2606 OID 58645)
-- Name: refrescos refrescos_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.refrescos
    ADD CONSTRAINT refrescos_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


--
-- TOC entry 4858 (class 2606 OID 58664)
-- Name: restaurantes restaurantes_id_mesa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restaurantes
    ADD CONSTRAINT restaurantes_id_mesa_fkey FOREIGN KEY (id_mesa) REFERENCES public.mesas(id_mesa);


-- Completed on 2025-12-10 05:26:13

--
-- PostgreSQL database dump complete
--

