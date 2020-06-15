PGDMP                         x            event_management_db    12.2    12.2 �    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            5           1262    16801    event_management_db    DATABASE     �   CREATE DATABASE event_management_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
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
       public          postgres    false    232            6           0    0 )   achievement_achievement_AchievementId_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public."achievement_achievement_AchievementId_seq" OWNED BY public.achievement_achievement."AchievementId";
          public          postgres    false    231            �            1259    17226    achievement_achiever    TABLE     �   CREATE TABLE public.achievement_achiever (
    "AchieverId" integer NOT NULL,
    "AchievementId_id" integer NOT NULL,
    "StudentId_id" integer NOT NULL
);
 (   DROP TABLE public.achievement_achiever;
       public         heap    postgres    false            �            1259    17224 #   achievement_achiever_AchieverId_seq    SEQUENCE     �   CREATE SEQUENCE public."achievement_achiever_AchieverId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."achievement_achiever_AchieverId_seq";
       public          postgres    false    240            7           0    0 #   achievement_achiever_AchieverId_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."achievement_achiever_AchieverId_seq" OWNED BY public.achievement_achiever."AchieverId";
          public          postgres    false    239            �            1259    16833 
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
       public          postgres    false    209            8           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
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
       public          postgres    false    211            9           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
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
       public          postgres    false    207            :           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
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
       public          postgres    false    215            ;           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    16849    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            <           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
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
       public          postgres    false    217            =           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
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
       public          postgres    false    230            >           0    0    club_club_ClubName_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."club_club_ClubName_seq" OWNED BY public.club_club."ClubName";
          public          postgres    false    229            �            1259    17246    club_clubmember    TABLE     �   CREATE TABLE public.club_clubmember (
    "ClubMemberId" integer NOT NULL,
    "MemberRole" character varying(150) NOT NULL,
    "ClubId_id" character varying(150) NOT NULL,
    "StudentId_id" integer NOT NULL
);
 #   DROP TABLE public.club_clubmember;
       public         heap    postgres    false            �            1259    17244     club_clubmember_ClubMemberId_seq    SEQUENCE     �   CREATE SEQUENCE public."club_clubmember_ClubMemberId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."club_clubmember_ClubMemberId_seq";
       public          postgres    false    242            ?           0    0     club_clubmember_ClubMemberId_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."club_clubmember_ClubMemberId_seq" OWNED BY public.club_clubmember."ClubMemberId";
          public          postgres    false    241            �            1259    16980    college_college    TABLE     �   CREATE TABLE public.college_college (
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
       public          postgres    false    224            @           0    0    college_college_CollegeId_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."college_college_CollegeId_seq" OWNED BY public.college_college."CollegeId";
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
       public          postgres    false    222            A           0    0    college_temp_CollegeId_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."college_temp_CollegeId_seq" OWNED BY public.college_temp."CollegeId";
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
       public          postgres    false    219            B           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
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
       public          postgres    false    205            C           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
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
       public          postgres    false    203            D           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
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
       public          postgres    false    228            E           0    0     employee_employee_EmployeeId_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."employee_employee_EmployeeId_seq" OWNED BY public.employee_employee."EmployeeId";
          public          postgres    false    227            �            1259    17153    mainadmin_mainadmin    TABLE     ,  CREATE TABLE public.mainadmin_mainadmin (
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
       public          postgres    false    236            F           0    0    mainadmin_mainadmin_AdminId_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."mainadmin_mainadmin_AdminId_seq" OWNED BY public.mainadmin_mainadmin."AdminId";
          public          postgres    false    235            �            1259    17199    student_student    TABLE     �  CREATE TABLE public.student_student (
    "StudentId" integer NOT NULL,
    "StudentName" character varying(150) NOT NULL,
    "StudentUserName" character varying(150) NOT NULL,
    "StudentPassword" character varying(150) NOT NULL,
    "StudentPhoneNumber" character varying(150) NOT NULL,
    "StudentGender" character varying(10) NOT NULL,
    "StudentImageName" text,
    "StudentImage" character varying(100),
    "StudentEmail" character varying(150),
    "StudentAddress" text NOT NULL,
    "StudentCity" character varying(150) NOT NULL,
    "StudentStatus" boolean NOT NULL,
    "DepartmentName_id" character varying(150) NOT NULL,
    "SubDepartmentName_id" character varying(150) NOT NULL
);
 #   DROP TABLE public.student_student;
       public         heap    postgres    false            �            1259    17197    student_student_StudentId_seq    SEQUENCE     �   CREATE SEQUENCE public."student_student_StudentId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."student_student_StudentId_seq";
       public          postgres    false    238            G           0    0    student_student_StudentId_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."student_student_StudentId_seq" OWNED BY public.student_student."StudentId";
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
       public          postgres    false    233            H           0    0    venue_venue_VenueId_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."venue_venue_VenueId_seq" OWNED BY public.venue_venue."VenueId";
          public          postgres    false    234                       2604    17076 %   achievement_achievement AchievementId    DEFAULT     �   ALTER TABLE ONLY public.achievement_achievement ALTER COLUMN "AchievementId" SET DEFAULT nextval('public."achievement_achievement_AchievementId_seq"'::regclass);
 V   ALTER TABLE public.achievement_achievement ALTER COLUMN "AchievementId" DROP DEFAULT;
       public          postgres    false    232    231    232                       2604    17229    achievement_achiever AchieverId    DEFAULT     �   ALTER TABLE ONLY public.achievement_achiever ALTER COLUMN "AchieverId" SET DEFAULT nextval('public."achievement_achiever_AchieverId_seq"'::regclass);
 P   ALTER TABLE public.achievement_achiever ALTER COLUMN "AchieverId" DROP DEFAULT;
       public          postgres    false    240    239    240                       2604    16836    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    16846    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                       2604    16828    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                       2604    16854    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213                       2604    16864    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    16872    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    17099    club_club ClubName    DEFAULT     |   ALTER TABLE ONLY public.club_club ALTER COLUMN "ClubName" SET DEFAULT nextval('public."club_club_ClubName_seq"'::regclass);
 C   ALTER TABLE public.club_club ALTER COLUMN "ClubName" DROP DEFAULT;
       public          postgres    false    230    229    230                       2604    17249    club_clubmember ClubMemberId    DEFAULT     �   ALTER TABLE ONLY public.club_clubmember ALTER COLUMN "ClubMemberId" SET DEFAULT nextval('public."club_clubmember_ClubMemberId_seq"'::regclass);
 M   ALTER TABLE public.club_clubmember ALTER COLUMN "ClubMemberId" DROP DEFAULT;
       public          postgres    false    242    241    242                       2604    16983    college_college CollegeId    DEFAULT     �   ALTER TABLE ONLY public.college_college ALTER COLUMN "CollegeId" SET DEFAULT nextval('public."college_college_CollegeId_seq"'::regclass);
 J   ALTER TABLE public.college_college ALTER COLUMN "CollegeId" DROP DEFAULT;
       public          postgres    false    224    223    224            
           2604    16975    college_temp CollegeId    DEFAULT     �   ALTER TABLE ONLY public.college_temp ALTER COLUMN "CollegeId" SET DEFAULT nextval('public."college_temp_CollegeId_seq"'::regclass);
 G   ALTER TABLE public.college_temp ALTER COLUMN "CollegeId" DROP DEFAULT;
       public          postgres    false    221    222    222                       2604    16932    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    16818    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                        2604    16807    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                       2604    17011    employee_employee EmployeeId    DEFAULT     �   ALTER TABLE ONLY public.employee_employee ALTER COLUMN "EmployeeId" SET DEFAULT nextval('public."employee_employee_EmployeeId_seq"'::regclass);
 M   ALTER TABLE public.employee_employee ALTER COLUMN "EmployeeId" DROP DEFAULT;
       public          postgres    false    227    228    228                       2604    17156    mainadmin_mainadmin AdminId    DEFAULT     �   ALTER TABLE ONLY public.mainadmin_mainadmin ALTER COLUMN "AdminId" SET DEFAULT nextval('public."mainadmin_mainadmin_AdminId_seq"'::regclass);
 L   ALTER TABLE public.mainadmin_mainadmin ALTER COLUMN "AdminId" DROP DEFAULT;
       public          postgres    false    236    235    236                       2604    17202    student_student StudentId    DEFAULT     �   ALTER TABLE ONLY public.student_student ALTER COLUMN "StudentId" SET DEFAULT nextval('public."student_student_StudentId_seq"'::regclass);
 J   ALTER TABLE public.student_student ALTER COLUMN "StudentId" DROP DEFAULT;
       public          postgres    false    237    238    238                       2604    17143    venue_venue VenueId    DEFAULT     ~   ALTER TABLE ONLY public.venue_venue ALTER COLUMN "VenueId" SET DEFAULT nextval('public."venue_venue_VenueId_seq"'::regclass);
 D   ALTER TABLE public.venue_venue ALTER COLUMN "VenueId" DROP DEFAULT;
       public          postgres    false    234    233            %          0    17073    achievement_achievement 
   TABLE DATA           �   COPY public.achievement_achievement ("AchievementId", "AchievementName", "AchievementDescription", "DepartmentName_id", "SubDepartmentName_id") FROM stdin;
    public          postgres    false    232   �,      -          0    17226    achievement_achiever 
   TABLE DATA           `   COPY public.achievement_achiever ("AchieverId", "AchievementId_id", "StudentId_id") FROM stdin;
    public          postgres    false    240   �-                0    16833 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   �-                0    16843    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   .                0    16825    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   /.                0    16851 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   	1                0    16861    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   �1                0    16869    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   �1      #          0    17041 	   club_club 
   TABLE DATA           �   COPY public.club_club ("ClubName", "ClubType", "clubStatus", "clubApproval", "DepartmentName_id", "ClubImage", "ClubImageName", "DribbbleLink", "FacebookLink", "InstagramLink", "TwitterLink") FROM stdin;
    public          postgres    false    230   �1      /          0    17246    club_clubmember 
   TABLE DATA           d   COPY public.club_clubmember ("ClubMemberId", "MemberRole", "ClubId_id", "StudentId_id") FROM stdin;
    public          postgres    false    242   c3                0    16980    college_college 
   TABLE DATA           \   COPY public.college_college ("CollegeId", "CollegeName", "City", "CollegeType") FROM stdin;
    public          postgres    false    224   �3                0    16972    college_temp 
   TABLE DATA           Y   COPY public.college_temp ("CollegeId", "CollegeName", "City", "CollegeType") FROM stdin;
    public          postgres    false    222   +4                0    16986    department_department 
   TABLE DATA           A   COPY public.department_department ("DepartmentName") FROM stdin;
    public          postgres    false    225   v4                0    16992    department_subdepartment 
   TABLE DATA           \   COPY public.department_subdepartment ("SubDepartmentName", "DepartmentName_id") FROM stdin;
    public          postgres    false    226   �4                0    16929    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   5      
          0    16815    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   %5                0    16804    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �5                0    16960    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   �:      !          0    17008    employee_employee 
   TABLE DATA           %  COPY public.employee_employee ("EmployeeId", "EmployeeName", "EmployeeUserName", "EmployeePassword", "Gender", "EmployeeImage", "EmployeePhone", "EmployeeEmail", "EmployeeAddress", "EmployeeCity", "EmployeeStatus", "DepartmentName_id", "SubDepartmentName_id", "EmployeeImageName") FROM stdin;
    public          postgres    false    228   3<      )          0    17153    mainadmin_mainadmin 
   TABLE DATA           �   COPY public.mainadmin_mainadmin ("AdminId", "AdminUserName", "AdminPassword", "AdminType", "Status", "EmployeeId_id") FROM stdin;
    public          postgres    false    236   �=      +          0    17199    student_student 
   TABLE DATA           %  COPY public.student_student ("StudentId", "StudentName", "StudentUserName", "StudentPassword", "StudentPhoneNumber", "StudentGender", "StudentImageName", "StudentImage", "StudentEmail", "StudentAddress", "StudentCity", "StudentStatus", "DepartmentName_id", "SubDepartmentName_id") FROM stdin;
    public          postgres    false    238   �=      &          0    17131    venue_venue 
   TABLE DATA           n   COPY public.venue_venue ("VenueId", "VenueName", "VenueImageName", "VenueImage", "VenueLocation") FROM stdin;
    public          postgres    false    233   �?      I           0    0 )   achievement_achievement_AchievementId_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."achievement_achievement_AchievementId_seq"', 3, true);
          public          postgres    false    231            J           0    0 #   achievement_achiever_AchieverId_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."achievement_achiever_AchieverId_seq"', 1, false);
          public          postgres    false    239            K           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            L           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            M           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    206            N           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            O           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    212            P           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            Q           0    0    club_club_ClubName_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."club_club_ClubName_seq"', 1, false);
          public          postgres    false    229            R           0    0     club_clubmember_ClubMemberId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."club_clubmember_ClubMemberId_seq"', 1, false);
          public          postgres    false    241            S           0    0    college_college_CollegeId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."college_college_CollegeId_seq"', 8, true);
          public          postgres    false    223            T           0    0    college_temp_CollegeId_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."college_temp_CollegeId_seq"', 1, true);
          public          postgres    false    221            U           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    218            V           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    204            W           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 59, true);
          public          postgres    false    202            X           0    0     employee_employee_EmployeeId_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public."employee_employee_EmployeeId_seq"', 12, true);
          public          postgres    false    227            Y           0    0    mainadmin_mainadmin_AdminId_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."mainadmin_mainadmin_AdminId_seq"', 1, false);
          public          postgres    false    235            Z           0    0    student_student_StudentId_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."student_student_StudentId_seq"', 5, true);
          public          postgres    false    237            [           0    0    venue_venue_VenueId_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."venue_venue_VenueId_seq"', 5, true);
          public          postgres    false    234            ^           2606    17081 4   achievement_achievement achievement_achievement_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT achievement_achievement_pkey PRIMARY KEY ("AchievementId");
 ^   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT achievement_achievement_pkey;
       public            postgres    false    232            m           2606    17231 .   achievement_achiever achievement_achiever_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT achievement_achiever_pkey PRIMARY KEY ("AchieverId");
 X   ALTER TABLE ONLY public.achievement_achiever DROP CONSTRAINT achievement_achiever_pkey;
       public            postgres    false    240            !           2606    16958    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            &           2606    16885 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            )           2606    16848 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            #           2606    16838    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209                       2606    16876 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                       2606    16830 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            1           2606    16866 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            4           2606    16900 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            +           2606    16856    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            7           2606    16874 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            :           2606    16914 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            .           2606    16952     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            X           2606    17101    club_club club_club_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT club_club_pkey PRIMARY KEY ("ClubName");
 B   ALTER TABLE ONLY public.club_club DROP CONSTRAINT club_club_pkey;
       public            postgres    false    230            r           2606    17251 $   club_clubmember club_clubmember_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT club_clubmember_pkey PRIMARY KEY ("ClubMemberId");
 N   ALTER TABLE ONLY public.club_clubmember DROP CONSTRAINT club_clubmember_pkey;
       public            postgres    false    242            F           2606    16985 $   college_college college_college_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.college_college
    ADD CONSTRAINT college_college_pkey PRIMARY KEY ("CollegeId");
 N   ALTER TABLE ONLY public.college_college DROP CONSTRAINT college_college_pkey;
       public            postgres    false    224            D           2606    16977    college_temp college_temp_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.college_temp
    ADD CONSTRAINT college_temp_pkey PRIMARY KEY ("CollegeId");
 H   ALTER TABLE ONLY public.college_temp DROP CONSTRAINT college_temp_pkey;
       public            postgres    false    222            I           2606    16990 0   department_department department_department_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.department_department
    ADD CONSTRAINT department_department_pkey PRIMARY KEY ("DepartmentName");
 Z   ALTER TABLE ONLY public.department_department DROP CONSTRAINT department_department_pkey;
       public            postgres    false    225            N           2606    16996 6   department_subdepartment department_subdepartment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT department_subdepartment_pkey PRIMARY KEY ("SubDepartmentName");
 `   ALTER TABLE ONLY public.department_subdepartment DROP CONSTRAINT department_subdepartment_pkey;
       public            postgres    false    226            =           2606    16938 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219                       2606    16822 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205                       2606    16820 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205                       2606    16812 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            A           2606    16967 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            T           2606    17016 (   employee_employee employee_employee_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT employee_employee_pkey PRIMARY KEY ("EmployeeId");
 R   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT employee_employee_pkey;
       public            postgres    false    228            c           2606    17158 ,   mainadmin_mainadmin mainadmin_mainadmin_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mainadmin_mainadmin
    ADD CONSTRAINT mainadmin_mainadmin_pkey PRIMARY KEY ("AdminId");
 V   ALTER TABLE ONLY public.mainadmin_mainadmin DROP CONSTRAINT mainadmin_mainadmin_pkey;
       public            postgres    false    236            i           2606    17207 $   student_student student_student_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT student_student_pkey PRIMARY KEY ("StudentId");
 N   ALTER TABLE ONLY public.student_student DROP CONSTRAINT student_student_pkey;
       public            postgres    false    238            `           2606    17140    venue_venue venue_venue_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.venue_venue
    ADD CONSTRAINT venue_venue_pkey PRIMARY KEY ("VenueId");
 F   ALTER TABLE ONLY public.venue_venue DROP CONSTRAINT venue_venue_pkey;
       public            postgres    false    233            Y           1259    17092 2   achievement_achievement_DepartmentName_id_cb8e6802    INDEX     �   CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802" ON public.achievement_achievement USING btree ("DepartmentName_id");
 H   DROP INDEX public."achievement_achievement_DepartmentName_id_cb8e6802";
       public            postgres    false    232            Z           1259    17093 7   achievement_achievement_DepartmentName_id_cb8e6802_like    INDEX     �   CREATE INDEX "achievement_achievement_DepartmentName_id_cb8e6802_like" ON public.achievement_achievement USING btree ("DepartmentName_id" varchar_pattern_ops);
 M   DROP INDEX public."achievement_achievement_DepartmentName_id_cb8e6802_like";
       public            postgres    false    232            [           1259    17094 5   achievement_achievement_SubDepartmentName_id_d15e34b2    INDEX     �   CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2" ON public.achievement_achievement USING btree ("SubDepartmentName_id");
 K   DROP INDEX public."achievement_achievement_SubDepartmentName_id_d15e34b2";
       public            postgres    false    232            \           1259    17095 :   achievement_achievement_SubDepartmentName_id_d15e34b2_like    INDEX     �   CREATE INDEX "achievement_achievement_SubDepartmentName_id_d15e34b2_like" ON public.achievement_achievement USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 P   DROP INDEX public."achievement_achievement_SubDepartmentName_id_d15e34b2_like";
       public            postgres    false    232            j           1259    17242 .   achievement_achiever_AchievementId_id_dbe070c7    INDEX        CREATE INDEX "achievement_achiever_AchievementId_id_dbe070c7" ON public.achievement_achiever USING btree ("AchievementId_id");
 D   DROP INDEX public."achievement_achiever_AchievementId_id_dbe070c7";
       public            postgres    false    240            k           1259    17243 *   achievement_achiever_StudentId_id_b32c6a88    INDEX     w   CREATE INDEX "achievement_achiever_StudentId_id_b32c6a88" ON public.achievement_achiever USING btree ("StudentId_id");
 @   DROP INDEX public."achievement_achiever_StudentId_id_b32c6a88";
       public            postgres    false    240                       1259    16959    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            $           1259    16896 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            '           1259    16897 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                       1259    16882 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            /           1259    16912 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            2           1259    16911 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            5           1259    16926 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            8           1259    16925 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            ,           1259    16953     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            U           1259    17052 $   club_club_DepartmentName_id_8c4ae513    INDEX     k   CREATE INDEX "club_club_DepartmentName_id_8c4ae513" ON public.club_club USING btree ("DepartmentName_id");
 :   DROP INDEX public."club_club_DepartmentName_id_8c4ae513";
       public            postgres    false    230            V           1259    17053 )   club_club_DepartmentName_id_8c4ae513_like    INDEX     �   CREATE INDEX "club_club_DepartmentName_id_8c4ae513_like" ON public.club_club USING btree ("DepartmentName_id" varchar_pattern_ops);
 ?   DROP INDEX public."club_club_DepartmentName_id_8c4ae513_like";
       public            postgres    false    230            n           1259    17262 "   club_clubmember_ClubId_id_6c1da842    INDEX     g   CREATE INDEX "club_clubmember_ClubId_id_6c1da842" ON public.club_clubmember USING btree ("ClubId_id");
 8   DROP INDEX public."club_clubmember_ClubId_id_6c1da842";
       public            postgres    false    242            o           1259    17263 '   club_clubmember_ClubId_id_6c1da842_like    INDEX     �   CREATE INDEX "club_clubmember_ClubId_id_6c1da842_like" ON public.club_clubmember USING btree ("ClubId_id" varchar_pattern_ops);
 =   DROP INDEX public."club_clubmember_ClubId_id_6c1da842_like";
       public            postgres    false    242            p           1259    17264 %   club_clubmember_StudentId_id_029cab03    INDEX     m   CREATE INDEX "club_clubmember_StudentId_id_029cab03" ON public.club_clubmember USING btree ("StudentId_id");
 ;   DROP INDEX public."club_clubmember_StudentId_id_029cab03";
       public            postgres    false    242            G           1259    16991 2   department_department_DepartmentName_fb5ebb6d_like    INDEX     �   CREATE INDEX "department_department_DepartmentName_fb5ebb6d_like" ON public.department_department USING btree ("DepartmentName" varchar_pattern_ops);
 H   DROP INDEX public."department_department_DepartmentName_fb5ebb6d_like";
       public            postgres    false    225            J           1259    17003 3   department_subdepartment_DepartmentName_id_ff4808cf    INDEX     �   CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf" ON public.department_subdepartment USING btree ("DepartmentName_id");
 I   DROP INDEX public."department_subdepartment_DepartmentName_id_ff4808cf";
       public            postgres    false    226            K           1259    17004 8   department_subdepartment_DepartmentName_id_ff4808cf_like    INDEX     �   CREATE INDEX "department_subdepartment_DepartmentName_id_ff4808cf_like" ON public.department_subdepartment USING btree ("DepartmentName_id" varchar_pattern_ops);
 N   DROP INDEX public."department_subdepartment_DepartmentName_id_ff4808cf_like";
       public            postgres    false    226            L           1259    17002 8   department_subdepartment_SubDepartmentName_ed81263a_like    INDEX     �   CREATE INDEX "department_subdepartment_SubDepartmentName_ed81263a_like" ON public.department_subdepartment USING btree ("SubDepartmentName" varchar_pattern_ops);
 N   DROP INDEX public."department_subdepartment_SubDepartmentName_ed81263a_like";
       public            postgres    false    226            ;           1259    16949 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            >           1259    16950 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            ?           1259    16969 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            B           1259    16968 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            O           1259    17027 ,   employee_employee_DepartmentName_id_f52c8eed    INDEX     {   CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed" ON public.employee_employee USING btree ("DepartmentName_id");
 B   DROP INDEX public."employee_employee_DepartmentName_id_f52c8eed";
       public            postgres    false    228            P           1259    17028 1   employee_employee_DepartmentName_id_f52c8eed_like    INDEX     �   CREATE INDEX "employee_employee_DepartmentName_id_f52c8eed_like" ON public.employee_employee USING btree ("DepartmentName_id" varchar_pattern_ops);
 G   DROP INDEX public."employee_employee_DepartmentName_id_f52c8eed_like";
       public            postgres    false    228            Q           1259    17029 /   employee_employee_SubDepartmentName_id_b9f45a4e    INDEX     �   CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e" ON public.employee_employee USING btree ("SubDepartmentName_id");
 E   DROP INDEX public."employee_employee_SubDepartmentName_id_b9f45a4e";
       public            postgres    false    228            R           1259    17030 4   employee_employee_SubDepartmentName_id_b9f45a4e_like    INDEX     �   CREATE INDEX "employee_employee_SubDepartmentName_id_b9f45a4e_like" ON public.employee_employee USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 J   DROP INDEX public."employee_employee_SubDepartmentName_id_b9f45a4e_like";
       public            postgres    false    228            a           1259    17164 *   mainadmin_mainadmin_EmployeeId_id_441e7dc6    INDEX     w   CREATE INDEX "mainadmin_mainadmin_EmployeeId_id_441e7dc6" ON public.mainadmin_mainadmin USING btree ("EmployeeId_id");
 @   DROP INDEX public."mainadmin_mainadmin_EmployeeId_id_441e7dc6";
       public            postgres    false    236            d           1259    17218 *   student_student_DepartmentName_id_0e0ab50c    INDEX     w   CREATE INDEX "student_student_DepartmentName_id_0e0ab50c" ON public.student_student USING btree ("DepartmentName_id");
 @   DROP INDEX public."student_student_DepartmentName_id_0e0ab50c";
       public            postgres    false    238            e           1259    17219 /   student_student_DepartmentName_id_0e0ab50c_like    INDEX     �   CREATE INDEX "student_student_DepartmentName_id_0e0ab50c_like" ON public.student_student USING btree ("DepartmentName_id" varchar_pattern_ops);
 E   DROP INDEX public."student_student_DepartmentName_id_0e0ab50c_like";
       public            postgres    false    238            f           1259    17220 -   student_student_SubDepartmentName_id_ff67d62f    INDEX     }   CREATE INDEX "student_student_SubDepartmentName_id_ff67d62f" ON public.student_student USING btree ("SubDepartmentName_id");
 C   DROP INDEX public."student_student_SubDepartmentName_id_ff67d62f";
       public            postgres    false    238            g           1259    17221 2   student_student_SubDepartmentName_id_ff67d62f_like    INDEX     �   CREATE INDEX "student_student_SubDepartmentName_id_ff67d62f_like" ON public.student_student USING btree ("SubDepartmentName_id" varchar_pattern_ops);
 H   DROP INDEX public."student_student_SubDepartmentName_id_ff67d62f_like";
       public            postgres    false    238            �           2606    17082 T   achievement_achievement achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT "achievement_achievem_DepartmentName_id_cb8e6802_fk_departmen";
       public          postgres    false    225    2889    232            �           2606    17087 W   achievement_achievement achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen    FK CONSTRAINT     	  ALTER TABLE ONLY public.achievement_achievement
    ADD CONSTRAINT "achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.achievement_achievement DROP CONSTRAINT "achievement_achievem_SubDepartmentName_id_d15e34b2_fk_departmen";
       public          postgres    false    232    226    2894            �           2606    17232 P   achievement_achiever achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT "achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme" FOREIGN KEY ("AchievementId_id") REFERENCES public.achievement_achievement("AchievementId") DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.achievement_achiever DROP CONSTRAINT "achievement_achiever_AchievementId_id_dbe070c7_fk_achieveme";
       public          postgres    false    240    232    2910            �           2606    17237 L   achievement_achiever achievement_achiever_StudentId_id_b32c6a88_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.achievement_achiever
    ADD CONSTRAINT "achievement_achiever_StudentId_id_b32c6a88_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.achievement_achiever DROP CONSTRAINT "achievement_achiever_StudentId_id_b32c6a88_fk_student_s";
       public          postgres    false    2921    238    240            u           2606    16891 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2846    211    207            t           2606    16886 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    211    2851            s           2606    16877 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2841    207            w           2606    16906 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2851    215    209            v           2606    16901 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    213    215    2859            y           2606    16920 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    2846    207            x           2606    16915 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    213    217    2859                       2606    17047 ;   club_club club_club_DepartmentName_id_8c4ae513_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_club
    ADD CONSTRAINT "club_club_DepartmentName_id_8c4ae513_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.club_club DROP CONSTRAINT "club_club_DepartmentName_id_8c4ae513_fk_departmen";
       public          postgres    false    2889    225    230            �           2606    17252 H   club_clubmember club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT "club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName" FOREIGN KEY ("ClubId_id") REFERENCES public.club_club("ClubName") DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.club_clubmember DROP CONSTRAINT "club_clubmember_ClubId_id_6c1da842_fk_club_club_ClubName";
       public          postgres    false    242    230    2904            �           2606    17257 B   club_clubmember club_clubmember_StudentId_id_029cab03_fk_student_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.club_clubmember
    ADD CONSTRAINT "club_clubmember_StudentId_id_029cab03_fk_student_s" FOREIGN KEY ("StudentId_id") REFERENCES public.student_student("StudentId") DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.club_clubmember DROP CONSTRAINT "club_clubmember_StudentId_id_029cab03_fk_student_s";
       public          postgres    false    242    2921    238            |           2606    16997 U   department_subdepartment department_subdepart_DepartmentName_id_ff4808cf_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.department_subdepartment
    ADD CONSTRAINT "department_subdepart_DepartmentName_id_ff4808cf_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.department_subdepartment DROP CONSTRAINT "department_subdepart_DepartmentName_id_ff4808cf_fk_departmen";
       public          postgres    false    225    226    2889            z           2606    16939 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2841    205    219            {           2606    16944 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    213    2859    219            }           2606    17017 K   employee_employee employee_employee_DepartmentName_id_f52c8eed_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_DepartmentName_id_f52c8eed_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_DepartmentName_id_f52c8eed_fk_departmen";
       public          postgres    false    2889    228    225            ~           2606    17022 N   employee_employee employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen    FK CONSTRAINT        ALTER TABLE ONLY public.employee_employee
    ADD CONSTRAINT "employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.employee_employee DROP CONSTRAINT "employee_employee_SubDepartmentName_id_b9f45a4e_fk_departmen";
       public          postgres    false    228    2894    226            �           2606    17159 K   mainadmin_mainadmin mainadmin_mainadmin_EmployeeId_id_441e7dc6_fk_employee_    FK CONSTRAINT     �   ALTER TABLE ONLY public.mainadmin_mainadmin
    ADD CONSTRAINT "mainadmin_mainadmin_EmployeeId_id_441e7dc6_fk_employee_" FOREIGN KEY ("EmployeeId_id") REFERENCES public.employee_employee("EmployeeId") DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.mainadmin_mainadmin DROP CONSTRAINT "mainadmin_mainadmin_EmployeeId_id_441e7dc6_fk_employee_";
       public          postgres    false    2900    236    228            �           2606    17208 G   student_student student_student_DepartmentName_id_0e0ab50c_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_DepartmentName_id_0e0ab50c_fk_departmen" FOREIGN KEY ("DepartmentName_id") REFERENCES public.department_department("DepartmentName") DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_DepartmentName_id_0e0ab50c_fk_departmen";
       public          postgres    false    238    225    2889            �           2606    17213 J   student_student student_student_SubDepartmentName_id_ff67d62f_fk_departmen    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_student
    ADD CONSTRAINT "student_student_SubDepartmentName_id_ff67d62f_fk_departmen" FOREIGN KEY ("SubDepartmentName_id") REFERENCES public.department_subdepartment("SubDepartmentName") DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.student_student DROP CONSTRAINT "student_student_SubDepartmentName_id_ff67d62f_fk_departmen";
       public          postgres    false    226    238    2894            %   �   x��1R�0E��:�Nf�@f�-��(A�#gm��Gފ;���������k�؍V�����<SN`�-c�A,F�=P)���E�\�F��%�ȁ���òO���X�(�mo�j�0E��^@i?|�r�����e�sI�Iԕb �g-���f��1ߓP�����i7ϷR��lW��!�Ѝ�-�2|&	�M�k��]�(B[��s��v�����ֿx3�&:�����w�&ܨa�=�}��L��      -      x������ � �            x������ � �            x������ � �         �  x�m�]��0���Ut��-ϳ��F��z��V��Qw?�?�M���(�����~�㡽���q��2�]pi�7�a�@n_�����' ﱏ��$`	�w�l+Tee�8�<w�� M
���H�{��K{����k����\_��ه��}�EHК!9�"�PA�SV��qr%�}(��ԥ�������r6��hl��ɷ縤���+�
Pi��p�Bv0	2|�u�xҧ��(2w4�5lȪ�S�A0�|a�.�̘q�`$/c������ӗ8���l��0��.	A�x� ���22��pl6j�}�]hx��3yf�;/��+���	"n��W;-C��k@���8ې$M���&�V�7(�Ԡ�^��M�?�W��|�`w�M&���kfS����g7H"�)��;F��k_�Ph��ir�IR+����@�P��[�^]�O���Kn�9�0�`�}	�
�ђЕ��ox�x���W&�W���Ff�e ���	|ؗT���.q�x׫��L0v0�2��Ǝ'��W��Ѡװ���+�4[�2��W& ���g�t!S+�g�P_�=���0t�x�o(��ܒ�I���&q
V6�(�T�8}^�;�V������
�ۃ9�z�������`�1�;q��?�c�>�èX�I��>�
We��1UpN+�iIX�����r�I"J�6���p:����{�O�7         �   x�5�O�0@�ۧ��M����A��ERA�F�K�Z�f}��{�wx��sS\驯r�]|�1�l�O�W�v���0�o��j�i)/Y'�˴fj����"�*޼�Q[���QB�M�M�\0�9�x��-����Q�!/�B�A���3�	�	p� `
�	���,�            x������ � �            x������ � �      #   ^  x���]o� ���W�(u7Kv9�}$kҤ�\��%U1����vw��9��+�Jj�$��+�H^��H
��jl�3���^jր�q�ϛ����&s�cz���N���̹lY�]�q�=p��<��D��
ڐcWȌ�TaL��jQ�v�<��yТC�cK���0XK�9�Y	���	��r[е��H������|���*��>���I�M��..�kP�}�O5�mJ����Xl���c��i|��6�{K��N��ST�yz�/Gߠ��`�>|c�[��p��y��JRv�=S@��1�;e���1J��?{٭��Ȗٲ��L$����/1�D��a���R��SJ m�_      /      x������ � �         �   x�e�M
�0F��)����
-.J��t�Mj�:�3�Lo_����{���ͽz�[b�F� ��F��t2uf4���2HN`��@уk:�?(r"Ɣ�i�	*W�ż��Y�Ѹi��$�NJ���bԑF�hO�w��7���\K(������Yk���KQ         ;   x�3���Q�/�IQHMLNU��,K-*�,��(�K�t,-�����/-V������ �Oc         H   x�s���M-JN�r��-(-I-RN�L�
8�g�s�&�%����p���R�2�ҹ|˹b���� @�         *   x��uv�t��-(-I-RN�L�KN���q��I,����� ��	�            x������ � �      
   �   x�mPI�1<���@���K/V)�� ���$3M\��Uv�4.FY�n�#�9=�K0*F�,N�e.{��Q��ME�6/�'�P���� �Ҡ��BI��m�wZď!�b�A�O_�y�kL�L�Md�#�:O5�O$�_a�����
�nTZ�����m���J1奮�2���g�L�4|�6&�q �i�~�         �  x����n�8��ӧ����H���, ���5։3NRL�~)ג�s�I��::<Ra��N��t�~���N)�95צjw�P�(~�XjW*[(������pWݮ�?iK��XD��plN?WyFki��S��{���������E�������1<ah�Hi��צ;�_m���]�5�4[�g������E�߄Su��,��#�f91T���ù�����p����>�ɯӌ�#�e���E^�cմ?r�3֌ �Az�/CO��������*cx�i��5nD#+�����
P�!��AF��}k�,��!������d^;6�Q�͡�v�epD��]���R�m�PYJ�e�{���Ks*�tf�;��
���H{����H^YΪ�L�p;�Zu8�ݟϙU7���b� ��K=���pZ��R��\��o�v�-ѕh
o��4�����B�R�2���I!�v��\�ף8l�H%ڒ���T�Z����Lp� ��XUNX���s�}�[�B���V���GӢ�B2�)�D�9�J�%`aСΏ��AЭ ҉�@��������;�
B\j�yp�O4��W~�eL�A+0_2��d�N�bw�����(�>@�$��H���������
�� �2	��{#���X���G��T�t���l ,��j�/�% d�z���b��w�Jօ2h�s�z�$���w�CV����&ՖK��8Kj���P�f�IO�#�_�̑.<(c��`�-XwJ/82��G��)
�d1x�YX �$	0U9!|:�h2���5@�d��Y
��m��¯j_�v��R������>׺|I��1�\��$k����mE��I�6�.�1yv5Lew�3,��CbB���D'�0��9���c�00��5���s��։8<ה(�w�p~�~l^:�	#������B��}�~͏�	r+�b���͗,�;�6���v�Ȏy���	�MI۹h�G#�A�C�����g���O�X�ďO���OD�����y�7��	rKȧO������F�V�i���͢o���4=x�7���@�!� �I��,��=��6�W�$�O�Λ֋��qx&�x��!����`���.��E�o������J�g�e��� �?Ҟ�?�<����Y���-��*d3�[<==�^��         �  x�=��n�0E��St?j���:A�j#"��� �1��~h4S���#��]�T
����Ww�s}��#Ў���e�	<�[ֆX�Br�CA�f��5�d#Z�����K�d$�xtv�qe��ǳH�)	U�蝪I�hK_Ve�Ma\�%|��P�+�eޖ�ϖ����8%t���>��x�<GG��2CW�����8TOn��ŏIY��ٙEf�Y���\�0 �FD���Z~1y�7�4���x_!��+�_1|����퍽�ߠ���K�;`�b��˩���\�@}�](kg�#�D,�1��F1��wK2�g�B��tz��\~���|���3���)��*���H�]l�����v�hy���q�������f�^��?��      !   =  x�m��N�0�����6i��m9�UDp�J��%q����M�)���x�y����ii!�@9`���S���x�@���l��f�'��c_Âe,�3�rv{�=�-�fVu-��*���<"�N��l��w�kZV���C�YA�L2x�Z
4VK8����PN�ݏdy��Dq��(��x2�%]�j��[;#7��5��$�Rhg���	k�=�]��鯘D�G$���"MR�Տ9��ɶ�0!U%p�=���8�D��Z�l4f��_��E��Awgl�e~u�L��j�x�����_A���<�K��1���!�7`��      )   :   x�3�,+�H,.)�4��4�4��LL����,��2�L�.��,��KJY"�̹b���� :      +   �  x�]�[o�@���_1������8q#5X�]�/}���awѲ����KlWH����̞H�D6���(�K�/�+˳\�ؑ��پoăT���p���/�B��*�D�kXuևhk��bƁ|�I(ak��ae��Ѣ���G.�/����ԍx}}�b�1f�P��ٿ��DF�U��$��Q��	4�n@O�s��ꥥ3�3�҈a[�C�P�-��{��%ig�����J��C����Q�Pb�V��Ҩ~tdaWI�,%���j�-y���N�%���u��y�%Y���n��e˕�^�ʎ�C����,ly�o��m�~G8���ߧs���+�L]./��/�Sk>P`�G��,	�<̃,=%�o0O��|�3�1'˖����SP:i�)(ks�
5�Ume|�ޢ����8����?�'i3�9�<�����      &   D  x����n�0@g�+���$�+Uԭ���ĭ�l���oL�(�m�}��y3�[Z���n�85S�Nz��iUK�xV�Y�|���N4������+&,��t+���P�1}A��a�l#c:g,�(#��V��2".���i�V:�Z��h�diY,��?�\�XL�Ga�;
��zP�V��k���'@�k�t�,�,x�^b�%�Z}�+�?:V��%/n�>����a��	-��&س����z0�vC*�Z6x^�E~o8S����r���d�� ��$�Hߢ�`2(n�:U�+���z��]P��a�	��IE?��&�     