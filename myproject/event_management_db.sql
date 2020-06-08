PGDMP                          x            event_management_db    12.2    12.2 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16801    event_management_db    DATABASE     �   CREATE DATABASE event_management_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
 #   DROP DATABASE event_management_db;
                postgres    false            �            1259    17073    achievement_achievement    TABLE     .  CREATE TABLE public.achievement_achievement (
    "AchievementId" integer NOT NULL,
    "AchievementName" character varying(150) NOT NULL,
    "AchievementDescription" text NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "SubDepartmentName_id" character varying(150) NOT NULL
);
 +   DROP TABLE public.achievement_achievement;
       public         heap    postgres    false            �            1259    17071 )   achievement_achievement_AchievementId_seq    SEQUENCE     �   CREATE SEQUENCE public."achievement_achievement_AchievementId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."achievement_achievement_AchievementId_seq";
       public          postgres    false    234                       0    0 )   achievement_achievement_AchievementId_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."achievement_achievement_AchievementId_seq" OWNED BY public.achievement_achievement."AchievementId";
          public          postgres    false    233            �            1259    16833 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16831    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    16843    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16841    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    16825    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16823    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    16851 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16861    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16859    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215                       0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16849    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213                       0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    16869    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16867 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    17041 	   club_club    TABLE       CREATE TABLE public.club_club (
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
    DROP TABLE public.club_club;
       public         heap    postgres    false            �            1259    17039    club_club_ClubName_seq    SEQUENCE     �   CREATE SEQUENCE public."club_club_ClubName_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."club_club_ClubName_seq";
       public          postgres    false    230                       0    0    club_club_ClubName_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."club_club_ClubName_seq" OWNED BY public.club_club."ClubName";
          public          postgres    false    229            �            1259    16980    college_college    TABLE     �   CREATE TABLE public.college_college (
    "CollegeId" integer NOT NULL,
    "CollegeName" character varying(150) NOT NULL,
    "City" character varying(150) NOT NULL,
    "CollegeType" character varying(150) NOT NULL
);
 #   DROP TABLE public.college_college;
       public         heap    postgres    false            �            1259    16978    college_college_CollegeId_seq    SEQUENCE     �   CREATE SEQUENCE public."college_college_CollegeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."college_college_CollegeId_seq";
       public          postgres    false    224                       0    0    college_college_CollegeId_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."college_college_CollegeId_seq" OWNED BY public.college_college."CollegeId";
          public          postgres    false    223            �            1259    16972    college_temp    TABLE     �   CREATE TABLE public.college_temp (
    "CollegeId" integer NOT NULL,
    "CollegeName" character varying(150) NOT NULL,
    "City" character varying(150) NOT NULL,
    "CollegeType" character varying(150) NOT NULL
);
     DROP TABLE public.college_temp;
       public         heap    postgres    false            �            1259    16970    college_temp_CollegeId_seq    SEQUENCE     �   CREATE SEQUENCE public."college_temp_CollegeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."college_temp_CollegeId_seq";
       public          postgres    false    222                       0    0    college_temp_CollegeId_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."college_temp_CollegeId_seq" OWNED BY public.college_temp."CollegeId";
          public          postgres    false    221            �            1259    16986    department_department    TABLE     d   CREATE TABLE public.department_department (
    "DepartmentName" character varying(150) NOT NULL
);
 )   DROP TABLE public.department_department;
       public         heap    postgres    false            �            1259    16992    department_subdepartment    TABLE     �   CREATE TABLE public.department_subdepartment (
    "SubDepartmentName" character varying(150) NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL
);
 ,   DROP TABLE public.department_subdepartment;
       public         heap    postgres    false            �            1259    16929    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16927    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    16815    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16813    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205                        0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    16804    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16802    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            !           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    16960    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17008    employee_employee    TABLE     �  CREATE TABLE public.employee_employee (
    "EmployeeId" integer NOT NULL,
    "EmployeeName" character varying(150) NOT NULL,
    "EmployeeUserName" character varying(150) NOT NULL,
    "EmployeePassword" character varying(150) NOT NULL,
    "Gender" character varying(10) NOT NULL,
    "EmployeeImage" character varying(100),
    "EmployeePhone" character varying(150) NOT NULL,
    "EmployeeEmail" character varying(150),
    "EmployeeAddress" text NOT NULL,
    "EmployeeCity" character varying(150) NOT NULL,
    "EmployeeStatus" boolean NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "SubDepartmentName_id" character varying(150) NOT NULL,
    "EmployeeImageName" text
);
 %   DROP TABLE public.employee_employee;
       public         heap    postgres    false            �            1259    17006     employee_employee_EmployeeId_seq    SEQUENCE     �   CREATE SEQUENCE public."employee_employee_EmployeeId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."employee_employee_EmployeeId_seq";
       public          postgres    false    228            "           0    0     employee_employee_EmployeeId_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."employee_employee_EmployeeId_seq" OWNED BY public.employee_employee."EmployeeId";
          public          postgres    false    227            �            1259    17056    event_event    TABLE     �  CREATE TABLE public.event_event (
    "EventId" integer NOT NULL,
    "EventName" character varying(150) NOT NULL,
    "EventType" character varying(150) NOT NULL,
    "EventEligibility" character varying(150) NOT NULL,
    "EventStatus" character varying(10) NOT NULL,
    "EventApproval" character varying(10) NOT NULL,
    "EventStartDate" character varying(150) NOT NULL,
    "EventEndDate" character varying(150) NOT NULL,
    "EventDescription" text NOT NULL,
    "EventAmount" integer NOT NULL,
    "ClubName_id" character varying(150) NOT NULL,
    "EventImage" character varying(100),
    "EventImageName" text,
    "VenueId_id" integer NOT NULL
);
    DROP TABLE public.event_event;
       public         heap    postgres    false            �            1259    17054    event_event_EventId_seq    SEQUENCE     �   CREATE SEQUENCE public."event_event_EventId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."event_event_EventId_seq";
       public          postgres    false    232            #           0    0    event_event_EventId_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."event_event_EventId_seq" OWNED BY public.event_event."EventId";
          public          postgres    false    231            �            1259    17153    mainadmin_mainadmin    TABLE     ,  CREATE TABLE public.mainadmin_mainadmin (
    "AdminId" integer NOT NULL,
    "AdminUserName" character varying(150) NOT NULL,
    "AdminPassword" character varying(150) NOT NULL,
    "AdminType" character varying(150) NOT NULL,
    "Status" boolean NOT NULL,
    "EmployeeId_id" integer NOT NULL
);
 '   DROP TABLE public.mainadmin_mainadmin;
       public         heap    postgres    false            �            1259    17151    mainadmin_mainadmin_AdminId_seq    SEQUENCE     �   CREATE SEQUENCE public."mainadmin_mainadmin_AdminId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."mainadmin_mainadmin_AdminId_seq";
       public          postgres    false    238            $           0    0    mainadmin_mainadmin_AdminId_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."mainadmin_mainadmin_AdminId_seq" OWNED BY public.mainadmin_mainadmin."AdminId";
          public          postgres    false    237            �            1259    17131    venue_venue    TABLE     �   CREATE TABLE public.venue_venue (
    "VenueId" integer NOT NULL,
    "VenueName" character varying(150) NOT NULL,
    "VenueImageName" text,
    "VenueImage" character varying(100),
    "VenueLocation" text NOT NULL
);
    DROP TABLE public.venue_venue;
       public         heap    postgres    false            �            1259    17141    venue_venue_VenueId_seq    SEQUENCE     �   CREATE SEQUENCE public."venue_venue_VenueId_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."venue_venue_VenueId_seq";
       public          postgres    false    235            %           0    0    venue_venue_VenueId_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."venue_venue_VenueId_seq" OWNED BY public.venue_venue."VenueId";
          public          postgres    false    236                       2604    17076 %   achievement_achievement AchievementId    DEFAULT     �   ALTER TABLE ONLY public.achievement_achievement ALTER COLUMN "AchievementId" SET DEFAULT nextval('public."achievement_achievement_AchievementId_seq"'::regclass);
 V   ALTER TABLE public.achievement_achievement ALTER COLUMN "AchievementId" DROP DEFAULT;
       public          postgres    false    233    234    234            �
           2604    16836    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16846    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    16828    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    16854    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    16864    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    16872    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    17099    club_club ClubName    DEFAULT     |   ALTER TABLE ONLY public.club_club ALTER COLUMN "ClubName" SET DEFAULT nextval('public."club_club_ClubName_seq"'::regclass);
 C   ALTER TABLE public.club_club ALTER COLUMN "ClubName" DROP DEFAULT;
       public          postgres    false    229    230    230            �
           2604    16983    college_college CollegeId    DEFAULT     �   ALTER TABLE ONLY public.college_college ALTER COLUMN "CollegeId" SET DEFAULT nextval('public."college_college_CollegeId_seq"'::regclass);
 J   ALTER TABLE public.college_college ALTER COLUMN "CollegeId" DROP DEFAULT;
       public          postgres    false    223    224    224            �
           2604    16975    college_temp CollegeId    DEFAULT     �   ALTER TABLE ONLY public.college_temp ALTER COLUMN "CollegeId" SET DEFAULT nextval('public."college_temp_CollegeId_seq"'::regclass);
 G   ALTER TABLE public.college_temp ALTER COLUMN "CollegeId" DROP DEFAULT;
       public          postgres    false    221    222    222            �
           2604    16932    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �
           2604    16818    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16807    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                        2604    17011    employee_employee EmployeeId    DEFAULT     �   ALTER TABLE ONLY public.employee_employee ALTER COLUMN "EmployeeId" SET DEFAULT nextval('public."employee_employee_EmployeeId_seq"'::regclass);
 M   ALTER TABLE public.employee_employee ALTER COLUMN "EmployeeId" DROP DEFAULT;
       public          postgres    false    228    227    228                       2604    17059    event_event EventId    DEFAULT     ~   ALTER TABLE ONLY public.event_event ALTER COLUMN "EventId" SET DEFAULT nextval('public."event_event_EventId_seq"'::regclass);
 D   ALTER TABLE public.event_event ALTER COLUMN "EventId" DROP DEFAULT;
       public          postgres    false    232    231    232                       2604    17156    mainadmin_mainadmin AdminId    DEFAULT     �   ALTER TABLE ONLY public.mainadmin_mainadmin ALTER COLUMN "AdminId" SET DEFAULT nextval('public."mainadmin_mainadmin_AdminId_seq"'::regclass);
 L   ALTER TABLE public.mainadmin_mainadmin ALTER COLUMN "AdminId" DROP DEFAULT;
       public          postgres    false    238    237    238                       2604    17143    venue_venue VenueId    DEFAULT     ~   ALTER TABLE ONLY public.venue_venue ALTER COLUMN "VenueId" SET DEFAULT nextval('public."venue_venue_VenueId_seq"'::regclass);
 D   ALTER TABLE public.venue_venue ALTER COLUMN "VenueId" DROP DEFAULT;
       public          postgres    false    236    235            
          0    17073    achievement_achievement 
   TABLE DATA           �   COPY public.achievement_achievement ("AchievementId", "AchievementName", "AchievementDescription", "DepartmentName_id", "SubDepartmentName_id") FROM stdin;
    public          postgres    false    234   L      �          0    16833 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   X      �          0    16843    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   u      �          0    16825    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   �      �          0    16851 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   
      �          0    16861    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   �
      �          0    16869    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   �
                0    17041 	   club_club 
   TABLE DATA           �   COPY public.club_club ("ClubName", "ClubType", "clubStatus", "clubApproval", "DepartmentName_id", "ClubImage", "ClubImageName", "DribbbleLink", "FacebookLink", "InstagramLink", "TwitterLink") FROM stdin;
    public          postgres    false    230   �
                 0    16980    college_college 
   TABLE DATA           \   COPY public.college_college ("CollegeId", "CollegeName", "City", "CollegeType") FROM stdin;
    public          postgres    false    224   g      �          0    16972    college_temp 
   TABLE DATA           Y   COPY public.college_temp ("CollegeId", "CollegeName", "City", "CollegeType") FROM stdin;
    public          postgres    false    222                   0    16986    department_department 
   TABLE DATA           A   COPY public.department_department ("DepartmentName") FROM stdin;
    public          postgres    false    225   ]                0    16992    department_subdepartment 
   TABLE DATA           \   COPY public.department_subdepartment ("SubDepartmentName", "DepartmentName_id") FROM stdin;
    public          postgres    false    226   �      �          0    16929    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   �      �          0    16815    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205         �          0    16804    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �      �          0    16960    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   l                0    17008    employee_employee 
   TABLE DATA           %  COPY public.employee_employee ("EmployeeId", "EmployeeName", "EmployeeUserName", "EmployeePassword", "Gender", "EmployeeImage", "EmployeePhone", "EmployeeEmail", "EmployeeAddress", "EmployeeCity", "EmployeeStatus", "DepartmentName_id", "SubDepartmentName_id", "EmployeeImageName") FROM stdin;
    public          postgres    false    228   �                0    17056    event_event 
   TABLE DATA              COPY public.event_event ("EventId", "EventName", "EventType", "EventEligibility", "EventStatus", "EventApproval", "EventStartDate", "EventEndDate", "EventDescription", "EventAmount", "ClubName_id", "EventImage", "EventImageName", "VenueId_id") FROM stdin;
    public          postgres    false    232   K                0    17153    mainadmin_mainadmin 
   TABLE DATA           �   COPY public.mainadmin_mainadmin ("AdminId", "AdminUserName", "AdminPassword", "AdminType", "Status", "EmployeeId_id") FROM stdin;
    public          postgres    false    238   A                0    17131    venue_venue 
   TABLE DATA           n   COPY public.venue_venue ("VenueId", "VenueName", "VenueImageName", "VenueImage", "VenueLocation") FROM stdin;
    public          postgres    false    235   �      &           0    0 )   achievement_achievement_AchievementId_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."achievement_achievement_AchievementId_seq"', 3, true);
          public          postgres    false    233            '           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            (           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            )           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);
          public          postgres    false    206            *           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            +           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    212            ,           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            -           0    0    club_club_ClubName_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."club_club_ClubName_seq"', 1, false);
          public          postgres    false    229            .           0    0    college_college_CollegeId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."college_college_CollegeId_seq"', 8, true);
          public          postgres    false    223            /           0    0    college_temp_CollegeId_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."college_temp_CollegeId_seq"', 1, true);
          public          postgres    false    221            0           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    218            1           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);
          public          postgres    false    204            2           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);
          public          postgres    false    202            3           0    0     employee_employee_EmployeeId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."employee_employee_EmployeeId_seq"', 12, true);
          public          postgres    false    227            4           0    0    event_event_EventId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."event_event_EventId_seq"', 5, true);
          public          postgres    false    231            5           0    0    mainadmin_mainadmin_AdminId_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."mainadmin_mainadmin_AdminId_seq"', 1, false);
          public          postgres    false    237            6           0    0    venue_venue_VenueId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."venue_venue_VenueId_seq"', 5, true);
          public          postgres    false    236            T           2606    17081 4   achievement_achievement achievement_achievement_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT achievement_achievement_pkey PRIMARY KEY ("AchievementId");
 ^   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT achievement_achievement_pkey;
       public            postgres    false    234                       2606    16958    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209                       2606    16885 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211                       2606    16848 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211                       2606    16838    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209                       2606    16876 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                       2606    16830 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            #           2606    16866 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            &           2606    16900 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215                       2606    16856    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            )           2606    16874 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            ,           2606    16914 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217                        2606    16952     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            J           2606    17101    club_club club_club_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT club_club_pkey PRIMARY KEY ("ClubName");
 B   ALTER TABLE ONLY public.club_club DROP CONSTRAINT club_club_pkey;
       public            postgres    false    230            8           2606    16985 $   college_college college_college_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.college_college
    ADD CONSTRAINT college_college_pkey PRIMARY KEY ("CollegeId");
 N   ALTER TABLE ONLY public.college_college DROP CONSTRAINT college_college_pkey;
       public            postgres    false    224            6           2606    16977    college_temp college_temp_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.college_temp
    ADD CONSTRAINT college_temp_pkey PRIMARY KEY ("CollegeId");
 H   ALTER TABLE ONLY public.college_temp DROP CONSTRAINT college_temp_pkey;
       public            postgres    false    222            ;           2606    16990 0   department_department department_department_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.department_department
    ADD CONSTRAINT department_department_pkey PRIMARY KEY ("DepartmentName");
 Z   ALTER TABLE ONLY public.department_department DROP CONSTRAINT department_department_pkey;
       public            postgres    false    225            @           2606    16996 6   department_subdepartment department_subdepartment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT department_subdepartment_pkey PRIMARY KEY ("SubDepartmentName");
 `   ALTER TABLE ONLY public.department_subdepartment DROP CONSTRAINT department_subdepartment_pkey;
       public            postgres    false    226            /           2606    16938 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            	           2606    16822 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205                       2606    16820 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205                       2606    16812 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            3           2606    16967 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            F           2606    17016 (   employee_employee employee_employee_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT employee_employee_pkey PRIMARY KEY ("EmployeeId");
 R   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT employee_employee_pkey;
       public            postgres    false    228            N           2606    17064    event_event event_event_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT event_event_pkey PRIMARY KEY ("EventId");
 F   ALTER TABLE ONLY public.event_event DROP CONSTRAINT event_event_pkey;
       public            postgres    false    232            Y           2606    17158 ,   mainadmin_mainadmin mainadmin_mainadmin_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mainadmin_mainadmin
    ADD CONSTRAINT mainadmin_mainadmin_pkey PRIMARY KEY ("AdminId");
 V   ALTER TABLE ONLY public.mainadmin_mainadmin DROP CONSTRAINT mainadmin_mainadmin_pkey;
       public            postgres    false    238            V           2606    17140    venue_venue venue_venue_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.venue_venue
    ADD CONSTRAINT venue_venue_pkey PRIMARY KEY ("VenueId");
 F   ALTER TABLE ONLY public.venue_venue DROP CONSTRAINT venue_venue_pkey;
       public            postgres    false    235            O           1259    17092 2   achievement_achievement_DepartmentName_id_cb8e6802    INDEX     �   CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802" ON public.achievement_achievement USING btree ("DepartmentName_id");
 H   DROP INDEX public."achievement_achievement_DepartmentName_id_cb8e6802";
       public            postgres    false    234            P           1259    17093 7   achievement_achievement_DepartmentName_id_cb8e6802_like    INDEX     �   CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802_like" ON public.achievement_achievement USING btree ("DepartmentName_id" varchar_pattern_ops);
 M   DROP INDEX public."achievement_achievement_DepartmentName_id_cb8e6802_like";
       public            postgres    false    234            Q           1259    17094 5   achievement_achievement_SubDepartmentName_id_d15e34b2    INDEX     �   CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2" ON public.achievement_achievement USING btree ("SubDepartmentName_id");
 K   DROP INDEX public."achievement_achievement_SubDepartmentName_id_d15e34b2";
       public            postgres    false    234            R           1259    17095 :   achievement_achievement_SubDepartmentName_id_d15e34b2_like    INDEX     �   CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2_like" ON public.achievement_achievement USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 P   DROP INDEX public."achievement_achievement_SubDepartmentName_id_d15e34b2_like";
       public            postgres    false    234                       1259    16959    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209                       1259    16896 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211                       1259    16897 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                       1259    16882 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            !           1259    16912 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            $           1259    16911 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            '           1259    16926 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            *           1259    16925 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217                       1259    16953     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            G           1259    17052 $   club_club_DepartmentName_id_8c4ae513    INDEX     k   CREATE INDEX "club_club_DepartmentName_id_8c4ae513" ON public.club_club USING btree ("DepartmentName_id");
 :   DROP INDEX public."club_club_DepartmentName_id_8c4ae513";
       public            postgres    false    230            H           1259    17053 )   club_club_DepartmentName_id_8c4ae513_like    INDEX     �   CREATE INDEX "club_club_DepartmentName_id_8c4ae513_like" ON public.club_club USING btree ("DepartmentName_id" varchar_pattern_ops);
 ?   DROP INDEX public."club_club_DepartmentName_id_8c4ae513_like";
       public            postgres    false    230            9           1259    16991 2   department_department_DepartmentName_fb5ebb6d_like    INDEX     �   CREATE INDEX "department_department_DepartmentName_fb5ebb6d_like" ON public.department_department USING btree ("DepartmentName" varchar_pattern_ops);
 H   DROP INDEX public."department_department_DepartmentName_fb5ebb6d_like";
       public            postgres    false    225            <           1259    17003 3   department_subdepartment_DepartmentName_id_ff4808cf    INDEX     �   CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf" ON public.department_subdepartment USING btree ("DepartmentName_id");
 I   DROP INDEX public."department_subdepartment_DepartmentName_id_ff4808cf";
       public            postgres    false    226            =           1259    17004 8   department_subdepartment_DepartmentName_id_ff4808cf_like    INDEX     �   CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf_like" ON public.department_subdepartment USING btree ("DepartmentName_id" varchar_pattern_ops);
 N   DROP INDEX public."department_subdepartment_DepartmentName_id_ff4808cf_like";
       public            postgres    false    226            >           1259    17002 8   department_subdepartment_SubDepartmentName_ed81263a_like    INDEX     �   CREATE INDEX "department_subdepartment_SubDepartmentName_ed81263a_like" ON public.department_subdepartment USING btree ("SubDepartmentName" varchar_pattern_ops);
 N   DROP INDEX public."department_subdepartment_SubDepartmentName_ed81263a_like";
       public            postgres    false    226            -           1259    16949 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            0           1259    16950 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            1           1259    16969 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            4           1259    16968 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            A           1259    17027 ,   employee_employee_DepartmentName_id_f52c8eed    INDEX     {   CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed" ON public.employee_employee USING btree ("DepartmentName_id");
 B   DROP INDEX public."employee_employee_DepartmentName_id_f52c8eed";
       public            postgres    false    228            B           1259    17028 1   employee_employee_DepartmentName_id_f52c8eed_like    INDEX     �   CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed_like" ON public.employee_employee USING btree ("DepartmentName_id" varchar_pattern_ops);
 G   DROP INDEX public."employee_employee_DepartmentName_id_f52c8eed_like";
       public            postgres    false    228            C           1259    17029 /   employee_employee_SubDepartmentName_id_b9f45a4e    INDEX     �   CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e" ON public.employee_employee USING btree ("SubDepartmentName_id");
 E   DROP INDEX public."employee_employee_SubDepartmentName_id_b9f45a4e";
       public            postgres    false    228            D           1259    17030 4   employee_employee_SubDepartmentName_id_b9f45a4e_like    INDEX     �   CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e_like" ON public.employee_employee USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 J   DROP INDEX public."employee_employee_SubDepartmentName_id_b9f45a4e_like";
       public            postgres    false    228            K           1259    17111     event_event_ClubName_id_45eb75dd    INDEX     c   CREATE INDEX "event_event_ClubName_id_45eb75dd" ON public.event_event USING btree ("ClubName_id");
 6   DROP INDEX public."event_event_ClubName_id_45eb75dd";
       public            postgres    false    232            L           1259    17150    event_event_VenueId_id_6df8f336    INDEX     a   CREATE INDEX "event_event_VenueId_id_6df8f336" ON public.event_event USING btree ("VenueId_id");
 5   DROP INDEX public."event_event_VenueId_id_6df8f336";
       public            postgres    false    232            W           1259    17164 *   mainadmin_mainadmin_EmployeeId_id_441e7dc6    INDEX     w   CREATE INDEX "mainadmin_mainadmin_EmployeeId_id_441e7dc6" ON public.mainadmin_mainadmin USING btree ("EmployeeId_id");
 @   DROP INDEX public."mainadmin_mainadmin_EmployeeId_id_441e7dc6";
       public            postgres    false    238            i           2606    17082 T   achievement_achievement achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT "achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen";
       public          postgres    false    234    2875    225            j           2606    17087 W   achievement_achievement achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen    FK CONSTRAINT     	  ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT "achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen";
       public          postgres    false    2880    234    226            \           2606    16891 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    2832    211            [           2606    16886 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    211    2837            Z           2606    16877 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    205    2827            ^           2606    16906 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    209    2837    215            ]           2606    16901 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2845    215    213            `           2606    16920 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2832    217    207            _           2606    16915 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2845    213    217            f           2606    17047 ;   club_club club_club_DepartmentName_id_8c4ae513_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT "club_club_DepartmentName_id_8c4ae513_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.club_club DROP CONSTRAINT "club_club_DepartmentName_id_8c4ae513_fk_departmen";
       public          postgres    false    2875    230    225            c           2606    16997 U   department_subdepartment department_subdepart_DepartmentName_id_ff4808cf_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT "department_subdepart_DepartmentName_id_ff4808cf_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.department_subdepartment DROP CONSTRAINT "department_subdepart_DepartmentName_id_ff4808cf_fk_departmen";
       public          postgres    false    225    226    2875            a           2606    16939 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2827    219    205            b           2606    16944 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    2845    213            d           2606    17017 K   employee_employee employee_employee_DepartmentName_id_f52c8eed_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_DepartmentName_id_f52c8eed_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_DepartmentName_id_f52c8eed_fk_departmen";
       public          postgres    false    228    225    2875            e           2606    17022 N   employee_employee employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen    FK CONSTRAINT        ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen";
       public          postgres    false    228    2880    226            g           2606    17120 /   event_event event_event_ClubName_id_45eb75dd_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT "event_event_ClubName_id_45eb75dd_fk" FOREIGN KEY ("ClubName_id") REFERENCES public.club_club("ClubName") DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.event_event DROP CONSTRAINT "event_event_ClubName_id_45eb75dd_fk";
       public          postgres    false    230    2890    232            h           2606    17145 B   event_event event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT "event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId" FOREIGN KEY ("VenueId_id") REFERENCES public.venue_venue("VenueId") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.event_event DROP CONSTRAINT "event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId";
       public          postgres    false    232    235    2902            k           2606    17159 K   mainadmin_mainadmin mainadmin_mainadmin_EmployeeId_id_441e7dc6_fk_employee_    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainadmin_mainadmin
    ADD CONSTRAINT "mainadmin_mainadmin_EmployeeId_id_441e7dc6_fk_employee_" FOREIGN KEY ("EmployeeId_id") REFERENCES public.employee_employee("EmployeeId") DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.mainadmin_mainadmin DROP CONSTRAINT "mainadmin_mainadmin_EmployeeId_id_441e7dc6_fk_employee_";
       public          postgres    false    238    228    2886            
   �   x��1R�0E��:�Nf�@f�-��(A�#gm��Gފ;���������k�؍V�����<SN`�-c�A,F�=P)���E�\�F��%�ȁ���òO���X�(�mo�j�0E��^@i?|�r�����e�sI�Iԕb �g-���f��1ߓP�����i7ϷR��lW��!�Ѝ�-�2|&	�M�k��]�(B[��s��v�����ֿx3�&:�����w�&ܨa�=�}��L��      �      x������ � �      �      x������ � �      �   b  x�e�ݎ�0F����	F�����J�S�D�Y����N��5�r�?���a�^���q��az�]p��ﲦ�/����-�[
�^c'yK����.�l�P��f���w��=W��n���(v�=X?`EаGU�wʖ��c~���ه��Ku�$X���� ��$�,�\f�y�/W����Ce\�@mo@.g�ѻ�LWs�o�<�i��nz?���@���Vd��'������^574�����	���we�3c�v�D/c&�
�UF4�S�?݁t�G_@��*"@�L��L�s�d:����Q�G+_�q��=,`��[%Xa۔ � ��k|����͝HJ7|	�R�,)X-l(iZP�?�g�.cOy����<�҅�`>�������NЉXB�?�1���i�+
����0�[%�hX��������X�}��)�D�|$"�3 �Α��NH��W�xZ��#�0����2�1��	~\שh/?ݲ���o���5�/�a66�8o�cC�/�:!˯����?-|�q��b�1q��H]�}o����.�7ݡ�@��'C�9��#J�
������R3�      �   �   x�5�O�0@�ۧ��M����A��ERA�F�K�Z�f}��{�wx��sS\驯r�]|�1�l�O�W�v���0�o��j�i)/Y'�˴fj����"�*޼�Q[���QB�M�M�\0�9�x��-����Q�!/�B�A���3�	�	p� `
�	���,�      �      x������ � �      �      x������ � �         g  x���;o�0�g�Wd�Th�vl��C#!�j;D��slS?��/�Ʀ������0G�� ڡ#�\��aç�["+8�#�u�B�H�u���"��,[Ȩ`��ɾ�oB���4�$a.�ψ��A�I\ٵ�)�5ț́�
���c )6ݭ�+�e<j�a'�6\}S���z�K��䂞	��xe�􏧭)�e<��ai�4���\\uN�Hril����Qwu��ۙ�h�F��1۟��ǟχ���UO��p������-p\�� yk�3�{�4�R1o[�α��E��[ �*ۼW�,��a��\�}%}x�,����D��g�lB�;�)�O��{�O          �   x�e�M
�0F��)����
-.J��t�Mj�:�3�Lo_����{���ͽz�[b�F� ��F��t2uf4���2HN`��@уk:�?(r"Ɣ�i�	*W�ż��Y�Ѹi��$�NJ���bԑF�hO�w��7���\K(������Yk���KQ      �   ;   x�3���Q�/�IQHMLNU��,K-*�,��(�K�t,-�����/-V������ �Oc         H   x�s���M-JN�r��-(-I-RN�L�
8�g�s�&�%����p���R�2�ҹ|˹b���� @�         *   x��uv�t��-(-I-RN�L�KN���q��I,����� ��	�      �      x������ � �      �   �   x�M��� D�w>�Hk���/�lZn�bҿA^�3��$ hZ�4���&�M)���k��}�ټM�jR`��kb���qhF
\�����xc�����x��n�Q�!�� ���	�e��'@t��4����`Q���e�ٔ��!�+��B��'i�������i�      �   �  x����r�8���S�~k(u�ZϲU*b3��x �&o��	��dn\��|j�>j�bם��4���z(�R�S36U[�B�C����A��l��&��QH�`Q]���Eڒ�0���������3ZK�J/*�mw�������RE���ƕ����1�`h��4V���N�g[��kv��C�f8�̝{�j�o��N<U��1͂:�l�cՎu�ul�a*lB�c�;��� �zL3^�0�a4�.�|�Ǫi��8g��A>��-h���ԝ�'Ny�yo�2�o1m5�S#��}W�r��2���K�g��]���9 I�-�sAU�쫱�k"���x���:<	����D�Щo\��Tf���wv��MaH4N4P3��w��ߑ���]3��r��x�ߟ7Q}b�w� [���o�+�^���ȵm}��m@Д�8��䃿bL_n��RA�� ��ICN��\��Q�tQ��6��A�����b.o7?e�{Y�LTy�bQ�m�Y?ۯaگ�rN]^�VJ�3$'�bpH��P  K�u^^� tA��H%b�̅�e�D�A�7�I΃���@��pL��Es�c���!h_�%��������Q�>@`�f*Ri��^����$�J�� '���{#�/�G,��ȣI�T�t�AD�+ ��ے����vI��'�+X�ʠM	 ��m�d���;�!+�9BD�k�-x��x3���Rb@ (I̾�^tG �!h9G����M	��mZ���^q�0j?% -��L6�� 9+ ��J#O�^�������`��e���U�Y�귮�o#e�����~1�g��/)_!xZ^��I֪�F\��"�I�v:���䳫a��ϰ6��9$!d�C>�H����l�1�4�M��
y�9}�։x]���;o8��o����?�w��      �   �  x�=��n�0E��St?j���:A�j#"��� �1��~h4S���#��]�T
����Ww�s}��#Ў���e�	<�[ֆX�Br�CA�f��5�d#Z�����K�d$�xtv�qe��ǳH�)	U�蝪I�hK_Ve�Ma\�%|��P�+�eޖ�ϖ����8%t���>��x�<GG��2CW�����8TOn��ŏIY��ٙEf�Y���\�0 �FD���Z~1y�7�4���x_!��+�_1|����퍽�ߠ���K�;`�b��˩���\�@}�](kg�#�D,�1��F1��wK2�g�B��tz��\~���|���3���)��*���H�]l�����v�hy���q�������f�^��?��         =  x�m��N�0�����6i��m9�UDp�J��%q����M�)���x�y����ii!�@9`���S���x�@���l��f�'��c_Âe,�3�rv{�=�-�fVu-��*���<"�N��l��w�kZV���C�YA�L2x�Z
4VK8����PN�ݏdy��Dq��(��x2�%]�j��[;#7��5��$�Rhg���	k�=�]��鯘D�G$���"MR�Տ9��ɶ�0!U%p�=���8�D��Z�l4f��_��E��Awgl�e~u�L��j�x�����_A���<�K��1���!�7`��         �  x�u��N�0��ާ���А]��^K�@B**U�H��י$f;����c�R�r<I?;ˢJ���f�o��L�Ts�Z�S�,��lũ4��\�˃����\���z:~uU�>�����[��h�ud�,�@�&��1��$cd[1�6�G-�p�����m,�c�t�,�ҙ똮Z�A��� k��J���u�64��i��j�I�
!��1P�b*��=Ŗ�T�f��e
��q"���I�z�e�e�t��r��xF����mb
rD6�5,�C�ｓ�ݧ���аi��� �HY׆Q�3i�����zr���~��C���-zۈ��١�`i;fTnĥ��Dkoµ�r6v4?�ڮS�r���A�Nm(!�Zc�t�Fj4�z2�[���i�V���k���*R�L@%�(���8x�l���0a�J�����Ed��>RH����6�V���?$U�w={�W�y����.vO#���� ^�6R�g���x(�/Ĳ,���S�RZ\�;F����O��#��K���b�J\���`'&N'���{5�)w����:�z�w0�ɹa �h�Sŝ�C�������,Cr�5����OFf+�?ƌ�OAOAi}����v7�h8�X�lM嶻�G��c�;w��4F������>�ڤ� Ǟw�i�c�$�+|	Ɲ����6�5��oF뤯2��Zd���OC��䏇���6�JC{b��ޝI>^��#�Ȉ��.gߊ�l�5�ǔ         :   x�3�,+�H,.)�4��4�4��LL����,��2�L�.��,��KJY"�̹b���� :         D  x����n�0@g�+���$�+Uԭ���ĭ�l���oL�(�m�}��y3�[Z���n�85S�Nz��iUK�xV�Y�|���N4������+&,��t+���P�1}A��a�l#c:g,�(#��V��2".���i�V:�Z��h�diY,��?�\�XL�Ga�;
��zP�V��k���'@�k�t�,�,x�^b�%�Z}�+�?:V��%/n�>����a��	-��&س����z0�vC*�Z6x^�E~o8S����r���d�� ��$�Hߢ�`2(n�:U�+���z��]P��a�	��IE?��&�     