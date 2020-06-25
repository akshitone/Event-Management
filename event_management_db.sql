PGDMP     *    *                x            event_management_db    12.2    12.2 �    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    19449    event_management_db    DATABASE     �   CREATE DATABASE event_management_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
 #   DROP DATABASE event_management_db;
                postgres    false            �            1259    19628    achievement_achievement    TABLE     !  CREATE TABLE public.achievement_achievement (
    id integer NOT NULL,
    "AchievementName" character varying(150) NOT NULL,
    "AchievementDescription" text NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "SubDepartmentName_id" character varying(150) NOT NULL
);
 +   DROP TABLE public.achievement_achievement;
       public         heap    postgres    false            �            1259    19626    achievement_achievement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achievement_achievement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.achievement_achievement_id_seq;
       public          postgres    false    223            I           0    0    achievement_achievement_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.achievement_achievement_id_seq OWNED BY public.achievement_achievement.id;
          public          postgres    false    222            �            1259    19639    achievement_achiever    TABLE     �   CREATE TABLE public.achievement_achiever (
    id integer NOT NULL,
    "AchievementId_id" integer NOT NULL,
    "StudentId_id" integer NOT NULL
);
 (   DROP TABLE public.achievement_achiever;
       public         heap    postgres    false            �            1259    19637    achievement_achiever_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achievement_achiever_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.achievement_achiever_id_seq;
       public          postgres    false    225            J           0    0    achievement_achiever_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.achievement_achiever_id_seq OWNED BY public.achievement_achiever.id;
          public          postgres    false    224            �            1259    19500 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    19498    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    211            K           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    210            �            1259    19510    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    19508    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    213            L           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    212            �            1259    19492    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    19490    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    209            M           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    208            �            1259    19518 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    19528    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    19526    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    217            N           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    216            �            1259    19516    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    215            O           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    214            �            1259    19536    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    19534 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    219            P           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    218            �            1259    19704 	   club_club    TABLE       CREATE TABLE public.club_club (
    "ClubName" character varying(150) NOT NULL,
    "ClubImageName" text,
    "ClubImage" character varying(100),
    "ClubType" character varying(150),
    "FacebookLink" character varying(150),
    "InstagramLink" character varying(150),
    "TwitterLink" character varying(150),
    "DribbbleLink" character varying(150),
    "clubStatus" character varying(10) NOT NULL,
    "clubApproval" character varying(10) NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "UserId_id" integer
);
    DROP TABLE public.club_club;
       public         heap    postgres    false            �            1259    19716    club_clubmember    TABLE     �   CREATE TABLE public.club_clubmember (
    "ClubMemberId" integer NOT NULL,
    "MemberRole" character varying(150) NOT NULL,
    "ClubId_id" character varying(150) NOT NULL,
    "StudentId_id" integer NOT NULL
);
 #   DROP TABLE public.club_clubmember;
       public         heap    postgres    false            �            1259    19714     club_clubmember_ClubMemberId_seq    SEQUENCE     �   CREATE SEQUENCE public."club_clubmember_ClubMemberId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."club_clubmember_ClubMemberId_seq";
       public          postgres    false    230            Q           0    0     club_clubmember_ClubMemberId_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."club_clubmember_ClubMemberId_seq" OWNED BY public.club_clubmember."ClubMemberId";
          public          postgres    false    229            �            1259    19461    department_department    TABLE     d   CREATE TABLE public.department_department (
    "DepartmentName" character varying(150) NOT NULL
);
 )   DROP TABLE public.department_department;
       public         heap    postgres    false            �            1259    19466    department_subdepartment    TABLE     �   CREATE TABLE public.department_subdepartment (
    "SubDepartmentName" character varying(150) NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL
);
 ,   DROP TABLE public.department_subdepartment;
       public         heap    postgres    false            �            1259    19673    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    19671    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    227            R           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    226            �            1259    19482    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    19480    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    207            S           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    206            �            1259    19452    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    19450    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            T           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    19838    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    19750    employee_employee    TABLE     �  CREATE TABLE public.employee_employee (
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
    "Role" character varying(150) NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "SubDepartmentName_id" character varying(150) NOT NULL,
    "UserId_id" integer
);
 %   DROP TABLE public.employee_employee;
       public         heap    postgres    false            �            1259    19748    employee_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public          postgres    false    232            U           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee_employee.id;
          public          postgres    false    231            �            1259    19793    event_event    TABLE     �  CREATE TABLE public.event_event (
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
    DROP TABLE public.event_event;
       public         heap    postgres    false            �            1259    19791    event_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.event_event_id_seq;
       public          postgres    false    236            V           0    0    event_event_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.event_event_id_seq OWNED BY public.event_event.id;
          public          postgres    false    235            �            1259    19859    event_eventmember    TABLE     �   CREATE TABLE public.event_eventmember (
    "EventMemberId" integer NOT NULL,
    "EventId_id" integer NOT NULL,
    "StudentId_id" integer NOT NULL
);
 %   DROP TABLE public.event_eventmember;
       public         heap    postgres    false            �            1259    19857 #   event_eventmember_EventMemberId_seq    SEQUENCE     �   CREATE SEQUENCE public."event_eventmember_EventMemberId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."event_eventmember_EventMemberId_seq";
       public          postgres    false    241            W           0    0 #   event_eventmember_EventMemberId_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."event_eventmember_EventMemberId_seq" OWNED BY public.event_eventmember."EventMemberId";
          public          postgres    false    240            �            1259    19817    main_notification    TABLE       CREATE TABLE public.main_notification (
    "NotificationId" integer NOT NULL,
    "NotificationTitle" text NOT NULL,
    "NotificationDescription" text NOT NULL,
    "NotificationDateTime" timestamp with time zone NOT NULL,
    "AchievementId_id" integer,
    "StudentId_id" integer
);
 %   DROP TABLE public.main_notification;
       public         heap    postgres    false            �            1259    19815 $   main_notification_NotificationId_seq    SEQUENCE     �   CREATE SEQUENCE public."main_notification_NotificationId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."main_notification_NotificationId_seq";
       public          postgres    false    238            X           0    0 $   main_notification_NotificationId_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."main_notification_NotificationId_seq" OWNED BY public.main_notification."NotificationId";
          public          postgres    false    237            �            1259    19596    student_student    TABLE     i  CREATE TABLE public.student_student (
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
 #   DROP TABLE public.student_student;
       public         heap    postgres    false            �            1259    19594    student_student_StudentId_seq    SEQUENCE     �   CREATE SEQUENCE public."student_student_StudentId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."student_student_StudentId_seq";
       public          postgres    false    221            Y           0    0    student_student_StudentId_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."student_student_StudentId_seq" OWNED BY public.student_student."StudentId";
          public          postgres    false    220            �            1259    19782    venue_venue    TABLE     �   CREATE TABLE public.venue_venue (
    "VenueId" integer NOT NULL,
    "VenueName" character varying(150) NOT NULL,
    "VenueImageName" text,
    "VenueImage" character varying(100),
    "VenueLocation" text NOT NULL
);
    DROP TABLE public.venue_venue;
       public         heap    postgres    false            �            1259    19780    venue_venue_VenueId_seq    SEQUENCE     �   CREATE SEQUENCE public."venue_venue_VenueId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."venue_venue_VenueId_seq";
       public          postgres    false    234            Z           0    0    venue_venue_VenueId_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."venue_venue_VenueId_seq" OWNED BY public.venue_venue."VenueId";
          public          postgres    false    233            	           2604    19631    achievement_achievement id    DEFAULT     �   ALTER TABLE ONLY public.achievement_achievement ALTER COLUMN id SET DEFAULT nextval('public.achievement_achievement_id_seq'::regclass);
 I   ALTER TABLE public.achievement_achievement ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            
           2604    19642    achievement_achiever id    DEFAULT     �   ALTER TABLE ONLY public.achievement_achiever ALTER COLUMN id SET DEFAULT nextval('public.achievement_achiever_id_seq'::regclass);
 F   ALTER TABLE public.achievement_achiever ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225                       2604    19503    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                       2604    19513    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                       2604    19495    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209                       2604    19521    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    19531    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    19539    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                       2604    19719    club_clubmember ClubMemberId    DEFAULT     �   ALTER TABLE ONLY public.club_clubmember ALTER COLUMN "ClubMemberId" SET DEFAULT nextval('public."club_clubmember_ClubMemberId_seq"'::regclass);
 M   ALTER TABLE public.club_clubmember ALTER COLUMN "ClubMemberId" DROP DEFAULT;
       public          postgres    false    229    230    230                       2604    19676    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227                       2604    19485    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                        2604    19455    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                       2604    19753    employee_employee id    DEFAULT     |   ALTER TABLE ONLY public.employee_employee ALTER COLUMN id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee_employee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232                       2604    19796    event_event id    DEFAULT     p   ALTER TABLE ONLY public.event_event ALTER COLUMN id SET DEFAULT nextval('public.event_event_id_seq'::regclass);
 =   ALTER TABLE public.event_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236                       2604    19862    event_eventmember EventMemberId    DEFAULT     �   ALTER TABLE ONLY public.event_eventmember ALTER COLUMN "EventMemberId" SET DEFAULT nextval('public."event_eventmember_EventMemberId_seq"'::regclass);
 P   ALTER TABLE public.event_eventmember ALTER COLUMN "EventMemberId" DROP DEFAULT;
       public          postgres    false    240    241    241                       2604    19820     main_notification NotificationId    DEFAULT     �   ALTER TABLE ONLY public.main_notification ALTER COLUMN "NotificationId" SET DEFAULT nextval('public."main_notification_NotificationId_seq"'::regclass);
 Q   ALTER TABLE public.main_notification ALTER COLUMN "NotificationId" DROP DEFAULT;
       public          postgres    false    238    237    238                       2604    19599    student_student StudentId    DEFAULT     �   ALTER TABLE ONLY public.student_student ALTER COLUMN "StudentId" SET DEFAULT nextval('public."student_student_StudentId_seq"'::regclass);
 J   ALTER TABLE public.student_student ALTER COLUMN "StudentId" DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    19785    venue_venue VenueId    DEFAULT     ~   ALTER TABLE ONLY public.venue_venue ALTER COLUMN "VenueId" SET DEFAULT nextval('public."venue_venue_VenueId_seq"'::regclass);
 D   ALTER TABLE public.venue_venue ALTER COLUMN "VenueId" DROP DEFAULT;
       public          postgres    false    233    234    234            0          0    19628    achievement_achievement 
   TABLE DATA           �   COPY public.achievement_achievement (id, "AchievementName", "AchievementDescription", "DepartmentName_id", "SubDepartmentName_id") FROM stdin;
    public          postgres    false    223   �F      2          0    19639    achievement_achiever 
   TABLE DATA           V   COPY public.achievement_achiever (id, "AchievementId_id", "StudentId_id") FROM stdin;
    public          postgres    false    225   �F      $          0    19500 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    211   �F      &          0    19510    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    213   (G      "          0    19492    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    209   EG      (          0    19518 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    215   �I      *          0    19528    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    217   �L      ,          0    19536    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    219   �L      5          0    19704 	   club_club 
   TABLE DATA           �   COPY public.club_club ("ClubName", "ClubImageName", "ClubImage", "ClubType", "FacebookLink", "InstagramLink", "TwitterLink", "DribbbleLink", "clubStatus", "clubApproval", "DepartmentName_id", "UserId_id") FROM stdin;
    public          postgres    false    228   �L      7          0    19716    club_clubmember 
   TABLE DATA           d   COPY public.club_clubmember ("ClubMemberId", "MemberRole", "ClubId_id", "StudentId_id") FROM stdin;
    public          postgres    false    230   pM                0    19461    department_department 
   TABLE DATA           A   COPY public.department_department ("DepartmentName") FROM stdin;
    public          postgres    false    204   �M                0    19466    department_subdepartment 
   TABLE DATA           \   COPY public.department_subdepartment ("SubDepartmentName", "DepartmentName_id") FROM stdin;
    public          postgres    false    205   �M      4          0    19673    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    227   N                 0    19482    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    207   4N                0    19452    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �N      @          0    19838    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    239   FQ      9          0    19750    employee_employee 
   TABLE DATA             COPY public.employee_employee (id, "EmployeeName", "Gender", "EmployeeImageName", "EmployeeImage", "EmployeePhone", "EmployeeEmail", "EmployeeAddress", "EmployeeCity", "EmployeeStatus", "Role", "DepartmentName_id", "SubDepartmentName_id", "UserId_id") FROM stdin;
    public          postgres    false    232   lR      =          0    19793    event_event 
   TABLE DATA             COPY public.event_event (id, title, "EventImageName", "EventImage", "EventType", "EventEligibility", "EventStatus", "EventApproval", start, "end", "EventStartTime", "EventEndTime", "EventDescription", "EventAmount", "ClubName_id", "VenueId_id") FROM stdin;
    public          postgres    false    236   S      B          0    19859    event_eventmember 
   TABLE DATA           Z   COPY public.event_eventmember ("EventMemberId", "EventId_id", "StudentId_id") FROM stdin;
    public          postgres    false    241   �S      ?          0    19817    main_notification 
   TABLE DATA           �   COPY public.main_notification ("NotificationId", "NotificationTitle", "NotificationDescription", "NotificationDateTime", "AchievementId_id", "StudentId_id") FROM stdin;
    public          postgres    false    238   �S      .          0    19596    student_student 
   TABLE DATA             COPY public.student_student ("StudentId", "StudentName", "StudentPhoneNumber", "StudentGender", "StudentImageName", "StudentImage", "StudentEmail", "StudentAddress", "StudentCity", "StudentStatus", "DepartmentName_id", "SubDepartmentName_id", "UserId_id") FROM stdin;
    public          postgres    false    221   rT      ;          0    19782    venue_venue 
   TABLE DATA           n   COPY public.venue_venue ("VenueId", "VenueName", "VenueImageName", "VenueImage", "VenueLocation") FROM stdin;
    public          postgres    false    234   ?U      [           0    0    achievement_achievement_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.achievement_achievement_id_seq', 1, false);
          public          postgres    false    222            \           0    0    achievement_achiever_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.achievement_achiever_id_seq', 1, false);
          public          postgres    false    224            ]           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    210            ^           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    212            _           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    208            `           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 7, true);
          public          postgres    false    216            a           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 20, true);
          public          postgres    false    214            b           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    218            c           0    0     club_clubmember_ClubMemberId_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."club_clubmember_ClubMemberId_seq"', 1, true);
          public          postgres    false    229            d           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    226            e           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    206            f           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);
          public          postgres    false    202            g           0    0    employee_employee_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.employee_employee_id_seq', 1, true);
          public          postgres    false    231            h           0    0    event_event_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.event_event_id_seq', 1, true);
          public          postgres    false    235            i           0    0 #   event_eventmember_EventMemberId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."event_eventmember_EventMemberId_seq"', 1, false);
          public          postgres    false    240            j           0    0 $   main_notification_NotificationId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."main_notification_NotificationId_seq"', 4, true);
          public          postgres    false    237            k           0    0    student_student_StudentId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."student_student_StudentId_seq"', 3, true);
          public          postgres    false    220            l           0    0    venue_venue_VenueId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."venue_venue_VenueId_seq"', 1, true);
          public          postgres    false    233            O           2606    19636 4   achievement_achievement achievement_achievement_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT achievement_achievement_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT achievement_achievement_pkey;
       public            postgres    false    223            S           2606    19644 .   achievement_achiever achievement_achiever_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT achievement_achiever_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.achievement_achiever DROP CONSTRAINT achievement_achiever_pkey;
       public            postgres    false    225            (           2606    19702    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    211            -           2606    19552 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    213    213            0           2606    19515 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    213            *           2606    19505    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    211            #           2606    19543 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    209    209            %           2606    19497 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    209            8           2606    19533 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    217            ;           2606    19567 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    217    217            2           2606    19523    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    215            >           2606    19541 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    219            A           2606    19581 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    219    219            5           2606    19696     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    215            \           2606    19713 !   club_club club_club_UserId_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT "club_club_UserId_id_key" UNIQUE ("UserId_id");
 M   ALTER TABLE ONLY public.club_club DROP CONSTRAINT "club_club_UserId_id_key";
       public            postgres    false    228            ^           2606    19711    club_club club_club_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT club_club_pkey PRIMARY KEY ("ClubName");
 B   ALTER TABLE ONLY public.club_club DROP CONSTRAINT club_club_pkey;
       public            postgres    false    228            c           2606    19721 $   club_clubmember club_clubmember_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT club_clubmember_pkey PRIMARY KEY ("ClubMemberId");
 N   ALTER TABLE ONLY public.club_clubmember DROP CONSTRAINT club_clubmember_pkey;
       public            postgres    false    230                       2606    19465 0   department_department department_department_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.department_department
    ADD CONSTRAINT department_department_pkey PRIMARY KEY ("DepartmentName");
 Z   ALTER TABLE ONLY public.department_department DROP CONSTRAINT department_department_pkey;
       public            postgres    false    204                       2606    19470 6   department_subdepartment department_subdepartment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT department_subdepartment_pkey PRIMARY KEY ("SubDepartmentName");
 `   ALTER TABLE ONLY public.department_subdepartment DROP CONSTRAINT department_subdepartment_pkey;
       public            postgres    false    205            V           2606    19682 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    227                       2606    19489 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    207    207                        2606    19487 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    207                       2606    19460 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            y           2606    19845 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    239            i           2606    19760 1   employee_employee employee_employee_UserId_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_UserId_id_key" UNIQUE ("UserId_id");
 ]   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_UserId_id_key";
       public            postgres    false    232            k           2606    19758 (   employee_employee employee_employee_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT employee_employee_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT employee_employee_pkey;
       public            postgres    false    232            r           2606    19801    event_event event_event_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT event_event_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.event_event DROP CONSTRAINT event_event_pkey;
       public            postgres    false    236            ~           2606    19864 (   event_eventmember event_eventmember_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.event_eventmember
    ADD CONSTRAINT event_eventmember_pkey PRIMARY KEY ("EventMemberId");
 R   ALTER TABLE ONLY public.event_eventmember DROP CONSTRAINT event_eventmember_pkey;
       public            postgres    false    241            v           2606    19825 (   main_notification main_notification_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT main_notification_pkey PRIMARY KEY ("NotificationId");
 R   ALTER TABLE ONLY public.main_notification DROP CONSTRAINT main_notification_pkey;
       public            postgres    false    238            G           2606    19606 -   student_student student_student_UserId_id_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_UserId_id_key" UNIQUE ("UserId_id");
 Y   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_UserId_id_key";
       public            postgres    false    221            I           2606    19604 $   student_student student_student_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT student_student_pkey PRIMARY KEY ("StudentId");
 N   ALTER TABLE ONLY public.student_student DROP CONSTRAINT student_student_pkey;
       public            postgres    false    221            m           2606    19790    venue_venue venue_venue_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.venue_venue
    ADD CONSTRAINT venue_venue_pkey PRIMARY KEY ("VenueId");
 F   ALTER TABLE ONLY public.venue_venue DROP CONSTRAINT venue_venue_pkey;
       public            postgres    false    234            J           1259    19655 2   achievement_achievement_DepartmentName_id_cb8e6802    INDEX     �   CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802" ON public.achievement_achievement USING btree ("DepartmentName_id");
 H   DROP INDEX public."achievement_achievement_DepartmentName_id_cb8e6802";
       public            postgres    false    223            K           1259    19656 7   achievement_achievement_DepartmentName_id_cb8e6802_like    INDEX     �   CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802_like" ON public.achievement_achievement USING btree ("DepartmentName_id" varchar_pattern_ops);
 M   DROP INDEX public."achievement_achievement_DepartmentName_id_cb8e6802_like";
       public            postgres    false    223            L           1259    19657 5   achievement_achievement_SubDepartmentName_id_d15e34b2    INDEX     �   CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2" ON public.achievement_achievement USING btree ("SubDepartmentName_id");
 K   DROP INDEX public."achievement_achievement_SubDepartmentName_id_d15e34b2";
       public            postgres    false    223            M           1259    19658 :   achievement_achievement_SubDepartmentName_id_d15e34b2_like    INDEX     �   CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2_like" ON public.achievement_achievement USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 P   DROP INDEX public."achievement_achievement_SubDepartmentName_id_d15e34b2_like";
       public            postgres    false    223            P           1259    19669 .   achievement_achiever_AchievementId_id_dbe070c7    INDEX        CREATE INDEX "achievement_achiever_AchievementId_id_dbe070c7" ON public.achievement_achiever USING btree ("AchievementId_id");
 D   DROP INDEX public."achievement_achiever_AchievementId_id_dbe070c7";
       public            postgres    false    225            Q           1259    19670 *   achievement_achiever_StudentId_id_b32c6a88    INDEX     w   CREATE INDEX "achievement_achiever_StudentId_id_b32c6a88" ON public.achievement_achiever USING btree ("StudentId_id");
 @   DROP INDEX public."achievement_achiever_StudentId_id_b32c6a88";
       public            postgres    false    225            &           1259    19703    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    211            +           1259    19563 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    213            .           1259    19564 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    213            !           1259    19549 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    209            6           1259    19579 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    217            9           1259    19578 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    217            <           1259    19593 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    219            ?           1259    19592 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    219            3           1259    19697     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    215            X           1259    19732     club_club_ClubName_76d83c98_like    INDEX     r   CREATE INDEX "club_club_ClubName_76d83c98_like" ON public.club_club USING btree ("ClubName" varchar_pattern_ops);
 6   DROP INDEX public."club_club_ClubName_76d83c98_like";
       public            postgres    false    228            Y           1259    19733 $   club_club_DepartmentName_id_8c4ae513    INDEX     k   CREATE INDEX "club_club_DepartmentName_id_8c4ae513" ON public.club_club USING btree ("DepartmentName_id");
 :   DROP INDEX public."club_club_DepartmentName_id_8c4ae513";
       public            postgres    false    228            Z           1259    19734 )   club_club_DepartmentName_id_8c4ae513_like    INDEX     �   CREATE INDEX "club_club_DepartmentName_id_8c4ae513_like" ON public.club_club USING btree ("DepartmentName_id" varchar_pattern_ops);
 ?   DROP INDEX public."club_club_DepartmentName_id_8c4ae513_like";
       public            postgres    false    228            _           1259    19745 "   club_clubmember_ClubId_id_6c1da842    INDEX     g   CREATE INDEX "club_clubmember_ClubId_id_6c1da842" ON public.club_clubmember USING btree ("ClubId_id");
 8   DROP INDEX public."club_clubmember_ClubId_id_6c1da842";
       public            postgres    false    230            `           1259    19746 '   club_clubmember_ClubId_id_6c1da842_like    INDEX     �   CREATE INDEX "club_clubmember_ClubId_id_6c1da842_like" ON public.club_clubmember USING btree ("ClubId_id" varchar_pattern_ops);
 =   DROP INDEX public."club_clubmember_ClubId_id_6c1da842_like";
       public            postgres    false    230            a           1259    19747 %   club_clubmember_StudentId_id_029cab03    INDEX     m   CREATE INDEX "club_clubmember_StudentId_id_029cab03" ON public.club_clubmember USING btree ("StudentId_id");
 ;   DROP INDEX public."club_clubmember_StudentId_id_029cab03";
       public            postgres    false    230                       1259    19471 2   department_department_DepartmentName_fb5ebb6d_like    INDEX     �   CREATE INDEX "department_department_DepartmentName_fb5ebb6d_like" ON public.department_department USING btree ("DepartmentName" varchar_pattern_ops);
 H   DROP INDEX public."department_department_DepartmentName_fb5ebb6d_like";
       public            postgres    false    204                       1259    19478 3   department_subdepartment_DepartmentName_id_ff4808cf    INDEX     �   CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf" ON public.department_subdepartment USING btree ("DepartmentName_id");
 I   DROP INDEX public."department_subdepartment_DepartmentName_id_ff4808cf";
       public            postgres    false    205                       1259    19479 8   department_subdepartment_DepartmentName_id_ff4808cf_like    INDEX     �   CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf_like" ON public.department_subdepartment USING btree ("DepartmentName_id" varchar_pattern_ops);
 N   DROP INDEX public."department_subdepartment_DepartmentName_id_ff4808cf_like";
       public            postgres    false    205                       1259    19477 8   department_subdepartment_SubDepartmentName_ed81263a_like    INDEX     �   CREATE INDEX "department_subdepartment_SubDepartmentName_ed81263a_like" ON public.department_subdepartment USING btree ("SubDepartmentName" varchar_pattern_ops);
 N   DROP INDEX public."department_subdepartment_SubDepartmentName_ed81263a_like";
       public            postgres    false    205            T           1259    19693 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    227            W           1259    19694 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    227            w           1259    19847 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    239            z           1259    19846 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    239            d           1259    19776 ,   employee_employee_DepartmentName_id_f52c8eed    INDEX     {   CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed" ON public.employee_employee USING btree ("DepartmentName_id");
 B   DROP INDEX public."employee_employee_DepartmentName_id_f52c8eed";
       public            postgres    false    232            e           1259    19777 1   employee_employee_DepartmentName_id_f52c8eed_like    INDEX     �   CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed_like" ON public.employee_employee USING btree ("DepartmentName_id" varchar_pattern_ops);
 G   DROP INDEX public."employee_employee_DepartmentName_id_f52c8eed_like";
       public            postgres    false    232            f           1259    19778 /   employee_employee_SubDepartmentName_id_b9f45a4e    INDEX     �   CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e" ON public.employee_employee USING btree ("SubDepartmentName_id");
 E   DROP INDEX public."employee_employee_SubDepartmentName_id_b9f45a4e";
       public            postgres    false    232            g           1259    19779 4   employee_employee_SubDepartmentName_id_b9f45a4e_like    INDEX     �   CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e_like" ON public.employee_employee USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 J   DROP INDEX public."employee_employee_SubDepartmentName_id_b9f45a4e_like";
       public            postgres    false    232            n           1259    19812     event_event_ClubName_id_45eb75dd    INDEX     c   CREATE INDEX "event_event_ClubName_id_45eb75dd" ON public.event_event USING btree ("ClubName_id");
 6   DROP INDEX public."event_event_ClubName_id_45eb75dd";
       public            postgres    false    236            o           1259    19813 %   event_event_ClubName_id_45eb75dd_like    INDEX     |   CREATE INDEX "event_event_ClubName_id_45eb75dd_like" ON public.event_event USING btree ("ClubName_id" varchar_pattern_ops);
 ;   DROP INDEX public."event_event_ClubName_id_45eb75dd_like";
       public            postgres    false    236            p           1259    19814    event_event_VenueId_id_6df8f336    INDEX     a   CREATE INDEX "event_event_VenueId_id_6df8f336" ON public.event_event USING btree ("VenueId_id");
 5   DROP INDEX public."event_event_VenueId_id_6df8f336";
       public            postgres    false    236            {           1259    19875 %   event_eventmember_EventId_id_f49aaaf3    INDEX     m   CREATE INDEX "event_eventmember_EventId_id_f49aaaf3" ON public.event_eventmember USING btree ("EventId_id");
 ;   DROP INDEX public."event_eventmember_EventId_id_f49aaaf3";
       public            postgres    false    241            |           1259    19876 '   event_eventmember_StudentId_id_4a7dc63f    INDEX     q   CREATE INDEX "event_eventmember_StudentId_id_4a7dc63f" ON public.event_eventmember USING btree ("StudentId_id");
 =   DROP INDEX public."event_eventmember_StudentId_id_4a7dc63f";
       public            postgres    false    241            s           1259    19836 +   main_notification_AchievementId_id_5e7d026f    INDEX     y   CREATE INDEX "main_notification_AchievementId_id_5e7d026f" ON public.main_notification USING btree ("AchievementId_id");
 A   DROP INDEX public."main_notification_AchievementId_id_5e7d026f";
       public            postgres    false    238            t           1259    19837 '   main_notification_StudentId_id_83ec6a14    INDEX     q   CREATE INDEX "main_notification_StudentId_id_83ec6a14" ON public.main_notification USING btree ("StudentId_id");
 =   DROP INDEX public."main_notification_StudentId_id_83ec6a14";
       public            postgres    false    238            B           1259    19622 *   student_student_DepartmentName_id_0e0ab50c    INDEX     w   CREATE INDEX "student_student_DepartmentName_id_0e0ab50c" ON public.student_student USING btree ("DepartmentName_id");
 @   DROP INDEX public."student_student_DepartmentName_id_0e0ab50c";
       public            postgres    false    221            C           1259    19623 /   student_student_DepartmentName_id_0e0ab50c_like    INDEX     �   CREATE INDEX "student_student_DepartmentName_id_0e0ab50c_like" ON public.student_student USING btree ("DepartmentName_id" varchar_pattern_ops);
 E   DROP INDEX public."student_student_DepartmentName_id_0e0ab50c_like";
       public            postgres    false    221            D           1259    19624 -   student_student_SubDepartmentName_id_ff67d62f    INDEX     }   CREATE INDEX "student_student_SubDepartmentName_id_ff67d62f" ON public.student_student USING btree ("SubDepartmentName_id");
 C   DROP INDEX public."student_student_SubDepartmentName_id_ff67d62f";
       public            postgres    false    221            E           1259    19625 2   student_student_SubDepartmentName_id_ff67d62f_like    INDEX     �   CREATE INDEX "student_student_SubDepartmentName_id_ff67d62f_like" ON public.student_student USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 H   DROP INDEX public."student_student_SubDepartmentName_id_ff67d62f_like";
       public            postgres    false    221            �           2606    19645 T   achievement_achievement achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT "achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen";
       public          postgres    false    2839    204    223            �           2606    19650 W   achievement_achievement achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen    FK CONSTRAINT     	  ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT "achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen";
       public          postgres    false    223    205    2844            �           2606    19659 P   achievement_achiever achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT "achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme" FOREIGN KEY ("AchievementId_id") REFERENCES public.achievement_achievement(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.achievement_achiever DROP CONSTRAINT "achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme";
       public          postgres    false    223    225    2895            �           2606    19664 L   achievement_achiever achievement_achiever_StudentId_id_b32c6a88_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT "achievement_achiever_StudentId_id_b32c6a88_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.achievement_achiever DROP CONSTRAINT "achievement_achiever_StudentId_id_b32c6a88_fk_student_s";
       public          postgres    false    221    225    2889            �           2606    19558 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    209    213    2853            �           2606    19553 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    2858    211    213            �           2606    19544 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    209    207    2848            �           2606    19573 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2858    211    217            �           2606    19568 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2866    217    215            �           2606    19587 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    219    2853    209            �           2606    19582 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    215    219    2866            �           2606    19722 ;   club_club club_club_DepartmentName_id_8c4ae513_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT "club_club_DepartmentName_id_8c4ae513_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.club_club DROP CONSTRAINT "club_club_DepartmentName_id_8c4ae513_fk_departmen";
       public          postgres    false    204    228    2839            �           2606    19727 6   club_club club_club_UserId_id_25276893_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT "club_club_UserId_id_25276893_fk_auth_user_id" FOREIGN KEY ("UserId_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.club_club DROP CONSTRAINT "club_club_UserId_id_25276893_fk_auth_user_id";
       public          postgres    false    2866    215    228            �           2606    19735 H   club_clubmember club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT "club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName" FOREIGN KEY ("ClubId_id") REFERENCES public.club_club("ClubName") DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.club_clubmember DROP CONSTRAINT "club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName";
       public          postgres    false    230    2910    228            �           2606    19740 B   club_clubmember club_clubmember_StudentId_id_029cab03_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT "club_clubmember_StudentId_id_029cab03_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.club_clubmember DROP CONSTRAINT "club_clubmember_StudentId_id_029cab03_fk_student_s";
       public          postgres    false    221    230    2889                       2606    19472 U   department_subdepartment department_subdepart_DepartmentName_id_ff4808cf_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT "department_subdepart_DepartmentName_id_ff4808cf_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.department_subdepartment DROP CONSTRAINT "department_subdepart_DepartmentName_id_ff4808cf_fk_departmen";
       public          postgres    false    2839    204    205            �           2606    19683 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    207    2848    227            �           2606    19688 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    227    2866    215            �           2606    19761 K   employee_employee employee_employee_DepartmentName_id_f52c8eed_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_DepartmentName_id_f52c8eed_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_DepartmentName_id_f52c8eed_fk_departmen";
       public          postgres    false    204    232    2839            �           2606    19766 N   employee_employee employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen    FK CONSTRAINT        ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen";
       public          postgres    false    232    205    2844            �           2606    19771 F   employee_employee employee_employee_UserId_id_8885f0d1_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_UserId_id_8885f0d1_fk_auth_user_id" FOREIGN KEY ("UserId_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_UserId_id_8885f0d1_fk_auth_user_id";
       public          postgres    false    215    232    2866            �           2606    19802 B   event_event event_event_ClubName_id_45eb75dd_fk_club_club_ClubName    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT "event_event_ClubName_id_45eb75dd_fk_club_club_ClubName" FOREIGN KEY ("ClubName_id") REFERENCES public.club_club("ClubName") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.event_event DROP CONSTRAINT "event_event_ClubName_id_45eb75dd_fk_club_club_ClubName";
       public          postgres    false    2910    228    236            �           2606    19807 B   event_event event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT "event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId" FOREIGN KEY ("VenueId_id") REFERENCES public.venue_venue("VenueId") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.event_event DROP CONSTRAINT "event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId";
       public          postgres    false    234    236    2925            �           2606    19865 I   event_eventmember event_eventmember_EventId_id_f49aaaf3_fk_event_event_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_eventmember
    ADD CONSTRAINT "event_eventmember_EventId_id_f49aaaf3_fk_event_event_id" FOREIGN KEY ("EventId_id") REFERENCES public.event_event(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.event_eventmember DROP CONSTRAINT "event_eventmember_EventId_id_f49aaaf3_fk_event_event_id";
       public          postgres    false    236    241    2930            �           2606    19870 F   event_eventmember event_eventmember_StudentId_id_4a7dc63f_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_eventmember
    ADD CONSTRAINT "event_eventmember_StudentId_id_4a7dc63f_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.event_eventmember DROP CONSTRAINT "event_eventmember_StudentId_id_4a7dc63f_fk_student_s";
       public          postgres    false    221    241    2889            �           2606    19826 J   main_notification main_notification_AchievementId_id_5e7d026f_fk_achieveme    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT "main_notification_AchievementId_id_5e7d026f_fk_achieveme" FOREIGN KEY ("AchievementId_id") REFERENCES public.achievement_achievement(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.main_notification DROP CONSTRAINT "main_notification_AchievementId_id_5e7d026f_fk_achieveme";
       public          postgres    false    223    2895    238            �           2606    19831 F   main_notification main_notification_StudentId_id_83ec6a14_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT "main_notification_StudentId_id_83ec6a14_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.main_notification DROP CONSTRAINT "main_notification_StudentId_id_83ec6a14_fk_student_s";
       public          postgres    false    221    238    2889            �           2606    19607 G   student_student student_student_DepartmentName_id_0e0ab50c_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_DepartmentName_id_0e0ab50c_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_DepartmentName_id_0e0ab50c_fk_departmen";
       public          postgres    false    221    2839    204            �           2606    19612 J   student_student student_student_SubDepartmentName_id_ff67d62f_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_SubDepartmentName_id_ff67d62f_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_SubDepartmentName_id_ff67d62f_fk_departmen";
       public          postgres    false    205    2844    221            �           2606    19617 B   student_student student_student_UserId_id_c9ae8b03_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_UserId_id_c9ae8b03_fk_auth_user_id" FOREIGN KEY ("UserId_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_UserId_id_c9ae8b03_fk_auth_user_id";
       public          postgres    false    215    2866    221            0      x������ � �      2      x������ � �      $   '   x�3�.)MI�+�2�L�)MrL����2�,�1c���� ��!      &      x������ � �      "   �  x�m�[��0E��U�����m�4
�#A�B�#v�N�������sob�?ݰ���}���0O��~�׏ihJB._�ps�
SV^���S�~����	��d�tӣ��q(JR�	Ӣ����)��=��"��S��M��,*����Q.��#�"�:������*,/75	�?���|^�������h�l^����!�|��?���~��!�Zg�=�H���O���|�͌&]��d�r᩶$�#S��Þ	Si��Y��"Iƹ��_�y���S�Tq�h�T���7@�3��5,鿺g7��ő�e�T��dg�U#̾C7J�JK^��Sx��iU�͆��Gui�'�B�zmv��h^����v��/��ı�T�cm!Uːd�D��/�HQ(hּ\�aç�����(�h�t����9,�P��"#��ܗsa�'d�mjU��_HD��D"��������ҡՓ:}�p����*I���s`�(�6��"^jI��kD�)�.4|Qh`Ռ�hF5!11T���'"�)�Kһ�W�'�6|[`�4*��^�W��xvD���g4�*�����[T�L[��K���d��)�Zӓ�Ƒ8��4�����040��BX�Նİ3ЇD���t�R�3��a�	И���n�0�qC��pI#ßƘ�      (   |  x�}�[��0ǟ�S�odض��%�d���7���&������ݹ���������9�	�:t6�w�[�P2P1^�a;.�X�'� 	�j��J���T{zؐ$2aOe�����)�v��� ���#r�������)� � l��y�C!��/��H��q�->�P�[X&
�����u��:����iu�*��.�u�e���OfLGo3Y<�'e:LA��m%�T�4�5eF $��:9dI�&֮�ݬ����M@5���
�g�� 3��rY��tq$a�s�;�Z����v�I�}���37��ʄ�Gf�g D4�dB�@!XN�>�a��_��� �P���0���G���,�l�U�����L];��Q�/����;��=�fkX�	]1�4e�����ٷ� RZ���e�dVoew������@�i��@@:��z�fyj+uÑy������,۞���0���S�l����?�3�Hk>\01>w��j����.4��Lh�[FP�V�Ǌ���vEaM�2'@�gz�tO�>�w\��ĩ�lߕng6���O��Mٜw�^+O�d�j��. S^o�FY��YP��"ȬH0_�w��J��1���q����_�3C�      *   ,   x�3�44�4�2�44R����F\@K e�id�i����� m�;      ,      x������ � �      5   |   x��H�K�/-��I,JO�π��
��9�3s�S��1e�sS9c��-1�8�Sא�9?���$�H!8935/9��Ђ+��� 'U! 1�$#�jQX� "�f���X��Z���J�u�%W� �vO	      7   (   x�3��LNU(J-�LI�+��H�K�/-�4����� �p	]         %   x�s��-(-I-RN�L�KN�r���M-2b���� �o
         *   x��uv�t��-(-I-RN�L�KN��u�91z\\\ ���      4      x������ � �          �   x�mN9�0���U������������}���.4I��Ĭ���,��۱�
����K��>�řh�9E�찅��ba��K�x�i�!؃�H� r����
T�o���X��
��fv�/A"�!����"U0mq̀T��b5��~��H-�i�I�΂#u�FiC)�D��\�n�_�L;z         ;  x���뎛0�;O���E3�+y�J�n�ĭ\���פؤ
+"!�DΗ�9����n��N �Vm5U�f��>I|�Å:C���g'bE�NA7�{?�E�j��9s�t=i���H�q��7*5���z�I�k�o��.M�4W�V1W6U{��3P�8�*�����%��p��o�����κ��Š4JD��0|��u�Tu��]��-�]Uvq�8���8F����]���5~�F��<���<$�����CS��R�°����o/�W���(���p|��c���U�!��hR"�g�r{������HpL��Q����8-fT�ɹ����"�Ra��jH8a�~�1�)rd�赠����M�0>Rᇡl���]�		����`�\q�	�,�[4�ƣ�&�V�e���=RN:�4O �s��m?t_����OJ@�)������xH�� d���������\B<�D����HF�aX��*q���2B�1u'6��O����.A�R�|$��hM�6�b�_-8T�t�x�Ho��
���0��3�3`� i�>^f�W �(�F�~f���/�1�      @     x�=�Mo�0 �����Mi�de4[a�6��-es�_����O�����ݘ�k���aDo��z]+a3~,D�W"�L��>�C��' Τ,W�Om����>h	N%��M�=Y�@�,��9�D�*�B��
�5�M]P]iOqF�s���)�Y�����{yM͉����������8���.�#���>Q�C�����+��JY��oP���RM}���O���`>	�8�&
D1��(�vvxO X��l �Aw�앻v�5z��ueY�7ڡh�      9   �   x�-�K
�0 �/��4U���)q(�u�lMj��|��7��ᖸ2�����`��@�#h[���q���U��Ie/;�߶��e�h�WC�Æk��0��P ��'o���Z(��h)�Z]�c�{E�-Q      =   ~   x�}�A
�0EדS�mgv�ĝYt)H�I����߂]�����#�p���Dg�%��7W?�!���cI��r���'�.>�V8�R7��3�"�q��+��=A�[-�ں�W�@�>*�>�4]      B      x������ � �      ?   �   x����
�0E���^�3�n"-]*>�K��	Z4*}��.E�R��=�PT�*��P�LOo��C�f�&���#��D�,J*�c��T�@����q	�r.z��%���X*v�j�����p���>D|8����ܪ=�w�a���L���ٺ W�v��z'`E\&�`Jft'hq�$oQ�R�      .   �   x���A�@��o�? 4�\����C,t
�a�����kE��%/�)�<f�Vp��j��V�r��Aq�S�J�6}�PX�����a���R(�[v
VU?jf�Y8��Ak�
Yg�k����%�<K�I �m��qraj�4��8�4�R���pi��Y���e��H����ZJ�.!�B^\      ;   Q   x�3���,K-*�,�T�I�L/�/�K�44��H�O�H��*H����MLO-�G�H���W��/�H-J+M�N-����� !.     