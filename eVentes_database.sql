--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

-- Started on 2020-06-21 21:44:04

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
-- TOC entry 223 (class 1259 OID 27458)
-- Name: achievement_achievement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.achievement_achievement (
    id integer NOT NULL,
    "AchievementName" character varying(150) NOT NULL,
    "AchievementDescription" text NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "SubDepartmentName_id" character varying(150) NOT NULL
);


ALTER TABLE public.achievement_achievement OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 27456)
-- Name: achievement_achievement_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.achievement_achievement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.achievement_achievement_id_seq OWNER TO postgres;

--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 222
-- Name: achievement_achievement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.achievement_achievement_id_seq OWNED BY public.achievement_achievement.id;


--
-- TOC entry 225 (class 1259 OID 27469)
-- Name: achievement_achiever; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.achievement_achiever (
    id integer NOT NULL,
    "AchievementId_id" integer NOT NULL,
    "StudentId_id" integer NOT NULL
);


ALTER TABLE public.achievement_achiever OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 27467)
-- Name: achievement_achiever_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.achievement_achiever_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.achievement_achiever_id_seq OWNER TO postgres;

--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 224
-- Name: achievement_achiever_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.achievement_achiever_id_seq OWNED BY public.achievement_achiever.id;


--
-- TOC entry 213 (class 1259 OID 27355)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 27353)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 215 (class 1259 OID 27365)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 27363)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 211 (class 1259 OID 27347)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 27345)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 217 (class 1259 OID 27373)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 27383)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 27381)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 216 (class 1259 OID 27371)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 221 (class 1259 OID 27391)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 27389)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 229 (class 1259 OID 27536)
-- Name: club_club; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.club_club (
    "ClubName" character varying(150) NOT NULL,
    "ClubType" character varying(150),
    "clubStatus" character varying(10) NOT NULL,
    "clubApproval" character varying(10) NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "ClubImage" character varying(100),
    "ClubImageName" text,
    "DribbbleLink" character varying(150),
    "FacebookLink" character varying(150),
    "InstagramLink" character varying(150),
    "TwitterLink" character varying(150)
);


ALTER TABLE public.club_club OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 27534)
-- Name: club_club_ClubName_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."club_club_ClubName_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."club_club_ClubName_seq" OWNER TO postgres;

--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 228
-- Name: club_club_ClubName_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."club_club_ClubName_seq" OWNED BY public.club_club."ClubName";


--
-- TOC entry 231 (class 1259 OID 27567)
-- Name: club_clubmember; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.club_clubmember (
    "ClubMemberId" integer NOT NULL,
    "MemberRole" character varying(150) NOT NULL,
    "ClubId_id" character varying(150) NOT NULL,
    "StudentId_id" integer NOT NULL
);


ALTER TABLE public.club_clubmember OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 27565)
-- Name: club_clubmember_ClubMemberId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."club_clubmember_ClubMemberId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."club_clubmember_ClubMemberId_seq" OWNER TO postgres;

--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 230
-- Name: club_clubmember_ClubMemberId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."club_clubmember_ClubMemberId_seq" OWNED BY public.club_clubmember."ClubMemberId";


--
-- TOC entry 204 (class 1259 OID 27291)
-- Name: department_department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department_department (
    "DepartmentName" character varying(150) NOT NULL
);


ALTER TABLE public.department_department OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 27297)
-- Name: department_subdepartment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department_subdepartment (
    "SubDepartmentName" character varying(150) NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL
);


ALTER TABLE public.department_subdepartment OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 27503)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 27501)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 226
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 209 (class 1259 OID 27337)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 27335)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 208
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 203 (class 1259 OID 27282)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 27280)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 238 (class 1259 OID 27651)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 27664)
-- Name: employee_employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_employee (
    id integer NOT NULL,
    "EmployeeName" character varying(150) NOT NULL,
    "Gender" character varying(10) NOT NULL,
    "EmployeeImageName" text,
    "EmployeeImage" character varying(100),
    "EmployeePhone" character varying(150) NOT NULL,
    "EmployeeEmail" character varying(150),
    "EmployeeAddress" text NOT NULL,
    "EmployeeCity" character varying(150) NOT NULL,
    "EmployeeStatus" boolean NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "SubDepartmentName_id" character varying(150) NOT NULL,
    "UserId_id" integer
);


ALTER TABLE public.employee_employee OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 27662)
-- Name: employee_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_employee_id_seq OWNER TO postgres;

--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 239
-- Name: employee_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee_employee.id;


--
-- TOC entry 235 (class 1259 OID 27606)
-- Name: event_event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_event (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    "EventImageName" text,
    "EventImage" character varying(100),
    "EventType" character varying(150) NOT NULL,
    "EventEligibility" character varying(150) NOT NULL,
    "EventStatus" character varying(10) NOT NULL,
    "EventApproval" character varying(10) NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    "EventStartTime" time without time zone NOT NULL,
    "EventEndTime" time without time zone NOT NULL,
    "EventDescription" text NOT NULL,
    "EventAmount" integer NOT NULL,
    "ClubName_id" character varying(150) NOT NULL,
    "VenueId_id" integer NOT NULL
);


ALTER TABLE public.event_event OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 27604)
-- Name: event_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_event_id_seq OWNER TO postgres;

--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 234
-- Name: event_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.event_event_id_seq OWNED BY public.event_event.id;


--
-- TOC entry 237 (class 1259 OID 27630)
-- Name: main_notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_notification (
    "NotificationId" integer NOT NULL,
    "NotificationTitle" text NOT NULL,
    "NotificationDescription" text NOT NULL,
    "NotificationDateTime" timestamp with time zone NOT NULL,
    "AchievementId_id" integer,
    "StudentId_id" integer
);


ALTER TABLE public.main_notification OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 27628)
-- Name: main_notification_NotificationId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."main_notification_NotificationId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."main_notification_NotificationId_seq" OWNER TO postgres;

--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 236
-- Name: main_notification_NotificationId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."main_notification_NotificationId_seq" OWNED BY public.main_notification."NotificationId";


--
-- TOC entry 207 (class 1259 OID 27312)
-- Name: student_student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_student (
    "StudentId" integer NOT NULL,
    "StudentName" character varying(150) NOT NULL,
    "StudentPhoneNumber" character varying(150) NOT NULL,
    "StudentGender" character varying(10) NOT NULL,
    "StudentImageName" text,
    "StudentImage" character varying(100),
    "StudentEmail" character varying(150),
    "StudentAddress" text NOT NULL,
    "StudentCity" character varying(150) NOT NULL,
    "StudentStatus" boolean NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "SubDepartmentName_id" character varying(150) NOT NULL,
    "UserId_id" integer
);


ALTER TABLE public.student_student OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 27310)
-- Name: student_student_StudentId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."student_student_StudentId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."student_student_StudentId_seq" OWNER TO postgres;

--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 206
-- Name: student_student_StudentId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."student_student_StudentId_seq" OWNED BY public.student_student."StudentId";


--
-- TOC entry 232 (class 1259 OID 27591)
-- Name: venue_venue; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venue_venue (
    "VenueId" integer NOT NULL,
    "VenueName" character varying(150) NOT NULL,
    "VenueImageName" text,
    "VenueImage" character varying(100),
    "VenueLocation" text NOT NULL
);


ALTER TABLE public.venue_venue OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 27601)
-- Name: venue_venue_VenueId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."venue_venue_VenueId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."venue_venue_VenueId_seq" OWNER TO postgres;

--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 233
-- Name: venue_venue_VenueId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."venue_venue_VenueId_seq" OWNED BY public.venue_venue."VenueId";


--
-- TOC entry 2821 (class 2604 OID 27461)
-- Name: achievement_achievement id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement_achievement ALTER COLUMN id SET DEFAULT nextval('public.achievement_achievement_id_seq'::regclass);


--
-- TOC entry 2822 (class 2604 OID 27472)
-- Name: achievement_achiever id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement_achiever ALTER COLUMN id SET DEFAULT nextval('public.achievement_achiever_id_seq'::regclass);


--
-- TOC entry 2816 (class 2604 OID 27358)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2817 (class 2604 OID 27368)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2815 (class 2604 OID 27350)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2818 (class 2604 OID 27376)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2819 (class 2604 OID 27386)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2820 (class 2604 OID 27394)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2825 (class 2604 OID 27552)
-- Name: club_club ClubName; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_club ALTER COLUMN "ClubName" SET DEFAULT nextval('public."club_club_ClubName_seq"'::regclass);


--
-- TOC entry 2826 (class 2604 OID 27570)
-- Name: club_clubmember ClubMemberId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_clubmember ALTER COLUMN "ClubMemberId" SET DEFAULT nextval('public."club_clubmember_ClubMemberId_seq"'::regclass);


--
-- TOC entry 2823 (class 2604 OID 27506)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2814 (class 2604 OID 27340)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2812 (class 2604 OID 27285)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2830 (class 2604 OID 27667)
-- Name: employee_employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_employee ALTER COLUMN id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);


--
-- TOC entry 2828 (class 2604 OID 27609)
-- Name: event_event id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_event ALTER COLUMN id SET DEFAULT nextval('public.event_event_id_seq'::regclass);


--
-- TOC entry 2829 (class 2604 OID 27633)
-- Name: main_notification NotificationId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_notification ALTER COLUMN "NotificationId" SET DEFAULT nextval('public."main_notification_NotificationId_seq"'::regclass);


--
-- TOC entry 2813 (class 2604 OID 27315)
-- Name: student_student StudentId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_student ALTER COLUMN "StudentId" SET DEFAULT nextval('public."student_student_StudentId_seq"'::regclass);


--
-- TOC entry 2827 (class 2604 OID 27603)
-- Name: venue_venue VenueId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venue_venue ALTER COLUMN "VenueId" SET DEFAULT nextval('public."venue_venue_VenueId_seq"'::regclass);


--
-- TOC entry 3106 (class 0 OID 27458)
-- Dependencies: 223
-- Data for Name: achievement_achievement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.achievement_achievement (id, "AchievementName", "AchievementDescription", "DepartmentName_id", "SubDepartmentName_id") FROM stdin;
\.


--
-- TOC entry 3108 (class 0 OID 27469)
-- Dependencies: 225
-- Data for Name: achievement_achiever; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.achievement_achiever (id, "AchievementId_id", "StudentId_id") FROM stdin;
\.


--
-- TOC entry 3096 (class 0 OID 27355)
-- Dependencies: 213
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
1	clubAdmin
2	Student
3	subAdmin
\.


--
-- TOC entry 3098 (class 0 OID 27365)
-- Dependencies: 215
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	32
2	1	36
3	1	44
4	1	45
5	1	46
6	1	47
7	1	48
8	1	49
9	1	50
10	1	51
11	1	52
12	1	53
13	1	54
14	1	55
15	1	56
16	1	57
17	1	58
18	1	59
19	1	60
20	1	61
21	1	62
22	1	63
23	1	64
24	1	68
25	2	64
26	2	32
27	2	36
28	2	68
29	2	28
30	2	48
31	2	52
32	2	56
33	2	60
34	3	25
35	3	26
36	3	27
37	3	28
38	3	29
39	3	30
40	3	31
41	3	32
42	3	33
43	3	34
44	3	35
45	3	36
46	3	41
47	3	42
48	3	43
49	3	44
50	3	45
51	3	46
52	3	47
53	3	48
54	3	49
55	3	50
56	3	51
57	3	52
58	3	53
59	3	54
60	3	55
61	3	56
62	3	57
63	3	58
64	3	59
65	3	60
66	3	61
67	3	62
68	3	63
69	3	64
70	3	65
71	3	66
72	3	67
73	3	68
\.


--
-- TOC entry 3094 (class 0 OID 27347)
-- Dependencies: 211
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add notification	7	add_notification
26	Can change notification	7	change_notification
27	Can delete notification	7	delete_notification
28	Can view notification	7	view_notification
29	Can add department	8	add_department
30	Can change department	8	change_department
31	Can delete department	8	delete_department
32	Can view department	8	view_department
33	Can add sub department	9	add_subdepartment
34	Can change sub department	9	change_subdepartment
35	Can delete sub department	9	delete_subdepartment
36	Can view sub department	9	view_subdepartment
37	Can add employee	10	add_employee
38	Can change employee	10	change_employee
39	Can delete employee	10	delete_employee
40	Can view employee	10	view_employee
41	Can add student	11	add_student
42	Can change student	11	change_student
43	Can delete student	11	delete_student
44	Can view student	11	view_student
45	Can add club	12	add_club
46	Can change club	12	change_club
47	Can delete club	12	delete_club
48	Can view club	12	view_club
49	Can add club member	13	add_clubmember
50	Can change club member	13	change_clubmember
51	Can delete club member	13	delete_clubmember
52	Can view club member	13	view_clubmember
53	Can add event	14	add_event
54	Can change event	14	change_event
55	Can delete event	14	delete_event
56	Can view event	14	view_event
57	Can add achievement	15	add_achievement
58	Can change achievement	15	change_achievement
59	Can delete achievement	15	delete_achievement
60	Can view achievement	15	view_achievement
61	Can add achiever	16	add_achiever
62	Can change achiever	16	change_achiever
63	Can delete achiever	16	delete_achiever
64	Can view achiever	16	view_achiever
65	Can add venue	17	add_venue
66	Can change venue	17	change_venue
67	Can delete venue	17	delete_venue
68	Can view venue	17	view_venue
\.


--
-- TOC entry 3100 (class 0 OID 27373)
-- Dependencies: 217
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$n3zlmLZ9d09b$1pdeb+qyrCdXFQ8WN9UKIY1ZpU56Gp4qiJiPk8RiCqA=	2020-06-21 20:29:02.169672+05:30	t	admin				t	t	2020-06-21 20:28:43.337137+05:30
4	pbkdf2_sha256$180000$EB4Ky6pFnDGk$6II8w+7cK1hUGRO/X0QPT5A9qA4clLZYSnAAlfU9eg0=	\N	f	tayyeb21	Abdul	Tayyeb	tayyeb5252@gmail.com	f	t	2020-06-21 21:19:57.494369+05:30
5	pbkdf2_sha256$180000$Uz3L8U7bBarX$GAuL+PBZFQrP+S2WYjkKPHethxGW/O+uPG2P1wEGZqQ=	\N	f	viral12	Viral	Shastri	viral@gmail.com	f	t	2020-06-21 21:21:17.826087+05:30
6	pbkdf2_sha256$180000$boG9fV2GInsJ$rZfgZ9vE99BXU9VZXy18WJbx47ScA/nd8qhuQXnkGsI=	\N	f	akshit	Akshit	Mithaiwala	akshit@gmail.com	f	t	2020-06-21 21:23:08.900308+05:30
7	pbkdf2_sha256$180000$IYkPPUsRU067$341lKBbmSR5V16Eqk8YJvLu5yGhb00bYCvGWtjjQw6c=	2020-06-21 21:42:33.380395+05:30	f	patil32	C.H	Patil	patil@gmail.com	f	t	2020-06-21 21:40:25.723245+05:30
\.


--
-- TOC entry 3102 (class 0 OID 27383)
-- Dependencies: 219
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	4	2
2	5	2
3	6	2
4	7	3
\.


--
-- TOC entry 3104 (class 0 OID 27391)
-- Dependencies: 221
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3112 (class 0 OID 27536)
-- Dependencies: 229
-- Data for Name: club_club; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.club_club ("ClubName", "ClubType", "clubStatus", "clubApproval", "DepartmentName_id", "ClubImage", "ClubImageName", "DribbbleLink", "FacebookLink", "InstagramLink", "TwitterLink") FROM stdin;
\.


--
-- TOC entry 3114 (class 0 OID 27567)
-- Dependencies: 231
-- Data for Name: club_clubmember; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.club_clubmember ("ClubMemberId", "MemberRole", "ClubId_id", "StudentId_id") FROM stdin;
\.


--
-- TOC entry 3087 (class 0 OID 27291)
-- Dependencies: 204
-- Data for Name: department_department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department_department ("DepartmentName") FROM stdin;
Science
\.


--
-- TOC entry 3088 (class 0 OID 27297)
-- Dependencies: 205
-- Data for Name: department_subdepartment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.department_subdepartment ("SubDepartmentName", "DepartmentName_id") FROM stdin;
Computer Science	Science
\.


--
-- TOC entry 3110 (class 0 OID 27503)
-- Dependencies: 227
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-06-21 21:08:30.500185+05:30	1	clubAdmin	1	[{"added": {}}]	3	1
2	2020-06-21 21:10:54.96818+05:30	2	Student	1	[{"added": {}}]	3	1
3	2020-06-21 21:14:42.666304+05:30	3	subAdmin	1	[{"added": {}}]	3	1
\.


--
-- TOC entry 3092 (class 0 OID 27337)
-- Dependencies: 209
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	main	notification
8	department	department
9	department	subdepartment
10	employee	employee
11	student	student
12	club	club
13	club	clubmember
14	event	event
15	achievement	achievement
16	achievement	achiever
17	venue	venue
\.


--
-- TOC entry 3086 (class 0 OID 27282)
-- Dependencies: 203
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	department	0001_initial	2020-06-21 20:24:19.652351+05:30
2	department	0002_subdepartment	2020-06-21 20:24:20.064018+05:30
3	student	0001_initial	2020-06-21 20:24:20.416303+05:30
4	contenttypes	0001_initial	2020-06-21 20:24:20.664574+05:30
5	auth	0001_initial	2020-06-21 20:24:21.106037+05:30
6	student	0002_auto_20200620_1205	2020-06-21 20:24:21.853118+05:30
7	achievement	0001_initial	2020-06-21 20:24:22.09418+05:30
8	admin	0001_initial	2020-06-21 20:24:22.512365+05:30
9	admin	0002_logentry_remove_auto_add	2020-06-21 20:24:22.649112+05:30
10	admin	0003_logentry_add_action_flag_choices	2020-06-21 20:24:22.713543+05:30
11	contenttypes	0002_remove_content_type_name	2020-06-21 20:24:22.801541+05:30
12	auth	0002_alter_permission_name_max_length	2020-06-21 20:24:22.82554+05:30
13	auth	0003_alter_user_email_max_length	2020-06-21 20:24:22.849769+05:30
14	auth	0004_alter_user_username_opts	2020-06-21 20:24:22.873832+05:30
15	auth	0005_alter_user_last_login_null	2020-06-21 20:24:22.897825+05:30
16	auth	0006_require_contenttypes_0002	2020-06-21 20:24:22.905825+05:30
17	auth	0007_alter_validators_add_error_messages	2020-06-21 20:24:22.921824+05:30
18	auth	0008_alter_user_username_max_length	2020-06-21 20:24:23.105937+05:30
19	auth	0009_alter_user_last_name_max_length	2020-06-21 20:24:23.129936+05:30
20	auth	0010_alter_group_name_max_length	2020-06-21 20:24:23.145949+05:30
21	auth	0011_update_proxy_permissions	2020-06-21 20:24:23.169936+05:30
22	club	0001_initial	2020-06-21 20:24:23.282623+05:30
23	club	0002_auto_20200518_2257	2020-06-21 20:24:23.602698+05:30
24	club	0003_auto_20200518_2308	2020-06-21 20:24:23.834749+05:30
25	club	0004_auto_20200518_2313	2020-06-21 20:24:23.867089+05:30
26	club	0005_auto_20200519_1132	2020-06-21 20:24:23.939087+05:30
27	club	0006_auto_20200519_1134	2020-06-21 20:24:23.971187+05:30
28	club	0007_club_facebook	2020-06-21 20:24:24.027218+05:30
29	club	0008_remove_club_facebook	2020-06-21 20:24:24.035222+05:30
30	club	0009_clubmember	2020-06-21 20:24:24.139198+05:30
31	club	0010_auto_20200621_1047	2020-06-21 20:24:24.523279+05:30
32	venue	0001_initial	2020-06-21 20:24:24.636299+05:30
33	venue	0002_auto_20200519_1519	2020-06-21 20:24:24.700291+05:30
34	event	0001_initial	2020-06-21 20:24:24.877183+05:30
35	main	0001_initial	2020-06-21 20:24:25.198596+05:30
36	sessions	0001_initial	2020-06-21 20:24:25.398599+05:30
37	employee	0001_initial	2020-06-21 20:30:23.424573+05:30
38	event	0002_auto_20200621_2030	2020-06-21 20:30:23.658897+05:30
\.


--
-- TOC entry 3121 (class 0 OID 27651)
-- Dependencies: 238
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
lfzip4ormbzmhig2o3jdtj5hu6l6ezvk	MWU3M2RkNGZiZDY2ZjBjZGQzOWZkODNiMzA3NTRiYjU2ODM1ZGQ5MDp7Il9hdXRoX3VzZXJfaWQiOiI3IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMTk3ZGZmZDZiZGEyNWJhYTYzMGVjNWRlZDBlMTllYjkwZjI2OTM1In0=	2020-07-05 21:42:33.391355+05:30
\.


--
-- TOC entry 3123 (class 0 OID 27664)
-- Dependencies: 240
-- Data for Name: employee_employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_employee (id, "EmployeeName", "Gender", "EmployeeImageName", "EmployeeImage", "EmployeePhone", "EmployeeEmail", "EmployeeAddress", "EmployeeCity", "EmployeeStatus", "DepartmentName_id", "SubDepartmentName_id", "UserId_id") FROM stdin;
1	C.H Patil	Male	10_Ja1cGpJ.jpg	/images/10_Ja1cGpJ.jpg	9925416358	patil@gmail.com	Pune	Pune	f	Science	Computer Science	7
\.


--
-- TOC entry 3118 (class 0 OID 27606)
-- Dependencies: 235
-- Data for Name: event_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_event (id, title, "EventImageName", "EventImage", "EventType", "EventEligibility", "EventStatus", "EventApproval", start, "end", "EventStartTime", "EventEndTime", "EventDescription", "EventAmount", "ClubName_id", "VenueId_id") FROM stdin;
\.


--
-- TOC entry 3120 (class 0 OID 27630)
-- Dependencies: 237
-- Data for Name: main_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_notification ("NotificationId", "NotificationTitle", "NotificationDescription", "NotificationDateTime", "AchievementId_id", "StudentId_id") FROM stdin;
1	New Student	Akshit Mithaiwala Added by Akshit Mithaiwala	2020-06-21 21:23:09.314799+05:30	\N	\N
\.


--
-- TOC entry 3090 (class 0 OID 27312)
-- Dependencies: 207
-- Data for Name: student_student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_student ("StudentId", "StudentName", "StudentPhoneNumber", "StudentGender", "StudentImageName", "StudentImage", "StudentEmail", "StudentAddress", "StudentCity", "StudentStatus", "DepartmentName_id", "SubDepartmentName_id", "UserId_id") FROM stdin;
1	Abdul Tayyeb	8770394472	Male	avatar-6_3Zzm7jo_E8MDrbt.jpg	/images/avatar-6_3Zzm7jo_E8MDrbt.jpg	tayyeb5252@gmail.com	Pune	Pune	f	Science	Computer Science	4
2	Viral Shastri	9925416358	Male	03_7CvIz2B_5BPMc6D_7K1af2d_6yhRMYQ.jpg	/images/03_7CvIz2B_5BPMc6D_7K1af2d_6yhRMYQ.jpg	viral@gmail.com	Surat	Surat	f	Science	Computer Science	5
3	Akshit Mithaiwala	9925416358	Male	03_p6Kjqv6_5sdrlxA.jpg	/images/03_p6Kjqv6_5sdrlxA.jpg	akshit@gmail.com	Surat	Surat	f	Science	Computer Science	6
\.


--
-- TOC entry 3115 (class 0 OID 27591)
-- Dependencies: 232
-- Data for Name: venue_venue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venue_venue ("VenueId", "VenueName", "VenueImageName", "VenueImage", "VenueLocation") FROM stdin;
\.


--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 222
-- Name: achievement_achievement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.achievement_achievement_id_seq', 1, false);


--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 224
-- Name: achievement_achiever_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.achievement_achiever_id_seq', 1, false);


--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);


--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 73, true);


--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);


--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 4, true);


--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);


--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 220
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 228
-- Name: club_club_ClubName_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."club_club_ClubName_seq"', 1, false);


--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 230
-- Name: club_clubmember_ClubMemberId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."club_clubmember_ClubMemberId_seq"', 1, false);


--
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 226
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);


--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 208
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);


--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 38, true);


--
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 239
-- Name: employee_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employee_id_seq', 1, true);


--
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 234
-- Name: event_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_event_id_seq', 1, false);


--
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 236
-- Name: main_notification_NotificationId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."main_notification_NotificationId_seq"', 1, true);


--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 206
-- Name: student_student_StudentId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."student_student_StudentId_seq"', 3, true);


--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 233
-- Name: venue_venue_VenueId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."venue_venue_VenueId_seq"', 1, false);


--
-- TOC entry 2891 (class 2606 OID 27466)
-- Name: achievement_achievement achievement_achievement_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT achievement_achievement_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 27474)
-- Name: achievement_achiever achievement_achiever_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT achievement_achiever_pkey PRIMARY KEY (id);


--
-- TOC entry 2860 (class 2606 OID 27532)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2865 (class 2606 OID 27407)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2868 (class 2606 OID 27370)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2862 (class 2606 OID 27360)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2855 (class 2606 OID 27398)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2857 (class 2606 OID 27352)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 27388)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2879 (class 2606 OID 27422)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2870 (class 2606 OID 27378)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2882 (class 2606 OID 27396)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 27436)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2873 (class 2606 OID 27526)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2903 (class 2606 OID 27554)
-- Name: club_club club_club_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT club_club_pkey PRIMARY KEY ("ClubName");


--
-- TOC entry 2908 (class 2606 OID 27572)
-- Name: club_clubmember club_clubmember_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT club_clubmember_pkey PRIMARY KEY ("ClubMemberId");


--
-- TOC entry 2835 (class 2606 OID 27295)
-- Name: department_department department_department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department_department
    ADD CONSTRAINT department_department_pkey PRIMARY KEY ("DepartmentName");


--
-- TOC entry 2840 (class 2606 OID 27301)
-- Name: department_subdepartment department_subdepartment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT department_subdepartment_pkey PRIMARY KEY ("SubDepartmentName");


--
-- TOC entry 2898 (class 2606 OID 27512)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2850 (class 2606 OID 27344)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2852 (class 2606 OID 27342)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2832 (class 2606 OID 27290)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2922 (class 2606 OID 27658)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2929 (class 2606 OID 27674)
-- Name: employee_employee employee_employee_UserId_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_UserId_id_key" UNIQUE ("UserId_id");


--
-- TOC entry 2931 (class 2606 OID 27672)
-- Name: employee_employee employee_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT employee_employee_pkey PRIMARY KEY (id);


--
-- TOC entry 2915 (class 2606 OID 27614)
-- Name: event_event event_event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT event_event_pkey PRIMARY KEY (id);


--
-- TOC entry 2919 (class 2606 OID 27638)
-- Name: main_notification main_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT main_notification_pkey PRIMARY KEY ("NotificationId");


--
-- TOC entry 2846 (class 2606 OID 27450)
-- Name: student_student student_student_UserId_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_UserId_id_key" UNIQUE ("UserId_id");


--
-- TOC entry 2848 (class 2606 OID 27320)
-- Name: student_student student_student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT student_student_pkey PRIMARY KEY ("StudentId");


--
-- TOC entry 2910 (class 2606 OID 27600)
-- Name: venue_venue venue_venue_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venue_venue
    ADD CONSTRAINT venue_venue_pkey PRIMARY KEY ("VenueId");


--
-- TOC entry 2886 (class 1259 OID 27485)
-- Name: achievement_achievement_DepartmentName_id_cb8e6802; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802" ON public.achievement_achievement USING btree ("DepartmentName_id");


--
-- TOC entry 2887 (class 1259 OID 27486)
-- Name: achievement_achievement_DepartmentName_id_cb8e6802_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802_like" ON public.achievement_achievement USING btree ("DepartmentName_id" varchar_pattern_ops);


--
-- TOC entry 2888 (class 1259 OID 27487)
-- Name: achievement_achievement_SubDepartmentName_id_d15e34b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2" ON public.achievement_achievement USING btree ("SubDepartmentName_id");


--
-- TOC entry 2889 (class 1259 OID 27488)
-- Name: achievement_achievement_SubDepartmentName_id_d15e34b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2_like" ON public.achievement_achievement USING btree ("SubDepartmentName_id" varchar_pattern_ops);


--
-- TOC entry 2892 (class 1259 OID 27499)
-- Name: achievement_achiever_AchievementId_id_dbe070c7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "achievement_achiever_AchievementId_id_dbe070c7" ON public.achievement_achiever USING btree ("AchievementId_id");


--
-- TOC entry 2893 (class 1259 OID 27500)
-- Name: achievement_achiever_StudentId_id_b32c6a88; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "achievement_achiever_StudentId_id_b32c6a88" ON public.achievement_achiever USING btree ("StudentId_id");


--
-- TOC entry 2858 (class 1259 OID 27533)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2863 (class 1259 OID 27418)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2866 (class 1259 OID 27419)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2853 (class 1259 OID 27404)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2874 (class 1259 OID 27434)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2877 (class 1259 OID 27433)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2880 (class 1259 OID 27448)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2883 (class 1259 OID 27447)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2871 (class 1259 OID 27527)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2900 (class 1259 OID 27547)
-- Name: club_club_DepartmentName_id_8c4ae513; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "club_club_DepartmentName_id_8c4ae513" ON public.club_club USING btree ("DepartmentName_id");


--
-- TOC entry 2901 (class 1259 OID 27548)
-- Name: club_club_DepartmentName_id_8c4ae513_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "club_club_DepartmentName_id_8c4ae513_like" ON public.club_club USING btree ("DepartmentName_id" varchar_pattern_ops);


--
-- TOC entry 2904 (class 1259 OID 27583)
-- Name: club_clubmember_ClubId_id_6c1da842; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "club_clubmember_ClubId_id_6c1da842" ON public.club_clubmember USING btree ("ClubId_id");


--
-- TOC entry 2905 (class 1259 OID 27584)
-- Name: club_clubmember_ClubId_id_6c1da842_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "club_clubmember_ClubId_id_6c1da842_like" ON public.club_clubmember USING btree ("ClubId_id" varchar_pattern_ops);


--
-- TOC entry 2906 (class 1259 OID 27585)
-- Name: club_clubmember_StudentId_id_029cab03; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "club_clubmember_StudentId_id_029cab03" ON public.club_clubmember USING btree ("StudentId_id");


--
-- TOC entry 2833 (class 1259 OID 27296)
-- Name: department_department_DepartmentName_fb5ebb6d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "department_department_DepartmentName_fb5ebb6d_like" ON public.department_department USING btree ("DepartmentName" varchar_pattern_ops);


--
-- TOC entry 2836 (class 1259 OID 27308)
-- Name: department_subdepartment_DepartmentName_id_ff4808cf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf" ON public.department_subdepartment USING btree ("DepartmentName_id");


--
-- TOC entry 2837 (class 1259 OID 27309)
-- Name: department_subdepartment_DepartmentName_id_ff4808cf_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf_like" ON public.department_subdepartment USING btree ("DepartmentName_id" varchar_pattern_ops);


--
-- TOC entry 2838 (class 1259 OID 27307)
-- Name: department_subdepartment_SubDepartmentName_ed81263a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "department_subdepartment_SubDepartmentName_ed81263a_like" ON public.department_subdepartment USING btree ("SubDepartmentName" varchar_pattern_ops);


--
-- TOC entry 2896 (class 1259 OID 27523)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2899 (class 1259 OID 27524)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2920 (class 1259 OID 27660)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2923 (class 1259 OID 27659)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2924 (class 1259 OID 27690)
-- Name: employee_employee_DepartmentName_id_f52c8eed; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed" ON public.employee_employee USING btree ("DepartmentName_id");


--
-- TOC entry 2925 (class 1259 OID 27691)
-- Name: employee_employee_DepartmentName_id_f52c8eed_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed_like" ON public.employee_employee USING btree ("DepartmentName_id" varchar_pattern_ops);


--
-- TOC entry 2926 (class 1259 OID 27692)
-- Name: employee_employee_SubDepartmentName_id_b9f45a4e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e" ON public.employee_employee USING btree ("SubDepartmentName_id");


--
-- TOC entry 2927 (class 1259 OID 27693)
-- Name: employee_employee_SubDepartmentName_id_b9f45a4e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e_like" ON public.employee_employee USING btree ("SubDepartmentName_id" varchar_pattern_ops);


--
-- TOC entry 2911 (class 1259 OID 27625)
-- Name: event_event_ClubName_id_45eb75dd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "event_event_ClubName_id_45eb75dd" ON public.event_event USING btree ("ClubName_id");


--
-- TOC entry 2912 (class 1259 OID 27626)
-- Name: event_event_ClubName_id_45eb75dd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "event_event_ClubName_id_45eb75dd_like" ON public.event_event USING btree ("ClubName_id" varchar_pattern_ops);


--
-- TOC entry 2913 (class 1259 OID 27627)
-- Name: event_event_VenueId_id_6df8f336; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "event_event_VenueId_id_6df8f336" ON public.event_event USING btree ("VenueId_id");


--
-- TOC entry 2916 (class 1259 OID 27649)
-- Name: main_notification_AchievementId_id_5e7d026f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "main_notification_AchievementId_id_5e7d026f" ON public.main_notification USING btree ("AchievementId_id");


--
-- TOC entry 2917 (class 1259 OID 27650)
-- Name: main_notification_StudentId_id_83ec6a14; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "main_notification_StudentId_id_83ec6a14" ON public.main_notification USING btree ("StudentId_id");


--
-- TOC entry 2841 (class 1259 OID 27331)
-- Name: student_student_DepartmentName_id_0e0ab50c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "student_student_DepartmentName_id_0e0ab50c" ON public.student_student USING btree ("DepartmentName_id");


--
-- TOC entry 2842 (class 1259 OID 27332)
-- Name: student_student_DepartmentName_id_0e0ab50c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "student_student_DepartmentName_id_0e0ab50c_like" ON public.student_student USING btree ("DepartmentName_id" varchar_pattern_ops);


--
-- TOC entry 2843 (class 1259 OID 27333)
-- Name: student_student_SubDepartmentName_id_ff67d62f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "student_student_SubDepartmentName_id_ff67d62f" ON public.student_student USING btree ("SubDepartmentName_id");


--
-- TOC entry 2844 (class 1259 OID 27334)
-- Name: student_student_SubDepartmentName_id_ff67d62f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "student_student_SubDepartmentName_id_ff67d62f_like" ON public.student_student USING btree ("SubDepartmentName_id" varchar_pattern_ops);


--
-- TOC entry 2943 (class 2606 OID 27475)
-- Name: achievement_achievement achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2944 (class 2606 OID 27480)
-- Name: achievement_achievement achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2945 (class 2606 OID 27489)
-- Name: achievement_achiever achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT "achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme" FOREIGN KEY ("AchievementId_id") REFERENCES public.achievement_achievement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2946 (class 2606 OID 27494)
-- Name: achievement_achiever achievement_achiever_StudentId_id_b32c6a88_fk_student_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT "achievement_achiever_StudentId_id_b32c6a88_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2938 (class 2606 OID 27413)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2937 (class 2606 OID 27408)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2936 (class 2606 OID 27399)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2940 (class 2606 OID 27428)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2939 (class 2606 OID 27423)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2942 (class 2606 OID 27442)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2941 (class 2606 OID 27437)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2949 (class 2606 OID 27542)
-- Name: club_club club_club_DepartmentName_id_8c4ae513_fk_departmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT "club_club_DepartmentName_id_8c4ae513_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2951 (class 2606 OID 27586)
-- Name: club_clubmember club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT "club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName" FOREIGN KEY ("ClubId_id") REFERENCES public.club_club("ClubName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2950 (class 2606 OID 27578)
-- Name: club_clubmember club_clubmember_StudentId_id_029cab03_fk_student_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT "club_clubmember_StudentId_id_029cab03_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2932 (class 2606 OID 27302)
-- Name: department_subdepartment department_subdepart_DepartmentName_id_ff4808cf_fk_departmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT "department_subdepart_DepartmentName_id_ff4808cf_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2947 (class 2606 OID 27513)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2948 (class 2606 OID 27518)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2956 (class 2606 OID 27675)
-- Name: employee_employee employee_employee_DepartmentName_id_f52c8eed_fk_departmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_DepartmentName_id_f52c8eed_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2957 (class 2606 OID 27680)
-- Name: employee_employee employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2958 (class 2606 OID 27685)
-- Name: employee_employee employee_employee_UserId_id_8885f0d1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_UserId_id_8885f0d1_fk_auth_user_id" FOREIGN KEY ("UserId_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2952 (class 2606 OID 27615)
-- Name: event_event event_event_ClubName_id_45eb75dd_fk_club_club_ClubName; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT "event_event_ClubName_id_45eb75dd_fk_club_club_ClubName" FOREIGN KEY ("ClubName_id") REFERENCES public.club_club("ClubName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2953 (class 2606 OID 27620)
-- Name: event_event event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT "event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId" FOREIGN KEY ("VenueId_id") REFERENCES public.venue_venue("VenueId") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2954 (class 2606 OID 27639)
-- Name: main_notification main_notification_AchievementId_id_5e7d026f_fk_achieveme; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT "main_notification_AchievementId_id_5e7d026f_fk_achieveme" FOREIGN KEY ("AchievementId_id") REFERENCES public.achievement_achievement(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2955 (class 2606 OID 27644)
-- Name: main_notification main_notification_StudentId_id_83ec6a14_fk_student_s; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT "main_notification_StudentId_id_83ec6a14_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2933 (class 2606 OID 27321)
-- Name: student_student student_student_DepartmentName_id_0e0ab50c_fk_departmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_DepartmentName_id_0e0ab50c_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2934 (class 2606 OID 27326)
-- Name: student_student student_student_SubDepartmentName_id_ff67d62f_fk_departmen; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_SubDepartmentName_id_ff67d62f_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2935 (class 2606 OID 27451)
-- Name: student_student student_student_UserId_id_c9ae8b03_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_UserId_id_c9ae8b03_fk_auth_user_id" FOREIGN KEY ("UserId_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-06-21 21:44:05

--
-- PostgreSQL database dump complete
--

