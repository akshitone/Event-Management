PGDMP         -    
            x            event_management_db    12.2    12.2 �    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    19877    event_management_db    DATABASE     �   CREATE DATABASE event_management_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
 #   DROP DATABASE event_management_db;
                postgres    false            �            1259    20056    achievement_achievement    TABLE     !  CREATE TABLE public.achievement_achievement (
    id integer NOT NULL,
    "AchievementName" character varying(150) NOT NULL,
    "AchievementDescription" text NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "SubDepartmentName_id" character varying(150) NOT NULL
);
 +   DROP TABLE public.achievement_achievement;
       public         heap    postgres    false            �            1259    20054    achievement_achievement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achievement_achievement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.achievement_achievement_id_seq;
       public          postgres    false    223            I           0    0    achievement_achievement_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.achievement_achievement_id_seq OWNED BY public.achievement_achievement.id;
          public          postgres    false    222            �            1259    20067    achievement_achiever    TABLE     �   CREATE TABLE public.achievement_achiever (
    id integer NOT NULL,
    "AchievementId_id" integer NOT NULL,
    "StudentId_id" integer NOT NULL
);
 (   DROP TABLE public.achievement_achiever;
       public         heap    postgres    false            �            1259    20065    achievement_achiever_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achievement_achiever_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.achievement_achiever_id_seq;
       public          postgres    false    225            J           0    0    achievement_achiever_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.achievement_achiever_id_seq OWNED BY public.achievement_achiever.id;
          public          postgres    false    224            �            1259    19928 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    19926    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    211            K           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    210            �            1259    19938    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    19936    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    213            L           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    212            �            1259    19920    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    19918    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    209            M           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    208            �            1259    19946 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    19956    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    19954    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    217            N           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    216            �            1259    19944    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    215            O           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    214            �            1259    19964    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    19962 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    219            P           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    218            �            1259    20132 	   club_club    TABLE       CREATE TABLE public.club_club (
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
       public         heap    postgres    false            �            1259    20144    club_clubmember    TABLE     �   CREATE TABLE public.club_clubmember (
    "ClubMemberId" integer NOT NULL,
    "MemberRole" character varying(150) NOT NULL,
    "ClubId_id" character varying(150) NOT NULL,
    "StudentId_id" integer NOT NULL
);
 #   DROP TABLE public.club_clubmember;
       public         heap    postgres    false            �            1259    20142     club_clubmember_ClubMemberId_seq    SEQUENCE     �   CREATE SEQUENCE public."club_clubmember_ClubMemberId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."club_clubmember_ClubMemberId_seq";
       public          postgres    false    230            Q           0    0     club_clubmember_ClubMemberId_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."club_clubmember_ClubMemberId_seq" OWNED BY public.club_clubmember."ClubMemberId";
          public          postgres    false    229            �            1259    19889    department_department    TABLE     d   CREATE TABLE public.department_department (
    "DepartmentName" character varying(150) NOT NULL
);
 )   DROP TABLE public.department_department;
       public         heap    postgres    false            �            1259    19894    department_subdepartment    TABLE     �   CREATE TABLE public.department_subdepartment (
    "SubDepartmentName" character varying(150) NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL
);
 ,   DROP TABLE public.department_subdepartment;
       public         heap    postgres    false            �            1259    20101    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    20099    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    227            R           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    226            �            1259    19910    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    19908    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    207            S           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    206            �            1259    19880    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    19878    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            T           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    20286    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    20178    employee_employee    TABLE     �  CREATE TABLE public.employee_employee (
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
       public         heap    postgres    false            �            1259    20176    employee_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public          postgres    false    232            U           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee_employee.id;
          public          postgres    false    231            �            1259    20221    event_event    TABLE     �  CREATE TABLE public.event_event (
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
       public         heap    postgres    false            �            1259    20219    event_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.event_event_id_seq;
       public          postgres    false    236            V           0    0    event_event_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.event_event_id_seq OWNED BY public.event_event.id;
          public          postgres    false    235            �            1259    20245    event_eventmember    TABLE     �   CREATE TABLE public.event_eventmember (
    "EventMemberId" integer NOT NULL,
    "EventId_id" integer NOT NULL,
    "StudentId_id" integer NOT NULL
);
 %   DROP TABLE public.event_eventmember;
       public         heap    postgres    false            �            1259    20243 #   event_eventmember_EventMemberId_seq    SEQUENCE     �   CREATE SEQUENCE public."event_eventmember_EventMemberId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."event_eventmember_EventMemberId_seq";
       public          postgres    false    238            W           0    0 #   event_eventmember_EventMemberId_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."event_eventmember_EventMemberId_seq" OWNED BY public.event_eventmember."EventMemberId";
          public          postgres    false    237            �            1259    20265    main_notification    TABLE       CREATE TABLE public.main_notification (
    "NotificationId" integer NOT NULL,
    "NotificationTitle" text NOT NULL,
    "NotificationDescription" text NOT NULL,
    "NotificationDateTime" timestamp with time zone NOT NULL,
    "AchievementId_id" integer,
    "StudentId_id" integer
);
 %   DROP TABLE public.main_notification;
       public         heap    postgres    false            �            1259    20263 $   main_notification_NotificationId_seq    SEQUENCE     �   CREATE SEQUENCE public."main_notification_NotificationId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."main_notification_NotificationId_seq";
       public          postgres    false    240            X           0    0 $   main_notification_NotificationId_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."main_notification_NotificationId_seq" OWNED BY public.main_notification."NotificationId";
          public          postgres    false    239            �            1259    20024    student_student    TABLE     i  CREATE TABLE public.student_student (
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
       public         heap    postgres    false            �            1259    20022    student_student_StudentId_seq    SEQUENCE     �   CREATE SEQUENCE public."student_student_StudentId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."student_student_StudentId_seq";
       public          postgres    false    221            Y           0    0    student_student_StudentId_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."student_student_StudentId_seq" OWNED BY public.student_student."StudentId";
          public          postgres    false    220            �            1259    20210    venue_venue    TABLE     �   CREATE TABLE public.venue_venue (
    "VenueId" integer NOT NULL,
    "VenueName" character varying(150) NOT NULL,
    "VenueImageName" text,
    "VenueImage" character varying(100),
    "VenueLocation" text NOT NULL
);
    DROP TABLE public.venue_venue;
       public         heap    postgres    false            �            1259    20208    venue_venue_VenueId_seq    SEQUENCE     �   CREATE SEQUENCE public."venue_venue_VenueId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."venue_venue_VenueId_seq";
       public          postgres    false    234            Z           0    0    venue_venue_VenueId_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."venue_venue_VenueId_seq" OWNED BY public.venue_venue."VenueId";
          public          postgres    false    233            	           2604    20059    achievement_achievement id    DEFAULT     �   ALTER TABLE ONLY public.achievement_achievement ALTER COLUMN id SET DEFAULT nextval('public.achievement_achievement_id_seq'::regclass);
 I   ALTER TABLE public.achievement_achievement ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            
           2604    20070    achievement_achiever id    DEFAULT     �   ALTER TABLE ONLY public.achievement_achiever ALTER COLUMN id SET DEFAULT nextval('public.achievement_achiever_id_seq'::regclass);
 F   ALTER TABLE public.achievement_achiever ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225                       2604    19931    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211                       2604    19941    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213                       2604    19923    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209                       2604    19949    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    19959    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    19967    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                       2604    20147    club_clubmember ClubMemberId    DEFAULT     �   ALTER TABLE ONLY public.club_clubmember ALTER COLUMN "ClubMemberId" SET DEFAULT nextval('public."club_clubmember_ClubMemberId_seq"'::regclass);
 M   ALTER TABLE public.club_clubmember ALTER COLUMN "ClubMemberId" DROP DEFAULT;
       public          postgres    false    229    230    230                       2604    20104    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227                       2604    19913    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                        2604    19883    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203                       2604    20181    employee_employee id    DEFAULT     |   ALTER TABLE ONLY public.employee_employee ALTER COLUMN id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee_employee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232                       2604    20224    event_event id    DEFAULT     p   ALTER TABLE ONLY public.event_event ALTER COLUMN id SET DEFAULT nextval('public.event_event_id_seq'::regclass);
 =   ALTER TABLE public.event_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236                       2604    20248    event_eventmember EventMemberId    DEFAULT     �   ALTER TABLE ONLY public.event_eventmember ALTER COLUMN "EventMemberId" SET DEFAULT nextval('public."event_eventmember_EventMemberId_seq"'::regclass);
 P   ALTER TABLE public.event_eventmember ALTER COLUMN "EventMemberId" DROP DEFAULT;
       public          postgres    false    237    238    238                       2604    20268     main_notification NotificationId    DEFAULT     �   ALTER TABLE ONLY public.main_notification ALTER COLUMN "NotificationId" SET DEFAULT nextval('public."main_notification_NotificationId_seq"'::regclass);
 Q   ALTER TABLE public.main_notification ALTER COLUMN "NotificationId" DROP DEFAULT;
       public          postgres    false    240    239    240                       2604    20027    student_student StudentId    DEFAULT     �   ALTER TABLE ONLY public.student_student ALTER COLUMN "StudentId" SET DEFAULT nextval('public."student_student_StudentId_seq"'::regclass);
 J   ALTER TABLE public.student_student ALTER COLUMN "StudentId" DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    20213    venue_venue VenueId    DEFAULT     ~   ALTER TABLE ONLY public.venue_venue ALTER COLUMN "VenueId" SET DEFAULT nextval('public."venue_venue_VenueId_seq"'::regclass);
 D   ALTER TABLE public.venue_venue ALTER COLUMN "VenueId" DROP DEFAULT;
       public          postgres    false    234    233    234            0          0    20056    achievement_achievement 
   TABLE DATA           �   COPY public.achievement_achievement (id, "AchievementName", "AchievementDescription", "DepartmentName_id", "SubDepartmentName_id") FROM stdin;
    public          postgres    false    223   �F      2          0    20067    achievement_achiever 
   TABLE DATA           V   COPY public.achievement_achiever (id, "AchievementId_id", "StudentId_id") FROM stdin;
    public          postgres    false    225   BH      $          0    19928 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    211   _H      &          0    19938    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    213   �H      "          0    19920    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    209   �H      (          0    19946 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    215   iK      *          0    19956    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    217   �Q      ,          0    19964    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    219   �Q      5          0    20132 	   club_club 
   TABLE DATA           �   COPY public.club_club ("ClubName", "ClubImageName", "ClubImage", "ClubType", "FacebookLink", "InstagramLink", "TwitterLink", "DribbbleLink", "clubStatus", "clubApproval", "DepartmentName_id", "UserId_id") FROM stdin;
    public          postgres    false    228   R      7          0    20144    club_clubmember 
   TABLE DATA           d   COPY public.club_clubmember ("ClubMemberId", "MemberRole", "ClubId_id", "StudentId_id") FROM stdin;
    public          postgres    false    230   �R                0    19889    department_department 
   TABLE DATA           A   COPY public.department_department ("DepartmentName") FROM stdin;
    public          postgres    false    204   �S                0    19894    department_subdepartment 
   TABLE DATA           \   COPY public.department_subdepartment ("SubDepartmentName", "DepartmentName_id") FROM stdin;
    public          postgres    false    205   �S      4          0    20101    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    227   "T                 0    19910    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    207   ?T                0    19880    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   U      B          0    20286    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    241   TW      9          0    20178    employee_employee 
   TABLE DATA             COPY public.employee_employee (id, "EmployeeName", "Gender", "EmployeeImageName", "EmployeeImage", "EmployeePhone", "EmployeeEmail", "EmployeeAddress", "EmployeeCity", "EmployeeStatus", "Role", "DepartmentName_id", "SubDepartmentName_id", "UserId_id") FROM stdin;
    public          postgres    false    232   qW      =          0    20221    event_event 
   TABLE DATA             COPY public.event_event (id, title, "EventImageName", "EventImage", "EventType", "EventEligibility", "EventStatus", "EventApproval", start, "end", "EventStartTime", "EventEndTime", "EventDescription", "EventAmount", "ClubName_id", "VenueId_id") FROM stdin;
    public          postgres    false    236   �Y      ?          0    20245    event_eventmember 
   TABLE DATA           Z   COPY public.event_eventmember ("EventMemberId", "EventId_id", "StudentId_id") FROM stdin;
    public          postgres    false    238   �]      A          0    20265    main_notification 
   TABLE DATA           �   COPY public.main_notification ("NotificationId", "NotificationTitle", "NotificationDescription", "NotificationDateTime", "AchievementId_id", "StudentId_id") FROM stdin;
    public          postgres    false    240   ^      .          0    20024    student_student 
   TABLE DATA             COPY public.student_student ("StudentId", "StudentName", "StudentPhoneNumber", "StudentGender", "StudentImageName", "StudentImage", "StudentEmail", "StudentAddress", "StudentCity", "StudentStatus", "DepartmentName_id", "SubDepartmentName_id", "UserId_id") FROM stdin;
    public          postgres    false    221   �^      ;          0    20210    venue_venue 
   TABLE DATA           n   COPY public.venue_venue ("VenueId", "VenueName", "VenueImageName", "VenueImage", "VenueLocation") FROM stdin;
    public          postgres    false    234   �`      [           0    0    achievement_achievement_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.achievement_achievement_id_seq', 2, true);
          public          postgres    false    222            \           0    0    achievement_achiever_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.achievement_achiever_id_seq', 1, false);
          public          postgres    false    224            ]           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 3, true);
          public          postgres    false    210            ^           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    212            _           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    208            `           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 13, true);
          public          postgres    false    216            a           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 18, true);
          public          postgres    false    214            b           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    218            c           0    0     club_clubmember_ClubMemberId_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."club_clubmember_ClubMemberId_seq"', 9, true);
          public          postgres    false    229            d           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    226            e           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    206            f           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);
          public          postgres    false    202            g           0    0    employee_employee_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.employee_employee_id_seq', 5, true);
          public          postgres    false    231            h           0    0    event_event_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.event_event_id_seq', 5, true);
          public          postgres    false    235            i           0    0 #   event_eventmember_EventMemberId_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."event_eventmember_EventMemberId_seq"', 1, true);
          public          postgres    false    237            j           0    0 $   main_notification_NotificationId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."main_notification_NotificationId_seq"', 2, true);
          public          postgres    false    239            k           0    0    student_student_StudentId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."student_student_StudentId_seq"', 6, true);
          public          postgres    false    220            l           0    0    venue_venue_VenueId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."venue_venue_VenueId_seq"', 5, true);
          public          postgres    false    233            O           2606    20064 4   achievement_achievement achievement_achievement_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT achievement_achievement_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT achievement_achievement_pkey;
       public            postgres    false    223            S           2606    20072 .   achievement_achiever achievement_achiever_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT achievement_achiever_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.achievement_achiever DROP CONSTRAINT achievement_achiever_pkey;
       public            postgres    false    225            (           2606    20130    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    211            -           2606    19980 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    213    213            0           2606    19943 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    213            *           2606    19933    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    211            #           2606    19971 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    209    209            %           2606    19925 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    209            8           2606    19961 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    217            ;           2606    19995 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    217    217            2           2606    19951    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    215            >           2606    19969 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    219            A           2606    20009 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    219    219            5           2606    20124     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    215            \           2606    20141 !   club_club club_club_UserId_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT "club_club_UserId_id_key" UNIQUE ("UserId_id");
 M   ALTER TABLE ONLY public.club_club DROP CONSTRAINT "club_club_UserId_id_key";
       public            postgres    false    228            ^           2606    20139    club_club club_club_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT club_club_pkey PRIMARY KEY ("ClubName");
 B   ALTER TABLE ONLY public.club_club DROP CONSTRAINT club_club_pkey;
       public            postgres    false    228            c           2606    20149 $   club_clubmember club_clubmember_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT club_clubmember_pkey PRIMARY KEY ("ClubMemberId");
 N   ALTER TABLE ONLY public.club_clubmember DROP CONSTRAINT club_clubmember_pkey;
       public            postgres    false    230                       2606    19893 0   department_department department_department_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.department_department
    ADD CONSTRAINT department_department_pkey PRIMARY KEY ("DepartmentName");
 Z   ALTER TABLE ONLY public.department_department DROP CONSTRAINT department_department_pkey;
       public            postgres    false    204                       2606    19898 6   department_subdepartment department_subdepartment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT department_subdepartment_pkey PRIMARY KEY ("SubDepartmentName");
 `   ALTER TABLE ONLY public.department_subdepartment DROP CONSTRAINT department_subdepartment_pkey;
       public            postgres    false    205            V           2606    20110 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    227                       2606    19917 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    207    207                        2606    19915 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    207                       2606    19888 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            }           2606    20293 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    241            i           2606    20188 1   employee_employee employee_employee_UserId_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_UserId_id_key" UNIQUE ("UserId_id");
 ]   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_UserId_id_key";
       public            postgres    false    232            k           2606    20186 (   employee_employee employee_employee_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT employee_employee_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT employee_employee_pkey;
       public            postgres    false    232            r           2606    20229    event_event event_event_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT event_event_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.event_event DROP CONSTRAINT event_event_pkey;
       public            postgres    false    236            v           2606    20250 (   event_eventmember event_eventmember_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.event_eventmember
    ADD CONSTRAINT event_eventmember_pkey PRIMARY KEY ("EventMemberId");
 R   ALTER TABLE ONLY public.event_eventmember DROP CONSTRAINT event_eventmember_pkey;
       public            postgres    false    238            z           2606    20273 (   main_notification main_notification_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT main_notification_pkey PRIMARY KEY ("NotificationId");
 R   ALTER TABLE ONLY public.main_notification DROP CONSTRAINT main_notification_pkey;
       public            postgres    false    240            G           2606    20034 -   student_student student_student_UserId_id_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_UserId_id_key" UNIQUE ("UserId_id");
 Y   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_UserId_id_key";
       public            postgres    false    221            I           2606    20032 $   student_student student_student_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT student_student_pkey PRIMARY KEY ("StudentId");
 N   ALTER TABLE ONLY public.student_student DROP CONSTRAINT student_student_pkey;
       public            postgres    false    221            m           2606    20218    venue_venue venue_venue_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.venue_venue
    ADD CONSTRAINT venue_venue_pkey PRIMARY KEY ("VenueId");
 F   ALTER TABLE ONLY public.venue_venue DROP CONSTRAINT venue_venue_pkey;
       public            postgres    false    234            J           1259    20083 2   achievement_achievement_DepartmentName_id_cb8e6802    INDEX     �   CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802" ON public.achievement_achievement USING btree ("DepartmentName_id");
 H   DROP INDEX public."achievement_achievement_DepartmentName_id_cb8e6802";
       public            postgres    false    223            K           1259    20084 7   achievement_achievement_DepartmentName_id_cb8e6802_like    INDEX     �   CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802_like" ON public.achievement_achievement USING btree ("DepartmentName_id" varchar_pattern_ops);
 M   DROP INDEX public."achievement_achievement_DepartmentName_id_cb8e6802_like";
       public            postgres    false    223            L           1259    20085 5   achievement_achievement_SubDepartmentName_id_d15e34b2    INDEX     �   CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2" ON public.achievement_achievement USING btree ("SubDepartmentName_id");
 K   DROP INDEX public."achievement_achievement_SubDepartmentName_id_d15e34b2";
       public            postgres    false    223            M           1259    20086 :   achievement_achievement_SubDepartmentName_id_d15e34b2_like    INDEX     �   CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2_like" ON public.achievement_achievement USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 P   DROP INDEX public."achievement_achievement_SubDepartmentName_id_d15e34b2_like";
       public            postgres    false    223            P           1259    20097 .   achievement_achiever_AchievementId_id_dbe070c7    INDEX        CREATE INDEX "achievement_achiever_AchievementId_id_dbe070c7" ON public.achievement_achiever USING btree ("AchievementId_id");
 D   DROP INDEX public."achievement_achiever_AchievementId_id_dbe070c7";
       public            postgres    false    225            Q           1259    20098 *   achievement_achiever_StudentId_id_b32c6a88    INDEX     w   CREATE INDEX "achievement_achiever_StudentId_id_b32c6a88" ON public.achievement_achiever USING btree ("StudentId_id");
 @   DROP INDEX public."achievement_achiever_StudentId_id_b32c6a88";
       public            postgres    false    225            &           1259    20131    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    211            +           1259    19991 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    213            .           1259    19992 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    213            !           1259    19977 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    209            6           1259    20007 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    217            9           1259    20006 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    217            <           1259    20021 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    219            ?           1259    20020 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    219            3           1259    20125     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    215            X           1259    20160     club_club_ClubName_76d83c98_like    INDEX     r   CREATE INDEX "club_club_ClubName_76d83c98_like" ON public.club_club USING btree ("ClubName" varchar_pattern_ops);
 6   DROP INDEX public."club_club_ClubName_76d83c98_like";
       public            postgres    false    228            Y           1259    20161 $   club_club_DepartmentName_id_8c4ae513    INDEX     k   CREATE INDEX "club_club_DepartmentName_id_8c4ae513" ON public.club_club USING btree ("DepartmentName_id");
 :   DROP INDEX public."club_club_DepartmentName_id_8c4ae513";
       public            postgres    false    228            Z           1259    20162 )   club_club_DepartmentName_id_8c4ae513_like    INDEX     �   CREATE INDEX "club_club_DepartmentName_id_8c4ae513_like" ON public.club_club USING btree ("DepartmentName_id" varchar_pattern_ops);
 ?   DROP INDEX public."club_club_DepartmentName_id_8c4ae513_like";
       public            postgres    false    228            _           1259    20173 "   club_clubmember_ClubId_id_6c1da842    INDEX     g   CREATE INDEX "club_clubmember_ClubId_id_6c1da842" ON public.club_clubmember USING btree ("ClubId_id");
 8   DROP INDEX public."club_clubmember_ClubId_id_6c1da842";
       public            postgres    false    230            `           1259    20174 '   club_clubmember_ClubId_id_6c1da842_like    INDEX     �   CREATE INDEX "club_clubmember_ClubId_id_6c1da842_like" ON public.club_clubmember USING btree ("ClubId_id" varchar_pattern_ops);
 =   DROP INDEX public."club_clubmember_ClubId_id_6c1da842_like";
       public            postgres    false    230            a           1259    20175 %   club_clubmember_StudentId_id_029cab03    INDEX     m   CREATE INDEX "club_clubmember_StudentId_id_029cab03" ON public.club_clubmember USING btree ("StudentId_id");
 ;   DROP INDEX public."club_clubmember_StudentId_id_029cab03";
       public            postgres    false    230                       1259    19899 2   department_department_DepartmentName_fb5ebb6d_like    INDEX     �   CREATE INDEX "department_department_DepartmentName_fb5ebb6d_like" ON public.department_department USING btree ("DepartmentName" varchar_pattern_ops);
 H   DROP INDEX public."department_department_DepartmentName_fb5ebb6d_like";
       public            postgres    false    204                       1259    19906 3   department_subdepartment_DepartmentName_id_ff4808cf    INDEX     �   CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf" ON public.department_subdepartment USING btree ("DepartmentName_id");
 I   DROP INDEX public."department_subdepartment_DepartmentName_id_ff4808cf";
       public            postgres    false    205                       1259    19907 8   department_subdepartment_DepartmentName_id_ff4808cf_like    INDEX     �   CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf_like" ON public.department_subdepartment USING btree ("DepartmentName_id" varchar_pattern_ops);
 N   DROP INDEX public."department_subdepartment_DepartmentName_id_ff4808cf_like";
       public            postgres    false    205                       1259    19905 8   department_subdepartment_SubDepartmentName_ed81263a_like    INDEX     �   CREATE INDEX "department_subdepartment_SubDepartmentName_ed81263a_like" ON public.department_subdepartment USING btree ("SubDepartmentName" varchar_pattern_ops);
 N   DROP INDEX public."department_subdepartment_SubDepartmentName_ed81263a_like";
       public            postgres    false    205            T           1259    20121 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    227            W           1259    20122 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    227            {           1259    20295 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    241            ~           1259    20294 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    241            d           1259    20204 ,   employee_employee_DepartmentName_id_f52c8eed    INDEX     {   CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed" ON public.employee_employee USING btree ("DepartmentName_id");
 B   DROP INDEX public."employee_employee_DepartmentName_id_f52c8eed";
       public            postgres    false    232            e           1259    20205 1   employee_employee_DepartmentName_id_f52c8eed_like    INDEX     �   CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed_like" ON public.employee_employee USING btree ("DepartmentName_id" varchar_pattern_ops);
 G   DROP INDEX public."employee_employee_DepartmentName_id_f52c8eed_like";
       public            postgres    false    232            f           1259    20206 /   employee_employee_SubDepartmentName_id_b9f45a4e    INDEX     �   CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e" ON public.employee_employee USING btree ("SubDepartmentName_id");
 E   DROP INDEX public."employee_employee_SubDepartmentName_id_b9f45a4e";
       public            postgres    false    232            g           1259    20207 4   employee_employee_SubDepartmentName_id_b9f45a4e_like    INDEX     �   CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e_like" ON public.employee_employee USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 J   DROP INDEX public."employee_employee_SubDepartmentName_id_b9f45a4e_like";
       public            postgres    false    232            n           1259    20240     event_event_ClubName_id_45eb75dd    INDEX     c   CREATE INDEX "event_event_ClubName_id_45eb75dd" ON public.event_event USING btree ("ClubName_id");
 6   DROP INDEX public."event_event_ClubName_id_45eb75dd";
       public            postgres    false    236            o           1259    20241 %   event_event_ClubName_id_45eb75dd_like    INDEX     |   CREATE INDEX "event_event_ClubName_id_45eb75dd_like" ON public.event_event USING btree ("ClubName_id" varchar_pattern_ops);
 ;   DROP INDEX public."event_event_ClubName_id_45eb75dd_like";
       public            postgres    false    236            p           1259    20242    event_event_VenueId_id_6df8f336    INDEX     a   CREATE INDEX "event_event_VenueId_id_6df8f336" ON public.event_event USING btree ("VenueId_id");
 5   DROP INDEX public."event_event_VenueId_id_6df8f336";
       public            postgres    false    236            s           1259    20261 %   event_eventmember_EventId_id_f49aaaf3    INDEX     m   CREATE INDEX "event_eventmember_EventId_id_f49aaaf3" ON public.event_eventmember USING btree ("EventId_id");
 ;   DROP INDEX public."event_eventmember_EventId_id_f49aaaf3";
       public            postgres    false    238            t           1259    20262 '   event_eventmember_StudentId_id_4a7dc63f    INDEX     q   CREATE INDEX "event_eventmember_StudentId_id_4a7dc63f" ON public.event_eventmember USING btree ("StudentId_id");
 =   DROP INDEX public."event_eventmember_StudentId_id_4a7dc63f";
       public            postgres    false    238            w           1259    20284 +   main_notification_AchievementId_id_5e7d026f    INDEX     y   CREATE INDEX "main_notification_AchievementId_id_5e7d026f" ON public.main_notification USING btree ("AchievementId_id");
 A   DROP INDEX public."main_notification_AchievementId_id_5e7d026f";
       public            postgres    false    240            x           1259    20285 '   main_notification_StudentId_id_83ec6a14    INDEX     q   CREATE INDEX "main_notification_StudentId_id_83ec6a14" ON public.main_notification USING btree ("StudentId_id");
 =   DROP INDEX public."main_notification_StudentId_id_83ec6a14";
       public            postgres    false    240            B           1259    20050 *   student_student_DepartmentName_id_0e0ab50c    INDEX     w   CREATE INDEX "student_student_DepartmentName_id_0e0ab50c" ON public.student_student USING btree ("DepartmentName_id");
 @   DROP INDEX public."student_student_DepartmentName_id_0e0ab50c";
       public            postgres    false    221            C           1259    20051 /   student_student_DepartmentName_id_0e0ab50c_like    INDEX     �   CREATE INDEX "student_student_DepartmentName_id_0e0ab50c_like" ON public.student_student USING btree ("DepartmentName_id" varchar_pattern_ops);
 E   DROP INDEX public."student_student_DepartmentName_id_0e0ab50c_like";
       public            postgres    false    221            D           1259    20052 -   student_student_SubDepartmentName_id_ff67d62f    INDEX     }   CREATE INDEX "student_student_SubDepartmentName_id_ff67d62f" ON public.student_student USING btree ("SubDepartmentName_id");
 C   DROP INDEX public."student_student_SubDepartmentName_id_ff67d62f";
       public            postgres    false    221            E           1259    20053 2   student_student_SubDepartmentName_id_ff67d62f_like    INDEX     �   CREATE INDEX "student_student_SubDepartmentName_id_ff67d62f_like" ON public.student_student USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 H   DROP INDEX public."student_student_SubDepartmentName_id_ff67d62f_like";
       public            postgres    false    221            �           2606    20073 T   achievement_achievement achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT "achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen";
       public          postgres    false    2839    204    223            �           2606    20078 W   achievement_achievement achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen    FK CONSTRAINT     	  ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT "achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen";
       public          postgres    false    2844    223    205            �           2606    20087 P   achievement_achiever achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT "achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme" FOREIGN KEY ("AchievementId_id") REFERENCES public.achievement_achievement(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.achievement_achiever DROP CONSTRAINT "achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme";
       public          postgres    false    2895    223    225            �           2606    20092 L   achievement_achiever achievement_achiever_StudentId_id_b32c6a88_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT "achievement_achiever_StudentId_id_b32c6a88_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.achievement_achiever DROP CONSTRAINT "achievement_achiever_StudentId_id_b32c6a88_fk_student_s";
       public          postgres    false    225    221    2889            �           2606    19986 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2853    213    209            �           2606    19981 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    2858    213            �           2606    19972 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2848    209            �           2606    20001 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2858    211    217            �           2606    19996 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    2866    217            �           2606    20015 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2853    209    219            �           2606    20010 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2866    215    219            �           2606    20150 ;   club_club club_club_DepartmentName_id_8c4ae513_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT "club_club_DepartmentName_id_8c4ae513_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.club_club DROP CONSTRAINT "club_club_DepartmentName_id_8c4ae513_fk_departmen";
       public          postgres    false    204    228    2839            �           2606    20155 6   club_club club_club_UserId_id_25276893_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT "club_club_UserId_id_25276893_fk_auth_user_id" FOREIGN KEY ("UserId_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.club_club DROP CONSTRAINT "club_club_UserId_id_25276893_fk_auth_user_id";
       public          postgres    false    2866    228    215            �           2606    20163 H   club_clubmember club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT "club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName" FOREIGN KEY ("ClubId_id") REFERENCES public.club_club("ClubName") DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.club_clubmember DROP CONSTRAINT "club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName";
       public          postgres    false    228    2910    230            �           2606    20168 B   club_clubmember club_clubmember_StudentId_id_029cab03_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT "club_clubmember_StudentId_id_029cab03_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.club_clubmember DROP CONSTRAINT "club_clubmember_StudentId_id_029cab03_fk_student_s";
       public          postgres    false    221    230    2889                       2606    19900 U   department_subdepartment department_subdepart_DepartmentName_id_ff4808cf_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT "department_subdepart_DepartmentName_id_ff4808cf_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.department_subdepartment DROP CONSTRAINT "department_subdepart_DepartmentName_id_ff4808cf_fk_departmen";
       public          postgres    false    204    2839    205            �           2606    20111 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    207    2848    227            �           2606    20116 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    227    2866    215            �           2606    20189 K   employee_employee employee_employee_DepartmentName_id_f52c8eed_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_DepartmentName_id_f52c8eed_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_DepartmentName_id_f52c8eed_fk_departmen";
       public          postgres    false    2839    204    232            �           2606    20194 N   employee_employee employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen    FK CONSTRAINT        ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen";
       public          postgres    false    205    232    2844            �           2606    20199 F   employee_employee employee_employee_UserId_id_8885f0d1_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_UserId_id_8885f0d1_fk_auth_user_id" FOREIGN KEY ("UserId_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_UserId_id_8885f0d1_fk_auth_user_id";
       public          postgres    false    2866    232    215            �           2606    20230 B   event_event event_event_ClubName_id_45eb75dd_fk_club_club_ClubName    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT "event_event_ClubName_id_45eb75dd_fk_club_club_ClubName" FOREIGN KEY ("ClubName_id") REFERENCES public.club_club("ClubName") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.event_event DROP CONSTRAINT "event_event_ClubName_id_45eb75dd_fk_club_club_ClubName";
       public          postgres    false    228    236    2910            �           2606    20235 B   event_event event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT "event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId" FOREIGN KEY ("VenueId_id") REFERENCES public.venue_venue("VenueId") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.event_event DROP CONSTRAINT "event_event_VenueId_id_6df8f336_fk_venue_venue_VenueId";
       public          postgres    false    2925    234    236            �           2606    20251 I   event_eventmember event_eventmember_EventId_id_f49aaaf3_fk_event_event_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_eventmember
    ADD CONSTRAINT "event_eventmember_EventId_id_f49aaaf3_fk_event_event_id" FOREIGN KEY ("EventId_id") REFERENCES public.event_event(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.event_eventmember DROP CONSTRAINT "event_eventmember_EventId_id_f49aaaf3_fk_event_event_id";
       public          postgres    false    238    236    2930            �           2606    20256 F   event_eventmember event_eventmember_StudentId_id_4a7dc63f_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_eventmember
    ADD CONSTRAINT "event_eventmember_StudentId_id_4a7dc63f_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.event_eventmember DROP CONSTRAINT "event_eventmember_StudentId_id_4a7dc63f_fk_student_s";
       public          postgres    false    221    2889    238            �           2606    20274 J   main_notification main_notification_AchievementId_id_5e7d026f_fk_achieveme    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT "main_notification_AchievementId_id_5e7d026f_fk_achieveme" FOREIGN KEY ("AchievementId_id") REFERENCES public.achievement_achievement(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.main_notification DROP CONSTRAINT "main_notification_AchievementId_id_5e7d026f_fk_achieveme";
       public          postgres    false    2895    240    223            �           2606    20279 F   main_notification main_notification_StudentId_id_83ec6a14_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT "main_notification_StudentId_id_83ec6a14_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.main_notification DROP CONSTRAINT "main_notification_StudentId_id_83ec6a14_fk_student_s";
       public          postgres    false    221    240    2889            �           2606    20035 G   student_student student_student_DepartmentName_id_0e0ab50c_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_DepartmentName_id_0e0ab50c_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_DepartmentName_id_0e0ab50c_fk_departmen";
       public          postgres    false    204    2839    221            �           2606    20040 J   student_student student_student_SubDepartmentName_id_ff67d62f_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_SubDepartmentName_id_ff67d62f_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_SubDepartmentName_id_ff67d62f_fk_departmen";
       public          postgres    false    2844    221    205            �           2606    20045 B   student_student student_student_UserId_id_c9ae8b03_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_UserId_id_c9ae8b03_fk_auth_user_id" FOREIGN KEY ("UserId_id") REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_UserId_id_c9ae8b03_fk_auth_user_id";
       public          postgres    false    215    2866    221            0   |  x�mR1n�@��WL�Hګ5׸J�*�J�,�WKa�+A���ꀻ��%�Ub �	�pfvF�U�=QB��)�� ��[(щ��!�^b��%����ɯ�l�N��4GL�f���V/�?�rbRHD$�$(7��}v=�_�ArBQg	�����Opm+��:��˹(!�'��y���>�l��
?xO{�-�z��'��u���vc�V84|D�}o��J��i����Ӝ(�储���:d�����1�LEV�.�=��	.a�������x�e�/p�3-'릈�J~&k�r���<Y��2X��e���镲�1����Gh��i�Y�V8{�4[i�g�-l�?�R��p�Q�9e[]�o�Yo.������v���      2      x������ � �      $   '   x�3�.)MI�+�2�L�)MrL����2�,�1c���� ��!      &      x������ � �      "   �  x�m�[��0E��U��y��l��Q Ow$���q�U�[N�Ůc�ĩ���a����z���i~����?aLCWr��Oo�8�`M��_�l�8�`C����l�P�Mf�����x����t�u(g@��G?ò �U4$9wL�����(j�gW�QN���H�N��#��@\�����Ϣ!��ѕ��U�>-�� o�N��2m�}��|����v��ዖxj�q�E2��D��g?䫽jf4��L�/�jG�<r��we�3a��c��A�+DV	�N����w<����S�2��,h�����] ���$ma�����N�8��N�����쌰I���aȆA�AM�k9!{�9!m��Y �`ט,m�H[�5�͊�#������z{_�Kf}��d1�VҤI�Md�B���d��e}�2�Jx�-��D���RNNQ8�R���t��˩(�/d}v�����B"��G�����H=^:T=��w7;�k���D�q�>W�/s/�AO��J�\դ�o:��G��kM2 ����HSE:?��b��I�U>l��F3Yp������>�\���1�(�e�����L2��oR��mxHGF��a��:�]���ͺ|	����0%�j�q$�)
'���'�ch�z��3&/�af $� �X����˕�      (   4  x��VY���}�E?�fLIU_ե۹�q�Su*
����/v��pl��C6Ѱ���ko*��YI���0�@��Ju�X�P���+A�5S��=�^s�|0�pLqs���ͫՌ��d;�R�#H@��%�Y��(�)�
�����<�!���K���|����	�G�y�B��:�~(�qT�/�z8d�U �Xf�������A�aHr��أJw��ǋ���jӧ��j�|:�Ț����}o4i���/��<�ǡ��z"h���r����o�/�PVAId���m���c&y�ٚ�r��i֪/��i��������<8ZV�Dmњ�aoT|ҏ�#���T�D�!��J�7|+!���y%�q�����mM�}�%+"�2�?.��ۉ��3ˤ�阵�
K��.�옝�52�ڴ�Ԕ��Ӎ�� ���n���ӂ�~��7��'��=|l��/{��~���B*�%D?в�`��'y}}g�E�@ZU�-�6q��8�6笧�j�ꌾ���+����1�/*��<�
��B0���Z���4�Ioƫ�o�<�O��B"*@AL��o#>�枽:mI�y�L�s�g��xufY�?��O�t�1�FtWT�|��-s���:��|���L��d�KU��k��%�������X!�KY�_t�2:�4�Ac�\�Zf���g>Y�:2Y�����BpN�EGn��Ue�Y��*�0y��g��e�< P0!��6Z���KF�Z�.��ǰJ�V��F�6�=j�g�MgefV���lK* �D ��'�y���f���������'��/��n�V��w:��r���+�m�H� �7�C��z�m�3��x;������_�JY��1���_������['��O�����R��e�b(���6~��-&Þ�fԯ�E�v��~�.j�4X�O�5?Ah�tQ[���!������Z��"���.6D�l����}C�6�&���)�Hem�K�`l�&��;;c�e�rͷfM�������O���"E���Jt��:γ���~1R1�l�^���&�Df�_��r�*��y{�Oj���I�,������[���4Z-���/M���.��{]�'TQ%&*2������z�EiSy6+�Ɍ�rX���?�5��8'��g�4�F�`�X�6�~�
(��L�,}�#Y9x쒢��r���0���������e;,� ����G:#ٗ�M���S�m5���2'���h�\0DՍ���v�m±�}�Bo�����S<H=?��������<�i��=�~��U�e�Yz�3qh2z!h���R	Mf���5�cZ]�1t���6�j֢?�Ϩ��>�W���F�,�3�
$��u2�;��-%���I)��<��@Q���_Ǝn?���CQ��!k��|���NݛL2pP� 4�� öl��ii���;��� �/�w(ߔf��`�I)��{,|<?��p8��PTJ#�,Hz;�3y[wⰲ�~3��x-=�g<�i�м�(���dZ��M������Ae"�(a���K�#�{�|�ҳ?w~O�<U��G"�!�tͿŇ���>s�      *   B   x����0���0N�va�9p>�Y��"i�6�ls�޷� 2\ҚTc�5N��BǗ�?.�      ,      x������ � �      5   �   x�}��
�0ů�=E/�b^ ��)v)�Z&�ml�^?M1e3���9p~���d�\��o�^EZ�W5+��~rd5Bq���	��N��l%�ZH6�2���T��P�ۯ� Ë�m����!$��Z��*�J�Z	��JLa��]e�4�2'sB�-� T��L'uziϘ-_���uF�L6ϑ���� ������IB>�ǳ�      7   �   x�3�t�)MRpL����H,JL�,N	qr!�y$�痖 �������s ꍸL�%@̀���"Nc.SKJ�
rR�J2��f\f�a�ɩ
E�ř)�y%p����!�rSs��Ja�&\Xō�b���� ��@�         D   x�s��-(-I-RN�L�KN�r���M-2�J�3�R���|��SsS�J�\�ҁb�E�y�\1z\\\ ���         =   x��uv�t��-(-I-RN�L�KN��ur�t*-��K-.���q�t�KrR�2�ҹb���� �9=      4      x������ � �          �   x�mNI�0<ۏ�j���� .D"��T��A�9�2�{l�YI�YX�c"�,;%��Fc}:�3�bs���a��!��nٗ;���"؃�6A��$��0�.��+(>J�Ǳh�X����_�D�C���Y�*��8f@�B���� ��@F����LbZe��#G���Rd�� ���!�M�z         ?  x���I��0E��)�Z`g�% �H�-@Sk0ڷ刔f o���U�R���s뻙PJ��]=׮!H�~P���賐g�P	������	I�ws����O�b&��(f�-��X$���m"N�y�ި� P��t���Z���KV�����J⪶�U�b��ԮB������nG��7oC�uU��(�\ǆ��a;&H�+����]ly��2L �ε�p�ebk��zb;��<M��*�4C����h?��4���ۺ/�������h@±�L��[W7�$C1��H���>e�ÜwKS�)���gJ�y�Ez\��.h�q��'�v.���~®�9HA��H�tsM]����R�q�G��ir���f <�(Qg�:p�PjLr]%�y��-���#����2�
޳ԣI$����v���Ӳ�2�hBJ�f�}��B�xC�o���{,d:FD%���7dBs-S$3R�8�x!%��c|W�tZ%4$��G��qE���@X��n�pG(�x�Q��J`y��&e�� ��-d�`x�ԅ&!j�^�<���!�ߖ�P�����*N��_���x      B      x������ � �      9   /  x�mS�n�@=/_1�D"$l�V�4N��Z%ʩR56kXv��+�!��N�9��ރ���,Ӑ������s�a��M��ے]�Kn��6����@)��lP��V5,���\�rl6��0���
]Xc]X`ka%jn*ȕ��.]��d��TB"={�|�=!��۷��Ҫ�n�pa��Q�e;f,�v�����Ҳl�2�LYf �4n*O�����?s6�I@5�
�HI��+��Jy�ʒ��^nyRJ�Z���@@��m��5�8ܫ�,�E�	tq��^�u'�0Ê����̼3Brc+�VZ-�R�;޼[	έm2K¡��;�&>q��X������
r��f�I��B�ed���I���y��V}��~ɲ�٠8o�g�+,!�x|�3?r|v�a���p���s��6ݜy�tO�iFa2cmύ���J����%��kX�h�BMߔ�V���Kاz�i;�ih��e������SI�PT4b?FFg�ǖ��R�q1y�$�:F�!�E]{�mH�_@�/ܺpG��a�xe+�y���:�=�q�D�:      =   (  x��U�r�6<s��\�+r��#]R.�����*�1U�!9$a�  w�>�#rH~O_�p�G,9Uz��`0��hl�-�H;��ߴ�W�m���:'�,m=s���6ے	��e�.�E^�΋����8�(ʋ�Ȋ�bs.���5�?�0J��L���_�U��lkV�v��i ��ᗻ��,%b��xP��;]�jO��y���ꨝE>{�g���ݨ;�u.��M�<�}OQ>��<�fĜ�AQdlS��Ə�3�Ꮾ��ӵ�++�z���+�8��#I!�[U�v�����>�
��^�Q�x���*�"A��$�2.J�ZޣY��;߄UVdW�lWdQ��6����SC�癥0޼�����	�?y��^�s�P��|}�t���Cg�E�`9e����фVw�Q� ���#�D[w_��\�UD�0D�١qɓ >���JUn��2�k�"Uy�xES��aO���;"{�Oށ�$�q���!E�Q{E�Ps{<�@�;9B��yQPsW����}��㠻1�:5D�5ϴ��F�4S��.��u<~gt�{�e�e�YΟ��x}��x<,���>;�~"�9���!���`�"g��!o ��h�Sj�uƸ}H��a�G� �|��x�u�:���noW�(g�m�/Ϋ)ű�k�ƽ����lCB�ը7�-j�0
kD��w0�/)J�����#'IW��Tm��VG��W9b��zQ&��;T�a,<�NYp�<���~rE�y���������Dh�f��p=Gn��G��@if����d>�:\`�(�i�46��x�$T�O�qj����a�cڇ�+�����\%�S�ۤ;��^��X�)�/��<c3\��F�Q���:A�Մʀ��Э���p_����U��%e����x���ٗ��,_o��#�%�~*�7�{g�k7f1���@dc��dt��@f�b��^��FH�W�FԒ�*&�#�r�1��k!ا�Q����1�\�\��p����`_Dŏl�m���j��j�X��ר      ?      x�3�4�4����� �[      A   �   x��ͱ�0��}��䮵�t#��,�\��ķWG�d�O��iy�:����HYA�m��gA�����	���ЈI�tMơ���#���1�>�S����t�;�~�f[%C�owVQ��?�He刾���־ ��<�      .   E  x����n�0E��W�(�dY�]m��#vaDiVٌ-F�,�I%��w�HaYZ4�8�΍�r_v<����,��/�S�ņ� �է���+no�q/�ѴZ���y��|�Z���[7��h`ߩ��o �%*�� �;��
U	
+4��Y�k'LW��X���Ԇ���R�vKn{a��Jŭe����^�;+��N�7lX��"��٣�}��d��F�>�]���9n��Wԁ�a��ly�B:�J'P:�4K�<��{�\��#:�xvI��>lnRX5�p�g>�t�D��֍V��;rp �h��AG���6s��^�
�k���+�'��� �Tv����'�d'U=��,I��l$>�7�ԧWVM���æ��Ɠ�߲�0�XI
�T>|�!�g��/�#��&1�ujh��3H�tĊ�\9�٬X��ٓ4t�B�+��O2�?o0�<M��_���K�E���]�5Am�پ$����aG�~��rx��!��~��,��kj�Vw�,��/��k�i4��ipI,|�LI���$�h�0%����p���w�PX]�G�!�o�">n����{�y��H$`y      ;   �   x��нn�0��<�}  ���!c�%�����ٸi޾�� �j���\�O���>�uj�C݋{g��-��]2^�d�Q�)O�F١�D'����9=���<�Z�NF�1�t��q�^�rBpVF�|�&c��,[	��6c��E⯕�p�	+�ML
*��V���4�I����I�i�󂕡!�_�v+H9�}�V�F�5fX�8a�$�<pz�C�0����{��7
̞�mC�y�g�",Z3�kE�����     