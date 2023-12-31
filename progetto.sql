PGDMP         $            	    {           progetto    15.2    15.2 �    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            4           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            5           1262    25258    progetto    DATABASE     �   CREATE DATABASE progetto WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';
    DROP DATABASE progetto;
                postgres    false            	           1255    25302    notify_messenger_messages()    FUNCTION     �   CREATE FUNCTION public.notify_messenger_messages() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
            BEGIN
                PERFORM pg_notify('messenger_messages', NEW.queue_name::text);
                RETURN NEW;
            END;
        $$;
 2   DROP FUNCTION public.notify_messenger_messages();
       public          postgres    false            �            1259    25735 
   animazione    TABLE     �   CREATE TABLE public.animazione (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.animazione;
       public         heap    postgres    false            �            1259    25734    animazione_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animazione_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.animazione_id_seq;
       public          postgres    false    224            6           0    0    animazione_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.animazione_id_seq OWNED BY public.animazione.id;
          public          postgres    false    223            �            1259    25305    articolo    TABLE     �  CREATE TABLE public.articolo (
    id integer NOT NULL,
    titolo character varying(255) DEFAULT NULL::character varying,
    sottotitolo character varying(255) DEFAULT NULL::character varying,
    data character varying(255) DEFAULT NULL::character varying,
    video character varying(255) DEFAULT NULL::character varying,
    sottotitolovideo character varying(255) DEFAULT NULL::character varying,
    puntichiave character varying(255) DEFAULT NULL::character varying,
    versioneaudioarticolo character varying(255) DEFAULT NULL::character varying,
    testoarticolo character varying(255) DEFAULT NULL::character varying,
    videoarticolo character varying(255) DEFAULT NULL::character varying,
    sottovideoarticolo character varying(255) DEFAULT NULL::character varying,
    categoria character varying(255) DEFAULT NULL::character varying,
    immaginearticolo character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE public.articolo;
       public         heap    postgres    false            �            1259    25304    articolo_id_seq    SEQUENCE     x   CREATE SEQUENCE public.articolo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articolo_id_seq;
       public          postgres    false            �            1259    25744 	   avventura    TABLE     �   CREATE TABLE public.avventura (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.avventura;
       public         heap    postgres    false            �            1259    25743    avventura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.avventura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.avventura_id_seq;
       public          postgres    false    226            7           0    0    avventura_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.avventura_id_seq OWNED BY public.avventura.id;
          public          postgres    false    225            �            1259    25726    azione    TABLE     �   CREATE TABLE public.azione (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.azione;
       public         heap    postgres    false            �            1259    25725    azione_id_seq    SEQUENCE     �   CREATE SEQUENCE public.azione_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.azione_id_seq;
       public          postgres    false    222            8           0    0    azione_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.azione_id_seq OWNED BY public.azione.id;
          public          postgres    false    221            �            1259    25753 
   biografico    TABLE     �   CREATE TABLE public.biografico (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.biografico;
       public         heap    postgres    false            �            1259    25752    biografico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.biografico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.biografico_id_seq;
       public          postgres    false    228            9           0    0    biografico_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.biografico_id_seq OWNED BY public.biografico.id;
          public          postgres    false    227            �            1259    25762    commedia    TABLE     �   CREATE TABLE public.commedia (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.commedia;
       public         heap    postgres    false            �            1259    25761    commedia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.commedia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.commedia_id_seq;
       public          postgres    false    230            :           0    0    commedia_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.commedia_id_seq OWNED BY public.commedia.id;
          public          postgres    false    229            �            1259    25771    crime    TABLE     �   CREATE TABLE public.crime (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.crime;
       public         heap    postgres    false            �            1259    25770    crime_id_seq    SEQUENCE     �   CREATE SEQUENCE public.crime_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.crime_id_seq;
       public          postgres    false    232            ;           0    0    crime_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.crime_id_seq OWNED BY public.crime.id;
          public          postgres    false    231            �            1259    25259    doctrine_migration_versions    TABLE     �   CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);
 /   DROP TABLE public.doctrine_migration_versions;
       public         heap    postgres    false            �            1259    25780    documentario    TABLE     �   CREATE TABLE public.documentario (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
     DROP TABLE public.documentario;
       public         heap    postgres    false            �            1259    25779    documentario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.documentario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.documentario_id_seq;
       public          postgres    false    234            <           0    0    documentario_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.documentario_id_seq OWNED BY public.documentario.id;
          public          postgres    false    233            �            1259    25789    erotico    TABLE     �   CREATE TABLE public.erotico (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.erotico;
       public         heap    postgres    false            �            1259    25788    erotico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.erotico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.erotico_id_seq;
       public          postgres    false    236            =           0    0    erotico_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.erotico_id_seq OWNED BY public.erotico.id;
          public          postgres    false    235            �            1259    25798    famiglia    TABLE     �   CREATE TABLE public.famiglia (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.famiglia;
       public         heap    postgres    false            �            1259    25797    famiglia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.famiglia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.famiglia_id_seq;
       public          postgres    false    238            >           0    0    famiglia_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.famiglia_id_seq OWNED BY public.famiglia.id;
          public          postgres    false    237            �            1259    25807    fantascienza    TABLE     �   CREATE TABLE public.fantascienza (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
     DROP TABLE public.fantascienza;
       public         heap    postgres    false            �            1259    25806    fantascienza_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fantascienza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fantascienza_id_seq;
       public          postgres    false    240            ?           0    0    fantascienza_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fantascienza_id_seq OWNED BY public.fantascienza.id;
          public          postgres    false    239            �            1259    25816    fantasy    TABLE     �   CREATE TABLE public.fantasy (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.fantasy;
       public         heap    postgres    false            �            1259    25815    fantasy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fantasy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.fantasy_id_seq;
       public          postgres    false    242            @           0    0    fantasy_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.fantasy_id_seq OWNED BY public.fantasy.id;
          public          postgres    false    241            �            1259    25825    giallo    TABLE     �   CREATE TABLE public.giallo (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.giallo;
       public         heap    postgres    false            �            1259    25824    giallo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.giallo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.giallo_id_seq;
       public          postgres    false    244            A           0    0    giallo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.giallo_id_seq OWNED BY public.giallo.id;
          public          postgres    false    243            �            1259    25834    guerra    TABLE     �   CREATE TABLE public.guerra (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.guerra;
       public         heap    postgres    false            �            1259    25833    guerra_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guerra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.guerra_id_seq;
       public          postgres    false    246            B           0    0    guerra_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.guerra_id_seq OWNED BY public.guerra.id;
          public          postgres    false    245            �            1259    25843    horror    TABLE     �   CREATE TABLE public.horror (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.horror;
       public         heap    postgres    false            �            1259    25842    horror_id_seq    SEQUENCE     �   CREATE SEQUENCE public.horror_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.horror_id_seq;
       public          postgres    false    248            C           0    0    horror_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.horror_id_seq OWNED BY public.horror.id;
          public          postgres    false    247            �            1259    25290    messenger_messages    TABLE     s  CREATE TABLE public.messenger_messages (
    id bigint NOT NULL,
    body text NOT NULL,
    headers text NOT NULL,
    queue_name character varying(190) NOT NULL,
    created_at timestamp(0) without time zone NOT NULL,
    available_at timestamp(0) without time zone NOT NULL,
    delivered_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone
);
 &   DROP TABLE public.messenger_messages;
       public         heap    postgres    false            �            1259    25289    messenger_messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messenger_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.messenger_messages_id_seq;
       public          postgres    false    218            D           0    0    messenger_messages_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.messenger_messages_id_seq OWNED BY public.messenger_messages.id;
          public          postgres    false    217            �            1259    25852    musical    TABLE     �   CREATE TABLE public.musical (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.musical;
       public         heap    postgres    false            �            1259    25851    musical_id_seq    SEQUENCE     �   CREATE SEQUENCE public.musical_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.musical_id_seq;
       public          postgres    false    250            E           0    0    musical_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.musical_id_seq OWNED BY public.musical.id;
          public          postgres    false    249            �            1259    25861 
   poliziesco    TABLE     �   CREATE TABLE public.poliziesco (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.poliziesco;
       public         heap    postgres    false            �            1259    25860    poliziesco_id_seq    SEQUENCE     �   CREATE SEQUENCE public.poliziesco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.poliziesco_id_seq;
       public          postgres    false    252            F           0    0    poliziesco_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.poliziesco_id_seq OWNED BY public.poliziesco.id;
          public          postgres    false    251            �            1259    25870 	   romantico    TABLE     �   CREATE TABLE public.romantico (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.romantico;
       public         heap    postgres    false            �            1259    25869    romantico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.romantico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.romantico_id_seq;
       public          postgres    false    254            G           0    0    romantico_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.romantico_id_seq OWNED BY public.romantico.id;
          public          postgres    false    253                       1259    25888 
   spionaggio    TABLE     �   CREATE TABLE public.spionaggio (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.spionaggio;
       public         heap    postgres    false                       1259    25887    spionaggio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.spionaggio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.spionaggio_id_seq;
       public          postgres    false    258            H           0    0    spionaggio_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.spionaggio_id_seq OWNED BY public.spionaggio.id;
          public          postgres    false    257                       1259    25897    sportivo    TABLE     �   CREATE TABLE public.sportivo (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.sportivo;
       public         heap    postgres    false                       1259    25896    sportivo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sportivo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sportivo_id_seq;
       public          postgres    false    260            I           0    0    sportivo_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sportivo_id_seq OWNED BY public.sportivo.id;
          public          postgres    false    259                        1259    25879    storico    TABLE     �   CREATE TABLE public.storico (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.storico;
       public         heap    postgres    false            �            1259    25878    storico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.storico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.storico_id_seq;
       public          postgres    false    256            J           0    0    storico_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.storico_id_seq OWNED BY public.storico.id;
          public          postgres    false    255                       1259    25906    thriller    TABLE     �   CREATE TABLE public.thriller (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.thriller;
       public         heap    postgres    false                       1259    25905    thriller_id_seq    SEQUENCE     �   CREATE SEQUENCE public.thriller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.thriller_id_seq;
       public          postgres    false    262            K           0    0    thriller_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.thriller_id_seq OWNED BY public.thriller.id;
          public          postgres    false    261            �            1259    25266    user    TABLE     �  CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying(180) NOT NULL,
    roles json NOT NULL,
    password character varying(255) NOT NULL,
    nome character varying(255) DEFAULT NULL::character varying,
    cognome character varying(255) DEFAULT NULL::character varying,
    ruolo character varying(255) DEFAULT NULL::character varying,
    nomeazienda character varying(255) DEFAULT NULL::character varying,
    indirizzo character varying(255) DEFAULT NULL::character varying,
    cap character varying(255) DEFAULT NULL::character varying,
    citta character varying(255) DEFAULT NULL::character varying,
    provincia character varying(255) DEFAULT NULL::character varying,
    linguapreferita character varying(255) DEFAULT NULL::character varying,
    telefono character varying(255) DEFAULT NULL::character varying,
    cf character varying(255) DEFAULT NULL::character varying,
    cellulare character varying(255) DEFAULT NULL::character varying,
    fax character varying(255) DEFAULT NULL::character varying,
    sitoweb character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    25265    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false                       1259    25915    western    TABLE     �   CREATE TABLE public.western (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.western;
       public         heap    postgres    false                       1259    25914    western_id_seq    SEQUENCE     �   CREATE SEQUENCE public.western_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.western_id_seq;
       public          postgres    false    264            L           0    0    western_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.western_id_seq OWNED BY public.western.id;
          public          postgres    false    263            !           2604    25738    animazione id    DEFAULT     n   ALTER TABLE ONLY public.animazione ALTER COLUMN id SET DEFAULT nextval('public.animazione_id_seq'::regclass);
 <   ALTER TABLE public.animazione ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            "           2604    25747    avventura id    DEFAULT     l   ALTER TABLE ONLY public.avventura ALTER COLUMN id SET DEFAULT nextval('public.avventura_id_seq'::regclass);
 ;   ALTER TABLE public.avventura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226                        2604    25729 	   azione id    DEFAULT     f   ALTER TABLE ONLY public.azione ALTER COLUMN id SET DEFAULT nextval('public.azione_id_seq'::regclass);
 8   ALTER TABLE public.azione ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            #           2604    25756    biografico id    DEFAULT     n   ALTER TABLE ONLY public.biografico ALTER COLUMN id SET DEFAULT nextval('public.biografico_id_seq'::regclass);
 <   ALTER TABLE public.biografico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            $           2604    25765    commedia id    DEFAULT     j   ALTER TABLE ONLY public.commedia ALTER COLUMN id SET DEFAULT nextval('public.commedia_id_seq'::regclass);
 :   ALTER TABLE public.commedia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            %           2604    25774    crime id    DEFAULT     d   ALTER TABLE ONLY public.crime ALTER COLUMN id SET DEFAULT nextval('public.crime_id_seq'::regclass);
 7   ALTER TABLE public.crime ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            &           2604    25783    documentario id    DEFAULT     r   ALTER TABLE ONLY public.documentario ALTER COLUMN id SET DEFAULT nextval('public.documentario_id_seq'::regclass);
 >   ALTER TABLE public.documentario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            '           2604    25792 
   erotico id    DEFAULT     h   ALTER TABLE ONLY public.erotico ALTER COLUMN id SET DEFAULT nextval('public.erotico_id_seq'::regclass);
 9   ALTER TABLE public.erotico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            (           2604    25801    famiglia id    DEFAULT     j   ALTER TABLE ONLY public.famiglia ALTER COLUMN id SET DEFAULT nextval('public.famiglia_id_seq'::regclass);
 :   ALTER TABLE public.famiglia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            )           2604    25810    fantascienza id    DEFAULT     r   ALTER TABLE ONLY public.fantascienza ALTER COLUMN id SET DEFAULT nextval('public.fantascienza_id_seq'::regclass);
 >   ALTER TABLE public.fantascienza ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            *           2604    25819 
   fantasy id    DEFAULT     h   ALTER TABLE ONLY public.fantasy ALTER COLUMN id SET DEFAULT nextval('public.fantasy_id_seq'::regclass);
 9   ALTER TABLE public.fantasy ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            +           2604    25828 	   giallo id    DEFAULT     f   ALTER TABLE ONLY public.giallo ALTER COLUMN id SET DEFAULT nextval('public.giallo_id_seq'::regclass);
 8   ALTER TABLE public.giallo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            ,           2604    25837 	   guerra id    DEFAULT     f   ALTER TABLE ONLY public.guerra ALTER COLUMN id SET DEFAULT nextval('public.guerra_id_seq'::regclass);
 8   ALTER TABLE public.guerra ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            -           2604    25846 	   horror id    DEFAULT     f   ALTER TABLE ONLY public.horror ALTER COLUMN id SET DEFAULT nextval('public.horror_id_seq'::regclass);
 8   ALTER TABLE public.horror ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248                       2604    25293    messenger_messages id    DEFAULT     ~   ALTER TABLE ONLY public.messenger_messages ALTER COLUMN id SET DEFAULT nextval('public.messenger_messages_id_seq'::regclass);
 D   ALTER TABLE public.messenger_messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            .           2604    25855 
   musical id    DEFAULT     h   ALTER TABLE ONLY public.musical ALTER COLUMN id SET DEFAULT nextval('public.musical_id_seq'::regclass);
 9   ALTER TABLE public.musical ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            /           2604    25864    poliziesco id    DEFAULT     n   ALTER TABLE ONLY public.poliziesco ALTER COLUMN id SET DEFAULT nextval('public.poliziesco_id_seq'::regclass);
 <   ALTER TABLE public.poliziesco ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            0           2604    25873    romantico id    DEFAULT     l   ALTER TABLE ONLY public.romantico ALTER COLUMN id SET DEFAULT nextval('public.romantico_id_seq'::regclass);
 ;   ALTER TABLE public.romantico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            2           2604    25891    spionaggio id    DEFAULT     n   ALTER TABLE ONLY public.spionaggio ALTER COLUMN id SET DEFAULT nextval('public.spionaggio_id_seq'::regclass);
 <   ALTER TABLE public.spionaggio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            3           2604    25900    sportivo id    DEFAULT     j   ALTER TABLE ONLY public.sportivo ALTER COLUMN id SET DEFAULT nextval('public.sportivo_id_seq'::regclass);
 :   ALTER TABLE public.sportivo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            1           2604    25882 
   storico id    DEFAULT     h   ALTER TABLE ONLY public.storico ALTER COLUMN id SET DEFAULT nextval('public.storico_id_seq'::regclass);
 9   ALTER TABLE public.storico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            4           2604    25909    thriller id    DEFAULT     j   ALTER TABLE ONLY public.thriller ALTER COLUMN id SET DEFAULT nextval('public.thriller_id_seq'::regclass);
 :   ALTER TABLE public.thriller ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            5           2604    25918 
   western id    DEFAULT     h   ALTER TABLE ONLY public.western ALTER COLUMN id SET DEFAULT nextval('public.western_id_seq'::regclass);
 9   ALTER TABLE public.western ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264                      0    25735 
   animazione 
   TABLE DATA           L   COPY public.animazione (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    224   ��                 0    25305    articolo 
   TABLE DATA           �   COPY public.articolo (id, titolo, sottotitolo, data, video, sottotitolovideo, puntichiave, versioneaudioarticolo, testoarticolo, videoarticolo, sottovideoarticolo, categoria, immaginearticolo) FROM stdin;
    public          postgres    false    220   %�       	          0    25744 	   avventura 
   TABLE DATA           K   COPY public.avventura (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    226   g�                 0    25726    azione 
   TABLE DATA           H   COPY public.azione (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    222   r�                 0    25753 
   biografico 
   TABLE DATA           L   COPY public.biografico (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    228   g�                 0    25762    commedia 
   TABLE DATA           J   COPY public.commedia (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    230   �	                0    25771    crime 
   TABLE DATA           G   COPY public.crime (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    232   �      �          0    25259    doctrine_migration_versions 
   TABLE DATA           [   COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
    public          postgres    false    214   f#                0    25780    documentario 
   TABLE DATA           N   COPY public.documentario (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    234   �#                0    25789    erotico 
   TABLE DATA           I   COPY public.erotico (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    236   )2                0    25798    famiglia 
   TABLE DATA           J   COPY public.famiglia (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    238   @                0    25807    fantascienza 
   TABLE DATA           N   COPY public.fantascienza (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    240   ?D                0    25816    fantasy 
   TABLE DATA           I   COPY public.fantasy (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    242   �R                0    25825    giallo 
   TABLE DATA           H   COPY public.giallo (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    244   +`                0    25834    guerra 
   TABLE DATA           H   COPY public.guerra (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    246   �n                0    25843    horror 
   TABLE DATA           H   COPY public.horror (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    248   �z                0    25290    messenger_messages 
   TABLE DATA           s   COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
    public          postgres    false    218   N�      !          0    25852    musical 
   TABLE DATA           I   COPY public.musical (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    250   k�      #          0    25861 
   poliziesco 
   TABLE DATA           L   COPY public.poliziesco (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    252   �      %          0    25870 	   romantico 
   TABLE DATA           K   COPY public.romantico (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    254   ��      )          0    25888 
   spionaggio 
   TABLE DATA           L   COPY public.spionaggio (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    258   ��      +          0    25897    sportivo 
   TABLE DATA           J   COPY public.sportivo (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    260   :�      '          0    25879    storico 
   TABLE DATA           I   COPY public.storico (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    256   W�      -          0    25906    thriller 
   TABLE DATA           J   COPY public.thriller (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    262   A�      �          0    25266    user 
   TABLE DATA           �   COPY public."user" (id, username, roles, password, nome, cognome, ruolo, nomeazienda, indirizzo, cap, citta, provincia, linguapreferita, telefono, cf, cellulare, fax, sitoweb, email) FROM stdin;
    public          postgres    false    216   ^�      /          0    25915    western 
   TABLE DATA           I   COPY public.western (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    264   ��      M           0    0    animazione_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.animazione_id_seq', 18, true);
          public          postgres    false    223            N           0    0    articolo_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.articolo_id_seq', 17, true);
          public          postgres    false    219            O           0    0    avventura_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.avventura_id_seq', 18, true);
          public          postgres    false    225            P           0    0    azione_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.azione_id_seq', 18, true);
          public          postgres    false    221            Q           0    0    biografico_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.biografico_id_seq', 18, true);
          public          postgres    false    227            R           0    0    commedia_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.commedia_id_seq', 18, true);
          public          postgres    false    229            S           0    0    crime_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.crime_id_seq', 18, true);
          public          postgres    false    231            T           0    0    documentario_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.documentario_id_seq', 18, true);
          public          postgres    false    233            U           0    0    erotico_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.erotico_id_seq', 18, true);
          public          postgres    false    235            V           0    0    famiglia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.famiglia_id_seq', 7, true);
          public          postgres    false    237            W           0    0    fantascienza_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fantascienza_id_seq', 18, true);
          public          postgres    false    239            X           0    0    fantasy_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.fantasy_id_seq', 18, true);
          public          postgres    false    241            Y           0    0    giallo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.giallo_id_seq', 18, true);
          public          postgres    false    243            Z           0    0    guerra_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.guerra_id_seq', 13, true);
          public          postgres    false    245            [           0    0    horror_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.horror_id_seq', 18, true);
          public          postgres    false    247            \           0    0    messenger_messages_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, false);
          public          postgres    false    217            ]           0    0    musical_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.musical_id_seq', 18, true);
          public          postgres    false    249            ^           0    0    poliziesco_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.poliziesco_id_seq', 18, true);
          public          postgres    false    251            _           0    0    romantico_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.romantico_id_seq', 9, true);
          public          postgres    false    253            `           0    0    spionaggio_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.spionaggio_id_seq', 18, true);
          public          postgres    false    257            a           0    0    sportivo_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.sportivo_id_seq', 1, false);
          public          postgres    false    259            b           0    0    storico_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.storico_id_seq', 18, true);
          public          postgres    false    255            c           0    0    thriller_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.thriller_id_seq', 1, false);
          public          postgres    false    261            d           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 3, true);
          public          postgres    false    215            e           0    0    western_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.western_id_seq', 18, true);
          public          postgres    false    263            E           2606    25742    animazione animazione_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.animazione
    ADD CONSTRAINT animazione_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.animazione DROP CONSTRAINT animazione_pkey;
       public            postgres    false    224            A           2606    25323    articolo articolo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articolo
    ADD CONSTRAINT articolo_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articolo DROP CONSTRAINT articolo_pkey;
       public            postgres    false    220            G           2606    25751    avventura avventura_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.avventura
    ADD CONSTRAINT avventura_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.avventura DROP CONSTRAINT avventura_pkey;
       public            postgres    false    226            C           2606    25733    azione azione_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.azione
    ADD CONSTRAINT azione_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.azione DROP CONSTRAINT azione_pkey;
       public            postgres    false    222            I           2606    25760    biografico biografico_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.biografico
    ADD CONSTRAINT biografico_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.biografico DROP CONSTRAINT biografico_pkey;
       public            postgres    false    228            K           2606    25769    commedia commedia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.commedia
    ADD CONSTRAINT commedia_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.commedia DROP CONSTRAINT commedia_pkey;
       public            postgres    false    230            M           2606    25778    crime crime_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.crime
    ADD CONSTRAINT crime_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.crime DROP CONSTRAINT crime_pkey;
       public            postgres    false    232            7           2606    25264 <   doctrine_migration_versions doctrine_migration_versions_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);
 f   ALTER TABLE ONLY public.doctrine_migration_versions DROP CONSTRAINT doctrine_migration_versions_pkey;
       public            postgres    false    214            O           2606    25787    documentario documentario_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.documentario
    ADD CONSTRAINT documentario_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.documentario DROP CONSTRAINT documentario_pkey;
       public            postgres    false    234            Q           2606    25796    erotico erotico_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.erotico
    ADD CONSTRAINT erotico_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.erotico DROP CONSTRAINT erotico_pkey;
       public            postgres    false    236            S           2606    25805    famiglia famiglia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.famiglia
    ADD CONSTRAINT famiglia_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.famiglia DROP CONSTRAINT famiglia_pkey;
       public            postgres    false    238            U           2606    25814    fantascienza fantascienza_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fantascienza
    ADD CONSTRAINT fantascienza_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fantascienza DROP CONSTRAINT fantascienza_pkey;
       public            postgres    false    240            W           2606    25823    fantasy fantasy_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.fantasy
    ADD CONSTRAINT fantasy_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.fantasy DROP CONSTRAINT fantasy_pkey;
       public            postgres    false    242            Y           2606    25832    giallo giallo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.giallo
    ADD CONSTRAINT giallo_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.giallo DROP CONSTRAINT giallo_pkey;
       public            postgres    false    244            [           2606    25841    guerra guerra_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.guerra
    ADD CONSTRAINT guerra_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.guerra DROP CONSTRAINT guerra_pkey;
       public            postgres    false    246            ]           2606    25850    horror horror_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.horror
    ADD CONSTRAINT horror_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.horror DROP CONSTRAINT horror_pkey;
       public            postgres    false    248            ?           2606    25298 *   messenger_messages messenger_messages_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.messenger_messages
    ADD CONSTRAINT messenger_messages_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.messenger_messages DROP CONSTRAINT messenger_messages_pkey;
       public            postgres    false    218            _           2606    25859    musical musical_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.musical
    ADD CONSTRAINT musical_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.musical DROP CONSTRAINT musical_pkey;
       public            postgres    false    250            a           2606    25868    poliziesco poliziesco_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.poliziesco
    ADD CONSTRAINT poliziesco_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.poliziesco DROP CONSTRAINT poliziesco_pkey;
       public            postgres    false    252            c           2606    25877    romantico romantico_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.romantico
    ADD CONSTRAINT romantico_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.romantico DROP CONSTRAINT romantico_pkey;
       public            postgres    false    254            g           2606    25895    spionaggio spionaggio_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.spionaggio
    ADD CONSTRAINT spionaggio_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.spionaggio DROP CONSTRAINT spionaggio_pkey;
       public            postgres    false    258            i           2606    25904    sportivo sportivo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sportivo
    ADD CONSTRAINT sportivo_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sportivo DROP CONSTRAINT sportivo_pkey;
       public            postgres    false    260            e           2606    25886    storico storico_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.storico
    ADD CONSTRAINT storico_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.storico DROP CONSTRAINT storico_pkey;
       public            postgres    false    256            k           2606    25913    thriller thriller_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.thriller
    ADD CONSTRAINT thriller_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.thriller DROP CONSTRAINT thriller_pkey;
       public            postgres    false    262            :           2606    25287    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    216            m           2606    25922    western western_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.western
    ADD CONSTRAINT western_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.western DROP CONSTRAINT western_pkey;
       public            postgres    false    264            ;           1259    25301    idx_75ea56e016ba31db    INDEX     [   CREATE INDEX idx_75ea56e016ba31db ON public.messenger_messages USING btree (delivered_at);
 (   DROP INDEX public.idx_75ea56e016ba31db;
       public            postgres    false    218            <           1259    25300    idx_75ea56e0e3bd61ce    INDEX     [   CREATE INDEX idx_75ea56e0e3bd61ce ON public.messenger_messages USING btree (available_at);
 (   DROP INDEX public.idx_75ea56e0e3bd61ce;
       public            postgres    false    218            =           1259    25299    idx_75ea56e0fb7336f0    INDEX     Y   CREATE INDEX idx_75ea56e0fb7336f0 ON public.messenger_messages USING btree (queue_name);
 (   DROP INDEX public.idx_75ea56e0fb7336f0;
       public            postgres    false    218            8           1259    25288    uniq_8d93d649f85e0677    INDEX     S   CREATE UNIQUE INDEX uniq_8d93d649f85e0677 ON public."user" USING btree (username);
 )   DROP INDEX public.uniq_8d93d649f85e0677;
       public            postgres    false    216            n           2620    25303 !   messenger_messages notify_trigger    TRIGGER     �   CREATE TRIGGER notify_trigger AFTER INSERT OR UPDATE ON public.messenger_messages FOR EACH ROW EXECUTE FUNCTION public.notify_messenger_messages();
 :   DROP TRIGGER notify_trigger ON public.messenger_messages;
       public          postgres    false    265    218               g  x��[ˎ�]�_QFc#$��7��eYV$Y�4�� �P�.6���ժ�4��oH����*� ��O�%9�VS��/2@�10٬��}�{��t�T��)K�l}��nmi�wM�t>o�]��|�$�gI2N���Lg�d�y��L��2Y����b>�'�t�cS�3��Hu�V[]m-�mmes���u�.h��Z����V�6�:�tkG��ޚ�al�����Bֹ��^��y<��J�u^5ڷF�T���	�V׺ժ���v�?<����;��P5η��d]ek�
V���"�И,�[��9�`k�XiZ��^~���8������;���b�J�-���.7uk�i,/�3�2�5�M�;Q?�r�~�S�p��d�~��vN�럷b�1��GF\��I]���������W�u�^�)>/��L\��M�j3R;[Sk�U'�d��Y,��/�ׅ�����!*���k砪`�uu�����7�L��ApT�V���>�GJ{o�R�4%�y��)j�u[Uu�f��i�B���:ZBfs!���&Z�)4��ډ�r�7s-V"���,�QfN�T���a4E��� g��N`vƿ�N�Q)���Q������܊��D=�ݻ�D}eCm��S�DfB�B�7���B{m�I���z9^��d1[��;��3R����%�A� ?�MW_ ����+Ed<(Ђء`B�s�T�'�'��jue���Qk�P���? ��z�2��J r�4P��xN���xF����h,��-; \yЅ��~��Ґ~�Ye�&b?Q8
:#��&ⵍ�Fr�t��5`��	�0C��
;�QMt�1ʻ�������^��[Qߔ�����:;S�N�幹v��m6�*����j���L�I~؛Z�����lث�� ۠�+Ӵ�k(q��$ ��v�Uj�A{� ���rU.3�
R� ��� 6���g���o���Ha$`�%��j�W���{��ȪV���Ӗ���F��s��b�۞���,+]��z�{D��͂_�Y���տ�m@���t���4]������V[�Z ��L� xe��&G��wM�F�BP^ILy"r�ec��'&�2�2������Z �l�n�!�a����a�Vg@~�9DH�<<��+��Z�S8Je�;Ylӽ�;���eϻ�n�}�����[�Bn�-ۿ��:��*]�,�oDC�����=�é�i
�Yފ�?-��r�X�B0�Ή?���#!�kx��N���
�*�x�,�i��o���}��k���D��o`�����7�k���de�9���g���� .��!  ���92�Y��1N�`a�&�㏠eHm,ie�f9�H���$���{��k�e�!$�K�\��2�:�p�6�F*sCa�X���|���nOjw)�H��n�BE	���t�h]n᪫����d=\�b	Jb�qR1x�S���x]0�  ��v�Y���r9�lf�l:�'�JX�|��c�wo~��wdvx�P����3H�<���|2��1�� AP�B�{�S�;��d*��AL�dN �1�u�wo�8Qj���*놮�c����	�z�J�qЪ?�A W���=s2�@o	Y�5|S2,��# �𜩑�<���G�f�5�!��*�㳅>,����Qq I���~O;ɹFW�V�7,����|�"H�G��<y������t�Y̗��C'90
�θ�s��a�����>i�b�9��  ��1��^9_�ԣc�pG>�m���r3�XUh�)gM�k �� Eǒa�"81kg B�Ǻ!��w����D`n���{��Y�jKk�07���|�d�����XX�(��9X��9���OY����߸�ʔ�$���+�z�/F����8���V0(j�e��u+���p3xtҹJ��Jµ;�<g=NW��r6K7y�s�@���\��:[�^�s��������6�K�Oҿ�� �� �Ad/�G$��R�1V�A�K��X�0Ǽ�[��^=eU�%h!�|N^����%����!���R�k�g�X��|�.��t�Xn�Y����р��\ʧ�9��j������14��3>f*��v���I��t�6�C�߯����[��c�K�e%��@��G}k^�{uQb4.�)Ou��S��dv̸Ī�4t��d���PI���پ���0 L��� ����+�:2E�����LG�+X��Wd�tˮ��?�����fd=L���we����""�vS]��0��z��&�U:_ƶ�,O��eՋS�}�͖B�R�L%ga���oGp��9W�ީ��C�2���3��8T��W]�xuj���%P��`���0�.�@!���)�Sc�O��\�O`1��ÆeB�o�T���LpܓTk��7��D�W˷
P/��F&���u�m��
2kv�[�/����wz�"$*!�����k`��U������z�N�j#O>3��!��d�^���x��m���|-~�Tϰ[�#��n���[)��	�_<�y��\]�8�������\�����V��gX�#4 iq���sȻ:�R'�nVvVf�|����H"-;@L�B���n�t x�
4�Je�y���͟����鹇�lp�4�]^�r�,�-��$�n�s��|�Ib_�A��L����ú�U��eL�3��H*Tr��U���7�>ݔ���%°̢q���eS��WSt"�[�X
��e��g#��n�լxd�vhd/���y�FUW�1�8�0�N�3�ש/--���EuXl]�/�/~<;�x�Vm��Y�ԕ}U����5m�gI�]��������g��Y��������yuQ�W�~�␾�U0���4I�bh��q�o�^A�R\'&��Y_H�|�BClp���癫��?t�d��J�̗�'i�GL�I�9��
?6�Y3W{,-�IW챚 ��/�80�	[�H|�@�y M"�������+����s�2k��CY�� C���v+^xJx@N����Z��ט�^Fp�=i���8���ߊ�&�<L�=;d�1��{�l�G^��E�s�q�,�/��/f�V��ņP�N���+X��dG���DW" o۸��w�� 2]���5���[!ɘ )���֙�^V�����.�+qWK/�h��D�q�����i�1@�J���`F�x/���H?�2+��T
ֱ��[iR|,߾y�eTW�Պ\�F)[����}�
��qM�V�7'�a����s$f��N���l���N�t
�ρ<�����w$g�4�/t+�q:6cl��K��;��KS�_������>�o2�m%�K�Ȑ�jY��zRvrE�ǝ0�KI1w�i�km�KD~Y�,�b���e|R�7}2Hf�"�6����)���"7��_.終|Ʉٔ�@X�����i��k�SKٳ'�z]r��r+���0]�ݺ�Q?�=6�l��$+���2�b/a��ɝO��d�$�o�9B�Ay'�),�X�����c��/%`���ꜽ]�+ٺ��Q_�F�:�pi���-��η��h޹�� +�!D2^�P��Q���7<�����I�DQ=r?��u��:�~,t.�Q~l��Brǋ��tѤY�a[:X.�|D�ne}S����]��pf�k8Ȋ�f�^/�9���j��>�l�ʆ�}�(��o5��爍k/C�T�m_@��J��F{�� ���E-���PNaʼ?�7�fn|�r�;�@0戮��[��a|�}a�T����j�mT�ޑ>LT�!�Ӿ.Q:Rxޢh��<�\��6��k��د{lC 9��L�&����n�������Ή�B�K�ͺ�M�{���p8�7>�ʉ         2   x�34���r�U����CGə��PfIjr^~N~zf"������ �n      	   �  x��Z�n#�]�_Q�F	Bj�|�^�+��c�{� @P�.�*S�ծ�3Z�7��2k��2�/�9���$;�� 
`k#����u�{oe��u��+�r�T���L<���hu���>�N&�M&��x����x�y�-7��d��L���d�Z�כ�?5��Z�!6�W�U��{][�v�0ugUL��V���uk}m�,��ֵϱČT��v��m'{|M�'w�,W6&X��[��\]h<���*���6|�N�B�<�q���ye�$ǖ�Y�rr4^r|��v�"ڭ	݇���O��v^��?����N���Y���?�6��t5ެ�������U��u>��_�Z�5�Q�Z�]��eҕ�{F���N���5�d�i���tRT�_�`��t]h��)��n��c��v2\���x��4���l�u��X��7�6��$��jw���(l�F���9c�1��F������������C�Z���4K�!l�𽂝T������U;[�
OP�;㙣 ����mkMe����ۮ����Q�p6��w�Օ��������	�-��i6Yϧ������E�5 �ӝ݋�
���L�b��"�a�.��7̅�� ��A��x�KA�ם���jX��@��6����_%�R�v����s征�!eK�c_jev;�uQ �1�4�Ǡ�q��| ���ޖ��V#e��4����{�:" ��:��z9[�����M�i�qaǗ�t�rS|��l]�7u9��:	QF�Jއ)#G���1��O 0���� W�EZ�B:�`��	�$6�1#��(>3��I�*%�2�8R/����R�"|k�@�7x��'bK�l����=W/�C 
��O���V;���B��*�{�[h����0�s���I���H��D+C��& ����Zp��%��#����N����*�_�x�\���c�@�w��u3_ͦ�U6�.��"�}����+K-Ȣ�kdQ�Bu�����i�ȝ�*`ú@pф\��
9�[��V��6���a|"�d��V5��n�������μ�;b۩w�4�ҶPY�!��%�х{O�(l�jշ�̿�[��!H�����?����'FG�U��wp�9�8��/��t9]ϳ�z%� [}��1v��ko�)BmL����$)OݤPf�0̱�٣��s�;��"9>��և���
#8D���.�F��D� �M�h5b��E	�$l���L���_}a���)����_汇��3_� ��3wu����z2�@ߖ�u6���%i�Q�zk�S�CL�ZR����Y3~�J3��M�l 2]�5[yOaK����&B�8yi��*�I	�3�B҈N�B`rBΰ�cy�
7��7���Z�煽���]���ݾ��?l$��P�$u�(]H��f�5�9kd$��v$�Z��Ic���@�:A�'��Le�M_}��=iz���(�ޢ��k������f���B��OSi��]�\Cu��wH����j�W����l����^�Qف�|��X,�e����O�:��	��"�iE��ۑ9��/{��t�r������(k�Y�}�>��̿�}�f�(%�7�0nMQr+B�Z��Xm`+"�s�$I2#�.�=�t�?��>��G�:���n�`z�Ԑ��Qѳ���� y��=j{�a۬5�wyH��p�T��e��>�e�j���hc]��ݠ6��E�7R�A���Ѱ�D»ҝ���i�F��Aq��+-�d���P��} :)-��'�f�ԓdt�˽�%�Iq���Օ�?�<$�J`�����dH�u��B����⢕n&���*�F���Ex}�8�2v����֟�t��Kg�C7�}��#"�.ؖ�/�E����+��/]���E�^ˊ��yO��e?��&[���|���}r���(�.�U*��;#Fd��w�Ϥ���l}J�xad����/S�Q�+>/�fk�&j��d�B5���1��Fb
4=���WԾ؆6���b/��SI��@2�s�[�@Gǲ��D����{)���X�6-ѱ�V�?!��l��DW�T���?u���=���I��������A����a�����(Nt�Z��H�kt	@�s����"g��d���c��k�$�Ŋ��2���a��X'�P/-�ė�΍���H]�G�cw��"{i$���VWȤ.��FDK��L:���}��oe�A�bY�^Ԑ/��zi��ԍ!��DuS"ֈ�pw	�.���t�kb~t�F�ӷ�� ��GqP�, l��v~�lT}/�fS��S��������TOb�d�l����r�H4�o�22M�h�S�R���^�9ԫW����.�[k^�� �4�M��Vl���`�>�e� Oi�~r 5`���0���`�N�3�[�J��ؚDv��sK���=�T<M�
���RmJ8$�HS�[]���n0e3*�pp�Q+���\o�c}0�g��z=�d�e��{)|+U[PV��Hm1��Щ�^{�7�NsS�3�\��S�g|�T��nVH����}3 �W��r��?�G#�7#��Sz����sjU:Ӯ��D�%�%F$Ph�xq���ZnVt6yDB�dP�V�"��b������|E44̔�Вn�V� RҾ`
5$Op��<h��4=�惯-(է�^w����j�/��f:CY ���o-�ǃhVjȦ��KBD�s �I]��� d���lf��uS#=¨/�'�an�̚p����yJ2��w &�sXοxs���q�L�c�zp2�[�Qb���M0^{�|<��a�uF2�Ś�8X`�¦B-�P�L�?S����� �%eO�����5�aݶ�H��H�o�ǃ��G��l�K2�1}K�uw���d�������b�:�7i�?��Ԭ�v�}������&�
�;�!�9N�SHN&�ӱ�7*����{�^7ඤo�㘛ؠ9�X���B�G�
K�ʀ'���HIa2���۶A<·�K[�5U�mw��l�㈨RAt>���8z���l�����_�û,j���8̖���~wN.>=�/���l��,���|:�~%e��#��(�6�5�4�H�T@�E�v�4r��mP�� ��kI2	1�E����;��[X��BA�FXJ-é�{%'�����7� �콋RU�.�����."��/8���������2�L�:`��e��Y�'M��Q�ڒ�F`�fkS;�M�t�(R��+I�^B�s��T}_�f+���˴����)��l=����|�ج����[p��XQ�L1a�F��o���4�Z��k!�oU,�A�C���k��z�eܦ�׼x�
��Η��x>[.���2���8��lTzǫS�I?�rC"��.�G�cM���֕Ide������
NԀ�]�ҍt9�2�e���f�4�� ��ˬQd�� Z��5+��-O���_����9y4J���ܛEN�V��-e�]���7�MJE���4}%L^u��N�_����8� ?ӌ�ԕI�9o�̃��C��?���6-��         �  x��Z�n��]wE��h�4�d���mM4?f"93@��&���,�l[�����"� ����9��RK�d��I �Dv��}�soU2xҴ���Ng*R��U�i�o��L�6]Ӻ���.����vە�G�8�0��(��s<L�Q?J��$N���-D����QO.�H�E�m�.m���*<�*�6�HFg�Q�U]u�\W��R_ZW�MޘV+[�&�4���]cҮ6��7�a;�g[�Z�-����5f��U֧;h%,6��k2+T�a��vOD��h�^ڑ�֦�{7R'&�^���ԩ˷��֚��VU`]��5��;��U�Vygl\��j�g�ã�T��7�,�/mau���:H�==V���nR��i[���쥩�ꙫTq�w;�B����x�~�����{--'��-4e��C&�O��I���q�XL�?��ෝ�2������+�^c�i�NW�r�Ѷ�n���ֱV~�EV�l���ś��� Dc���@\yW7�hӎ�K׶�;�r�ӈnaa
|m���v���?c#�n�b���T�F�5(� �+�R�:2�#Kb2ز��Z�,�.���߫�ߩf8���u������+z�|�Z�'�h�,��O⁇�z�ږ�2vޘ�̤�khk��r1�X2CO�!S���uF�Y�;�Zi�%�P��&�ϕ΃ضʺ�$�i[� p�WJ�Aͭk.@��Bm�|a�|ϑ$���Z#[�-��ΕN�L�e�w����bG{�rFU�����{u}�����s
�c�Op��E<����x�X�3qST5�N��U�d?f��D�� 6��f|����O�ǿ�l� ,5m���B Jrj��z�b���E)z,@�vR�h�/��հ͉FQj��1B�����^�
��:�FAͭ�>]��ˌ:o͆���g�Nݎي*6�m�-�^RV����&���:/�H
_�wd�����	/�O�J�e΃��t6�V�B�C�V0��-���/��^Ϳ���s��iR	����,��Cm gօ�jv�pY�ǫ������F��ݚ�\�Û�P�W��9u���U�`u�`۵�[��i���v�3V 5Ylj�#KZ�uC��y~�<SX�Scf7y3�J����j�YoH�V�t�T�泀@����.��}�_�WL�TY*�M�Z�/I2��YP"8O+�=c��x]y=>�[��{��*.畅����l�|�f�H:�8-ܚ����h �Q�QQ���R�	�/V�h2_,�x���Z�4H�@ >dI�T��I`l��H"Tq{m2EY�����o���7z �-�
��F&5)l�<m�A����8P�k�����3�+oԯn�xD��-$u+�{�
0�pȐ�w͎FBe�evC�� ����]hc�f��hF�����sD���f�2�-C����}*������9�ϐ%R�$Ѡ�uw�@m#foS�P�.6�$d��	vR�����<sy`
ś��q���������X�ٍ�Hwd�:�M������Z!�
����G�w�M��A�O7��el��S��z��ہ�#�R|�:�s�ps��%�#����d9KVosЏ�@?*t�G���*���[e�]�r����0��lf\�!��!�GJ�u�<,Wx���e�0�`I��K�8�'6�(}?�RF��qK-�������Q�|oF�;�T��ZV!VJR	��n0� ď!#�V�E���=���4�c����j+�[�4�]89�e^[�i��w��G\ט\�_O�ܤU+�ফ���%�(憛.z��ϣ��j�ɹ��ƿj�sL����|%�e2��f��w��!ގ
D�si�S��K�R 
�2��B�'���C	�F aC���g����\�E�cN���ִ�,��9��ќS����g9&��9g��f��l�ڀ�x��l�a��m_���{�+��il&�A�hx�K��C��U_b�M�~v-�"�>��,`���d�Y��2�+KIL�� -�\��{�2�Y��~���f�-�:�$�D�Uɷ�7 B�6����u!;I3�+�Y�����ȶ� eӏ���^a���a�NT��oW��ty���D˹!�����j5['�"F�2M�i_����!d�r��j&�)%�ek&a�A!�(_hS�f��B���6a�)z��eh��mhZ��h"�������4�����i�s���TR3B#J���	��,�b�ڡ��T]�7�G7�����5���v����F+n��{%������i;t0�\��w?}X�a�,�U<YM�i(�o�;���fkװE�����:A��d�4����C���)�����@���m+��S�W�K㲇#��Ci�����O��&�Z_�-rT��Wۨw6}����� +<{0�R��87��c�e����i�Ot�ڋԁCX��v�j�24�jk�,��ő�� ����X�'���n�N^?�n3�nu�R<��Z��e�����-��s����k߫�s�y�L_u�OW7���K�I�{���h:]%I<�K��T��u�ק�<R���g��RHL0�S�I��C�\����X��W��d� ��Ֆ,0x��Х/�vO�}��-�u6;�/�:���d7t�ḋ�,�E���ñ�3o��cu��Q���ލ�#��x�V�����0��;S�����o*޻@i9ߺ�g��"�-�h�H��l5�6�}�!p�������*�cf���������{�26��Z��!v)0!�cQ,M��9��&r�Nw�Z�<5A�VPg��$ƅ9L+D����}�[���(�0�^0�"�<Һ{o�O�(����*^��O9�'^�����c;6�T��P�挖�2*�<�g�2v�?�������4�]�P��]f�����`���װ�-���<L���6��c��)un��Uw��-��t��=^N�/����*"HƱan�+bx�Ϟ������u[y����gwmh�v��>�Y���Ֆ-Qf71a�'���(`i��N��Rf�܊�Ƀ������R�������~l~=���/�Ȕ�/�X 4W��I�j�.6���k�Z&ǃ���rwv��ly<�D��d1�W����B=Ax�IпJ��m���P�[�e��7��j��pδs�\��~ �]j��V;S��7����h��+��SѼ��.`�gЫ$��TՓ.gST1�յ����4 ]a&7h������7]��~�Y��e]9��H9��4�ӈ��	{/i�6�ka$҅1I����"�kmr!3�!T"w2Q�dl7VO�g����P��o߫�s�{�,O ȧƴw:�Y2R&���+B�L��/)��������l��̅tC(\�t�b�U�Pot�3���M��.�F_�8n"@]s��L��Pq�u�8���O9� ��BXӈg��I�]�r��|��9_��B=0~ue�
���$���]�ĬE�����Ѕ��~k�
e6� ���S��zm`��ui��l	qv;��=|j8C�-6w3D���Y�<��x8��q0�         f  x��Z]oI}��%^b��=�Û���`gC��ɪ鮙�MwUou���i�	 �/$�xC�a�G��pέ'q�B�%�W�]��}���[�{����VM��\�Z��ˍk�࣮.�.���]W�?��/'i���r�_Ɠ$]}��W��j��g��N6��<	FW�m����m���ժ0���.�\W��Ψª&ߙPi�T�ҫ���k��:�j]��&���NuN��W�i�k1P��ڮ�*J.��]����	����6�篺ī�)4l�����c��W����䤇���N��qrρs�o���b9�,���Kz�uI���d�Y�3�K��/���q�- :)�&�^���֎�Z��W��$���.L�[����#u�' ��v]چ�����9�0퀞��/�g���N��w��X��a���`����X=���録��������9�pI�3�|�Z��V}��Hx�T�ZaQ��&�2��T��A�F�����P}���z'=�Y��W��o�.��[D����?�c�����'���U�����[�䦭|��[E�ѿO��x6�la8��p����l�	���7<'��\���
4����%`r��K�?�`A��r��O;C��VG���p� ���y{�#U����Nô���r:��l5��ƚ�1A��j[�4�j8]B�n��B�5��R릅�@T��Ilxq���c�VY�ɞldUk
xyǐѡ�[Kfi�q$�1R�łr�|T�\H�x`�-"�LZx����T64��s�]�<������1v�b6��������d�) �+��ȫ�T`:R����m��5Q�Э�;�xk�����)�!� �D"��rߚ\�ダE��%�1�pݓiL�����1���/�-h��c"�՚��0���۠A{!��&��2Β>%W�޺���pR�x�m�eVƴ���m���j�SP�Wiz�N�L�N�~%Tǻ��{8<ҷ���$]`���9�̓q��&��|&2
�z��DI.�+1�`�ȍ�� ��kPh��x�*Uh���҂u�B	��&�s�轥ΐ�~l�^r���<�Sz��V��hYώ��TP�o�?�$Hiq2Ύ!Y��Tk��Mf��F�[�h&ה֭LHy춱��C��j09���Fw4�Z��������o�S��`�����$8_bϝ3��gu�J��O��\�᭔I���d�_�8@RHl"�E��'��7��������-���]�,���S�R�PΖ3�ޢF�>+DK�#� v�c��p�f$����ű��(�j���C)��_s�Fj��i�(�A�2���ڳ^��$�Q�XJo�f�<���J1����k�%����ͮ����)�~�_��!?�t��m!�1��o���u(�ީZ����ww�=�w��p18a���Ŗ{"L�y�HX3&��b�����Nh-���o�ؤ��B�ƾx�Mn�8+�.qO@v���N��R�[��`��%E��>99=û�æó�J	��W{Z@8\ry"�܋{q �30Ɯ5�'{�� T���z*]�S��5��[}"_�,~/{�_.l�<�\y���F����,����d6��P�E�\��P���v���F�����p�u�V�5jID;˜�E6�*�t�J6*�>��j
eJH�P2��j��gUlr`{�^R�ӱ:����	��a~d���
�����tX	�i�۔�a��k|و4�!1���&;l
cn{YS/����A�d�ظ1�ٛ�n`�PI2�F�u����D�nmߍ�{��e����x�4�=�H�mq(q(�^���}�������t6Y.��l,[$ZC�~�"�㬯���tl�A��T����q"���Q<���D	�4�8�r�U#�]}���|����nU��Pp*��]�5�rV��Z��j��� E��"�gT���P��8$�/�f��Y�2�5"��FJ&t�����EY|�s�ݾR���mj+�¾����p����N=�zfLq�����:���9�=j	����F�̣T�~(G��$K�&��x9_M��j��e� P�R���^�r�}ǁ�Oq�����B�u;v������w�U:K��2��͠��A�Y68��Q��Q"���U^&�"K���'0�v����V_�f;x"r�P�Bv����<�tX�(o��E�\�t%�m��x� 5�	:�ԍ��tЕ��T���2�T�҉E5��5vHF
5�Hy�D��pP*Mn N�����}��so����4]����@D�	<����r�g�p{ߘ�F��E���x�z��bkK�Ǧ�/�ǣ���J�y�����ݢľQ��C}WP�1ۖ���=���>��b�2���v5�L��x>�����3��E���.����S��4Ll)�@�D�{��R��za���MG�o��P���v�s}��f9I�h��aY�9�A?�my���4��+s9�|�� )8�X=C�x���������~6뀄�;�y��r����YQ~f�a�x3D~�̷�x�J���X�
\���K Qnu9K[H�ww�=�w�0�~�4PBl�b[�H��'].����r�Zf��d�-�cuR�_����6H%� P����q^�d����*O�K�3^�ul%�D6)�Hj�Ӵ��:Ƽս(���F���ϥ��A.Q?\D��Ʀ���A���đe'�s�б4fqR���cG7��s���F�3��u��>Ӡ��^PO�Re`�����Xq՜�I/i�� ���յ,��t�^�v���0�N*�ł��:Nr�K���>�c��ON��8KW�|6�.��4�j�:��.����Q�s��aI
*����5���"F�G���Pfs���V�3�����W<���� ���K��Y!C�n�98�d~�L�iIQAG��,����RaG@��ٵ%ðki�������yט���g�0��\��ēQʖ�݈�^����ȡ7YOK6(؛�|�bٽ�b�a9�Ӎ��=�w��0����40nLͺ�Y%cV�V��r���?O���:Sខ��e%�Q�����O�v4Hz}�>Y�)�S�-�j�֡��Nެ���t��u���f���qY�"�?<��=+��U����|w�gI���$QOY�bc�gx���z�l y��˅ ��#�t�7�$���ܱ��<����}�?ߖ+��(;����ǳ���/	�e�U<�޾Q�܃}w`���!_��[�|��svtR1����	t�҅�)]-��d����uR�ɤd�e��D���^�CT��j:9V��g$��tlgԞ"�Q'�P���(�k)�u�?dɅmx_(�n��/"�=Z��<ܚ�0��ُc��G�$�<ȭ�J�'ٽ�+f��V�Nڱ��,P麦�)
d�p~k���<FFF��P9\ 	v�I�!�\v�����p��30��:cDd���������_�h�!��l1x�2���x�U�9��[h8�Q��d�/��KJ���o��.:c�Ϣ��� k{�g�	���z�ۯ�/,���F�}a+�aE��:^ ���E����`*��%s�3�e���������M��7��P�)d��x����gA��m����U3f���U�}��y���Q:{i��zK���B�����f��Ǻ�v�T����*��s�Cֻm��)�|6����l��*�ԩl��b��1�����d��T��K���6<Qr}�lV'` �莯�V�e_0"�G, �d,��`����ҹ! �?mS�O�X��w��W<P��r���)id"f�u���IL
/݀Q�]�Wt�r���/tmt׊���,����C����w����u����+!����[J�r�a����ɽ��h���䍸���w����p�/�g�A         �  x��Z�r��>�>ń����mŶ\�O��}HR�Y`���fk�O�[��R��/��{�I�*d*�E(r3ӿ_݃b�U��:F����y����_���/�'C�:]�'�b�Ofy�f��Y��K�1�gE��XmV��|�(_Q���(���.�ݑm2������U�U{j[�4��kM0'�)��V��V�?�LUiK�S:T���:�XW���I=��¨Гi��V�����A�Ѵ-5���x|��J�q�$�Z���꽩�)����۝S����G��l�Q�V������;//f�2���r�ϖ�ӿ�Mڊ�Ԫ�]�SE�e�UA���ǎ�����Q��<�v0O%:x�B!��L�9U�YURa��%�~�X�[�v��jM��G̰=���E�Y�j�*HR�t�tZl>��5�.�3���V�nO�}���X��Y���~=^Ѻ�-�CpBz��ٰmɺ;Q�h�[�6�|�4�hU�����|��ܔ�|���b�^�V���-,����p�q&���'��͖"An����5����g��A�x�*�O����⣪J���j�N�>�g�ɮpl_��㿚���N�K/k�z��lg�#v��j�#ˇ�0�� D�%\�u�EU�^�)�y������pc���@p��њ=�'�؛�0 |����0��A�I����L�������ȏ�~7��.&/tB��s�`ݽ�d�� =��*/7�l��,��ި��&���AE"݅�O�=$�<r�\��/�T{�_���$�6cAfY��CǠ_6R����CZ�.RQ-��^�����)<·Z⡂�?��ߟ�)�1^�e�pL��ΉQ[`)df�
�G�aK'�m�ű�#١8��=	 �b�t=n �-�'ᙞ;Q��p�㭳��Me����ΒGC�CO��sB��< 7��,����̋b���xq��x�{��dkHO�_��,bz��fYK��+s�X]Q����	� y .����#�"v~��v��f��N	 ����@48�=\'H�kF@�� ��2�q	H#��B"�sXk�{D�@�A.������zpM�z����Rb$wxͣ���MW��(��BwYn@~�b9[��1o�x�&�ɌQծ��B�s7p��r,%�M4Jʴ�V~�)��X��C��=[	��B�����`˭J��H�-�!��%���Ԁ�fӞ7n̐���I����fjh#�X�XY��m�T����#��uB�q��|�_ �l��7L�1Ea��:�ۚE��YF��6���k������h�w`��z�\}躾ev�X��"[��w��y�ZPj;Hgz
�0�Z2W`�ŐC�T�3�j�T��n���S�{���6l-q�9�o��S�LՃF!G�Ll�؎(�����·&V|�9�ޫ�( ����\�}����v�fFB�Ў��aK���:sy���뎄qG4�;]��|�"�d)��2m@���-n���U	[�ʁܪ� n[�t;��Z�\�^h�ܝ��������r�VX���y��x�c�Xχ��j��Zg��2l�6����~�NwN�����v�Y�K�P%�!N�Y[�;0�C-���G!u��_��'ʤ�`ޅ�F鹰����d����lb��al�� (��� �y�]�N7�s�zD�La�eF�G����|QlV^ �e6��C�2���A#���,?1Q��ƞxT&b��lTJ�s�'�P`H&d����� i ��ݴRО�k�Q�`\i�w��?���.��E�}z���Z��G�w�f3[�֯��'^;kI��B*�[B (�.AS.�R%�Yj;�\��7g�`�����,���;n׸�$�4h��޼�H��ep2fA���9�nϘ��8��`�Pv�s�x�N�qIiZ��x ���k��}ɣN�����ŨS?����T���^�Ӹ���M�nAS�e�$=�Fw�g��G?m���l��~7����3��2D��g����z�g��|V.f�z�6�zj]d7�mw#S��EHm��6�M$�"|h�{�q���tY�I�5	��F<�cC����ƮT�&	c��-W�����y|4�r|#A���-�1-f����D]� ���2��Y����|��r�(��U.^��I]���Z���7U]=�9<��DVY����t���0Z&nH�-H�鶞믍�L�n�r�����3˔���0
�C�HzKP��a�V��`�\���u��/���%�:`�R�@!��zxS���a0�Һ@��U��L�1Ӵ���47&����,6�l����:O���|G���5����D�!Ѩ%XKHw����O��7Q8i�Wq⮛�	��qHy��w���w�h��u.kM8���οP���\i�Ά����(���+���(��ۤbi.�� A��Z8�p��������-����
��/m�WRJf��:r˪�'���_�x�b99O��j�!����|Q��p|Q�7�r��e}&G1`5�'��<�%~d���J�[3�`=�1�)#t��>"�� i�7J"8jLC|a��0�o�f��i2%�
_�t�/������?�� �y�xy��!p�'������4���c
���0�v\_�h%x�}��H8�����S�h�m8Q��N�O݅�h -_���E����p8ɀ�j�����u^]|�}��/OnG֣�ߝ���j2�z���jО_̹7x-V�b����2_��2M�_�9e?����A�У�2�E�3��&�{!�'s�7|e��>����Q�o���x}(e ��?j�`�޼�b����{��b���F�9��̩:�Ά��NͲ�`@L��'��R�ߞ[��c�����ѣ!�@[O�� yy"�r��v0��������bQf��d��y�Yq�O�16�i�atU�p����*��ہ`&v���i�\��"7�8�W��>���l�7���ր+� �$�?���P���$�ŵM�9�-a+x�.��2-J�pQ��Т7����!g�Y�7y��m�U�.6�F��] ]��.���کgF} �W3��)��꜇a���n�>�!�V_S��|���}�A&i�~��<��u��&����ow�T7��nW��b�jH�P�TF�o x���	��&�R�q��t ��ȩ^&��ps��x�"��4��?�d"�8:U_����Cb�����W��.����;L(/C�yE�������?�N���uڨU         �  x��ZM���=K����I��LR�>|�6�����9X�Ȗ��d7�$�������knAn�?��������!F�;۴�f���W���N�����U�ބ`M��}Sy]�/���޽Ȓ�ϋ$�%�M��l1K�/��6_l7�:�m��t�������䍩*�
�u��N�Ҫ7�G�e�N��\��ŕ5�w*胾����?���|(ma�v����7]�B���j�l��o������w�g8�Ce���su��F��][��^��N�RL^�.��uZ�JU>xeK_���ک7�X�̈́���F��_U_��m�G�+�E�0��sU�:W�	x�a_:T�\զ���j���Ⱦ�^�����ۢ����]�>4���o�u{����g�?��l��5�+�
���Oȕ�j��m�\��Lr2��yXw������vv� *`խ�����+~ jM@
�ƚ��/�{C��G��R|<�ץҶ��\����-�ɛ��ӕ�'᥃P�y��ZSbmZ@�œ0,����9>㶪3�����`���+���T�;�ε��imG��6:���H�q@M����ZU �XU��Yu��{<�oA��b����u�x�p��� z�3�ۚ	�3��0��u�w�k�����P�T�*zǜ�cK�^k=��`�ִ��$!�o�l��7�\�t���L�myPMS�D>��5C�K�y7^�t�����綡�r��4��	��֫�,_��l�-�����}�J�(Mg�თ�3+��+��P�z�D�����.�j�䋉;��	x�7r���b�F����3��\K*��FR�6�A�����ܭ�v��N)�g��i>�VZ�UAz`?���<��f��j�H�$��|��D�S6 �I����Me$��� D]!����w�C�;�Y�m�Mp�g�8�Ɔ�Plk]��U�&��b���.
��&<_����tTÇ�0�څY��5�0��N��G�<Y�b�3��30�D)ɥG�>	�gX>�tŪ�jw�L��ѱ����b3�l�m��y*�����:�#��^'9�jJB^�[V��
̸���fWz��깑�P���Q6���˽�
�I��s��D�x�=�_x*�f� +�*�xE`����B��{�Ke�Z3�+=�1W�����60
\��l�����c����X���`L��(���T�5�J�=	�g�?������m-3Y���eX���̳t���V�t�-��$?���p���H�� �A`X6WT���w~&j�^�94��Ј��}� Ք��z�bPm#�ZML�X�$,L�wzxS�+�g:�Х0k��HP�:��S�'T�m��M�;�sR�]�މ����@��)h�t�$��Q�*���a}U�^�
�r�<>���*�JH�l��7���ka0�b7�" ���rD��s)����M�.t�i�N�߫�Hb�@*m�\����?�L�፾���R}�n�x�wM���g����;T�' ��7�l��$)�s�����Jw��� w��0j�(���W����>Ѡ{L+��cI�j ����n\4m��\���!��b}�*�WVb�%�Ia�Q�[FZ����c؈.������F�y��_��i2y���Ԛ3�"�	�a��l�g�"M�m2�V/- "�)��(E�Q����c�D���w��ƴ������qGB2-!����=�'��a�9�"�@�t����
o��WCYtw��҂�GD��:PRl��=O
���u=��������lv���wv�-���IL�E�xVYPS��CO�Y-����P�����+�<�.�p��-d���O;���BPq�X�՞c�F�7S�][)~�C�vը]@��)�r���!�|�p�(�v�����<���D�F�	�w���$���4:�F{N#�2�P|�)=�q~!��0��W�^c�Ǉ�6M�U�,�u��_	��%�^W��s-�����Li��a�)�ɪ��Ul��t$������]��-���}�� pV;����e잭LW�8�3K�B_H��d���?Hz{uI��u��Roxs�Qa��ÚA
�
��W�w''����h�.&��������)Q��Vߧi��W+��u\�|�����3���,���"�Ѵ(�%��\�p5���d�@��^B�`W@����Z� ��5H�<��f��8x���3��qfC�i)g����_�f��*ܺB(�ѣQ�G�/f��:�l�l1Hp�~�#�R` 4�_�_q�O޽;��}���R���OUm�rm8Ey}w:u%�roK���̔���ϣ�D.t��Z���#2��RB��0�tg�v��A�R:��� +@,"dP�������H
��aə/
=t��y����e�h����q�Y\�Q���7�B۪�~��i���'�y��r&�c�����ٱ^�e2[,�u��$�x���������Q�+�P����(s�m�._�?z_�Y�>���tg<���$��CGN���\�P/J?FA��O��(P�XVx�&�ARI�j<����3.��SQîb&��F�lA�su��8�*��B�_۸�4��0@�z�Ƚ�"��1��ۯ����/$bC#��t�KJG����g�?	��t5y���-�S!3�x�c�=\�9�**��AKd�&٬�m����8~�#�.��w��,IsVW��u���FN��8���8R��t�տ�J�&cv��Nt�,W1�O��mqC��ǎ��&�<n
7��w0�}&��������XP�[mOA#'�ds	 �	��#Us�tNE�3V��j��'���?>I�d�Hg�<�l��r1��M�����s���3JlA��0ߖ��'3��$ò�J����+zR�M,�u/}��Q/�2&�)�0{��q�g�:Ħ$��G~!Q����Ԯ���Jۻ!?��o\�B��<�M�|jq�uX���C���Q{*j�TN1T�$$�*��h�3~�H'��v�̲E���4���$�Wo�R���dN�mD��A�Єm3~�%/�+7]�0�6�r6|����-n-Z����A:�-H]-ו�S����jkΗ��=�=�����V�6Vs
k���9񑾶�(�.0z�X򳢒2�]E��?�y0,����HV4(�"R]���vg�O�gϸ�Op��a>�N�x��      �   e   x�s�O.)��K��L/J,���+��	K-*�����-͍,��8A\]s]CCs+#K+CCNCS.B���Z�02Q04�26`a����� �,$�         >  x��Z�r�]w��L�[C����K��dR#Y��v%�*M�)D$Ad�G�,��9�x�]*��O�%9炭��+y�Jbm�n6��� <ץj�ۺ:w�']S:��'�EWm�L��i����j�/��8Y?I��t�Z'��&����bpbkk�V�U����X�s[taĉw�ά��L�����*J�����禨�H���֨ܔj���C�JU&����[];e���Ҵ��V�N}�q��z}e]m�@��2S���qM����7㳋����_��L!���/� �*��fZU�u�D�(ԙ6���jYʏ'���綮�H�x�5�[J�d�yWf6��+D2�����&�ֹ�4��qu�`W�[A9���������P�T�z��?��`�{3�p2x}�+�u�	��:��u�$�,����V;���B�Ҩƚ泰V%��jjR��"lg[Hf�|��E�Ղ���m��3ϩ3�[]vM�t�r�dt���H�j�́G*sU�w��iU���Qm�>t4��A���d0�$������ -��tQU��v��\�O�.���Ȏ��@�.:{�x�U�'���S茢0p:���㾂L�VyI��%7�`?V�82�|VNgV_]i����p����1M�t���'��JB�(�C��m�������r[����?��`���iS�L��;MnI1R[���ۺPp�ePom{�����VU,RcU����n�[�/�Gz|v��p��ٿX:��+��N�^t�"��$���<ky�-������:�h���`�wʵX���m����p6x�Uar�9�x㭾��Z�V��x�XM��z��]u�G��aQT�B.�$`v��`Mcil�>4*T��Er@�x���چ�V�0j���}f�u�c`{{�j��?��Ρ���)�0�*�|��;�����5M>C�F"N��X�����f8�ue�sE���d��_54��8��k`�b�q�����zS9����\iP�K�]�]��R+��z�QZ(��H�%���d�Nu�{�%��U@Z�۹�D7�31�}�_�U����l���n�)bj6]����l������)䀼��c����K�h �@f�^�����PJ7G*��Hn%lњ
�Q�XmK +B@�U�<������>&��&7��ʽ�G;XIu�0��>R�Jjq�A�_�H���L\I���zgv؍�g�T�uKd��n��EA��j�d�٨�~�K<���8�
1�\"2]�@7���G�Kiv�����$J&���{5p.����}/�.o�z�������H}� }] F/eK�������!�V@�t1Mg��j�X��4�9Р�q�G���`Ѣll٣�a�w�$�.�a`H�152zF J�Л��2{_⸢C�c����S�/��G�\���Ƽ�"�~x "�9$R�e��\���x��tp�.F��d6_N��2]N�)��l��~J�Qھ�.`�k��� %�Q�K=FO�	�ﻛ�cX6Z�I	y� -��]b�r�F'H�b{�Ǹ�3ӰAwR&�#1�/s������St��ǓU���u���[�Z,{脜�iF��������|b��錆<� s;I?\1)���LhK��4���!c��V}��=[|��F�z���3��9��4�[AJX�n=f���v6&xI��4���c�j&�Vg����ewU]��f��[ߘ&�M����A��qv@'�Z���+HJ��:�Xd���b��9l�Ⲏ�JK�F��HDe��p��`�����k��`�4��l�BL��cAk7t4���UG��+R� �m<�(#|� 51�1����N ௄oP�+I�qdeK�U֋۠����`�a� S�ʀ~4I�
-]u���@�����d�\��d5%9|�=�۲�oG���mM���  ϗ$Ș�"��YF���ڼ��+L	Wt*�|�:�`�JN7���;-d�g���[�H���b�� Oab��XE�+��_`C
�V�q��A$T��M�N$���Z�v����gy|��D�C��uP>b������^k�U��~Oa� ��Q6�C�Y���`�{2�0MY�Q�4Y^�]�d�(Y'�u:Y}����x.t�����Rg+EI�7������w�Ɵ<���X���J+$8��5��.�� ��;���QL����(��=��6�xp{��I<L'���v{g���r�O�y:Y�K��3��oǥ�L�<�4aTĨ�Q�m�Ey6����D�U}����}��6ug���a8s$l����D�F��<Az	{��+H�V���$ �xN �[h[M������l:N�^�LW�-����B��FuO����wF�whaѲ�E�8�S0/#^Ipr��S����C������B��S�O8��3)�Z��l0���ʏw؃�����t:xsaީ���N]�^z�V}Z��g��W�� J�I� J��d6�%�4M��l��� b���t�U^gL
����;Ж-֌3�4�yl�y`M��0�����q�)$%�"�+�~.�	͎7=�b�$�ﻀ�U��e=�a6�hJ*�w��h��/uv�x������g\	�̚*R����p�	�,����x'5ŕ�ɋ$���W�UK�VR*Ϧ)��k_�3�y�m���3Q�eW�b,��{烝����t68�X��-D91jr�~��w<��P�~rW�J����u�ZMױ޼*o@ȉ�f�� ܲ�xK�� f�%aI�:�λ�
�D]��	}�߹�9�9�#��΅���4�,/f�y�M}�7�=�������@�����L� �=�[��](��T���YԏH�a:�Axh*�a��q�t��ٞ�ic2�O���w7���������,I���I:�!.�F�F7!%��,���8�^�����gǯN�#���Hgi�0�����8�m&�^!�<�;�˩{�x$��=עG� ���KW��üp(&�其=��B�g����V:y�F�)�����_
�E�J�����Ƭ����A�`HF	��_K���!q3�PĐ��o�8p��Tbo<���D���Ց��>}�`��1�0]���"_Bֻ�|�̗��x1M�S��`%P��{]��1��(���|�>�L�B��:R+th�o�F����	���5KROB�JBꏙ��T�"�9�1�Z�ۙ�D�a��4,>��������)��8],��r������c�[ W�ؑ�ɉW�����
tE L~В-��E�)QỦ�W�t��������@�]���'�%����I�7������-)��x.�����(Xv=��,�Jn�B�ț��$^�]f��(��v�^��ͭI���	+;����zQ_9��`|9.�]��c�Sߓ���jpb��3*��E�#�h����f�L��ƫe2_�V�Is� W	��/`��	�$7DKPօ�v�;b�#}���z�t�w��x���گ�<�{�G
mOP�%Xv����EI#��Ǉ�B"�<$|�H"q)�r�Q;3�|H:?�w���G�a�u)`�jL�KM��`���b#�L#U�,�4_WX��#Y/�aVD
���l��r�(]�-��7���%�Z�[�샭�������x�
�         �  x��Z�r�>O1��
 a�Ս�b[.�vI�sI�j�; &^̬gv!���Fn9F���-|�<I��gA���bT����."�ݙ���������5<���*>i��n�$�N�M���x9Ǉ|6ΦO���|�-����k��8���u��m��q���:T֍T��j���U����U靺21ꑺ���NuN5&X_yUY�	�UF��F;Q��>����h6N�l�b�U4�����ګ�2jS[e*ˍT�J�ƴ�v^�[�/4��7�]YB
��wF��AD�j���H%͌�N+����Zէ666�k띙�o�D,�V���9\�8ˈB����2�ņ8[�Cky��Vo6�?����r��ƕwz��7xf��?����_X��|�V{J��~Z��糢�-�q1/�E>[f�?6�AV�e#�?��ҭW��R7���z�ç��ִ��u��?��DJ�U�u,ml5M���p!�W��b�㈆��6�[7������N��=L���/t��ڵ����?āU��K�v�"��ne��NS ��S8����f"�=��ķ�n��꟭ I��|u��k���<����6�kg�;[��Ƭ;�������{�kŽ7�	��~<j��=�.E4���C�GD̲X�y���/�y���98R����hP\�b������>�i޽	��}	p�^��O8꜍�I��V����@+]��>a����,ó�׺�щY�R�
0��Q���q>/��,/D�w��?�� /��4�jU�R��s�i	������pj_��m4΋g���[跧/�fk�V>3�d�>��jx� ;)-��x(��In�
Nl����n8&B��Nϖ|Z�]�6��],Sr|���.�a�%DĈ9�>�+F |�1��ߩ��_yc��hۮOC�=�Q��������Q�c\z�-�E6Ϧ�|��"H0UWڞ���<�ه�}��9~���:(��퀹(,r@'�KdF<�����؁���{k��!ؽB$(4-
Ԁ�~��m��MFA ������j0Hµ�.�������-�л�9��i ,1�@�H�zƣ�@#�>�7 Pбj}؊ٯCʪ���j|\� �m���?��
��:<�.�rZ"�'HXi���)	��8+fo�,e��9�P�� \�N�,���M��X�8�J�M�AހF#�Z�'��o�Sy�N�M亓��.�fC��a�`�@!JZ�]ے��r{�F��7�n�W$�V�Px}J����tGx
{�>������&���'u��ׄ"���ֆ�z���X�����`1)��{~�4u�G�'\ʖIj�
�����Q����b��;G�["�!�r6.��l�e3��R ;��HC4k���V�����L�O� �[�I:��:�g��2��g�η���|k+�A�jq�>�3,F#6*�������'�����-�YbY�&��#S�HU3%��ƨ��c4E���3�Wb/��e{� KM��0t�P�G�|����yfB����%a:��ӳ��|�\���,q�纾�0w��W[]��%��}ɪS�m��P!��F_٧��*��Ȏ+��ԨQ���^_Z��}|�7�A_�"���\��kc%���';��Q`�
�&�L��C������<��
��S��G�<d�~�6Uͯ���K����{JV�vdA+-�*�`�k|���o�"6k��jaV��G��Q���a1�ڿ�"�v�E�<��g���E�%���X�zFT�k�k
+rx~�FB�f=N�a T;�^���f,�4Ę
V�l
�I��:Q��uvx���ss/�+��,bm�+�
D	ߊ�	-���	��$�����:va,wPf���i�a��($��H���@��	�+��X�� ���=9�,B���I� ���{&��ȫR�Y�
S� ��~8e�����d逤�����rZ�΋7��0�`���V@˭]؈~R@��mʕ[i]%�X��^v)iv���j�ƣ�;��PJ@�_p�7�$ђ��m��u�%��y����z+����&�0����N�ڲ�I#? �Ev��N4�EƇE��O�X�y��"���Nѡ�:R�2H��y���(uh���K눢�g��b�T&ZF�dLDPEL�׾���{�A({��K�@����1�7�	�UH�4GC�����vZ�чi�O�On�B|��M���k8�A�/41�p��E�+�Ų�HRL Rq�5P5��ײMjR��Jҝ�q����v;u� �f���D�"��j�.UJ�� ����iQL�|q.T�*�����F���4M�0WR�Pc����������� ��Q�@V�<ܼ�n��H� �miɳN�����Q�ۚ���=r4���U���QT%I45��R�l�6��t��Y���q�5uyX>�F񆾸b#��>�h�9{g���+4fP��R��p��"�GNd��Y���Ge?����l�g��G�H�͖�m���_]~Tq#��~�6>�R�Pl6�R������x6g/�f��6�;ڃ5'���:�ѳ�\"_���Tc��aW2+���o���Cuw���X;Ԭ�)�A��G<�gp��tU`ˢv�@�z)��JJ�D!��^���F��s����al{?,�� Zfg�+����+�����1a���7y�&G������!^ڛ�{E8"Q�Z�I�&��W�Ɨ]��������om��,} h%K���Ө�[�N�2@�.��调ly:I��j�@N�3(����0V4?�aM����-��EI�3q���^@>�F�b��U�҇�a{�4-��ro�;&�eåRk߹�~��#�qe*�'���(��]���2s�+ew;.Q��
&��Bm	
U꒸%
�x?6U�P�f��"����wƑ�YΟu��zL�f6=[��"�Z�S#��� ��j�0G\�jZS�&v:<q'G �R��ڗ0b�^���1I��[Ӆ���ov�^��X��0�E}���<!��^��1���ݡR_���A?�~���P"��&W�J�B�ɦU%(
�u?� %�طM`��w�=ν���XW�Zˁo�'�>�u'��d��6��G	�Q���av�	@,y��H��m��L6���Y���i����I� ��Zi�i�*'�/��$�S�mvw����t�"v��}�7�yTY�/�L�i%���Q�e�u}�P�Hc��7��a�.씼��ׂnࡓP��04����v�%W`)�s�(�?��+p�������c�
zT�O+f�-�钗�5O�c���8���g�y>�/7ֶ�Ia܏&jbG���x�;&:+@�q<��`-�g�N(�"�D��R�{|�U�Z�Ee�2���!].^��^�$eeg�)����ʰ'��c�[Q��ǻ#iH� ������}�a���mb��
$D��?���|6>;_�ϳYV�~q��kP�(��F�{������S�����t�G�t��u��-=0�lF���6]���Kr�����a2�(/^u           x��V�n�F<�~E�t��⾵GGy��;�0z�!�9M��N�� 	����-�}Ij�k!��9�E"9SS]S������� d�)��F�U�W{�dt�w�r�O�y��Nfy~1��,�N�x�Ͳ��d�Z��bv�zј,Afo!3@f	2;@f>8í�:���;S����%=����!;>�4�b����X=�0LL�c�:�H�d'Tq�MP/z'�K�Zj��g�vǮ�+Qk&��9x<�`BP�F�-}/�W{7M_j��e(�.��7�}�{�%�_J�������<o��6��q���/ǉ/ n�bW����JҐ�s���m0��3[)��۽N��x6z��b8w9x�Ms8x>_o����l6�'��s��M)���DM=�z�-AF�[���b�Cx_p0�'1P)�{�Z��>`�Ai_h���u#��]j���[�{=��.�T	���r�������$�Si�㴽)u��.��wl�0CǾk_��s4X'�~�U�m,#�j�����VJ�l@R4GZ��d	g;��T�^�lK�����	���:?��
a{��8�^!�q����G8^��G��7��IG�3���~Mg��,�k�t��c���~Y���f1ϚLn��]� H�<�Ň����3�
��K�B�Z.�Y���Duc��CnP��N�j��%Yb"1ը�"�z��z��Z!�p>�\�� �
���� ��2��)=s=��&�W��u\�
�h�MƐԊ@���� b;:�r�����\��h)(ރ����K����:
9��B���E��Y>X�c��~�u���x�iW�󴘞f�ʣ�������I�u�jx�xp{��t9�7Q�-	�e{y�H�:L*��E|E��(�G\U�ґ�V==��i�G��$=::(N蹅 ���1���c�^��1������]�b�M��o���a��|�ᩊ��B�(�q�) �͊���GZ�"��e�4&����AI�U ~�T�{��6��w��^���f��d<�;`��         @  x��Z�r�]�_�U�I��Ig��c��\N�٤*v�&�@�-����Y&UY�.�]�'���sѭ�d!�j��ml��.���s�E68���UF�R�v�*LYj���ۗz�K����9k���t�q>�����f��t�$;^of��l��W��r�^m������R�t�W�W�]`q���ui�~�
_{n��e%?�Phn���b�Dr��*ס��(�l�.�9�ΏT�A+���ʸ�(�~��J�U��L���S�;2�������
��c�*�r��4�&F�D�k�u�oDSA�͹�ᅨ!N��?��_��
��4�XXe���FgF9�k�a[�������u�U�4N�ՕqZ�*[�Fhv1�L&�k|�y��>j��4=��4!���S}��X��ؘ`}�j׆�B U������|��f���͸º��jձ�:��XVM��E V�mU�@�78q����N�����|��m#?����fmݘBm��V�ԇ;��ڗ6�B�n�M>��~����W[�S�h���pf�3�l�x�Bc�iN�w�Ҏg��(K��횴�9���%]7��Ϲv�����ئ&w��z��s�_��M�|���] 
�;���=^<|h�7�ʹs<q;���ZO\��G� �QA��ŅuVn�wb�G�al�A�19�Bؽ���[7[<�EWQ��Mkrs��*���gc�Y��j�E�P�J�Q��0�s`_���\(��y��Y���O��@#�l��n��؀q����4��2��rb/&�z�U��[��w��
�m���ryU�p���'؀g��DHI�;��.�����p185<|gN_������ɫ{�!������7��f�Zd3���̿%���n� ��<z9s�>�[䱑:i/����;��A���-L��iGL�4��b$+��\ ����w�!=Q_㹝��*�GNUN�ib���i�ʁH��K^� ��RڗB�Y�B��V 3m%�RS1v�ʢNM�|�[�[ŝ�EKDoG�~���H�X�]�X4��	,�9 7��<.���H۶��Q����r�ʗ�q��7�2g�����x6#�̏��^"�ya�(�D?���޷"?��/@��ʵ����D���zt�wHC;�N�X <�u����Fp'�Kj@���������P�Q
s��Ѕ���P�DmIG*�S־]��),�G/@5�З_�9�ǃ//�p�D����ᨥ�����(��t�Φ��&[�@��(�������zj��'ח��6GT����c��A�Y�tD� �J�R�)��F{�B)o-�\%�Dh��o쌔6u
|�$�@�E�.��+�lH�$T��"�zS�\��#X�a�������/�b^��W'�_n�pRI��ƶ4�l�2���9J���;uVS��x�=��� �]�;����T�p5H1��:q�`�4@��t��׳�74oRv��{�9�]�=�a|�{�%���.DE>&'_��6��w��j����p�=*q�K{q!��y� %��20��>��}�j"^�� �п�{����Z�G&��9:�u"�����tH��:t]�KAv��k�R��Z�nt�32P�1�A����&�"uo�ω�1U�+t���y��j{��l�����i9�x>=>^���Y�]_K�|V���(u�*Mv�;�t��Ѭ�S���!��|Y�=�_�=�c�^^� �3���$`ԯ$��&�֒���VmPs]��A��M��l "'X��󚴎�� E����Θ��>�J:}0��&l����Ų8eM��%.� ��<�@��� ��G���@��'����G]?��������f8�]��d�U�ϲ�r� ����v8g[��%�m��d�R�]��O,�T��@ř��H��C]C��A-�J�%+| B��L��:�Nl$�lA�5��;��3�u�M��pVS�o�Y͖��u�"[/RK��gp�?1���E۱�+z&�9�Q=s{|G�NE�1��'@>@�t���e�����O,3�y_x�μ�,t�Nʆ�̈́R�F��xˏ(�KN'z�zX��D��|�Lw�����I�����fG�cdOd@v�� [Q�"A4q�|�-a ������f���$�&���^~��5�@�fYO����`�>�ʠ����q�n�u��6��l��,x:'62G�Л2�ʺ�� �A�ú���T��L7�x�k�L(��~*,�%ص�F�[*���<_�b'��u�h���vFZ���2���,J���t���?^�hG�w@a�n�;�D5s��g���-V�z��g��@�-�7{�W��hI�}+��wx���z%���Vb3Vؾ�Uw}�B8{y���\/W�j9^.f��z�_u�����
9��~������tK�iKDp%�u_F�OXiL��I�����M�#3{w�UŞԸ�]�s����[U�x`[�9��K��˔��k�� �J=׫��ў+MUsH"��L����W��o��nQ]x���T�u��ܢ;{0{-m����+z��y��g|"Wc�����j�\�������S7��.6��T6�t�0颩�z�9j����e9���\{�Ӕ#e
)z�ۊY��nk(v�P��l�9�+jjM#<C�ւm/�l�M�Q���m�˦t?JQ���u2���mG�m)�t(�!i�����y���8��D� j�L�<�)�H,,���Ue�S�>��Aݰ��,�xA��Oo�ɣ�F��l1����;}z�bs�e��f�����Twv�߻=�Ф����|�&�(����̨�V慁Vh�#���w�E��856�)ٖ4� {��v���KxT�12,#k��5�᷷��g,�0[��K�p����1���/�뫎!x���>��dr�8���b��f�y��&��Q��߂a�Bб�AD����UUW���f�}"�R?�T,|��@�Я��T�țe>�!��"�>��d�L@��>���F1c�I�_�,p�>���v�c΃�ն3�,��\:A��#�ia��S�4��4�6�Bp҉z��e.���]��8j}��4$W�n��z��^ܣ�N���x�L��'��q�{#b1��f6��b���Ӏ��y�i�fS�	.��~��T��yw�o��&��9�V�@��Ҥ9����U���L_R|D)|��j��C�ŜX ����x��/���t��iF�����6=hv���E��N�ɑe��ה�L��n>A�c+7�D&W�PR��0�J~V[V�ɎD�6�Wӥ(8"��k&�Z~ -�Y����z��#d�Y�]�6��j5]�*�T��(&�m���T�H����}nMW����o@�D%�3��]�/@}�9r�=����uݺ4c�'Lz�Ƞ���9�_!��قw���_��O����vc}�0���=�e3�o������(j��no��R�,��g��F�\���E�i�{{		�ՖZ%���|���i{���XH�8E�'Q�t��x�<^oƛ�|=[o�U����ΰ�0�5H���	�YH?����R�zu}"�DpT�=����y���ywl�����p8�M         �  x��ZM���=��bnkW� ?@��Z%����r\�*�b'0� �-�r�_��G�[*��?�/�{= ��rb�`U�Y�J"A`>��_�~�x��T;]N����AߔN��������l͢�_�y4�<�W��|���8J�d�����M1�Ъ��n;����o�r���պ�j��j�����9�f�vmf���)L�K��+�
S�㼷[[ZU9e��V��0Rc�⤕����߫��z�*���뜷��S�Q�R��9����;NF�y�Ԯ��	Z�C�U����M���"]m���3�6��n�q�}k���u�F=w�e� [c��SdW.S��]l��nlej�bh��-J+k��[�l�;=U8T޴��[#��6[S52ove���9W�u.sٺ3unpS}�W^ػ�&�!Ӎ�d��f��7a�ƻ�[��[�j����Kz��{4l
+�Ue|��M�J�w�Mܡ}g�*�_-6.����3��b$�p��2��ƨ5�_n�{;;��/�Wn�:����eުH�g���+=���$]��E��x�Y'����� knM�#�	��҅`�n[���ŧ
/�,q��86h�V����O1��8���׸r�|�qvj�[���5� ���e.������00n���^�	�
�뮿���[/F�&�mO9-)O�l�\͓8Z%�x'ː���U�*���Ï�!I�>���a'K�Zי�v�+,�[[`��	ޫ:�p�@��FZ��u��Or�����2z���LS#��^� @F.�5n����)@�P%���������r��"U]p�����$q�H�n������3��6u1���L�L�>�&˼7�����a�C\e�� ���4V��u�tv"8ɣNs�ѽ�t���C���ʾm{�ϸn���XX��@b��3� ���"Dd����|��z�[:�w]�C@`]�`Sd5�Y�5L�������Hqp���0�T=�J7��bw��4�P��
g�
�$rԚ�	'
����Ẻ4�m�=�lO�40�},�-��,=^�~�]iF`�^d�B�Kq��'��z���Y���W��-���Hp�j�5Jwpb�É�)G��z^0|�e���׭���TJE�d�rɎ�uיV�yx
ED��tC�g�쎨�5��Ó{ ]����������������c���-q�U[���1H�Y�c����f6O���l��n��y���6��)K�����DI:a��ޔ��L#na׶`�f"���
 ��s]�U1�M�:U/��τ��!3$!L�s�o0���T��{0: �"�@���`����1N��11�9�1\�{�l��7x�M�s�#�xD+SY��0���1d:��.
�$=$�c	{�`���{�]��-�Zu��S8��i���y�Q�,V�<>��.�am~��#�;�a!���XRe�Pf;I�HOQ���|�������ܑ"T�ў��k�9*ֶc6�g����R�:�3�;$=;-�Ő�I����3'��R)Q'�R�́����e���pj��Q��F��F���%�u�(��2���)Gt�#�\.׳��k�Q��"[F(�@zǋ#�pr�>�>f�qXÉ_�<����f�Y��ੁ{�U�&��Ţ	���=������΃�"&'"? 쪞�?�= ��@F}K�Bc�<�}n22/��t`�^����O�������G�E`��J��d�	�a�[:vB�9�L\fak��WI�C�1U�H���y��p��;�5�."�2��������x6z,t�<5z�d�Z� �8���l��q��\h
����GYn�U�F�i'0mFO��s��F���@�km�a���ޡ�$E���d��uI�S��Ր�9�NTFH���#/}�I���h�b>�	���u����l����,�׋�f�!�_P�Inp<;��P��6셣X�N��4L��@���[����<ו���Z���K�w��G��oK�e�u7�;�[�lIaWz�����|�Ҷ!�;�����dX	�q��,�u	�9�@@����b=E=u鍩�4�����G;d:�zY���<�2�P�Xi��� �A�d��"����v� v���[������������6I:_D�Y�I.!@�נ���'�?��j"50D��(1�/�z|�+|z���GѦ;pX~9t���ې��A	��T�A.	�O)hU�`���=��М5�"&�i>�ț��݌��BFe����G�O_���g�*�*�ʕ�iJ�?0,0�$���e�1�V��(����=.4�?x%����3�8���k��$��s6�?���z3K��q�\ϗ��Q��[�jJ(��(�C��;Ԍ7��[�� ���\zҵ�V�5i�����USּ���6��YO����T�(�"Y�i�5&�Ų�V�ȱ�c�;�5�a�?4%�'Q�K�[��b����֎�!륣-M%�W�@��K��]�g�	�"�)���2��Sx/F���߾QW�R���.�E��"^���n�ib+Z6��m�-{��V�r�%I�*�vPJ�XN�J2&�9�F[�.�CE�{�XZ�N��!'}BT�Jo��wvh2o�Cڿ��?������Re*QBc��(���I�����0k�2�A�t�^�^+��]�¯$���A��ԭ����e@��!Őm#zO�LZ#E϶Ƒ��Y�.D�	%jܧl�������g�����V^����+����)_=p�tZjD��VoH�	�'`��%�a�X�(�|��l��������2��H)<U/(���>{�Oŝ��m�OA��q�BqI�]�>��F��<�W���M�;��ub!���l�����r����_�A����n�A�f���T!Μg�ӏO����g�B����K�Eɩ:/y���b�v󺷍&1�I2�zb��Ix�H4�9<vKO��&��d�T�*�Ie>p�$����BzslKZu,̯�����a�7�8NG���z�����Ki�H�$^��d�	��!{���[�+#�E��o;��Q�;�4'le��C��@E�ax�*����޿ǿ2o@�qi��{E+D*6D�J_��n�����Ih5z�� <X����:��ysZ��7�����mKSaݪo�T�/�}CH�7�ɥ��Y���t^�c��aU���s&�u����z�d~y����~o���8��(]��d~!�����0�?��|I��B��IS�0pdsx�̃/=N�LN�+�°��/2�)�9�ͷtiB.�RL<�QT��$�h�ժ�C�g�p(�p��	�.���NU|�.��C+ǲ��Ҳ+ A;W�s���))�8��fu�r�p��=U���eyg�o�zy�u+@Z�R�
�h[�>�������a:���a��         �  x��Zˎ��]wEA�H��d���H�e;���/�PMVs*&Yt�lX��2���WAx���]�O�%9���M� �,$�pȪ��ν���3��6/�V�)T��v�>2��.�ѣ�.�ΚG�YW�%�ٗ��,�E�%~I��l�(^m���6Y,��l�X������u>�HW����{�;߯?QV��4U�[���B��Y��3�t%���XU���*յm�7*������[��l�J״�M�/;]�;S���i��ngTꪽ�F}љjm鼙�R+[�����5��8�׹>?תI]�o�hW)]`<��:�|��ɱt֥�ʜ���4���[�z�K�ϷK���)#���A�e�in^�>P"1�X�U���¶_O�S�3��w�����Π'�Um��a�R�g�~r~kW�n����b�'������sع���ԕz"έ;�t����Ǳ�D4�C\� *�mBaw �Â't�J[|������N��2W�~��aU b�6���1jg�/
����h��k��r|��Ќ�h>@m�N�;,�3{0�Ň8�w-�U٦�(a�ABn�XA�U���K�l�����\=�]9�n�������:��zi|��qJ���`�:�s�|����װ��6�o7��|5�z�D���_;�ڑ����)>��?w�c��ĶA���6<6��"H@�Ɣ���-�: 4BV5��=ueWѳ!C��ʕ��MvFt��.�l�!�w$��nR?0� �Y��V#����?��vrU(h�r�SD$b��`�Lpe��f�8����`i�j�hI��hQ��,e��s�u�q��ǋk����j�D�d/��d.�����*��a�>*�Q �&��j��Q�!4�0�J��0��&7��3�qu�+z�����\�v��A�&Ahw�d�Z�x���v
$mψ�����@*�3���_�\��{��^<��
���G�QZ�i"JbnY[(��s+����粬|悈��h��" v�E��K����s���zg���S���[V���z��,ׯ�k��c.� t��;��Ԕ;���dŽq��!q��@��>�!�R�p�0� �$Μ�$�Є�]"f�
�`Ϡۦ����2&�
��@XCV�ؤ־�%I�Xaq�ف� ��v(�5���<��0��1\"�6��t~�<8䗇���u#�G��W#8�c��1N��;�oC����E2_m7�W��v�>���IàV��ihZW��-.D�����ȨmGjz�T)pƴ�}�x"k��N�B�J���4p�	
?�И��-չ�����.Bp���*7�80P��.l�uW�g̰���s�#	�����5(� ,�딚��4����s��ը��K,�~��,�x��!�T���F���[�=�?5��5sf��,#fo��_�/%��-<'���l���yo��*N�yH�� ��� g�:�Q^�,^�
��M�8"�0Ɍ�;a{�$!��kό/���*�W5! d��Un������#�L��컯���V8�r�+A2»F��0��65��I�Ȁ�C٩�oC8�Y]��F���S
:$ξv���'��8$��^i�C@64onT����;��7�'��=�E�S~oe�	�x��mg�mǳY����ѓ~��{L�����q^����jH��Jӻ��s�(��Z\C�!s�܆ih���Z��BZ	�����?:�x�R�`߯ELCB,*�A��:���m�0��j����&Zl�x����^{��>��2V�7JKC|
����ȁ��0�S0l�v�"D�ח'#SWϑJ�����p,> �e��}Wס�Y�M��u0�o�|ۇ��z�#����n������VZ�Ғ-J�LL�;�#[g;
JJu
�!��%�Uq3����O�ǳ��E}U��F��~��D�ƹZ-���,yu֯:����ƕ.Y�0����6�U����$h������:�)%7d}��S38l�3�v.�?B6B�������ҝ��m�޴�Tu�ہ�X� tA����(qk�)o~�[�㴀��В�{0�; <�0�L����̓�e�e�?`Cb;��ڋ�ʩLiP�&W0y����$�e��?]��{|R|�qLr)G!�Fno���ڻ�`3����p��tY���7�}��7�R����f�]���b���W�y超eٙ�4K]z�l�_'7JR��z.s��I!x�C`�R�x�^Ձƻ&3�2W��ʃ��K��S����Xբ��dP=���Wa$Q��W�U��8�4��K�;.�̴!�a)��Y��9��3:yU?{8 p�	��e���*~`��́�Mջ�ݐ�z��v�]A=����N{ ie���fK��v�,7��U._G�����2>5�������po����y����� +DٓZܿb_Tw�9#Z���$���@�r!o�њ��^sydwъ�:]F%]\�	��G���ZS@��&�N�5�C�N�@Eֺ������0�&Uٕ��RYYK���B8)�"���X�Qo	������QRɽy�����}�p����vBI�ꮹ-[[��9
�h�Z'12�����v�������:�;����z �.�LR�M;��L`N:�"�G�Ѓ���Z9�V)ŹrG���	�o�{�!��p�<tVْ��+K��q��Ŵ}�ul�R����9JF�����^�� T�ʅ�5�)��j^��T]7\D9�����o#;��S�/�B	"HX�f?�+0�d>_m��(^l��`��d-�?��zg.
龲�(.m��u�����9$�3��i'���g�v�� ]~���yŮ�D8Jtw����V��j����:	[����|�	��p�`����܊"��B�7u��\�ͯ���;��0N�P��VA��K/'��W2EG�@�#;�;���?RP�`Y�0���x9z���-���ͦ$̊���z�lQ�J�3�Z�Oδ/�A]s�ZW��O���*��3����).M�ǣ�z�~h*��c�ﻡ^�өp���H�֦o��;�"s�����8C�J?�ES�uz��R3f���~^��r!JLz��a{>���^{�@l�?[-�Vi��ً$-��:�¿֩z���I��'��ȥ�P�n�íA��ܢ����ݣ�����ǫ�s��)W�����y^�|�����͗�$^���j��Q�f5�N%�n�n���C�?5l+^|��N3	Wh]߯�����q%��v2��,�ˁ2��<o$z�욡!�n�e�֗�+O� ��@R��QS#p��`�$�5x���cҕ<0	e�6�x�a�_��ЏXI�c��$ȴZ����0��(�I*DlOU�9˾C�p�>g�������|'8��5���Ex�Q�"M��H�-/�,Y�,�K$�M����2o<K�?^&=�E �Rɹ�������Nn6�Oi����j�x:GR���7��h�q��<�Fޘ�㭄��796�MԄ��OabF��O�^�A��5�;����PVVf�^�b+����N��Q\�l P�ё/���y-R	��4���38�s�\oA��I��xt���ȁ��ڡ���L�pkm�Z��[IK�1��Dlb�3���꺫��H��7���������I��/�`���j�M5�t�8a�$�7n(�C}WP�;��� �8��         �  x��ZMs�=sn�+;�~p��o2�a1�G,T*I��3�!0f�M��5�Tn��{��E$W%<��%�˙������.������8mu����������uAW�Aw�7�����lV̊�~Y�����z�XΎWo�.�TS�h�H]4���>���.�iZ�E�h�yp��[[^�X��w���q�3}z���S�_N��F'�����^�����M5�c��b��Y������R�k=U;k�Qep��땾q�ʪ�LUye��za�V�&�P����N�v\���}P�vu�UP;�N���q#�_\����{�u_*o�;�-me���`J7f�����:>�X�i����^U� x�,q����a�۠���{�� �ɂ��M�&%pr��g����H�%Sg5;>]�gR�)I��TQ&��<4����d��u_b�%�
G�u�m�zj|�کjmYґehq�Gt���#�A��-�TF�om4[3`ц� �:���I���G'VpaL�Z__#��Pol�����Dl�E�* N����w�Q<��3Rw�,~��5w����썜�0������_�i��M&Z96B�X5o{�-�՛�s������eJc�8�C��͏��b}�\ao��$�_ 7�@�I(�$����:pY�L�݂	���oi-gmL����W � ���C� ���t�=/4�w�%�丰?mAv�.�6�fG�d�3�����7�g�:+�bJ����2���`�����.Nm���Ռ�KC����V�s���N�9{�x��] ��n�=h�����#�,�7�V���د*@����OD��,�������j�|Se{�m��*0�;j}}������b������%w@��r?mp`���$�P�&�U�bkg:�TQ�?�}�� ���E-�L	;�,W�]�|�TT� Rz�RE+r�m� XP
9`s�-�4L�Ŗgϧ:����p)�. ���R�w68����kC���7��D��z�li�9cj�d������F�Ҡ2�qR�#}GHOV���ئ��CfC�|F��"}֫����r]v�)�FrQl�ZuE���_�X]� �\U�FD�z�C�Ő��Z�#���u}EPS���𩷙�,�k�#���dN�{<� i��0\H�Jx�����0�.�EYO�+DZ��;�-ݙ�+v�J|]�2l�^{�D���F���\xR��JFN�%�vDK=$1��~���u�b���B�`Û��V!��N�����G���4}J>1[V,6�����l�/6����M9��������@���;�.�]�kP�^��$(=(B�@)�#qAr��x*��������V�ql���k��G=6��levdƈG��J��k~Q��^}Z(k�d�I8��lYB&�+ �^�b9Q�p/R�	����1�h"K����G�7�59�/��#Ic�N����l�!~�/����e_��-�+G)�n,�z�ND熫��dr�CR�8�@*�?p�H��h�"z�ǳ��(>��`>A�e������u�]�',���pXN��C����+�:}��,�z>WLf/����(��-�<ԵD
jؠCe �`���c���s��5C�AxL:6�V=� 4R��q�=���'�7Z���O��%sd����tur���R����{������7�m����20��=ޡ)�f~����h�:���B*������W
��,Ӥ�VnH]���E�I�?C[�X�u���#Z�	\���/K��P*M�����<��o@��6�p�y�2r�C�RG_��&u�{'K��+�Q��"���`�13�z�@Ńl.?J�{�������3����Pն��>�+?-fgH������l�z�h�sE6Wl!�Fs�Q��3�G������u��8zB_Y���j����6$'�,�SyR���pR��a��8RY5rdױ(k�U��פ��J�z�X��L2E(�&#�Z�U���䔥t���eeS�ue���MG��������h1��8��şt���:�C���=��lMt�zL
��e�(b�*Cs��^ɐ��|���ΰ��g��:7>�g�Oj5��)�8�������
��f�6
ڸu	�=H�ۺ��%<UOHA=��393��赳2�>�A=�G��V���}��*<mseGM���Q㓾A,$�k�ąY�ac��t:\:�P@��8`'J�mO)��Q�g����z-�zϿ��g@�W �GV�2��Z��0�CThe����-W%�y#���Z8à�p� QR��������U��q��'�������T��gd����|u��ϊ���7�{b~�t���s.zD�
����������-N������a��С4�58�H}�y��u�7�����b6ky�ă[��W�FP�k��~�(w����L9F�t�:b^W��0n�3Da'cD��h3�Z��
�E�G�rJ�6�h4��-��.g t�k�J��%8ogf̓�[#�{����|q�\Ȁ���j*�M�?=�:)�$�|�X-f�՛�)�.e6S\ь��ٔu�ѡ~��ɷ�lJ�˝Ҡt�1�˦2'���hS��B~Ü$�րZ�b��*ZA�W]$Vl0��(���Fk<Z��t��ȭ�h	Au���L��-B25�B�����#u�&;8��o�+ee���p�b9��S�䀨=�9d����s(%72���1L�W�%�@�Г���r?N��.��׶�����c]}F��`~�\�竓�ɷ�`��c��Mt�����g[��,��W9r�@7,�
˖�N����XDg$�>(!w��4�ѕ!C�
W�x���}�4���0&[G]-l��9��K nv��u��l̇���T=5!�&�(�f��;^l���� j�X��F�C�yN9o�M��������4�����k3�qB/�l�Ka_p�4��vz�qJ�c}gXO�|4�L�6���         a  x��ZM���=��bn{I���R�*V�Zي����*�r'f�@;:�运��IUN�&��?�/�{= ��)mV%��K���ݯ_wc:8�j��V�J�UaJun���G]]z]4�ڋ��<�%ɷi����j�f�8Y?�.��r�\e��z�\���:�����pj�����ʷ�W�/�Ze�����u&�r�Ty��ŕ���>�7A�&n�ue�3mk��?!X�C��F�_��¨�),��Y&��
��G\�jk
\���y\��|���\���l���*g*���j���`w��<�������V�Xko܎K�<�m`=�	�n|��jc�Q�V�>rk�mr3������{@�Hg������Do�]�G�l��%��"���,�M>���2ag7�����+�\���L���a�?�4 f�]��p�ۘ�%/����_�YU�Ӵb�- �/��!��.�����DZu����߫F�{;Q��0M��ō0��6D�8�w������[�l7L��:]ze��j��a��-�+*��s����t���׫�r�9,9ƒ�R����������}>�~�G���|�k;z6)t�Β��;�.�����
���IW�qWz`�K��E<�W7�8Q���l���+�>y�v�l9�����G`Ϛ�в�������a}�%���� ����Ѡ�q�z:�����n��C�B6P<4&�9G�9
I'2B��b�upRq�=9-X����P,�������2D�+��`�Xv9G�O��x:�f�U�$&g'���Mc#<[�J��Mc�+��G3�X%�zf�ae\՚� ���;CF#�H=VahB �[��ێY�:�+�?q�'�0㜙A���S� ���Ϭ:o�r	�� H�����=���tX<�=�Y0+�ֽ�r����4�D�a���$�ɡ=w�wZa���zϵ.�܌�\\���W�(�g�4�~�;�?]��l�Z�W�r=[/�+���/G�
��em6R�f{ɵH+�Ǥ���Z~�×�Ͽ.�7H�s] U��TY@��b'M4J�+hZ�����������xv⧶>��U`��D�t#�&��i���H�fV��DY��r�o�4&�3��E&�R}�[9�D��a�	[,�g7\�B���/q�=���ǩ*�^�R��� �ǂz���<0�(�{I� I��t��ϒd:O���9s�+�HHK���8|�!YuL�&䔰WH�q�{��S���Y}$�>�Te���h_�����g�N�b	/8�DK��/�H��	�l� +�[����p�%��K�S��]`�J��l<O�y�diT	��DD�.��Q�����<�a��en����>$��:?ԯ<$1.=|5?A�Bd����<%���󘍗�&؀��J��*&0� �A��J)���3����
2����P2,��b����=\!D��,Ȱ%����4�;�j��.�������-?�p��O��l�o��,I�Et8�Ǹ��	%q�VG�t���4LC�`�?ʨƪ�D9V��,��)V���/��N1����9��l���5�
��r���]׃O@w�zM��CP%�6]/V�,[�_̲�2�M�UmP!8�0�d5�]��A��ԙ�,/�jGW;��)��ЂMo��#Qa+���"�ï�k�?��kQ �}��XȘ�A�84k�������eIĎ�0�n���쟓#�C���f�`�����B����SFl��6_�^r �A���'�ɢCٷOl��P���萋���3{�3=H��������4L�ܱqu��nթ wr� Yͱ�z����guլ*�8�kI�
՝��BȡbB�󞉺�.v���K�D�VP%�)=ڨ�M�`�PW�|��?���۲e�D�Yj�
ֆ_Ե�t4bo�*����q
��z+|��mt�gC^�5,-�n8�Éak0L,O{c����d-����;�q�G�u�F#wBnS�31�8��n�QO�L�F�L��Nw
��?*���t�$��JD��\�T)�j1���<};��$�\~'M��0%-c�#e��}���9M´�;�NC0&����l�I�F
M�Av�@�8d"�jH,��n�����um0��=z�R,$�t��f�8[g�i6�~d������0SS�����Ԯx8"gfȱ����`���pn	=� ]�ٵEҢ6zn��R�K���p B��ј�h1�M����~���1�tc�!@��,m���\�.�s�L��Սl۔�9L�0��M��5�V��T^��e6C�A�_;�V���FQd�2�A[�*�/�I��2����4�a�c�~D>\�$q�$��r�.�%R�q��8�˕F��s��7�5"��EYES�9|�pl:/��ϑ|i�⠥GPZUqocX�Ua�y�	١��J���k��F��ԎM�g�Q�4kUul�m�rge^d$xw��s?�p��<n������"��z������0����|*S�E6��)�Z�KD�ӕ�t����/-�����rο|�wu�|�EKu��w�c#�?���9�W@�\W�gc�B:�q�v([��(�<���'є9�A�۾o*�>�>Z6������$,����I`>��@���.8h��i`0� �o�q]�|��]��#�rkb� �ǀy8��oX���"M�%��z5�YT���C����\U]h���]R�p�
}�j�͆��唾�M��KF�2fS�>������
��Ҥ����Z?�FH�2w�^i�E�����F������7�O.���v��t��t��Z���{c*�軇߬�7�t1['��-ǲ���84o/-��n��R]_�P}���©)��` ٪6,}-S�A!Ua�G=7qZ ���L�(�j(^WmD"I-��y��8v��ZJ
f����2�Q9;lm?�����t�4�n��(�|n98�z+����{�ݒ~7_g�d����\2�eƲ���3�q���>g?���|�zZ(6D������đ�kL�"�v�&�i:/�L)C���U?��:�Ϳ3%���mw�#�a�������D���Sz5������������"������dr��j���m}��?�l8]�ε8w�#]�W��F���n=O�l��-+��lV�޵�f�����nw�^�Ql�N!�В�4CW^����T��a��eJ�� ~g	��4�R|�%�]:��[��\ ��M�U�t�42��cAr%�}�ݳ�=��T���]�MJ��:'y)D���8�ص��j,��&�"�[���Y�BX$`~q���^{������1=�����η��j��R������1y�            x������ � �      !   g  x��Z�n�]s���������m�IV,9N� FuwͰ��Nu�H��3��"+����9�zH��b� �0��Lw�}�{��N^��h|e:����j��p�o\�U�������l:�0�N'�I����d�y��6��f��7�l��͖�b}��ٝ�4��P���ת��y�U�J������mg��U�������+�6��B4|�u:�}���c��2@ZU^�{<bUev�*ݶ��zkU˕�mK��;~Vڕ��6��ڪhk���4d���z�sAU}����=��K����v����C2Qqkb{��iM��g�G�^Y��?�~�ŭ-F��琵�"C����X�m�I�^O׋M��X;���i���`�o�y����06���޴��.�ET}[��c�4��sg>������;���<��X(b��B�3���څnM���P��bZl[���"D��/��zaˋ���V6U���T�;u�y{i�N�������t�O�#t��cq�
�g���ѡ��̳e���V�|��Kh|�T��ժ	%��"��N�����$��V�	�P�
f	��I�{��1�/�]�*H��נ�n�r�R� Qut�Z�'̀��yڿ��D��M��տS���qD�2XO�����`Isg��H.�C����}��0�����S���_;��t9Y��+T�,��kHh�;�?��6eD�UKu�ܶd�+]����V����y%I ��/2s�T�\�b�n���;�VoC���P��M��Kٺ�o�\Mw�Š�:�ωLCV'HH�7�ey:����A(��*(-9��ekK����p��qgnE�Ge��O��:�X��ɷ����WD�j��M��j��/��Ч|���Lݰ�#�)�R�u�<ԩ�{���`�L� C�Bx1vC�BV2�0V���]��R�J+Ӷ�	d�>�X�L�$�ng�ݎ�fӥ��z�8!�_R,������P�!GPm�W�>��:+n����]��)ׇP�Ǜm�It�hcԹG���4Q C���R,�=�hP"0�$��S�^����և�c���a��J��NKZ֠�G�G���|5A�f9������s'v]�̅�屑K�6HA���s��؛ޠXd�9�ڇXa%���R9�Dqk���[��c)�pb2�T���%��d]��w�E�B�z��%�$��	7�t��L��ʝ�u;�]�������&������Uy����(�0W*�|Dl�
Q�ػ�7m�@��O��;��4o��Yl֫�r>�-֛,��77ygA!�yaw&>g^G�
�Pp��%;�ى$."Ȥc��}���E��޲}���tx��	oC��� hy��s�5
w�N���p���Ŗ�AN�g�T꽖�4� �w[D�7��i����,�����~��S��M0�O� �^B�ٱ�4�̗�M�X���~2�0�!��M�\`e��)���fo��ߝ��f��d	�n �M`���E*�$��
�}�`Ep�8�*f7M "�G�҅2s�>���R�?i�ߍSQc�~�)iGq٫J@���^�u>_��45:O���X���uh�x��II�R��Ib����+T�Kpt*�h��#��[F�U[���.�S�m���N�Ђ����N��Ͼ��̟a�J��pm9p7�q�Vrn�� ��:ub AJ j����OQ�9�m�T��W�9��&X������d�1�������tݤ�ؽ:�h�3�(��|�{�A_��4tl8펞:"k@.��f���k�Λ�I����>%*�&MQ��Ɍ��ØT'���4l^�pN�F$K�Uб�WF�a$�(������15]��NQ���k��/� Rz��L[��{��Q��DD����=B""�~�f~�ʏ�L����w�)��袹�,�<�̖y���e�Hz���ဳ��W�뎳�V]�1]jפ�L3�=
Ƀ���Z}�Ilϯ� ��Q�K��dڄ�ęټ�S�IxR���F�N)j+xUjP��0eA��)}sT!��>�8i�����#5�!��A��G
"�A�o�ea��[38E�q;��[4�4¡h�j_٘�[P�vt�L]����}����z��N�бЅ����ə��f�M��d��SVJP����� S�a���vF���ȫ���^��k���d���Ŕ&�Aߖ�3dw��	�\tn00xܖb��2U(V�Ps0T���J�����cWFJAj����!��[��S��X�f�M�����$�j�x Y����aNST�M���!C)��R;�)�I��H ��u=�a=��'/x<��>>5��E���|�ʗ�ÌK�b�4�Z7���ڞ�Zi`u���LM0�?P�[��d#�\�G�i�> r�r�n� H�h,��y��>�z��tj��ϊ[�6��L�]:;����	����l��A;s	�r�os��|6[���M��o;����t��8b�S�S��0�Q_�Hٌ0#�V�z ��y��_�@"��,��gNRe*u�qպ�,d�Pqܻ�K
D�������eL�t���}��|��sz+�k��۳�*8�u��y�g�W6���Ϙ��F�Y���P�1��P��PGm{��j1V#�c�H�<���=|4��y�-O���eVE�%Of�l>{^��z��LI1Ӂ�X)M�ZxC sy3E��"���o�\��
ͨ#K�!���Н���5I]��g6r�����B�a�w
X	��S�/5v�"zi[ I2�øTFi�H��;f��t�:���3��I���zs��cv��v������ӯG�o6e+����!N�mݹ�u|��7����&\l��&�b����U�o:��HἽ^�NC�A|]��D�a}�v���$d(]x�o$N5q8��J҄���J��Oz����d�\8�r ɞ!��n{��Nj�}/Gw��7-�([�|���8����,�&��:��U��Wp9�%�4�����S�.s��9�ގ�������Q2j��ۓ��l�8Qc4�ӱvhSx[Ι-�J+ak=}���]O���Z�X���`�š��ѽ �4b+�P����lb�(H�Q��:��1xJ��8�y �QC!�֫�(����*����`�h���(�O��ԟ�Ό�r5��&�*ϳ�,[nc}W��"��h�S��/�ʈ2�
/����߫gj�����:\�q�mT��}/��S�2�9/���E��r �!�Ć�.�k��p���4R��u\�͋��p�<n�Kj�b8�=*#�ݳ�gH�ڽN��v�/!�_���*�c�C'�m�ݦ��+h��^�����x�C���V~����z�׳�h�_�r��      #     x��Z�r�>O1�!�+ ����7Q�dٔ�t�T��`w L8;���M��y�\R�\sK��I�$_�, �JJ���J�>X�r������g���+#���?�=ik�d�4۶Z=I����x8�s��f���I2]��|�e�l1K&��"����N[%ZWi�EТp�Q�t�	s$+�(�8w�*��;%���b-�ϥ(�1G{m��6b�$]�܍��m���{w{�ėm9o�F���y���0J�x�Q9�8|���.�BV��2�qm�o$)J��;QC^.��4>�*�G��-h��V�>C���;e��MRf��������j<�j@*�m�ĒLA6�d�����F4^��V;+��F�紨��ǣ�?���i��VW��$ƌc<ɑ�a�N�$O�sN����s�w����э��Z��&m����Ӑ��z����e[J��nd(���L*�$;Tnc4�Y���b۲��a�,���d5��9��Vˆ�F�9�L6*��l'r�
Pˑ�/~����:�Cqf�����)Y��Űy�"B%P�b��ݐ~4��L��z/=z%u�챸��箄[��kMCqN��l+k��Bv�����i:^L��|��O�ŔC��Z�A�r#�[�/�s	���˛�*d���&�L�Z��9כmE��Z�Kwm�[�O���Ͷ�j�#I���h���+sAu��"Q�w*+�⫯`��@����
����q����Yn��@�q,�Lt���gwbdq�o^�������ڥw�`(�x��f'K���~��k����1��X�y�Hs�R^@�F|c�,��/}�����k�|�������?������X�+Pu�D��{��&����y���t2�q�@Z�v�M���!֣�q��T{ mQ��i�8�����A�\��#��ߩ�&��6�i�6����X���,6Aa!k������ר��!H����6TxרJ�^{�( �j��	�;����xO0h����"���W"N(�+��X��JBx�6���^�K�7�i]l�v������n�<��S�������k�J��8V��ą���*�O��<��1��]YB�NCϰ����Q�����.��( 6_�(�I>X2�ǆI\� (H��R�$V+K�1>���4��ψ�z��DDP����x!=����@p�b��9-�vïo�k� ,��v��Vl�=��h
�i� ߂�!�X�����q�,��l:�e�8����߹+d�(d���2���4h%2�Ŀ�v�����d�=/pǤaT`��i�D>�e"~P>��
%���֠:��iZ4]������@���b$Ώ����Jj�tEh�W��B��MD,'���ٸ&"���I���Ml��2�� ����yɥ�)A���۩j��%wc;�����;oH�ܐ���h�Oc���G9}�^�������G�cugl��H�	4[di>��a�Ost �'��g����Ζ��s�<{sy����~-U\�l�\���(|�|�����N�/�S�MDd��ٲQ
��T�ϱ_]l%z�WE��g�έО��Nna���NܭX0#����Z���4�ٴ��³j��g]k�T zs��#Wm#�fH�F���]���x������M��t��� y�k|�z��CO �n,�d�/���wmT�n�<���6q�;3TWi��irKyu���a�Wn�̲��n��LJ)3˓q���e��x<��Y��6Io4���N�e6�e�)*�FB���C#T�{�EpPS�%�!h��M�U���@�3�����b)�2-��|��BU�������{qBQ9�1�{fc��.;��[ZQc#�k6�=��U$�����J]ck�~$�J*&�Y��Cj��/�0�up�G+��V�/z'�j��3mt�j������P���<O�t���t:��xL��=�Yk QWL��H�	^)���q+�K�\6ҋ;�M�ė ��ZI ��q�D��R�����x�0C_G��MX�b�~C՝>�fb­����"-�Q��U5b�d���O#	�vZ�,��q�/p�c�wh���i��n",���2�����%�m��`l1Z�(t����W���P��ҟ���d�{�y�ĭx�{�ͅ�)��d�l��|<��$���̳}YY�V[�X��ՊNSTB����j����?�xV��ʃ<�.�9���̂�ܙ�sֲ�O����YŴ�"���p}��Ʀy�R{W�u#r�ZE̡(:(,50�&l���8�Y�ZmX/Pq(�Py�7"�kp�P���;��C��w+kgT#��#�G������w.)1u��&I�E��8�"�|�H�$��|��g�<	��b*T=+Qy�ɀL�J������6�:ޡ
\{��c�X�L[s�S�wG$�(/�����t�G��N�%J��Q��+��YO?�F�ˣ�B<� /x�5�|�""2�Rq�{!����~���p�D"�����桁1I�9��0CPL�����t|�q8�M�\f���uh�J�
�F�	��׷<7�QgL�����<�U�ԚM�#�H���T�t���Eg��8S	�?�Y?��-o�)Q����`t�e�Wl㦭4���n��0`�l|������ޠ*�N����m�Ddk_��i�U2�!f׍|K��0`$.��kUh�n8����棕l+���w��*>eY^�����]���t�p7�AO͊���K�$��,�.��x�N��l2��s�_�&c �o�hB��,qP"2X
r
��Δ�+]����8N�̕ݓ�;oZ���NF�e��ans>�`4��tقN98  �(�t0'r7\���O&]p�7�F}��*��*�P|�t|��$�P%��ͳ����� ɲ$�g�i>Φ�Y�p���.�Sj���(P����,�o��#�5[)�M�=��Q�F1Yꆡ�z���{�<��[��BR�|�敶\7���|Ե�\5�R��vG|�ۑ(�^�~�Ɲ�̙���2^���~h�M��$��|>�f���B1� ] �8��$�]�n��%Z�箘����84R�I08�a�G�Eǜ�� ���TdV��F�z� �(�(�p��dFo
[wM�a6��o�<�sň0Cr鸸Q���R���c�>�l�`y�O+V
��-���H�tǌ�Z@R�6h\�C��O`������<��6r?���I�ڠ\��l�� �l>I��q��7ټ|qP��<w���=��'C�w�C @���8���hQ��Z*����E�o��#;�G%&���Lb[T�Fb���s���|�o��̰vE�m�`Gs�(�ȁ�ƣ�u]k�*���M#JG�5Q=:?c8<�t������`�_C��lz�)|�sߦЇ��G@9ɏ����4�'3w?�F�� ^���U�J�G��4��Y2ˆ�<]�g�y̗��!j���H����CZ�!Ö~�� ^s (�`���%`��U�y��#%Meh{�l
���>�E�<)�и�a#�L6r�<�⺫A|z$���@��/��8h�&����}84��KGh��-"�t�7�ǒ�i�|�),�̘n���Ԓ�����q��NI� �=��a�%_Q�{ɍ�kOW���Ty��'�t?�����J7t*B����=ܟ�<]�@ /�7hZ���y�S���'�'��l�K^@��fx���~qh�A�o�=��|*�����t�����_��r"���"���>ޖ���Y4M�����A{��j+^�n������-�;����V���      %   �  x��XMs�H=w��
_��z���1�1^>�ވ�HI%9�R�(��_�q7�7��c�Lɦm�����ժ���2_fj=�`jѳ)�3Eh�:�̛&���0{�Z��^�7��_oV�?oW�l�����������;��C��h0����`F����z��'ӄ�[CmK���6��TXL��W��+{Ӆ���`��;�4_{Ӥ���xĔl��Fk�9a��؇�i�a����tls+|a#��s�m��=�r�V���5��:;p��x��d���qA?}eޅ���`8��11��?��A|�.�`���A.U���#ᮞ�`[�=<z�k~j�q˦"��K�8B�]�N� P��w Z�˥�~����?^��ᰞofW?��68ƍ����Y���s2�uDR�����3vٿ-fj1��L-f@�Rþ���]B�'N<��F[�R`i�{���"`�̗և��������9kN����W�M1�Z`��Ԏ�+�>l�����|p��?&Py�8 ����og���T"�M�&r���3̭��j����j{��}if�����S��:ڒ��ɗ�S5���m\La��@^!�;�0n��i�jNȤ[�D,�$ね=�I��`A�#/�� fsC�K�� �1 f�'��U�/���B~s���sr!���8 ������6F�Up����kI�ֵ��?���1 w��F	�N����I�#wȈω�������߭��(����N�e�=�ğS��&�D�	�״lk��M "�h�~V�%'���`D�p �S�#���vT+._���D,�V���b��F� ���b
P�F
K���aI��K"#�RI��%�S�7���'J�)����;;[�1��L�'�ki޳q�V
�+�F��B!E'�i8��\�A�oP2�'��H��z����S�p�b��7"ᛋ�
B��H�=+9�k�\qqC ښ_H;e D�AJT�Nj�����v��J����!Ge�4w�f�K03���B2�c�������8X�������4� �"��k��)����x�B��bF���z�ȏ��>Y!�DU�GN��-�/��������(����DM.�P.�	MS#�Px�/�~o��/ƾƣ_�~a�@�N��f�~�ٯ[-)j/s�hN��M�ޣI�x�NJ#�T{6�U�ޱ���/�j�N�#7vuh� �p�P�߆FTR䉌Ќ%��� ĩuk���Ç�Qc#�
x-��g�**�/��&%�ã�Lx��ڛ��¢�LN=#J!UÀ&VBƥ�}�$O!�_ξ"I��H�l��H� ׇ��n��ȼn�=����x�}+ӧ4c�:y?D��J�	� :�_FW41��&D ŷ��0x��J7�i֜��\F芳g�h�34TM~!m(x�(R���L�x|���gf�U�Z��Fk���sv��F�����Y=��Y?R�����R��{��ѓp|��90��w��
��d2s�4�Id#I�6mh[>�`\f�#w�_��������p<lНG�5�0���h^�|��F�ؿD'/���i[����J�z-�'.[���� Q��,�bz��9��Ҕ����À�+�j&��F��sB��Ǘ7K�.������<��Z�9R�⩛8�E�c0��X@���>��0D&���%�4	u^�5��EFZ����O��5��Bw|�E
���$��������q�ֱ/��4;�<��.�e���ļM���Q�B�C���^��t8�T��*�R+�tGV�|�-�iâjRx�(f���ƃ��Q����MU���Ej菜Đ�:�H�2*�¼�&�:�S�0��$���;��^�\�=�]�/�z�:�.���o�ꭅ^�*��:x�aC���7���
'%�Km/5���B螾{y��������|�/8�N      )   y  x��Zˎ��]���2%��!��w~��ę�� A�F�,Ie�Ut�����, �����9��~� � 3h/��y��}�{���^u���֟}�ե�E�e��͗�4�8M�$MVs�2�&���l���W�:]'��t����d��ޝ�,�֖�
:�=�~���.�QU��
�xe�u�	��`U�U��`�*���Y�.mC"u���v��QO�SOtx��ꏝ���4�0AU:�<�[�ն��9lI�*�v�G���Z��妱P:�kg�.U�y�Les���m��0R�uP%@�ٕ��&���,��WJq��cyn|�&�hc\̗��H��j�.l��?�o4��o��֫������f����1,鬧��hR�!M�H�U�.׫�*Ye��j�-�7���4}��~��n�&rS���h:k�a;�vZ�ۛƌ:~.��)0�W� q�T}�;��۞`���b>[f��Rd$�M�K	l4<�Kl�ǵ۝}�k_��"]��k�.�ۙҫ��_9͵j����\ӊ.�OT����:�A3 �-I�����i�O�������ֵ.�b�0�j*�ǂ�l-�@���/&�5t?Z�2u�l�����)J�_PU5�=	��žю_ p�=�CZ�m��])ߴ�8Y�1�a�B��S�_lMÜc��2pĔ������yך���`�{��`v����v�~�wȜ��3[��y�8��;�߹c�?�o]�y�l�^TfZ~0�;�Z��X��-;��gߙ�����]a�<\����m7��V����}���w�Uv��y��S~D��k���d�~��p�8YϦ0[;l"�|���-��i�ߪ�4�U�~g�+��n�J�J�B}k���8�	bK�Q:��Z�
Ȏ��7�Eo�^E5(~o�[P���`~��A'RXϟ��,�R��l
���g�'�ye7&����m`�E�u��kP/P���X����,|�L���z�QdO$�d�P��I �6�yWw�D�������|}��������Fy�L�i����+}�p|�x�`��V�:�/P�G'[b�չA�r��t�v$5u�H�@�23Dʻ������w��� ��R�x3���K�w�8�������g	A8�洀/d����!;����d�-���=�&;��2�I�Eޢok����u
ީX��r]�4�_J�#%vێl�ßw�!���u`�X�w(��Q��F�?�)q:l�Jc+�C��y�] X���E׾���rPX�]
�3p�e�k��5��S��S�tWU@��⥀e��h�A��F��ᝯPȸ@s ���U�o���j���I,��#EJ���FL��x�$寃u9�8�͚�Y~~�0��$��˄|c�ZM����R��P 5���E�w�1�	fW�pB�����#R�/h����D*�4]H@�>�K���Yr)�M+��k+�>6d�+�P�e(�`ؚ���?�BB5Ce��+�Fa��/���,�n��'�_n�$
:�7#�;=9�U?�5���'Ct�G.Y#XեI��2�q�77?��l}?�����j��Ƴ& E�g��,I�ȗ�b�MV�4����*[GZ�,��A�=!'���|�C��&ĸ�g���h���qR������B��*.~�C��|���V�u��A�?H'�GC?H��P �vhĲт�����QI��Wu|�ݍk j����C�zb _��
����M��ԉ���@6��7c��Nw��`}���c�e<	�$A��]���6� �f�u�XNσL 0�P`rY*��kI���Y��i�@�Ge�"p�0`&/5ʬt��IW	��Ū,O6���. L�}�'͍�a]��×n��e+%�*V*i��㻑:��s	�����3���b`�^�ٱ������΁N	���A���V=���1�;�8�."q�3` W�$ގ���Zz����_;�n�*��;�o�Ń���ڃ,��̓�������|2�YG�.W�y:볈�'9ߏ��̚�1���W<�r�6T���~�e���e�&${*���8����?B?�z�p؋��:"T�<��:˰�'$�:vkj�LSĆ��Q�[�kM'��ͧ�T�����zO��8��9j����Ħ4U����9C���b+�����һ��@B��"�P*�(�V�<���L=Ȳ�(�V��)R�H��l�^��Y��߻:�`�B��*�ʫ�h����L�L��Ľ��[ڂ ��2���M��9�ac����#z(r_ʌ|����̵2ֆ�)H��{�n2��p�<Mv��DM6�Ti�8�#�n��1�*�p<�� F �rtmiS��dO�cV��D2�o��F8+�d�^�z��NAS����?�M��b���)�bm�צ ��)�.�ˤLLO�DRR��A��;9w�CF|�ąT6��F=FQ�I���H����96g����U�w��YX������?z�s�w�G{���h ����0�R���5�384b���ʡ'|�P"�"[}�/$Tb�V[f��At�W����F����֌�X@���U�k
[�܇<(�Ё,^_����s�u�x�f�<��^�=Ȧg�[�˟u��WwH��g�^O��E���Qޕt��k΢s��Q�"���H�b[��3��#�U݉�Q����L�(��!F�Ɇ��s<�ޠ������U3�WR�}�<QH�����,��-�Bhi�;j��xDoG3S
�̵2;W�B�q��$�]S��K6�/�x_�n;<C�ɍ�k��Ah.=��Q_�y8�#ׅ�koo�?���<�f��[�6�G����p��d6E;��ȣ���<�)'�%%���fI=��,�0���Svrt��@��"OK�#� hgŊ���$2ZD���C�IIki�U �\�9�<���y��=]�-1�֝fA����Ew!�3�e �y@4�!�H}tԭ����I����7����!��=�룡��}�k���^��x�p��=��^L=��g_{ˮ�00�]�I�l��OV��y��˒'ߑ�>���+ԯ�a�ʍ��x/ƨoyD��sw�s��m�i�+F K���a�e(���|�g��J��'�Yǁ�f9�폕d�.�Z���5^�����s��-�62�o��&NXE<���i"��mm˓�Ӣ������X&�yǡ��e8C�9}H땾"Q��O�
	^*�8��n�ǃ�i���|�;ZW#�2�3d�j�X,��"�ϓ("�IEH�<���`��Rxc��O�z�?�R��c,�<�qq�A�u�A�s��*�F�Xf#ʈ"�ǔPtZ.n�<<($��;�ō�2+=ট���#�~\Y�ZZ\���������2�<يvhN�վU ��OxSV�r�VN�|�?�Y��vt��q:��{���o��}�d˳���W�C��s	���de�L�t�����'e��S�7�5�e��mWP�,�搇��\ʍGi����F�6�5I,��2��~�?wa�]�Y:2�ߛ�k��#ꕮ��ɍ �@�����N�3����v�o;������܄��C\'��ɭC�f+f�e��<�c�	�Ue�N����Z9�0m��_�[�̼,� �eODt��io%˃���̃lu��we����j��C����Lg�t>�!]�^L!<���e��ց��OS��ı"��H�cC "���Q��{]� S
�櫗�&8`�Or�(DgF���x����Ru�`�K"L��9�!%��֤�5ܻ�=������K}��T�rV�GTZF�O@��X---�\�K��BN��<B{�S#8k��|C���#��;Y�e<��x0�|��      +      x������ � �      '   �  x��Zˎ�]��V���$�dH��ؐ�į A ����,����Ye�_�.�,��.�.�'���s��J
02`�vf#����{�}�{���ό�|�ʶ;tliTe�#�iwe�ك�k����6�Ń�d��l2Oƫ_���d� [���e>_��l�ZN�����]}��4ꋏTgJ�xU��W���z����w�|s�����Nu�(b��Q�� �F=��뭳�yU۠����B��Ѫ�}����7x�G�!�*��U��J;Y�Zݔ�����R=��w `@E�[�62�l��Â҆�b�3���ObW�������ܩ�Be�#�T����n5�q���	�<
`���eiu�U�)Y���r�|W����K�K��������{x4=�ܝCO��`�y�Q�����Dl�֓�j5�^D�6c#�g�s-���QJ��LIe?���4�1����
�[��Y��	�Ƈd�v�C�u� C�u	�g�U�SG��@�B�vyzn+��M�C:h��)#�l�yg�?���У���_�u�Ӫ���w0�F\d��:��0cY;��q��[���������^��ƛ�AHnlE�zF����
$�nc��e`���_D�����V=5md#��W�o����x�����џ�6��s��dz8y���C�:���Z�ψ&�t<MQ��I�+ؔ���JM�:Z��[<�pǁ�m�RD���� $��C����Ӟ�3o�cl�
�H7ؽ���~?H�� A�,te�6��3\���j��/��|<,�	�������g�F�&,�u����β��L)i=�&
��#P ew��9�F,<0�e����4�*"��껐
Adf2������W�x:G� n��K��K~�bJz�U*��>T֙���OV�Q~�$"�TI6l�
�j5��n2��L'�<����$[O&��\2��1��� �t����ngzP �?VH1��ft��A$�~��.��Ls���/�P��Y�+̥s0%�F��I<!�A��5=�l�3�
L	��rh�S%��R}�BkJTD|�x�zg̯�{H�\!�;��8X�2%J%k=���5���Z��uִ�RR.��D�$���F�z��{�y�8��֮S~����]r��=�l6����|���%8@~���1���8�ɺ��FOb�z���R�G����U�ؖ��A��H��M������U{����~�F�g��da� ��[I#����_� �~�t��,}H5%;��u�X��X�T~7��E��lo���,�O�tEKV��ݦ�F������jlˣO�����hy�8�D��P�
]�i40�/��y���ی�&c��эe���yX�0[$�c�r��?R����2)��#�db��J����n��uM@�$#�z�#��Fo[�yр$���b�.[��c���ӧc�Ү z0�����8�A��h��?�F����|o�R��x���'3@�����JW�av�sgliW�{�� ����hu�\�(xG�~�r��h�g�Y>��W�,�,�R�ANkv>��}�˓j݇�ls�c .���nȅ6�Z�Ig#x�:�&ڦ�G��� |:$A6���C��2lѰIgjǍ�	,M`Ų�_u�FI��ܮ��ͭSzq�S��w��g�Jq�a��M�\j�x'�̝�AK��,}��̘$���#��ҟ�=���������.��$��!P�Y���i��f�u���YHZ���v?�W�)�{��A������5)��C]v�ǨGw�z��Η� C��b����:���&�0M�tW궰1��~K^@�ؘz�,̦�9A�b��J� �1����x�M�'Ö��5�|<]��4�gK�:��P�Ӂ �8I�&At�}g\�e�)0�9B���{Rg.����ȥ�F�/0�%��0yV#��9��ƥG��8h (��o���1	�`�M�w��yJ��#1D�o8qBP�ک��$R�e�n��S�=���G��-e��}a9i���s2�������j�r}��H�'�GYFB�J������e�x�xA��W��b2����M�Qt2(�_W'%��~��D�ܡBE-s֭�����9�W�Ʊ!L��af��@�x!E<i�+��/i1�njS��M��^(�{q����N<@�_o$��d
v��>�l��İ��ه`�>�;�^���h��/ӎd�!�L
��ny6�e��r=�d�U��Jϼ�k[��jlMLy���i����~T�M�R����t��i��9*��4�7�p�9Kw�z�ᵃr�Hr�*c��$����m��!�(���"W�tͺ��n�Żo�F�2��'y���31�o}�6L85��%}��1�':��x~�����D��J4��m�{B����
_���/K�H��G?{$p%�VWv��m�K���(����Ӓ}^d�'�@��(1�[��昨9h�Ot�-_2K����`��2���2xIe�z9ߓ��>μ5�=�f�������>�es�p<x�퉆�M�;��j9]���b�XΦ�!oa p)�u ��ti�t!�>�A�.��I�Bvv(;Kx����g�#���$]�{�4��d$��i�=\��L;H2]<̺��A:֛;V �DWs���H���;n��T�{
��T�%�����?x�-���IiS��{C�N^=Q��L�9�KndJ�����?s~+�������{��أ,OuE�����M�w
�|5^���:�7���ޞw�g���k�^^ �)�F�9A��o�~K���_(}����p�ǆ�0xw=�4�����$��4�ו2T/�}�o���5��2o��N^u��?yG�Aɉ���1�Ԝܰ��r<GgB�H��ò}�a��n8�����c�Y�����ƛ�KR���[oq(��R����t����~�B����F��E�+��u�7�g+��&)ȕȇ�WQr�̗��!���Zyg!ݯ���7V��^R.��	|;]/���dL�x�(s��@��������5$�MO\����Ã�=�Ɔ6]@ӝ�72��JQ� A��6i�%�}Ȟ���ٗ�~����U��z�p֝�e�Sg}Q�_���f��z>YN���r `����٤�LiY���rˡΫ��>}ˡ+���ӛЊ.��)�,��VW���ޢ�P����06:V�7����t9��<^�      -      x������ � �      �   D  x��P�R�@<O�����fC�$��u�<1	���cH������Ѫ���>�TGx%�@�5DjI���m%Q�ӂ-����\���y8��7_8����J���@�NC[x���`B,hj B�0 ��0�<���=s�F�O� �05A��˜����f2��Ʈ���1^�#�XVؗ���2�\�%<?�e��2	C��W�׉��J}A�ʂ�;���玐`PL�π�����]�����˟�#�A�+%uW4��Mz��?��u'9VX�4��L�mKe=�fbkW��K�|<l�bڍ��y�?���i�)&.      /   �  x��[ˎ�]w�	����M K~(�d9��
 ���݌��2�X����!?��� Yed���$�\V�F� ����xI�ǹ�^rƽ��n�u�E��k���=�U�u^?h���<��Fo���p4\��e2��Ƌ�t�Ϧ�ד���Oծ��SZ�M0M�W~�
�Lq�rS�И\��n�/�)l]k�]��[��P5^m�����B��bn\S�&��Ne���0��5����Jyλ�!ح�2��+c��E�|P�7{
:3j����A�5�Gꡪ��l����.מ�F�W�Xua�=�(/����T�YY�������v6���d�.��9�����Jy���o��W���Io������#���ݗ��-<wEϝ����j9\Mg��d�'��3�Qz)m��QY�<~��AE�c2<wf篬�CQh�mԅQ�YVF�$y[�l�-c �f&�s����48�ed*{e5fs��٥��r�2�$���Z9]g�X<0Vվ��*�R�E΅��<�����;lO���(��+k�h��:�V�g�(�c���۩u�Ūܷ�l�|��^��T0��b4濶���p �v�5����'Uߑ����S�Z�_CM �\��3�1N}q~�-���r8���@�q�����3�
[.�~U z�F��;r��h6��a0�S���a\Ǉ۠� o�m��Ŭ�lCHR �+��"
��e6������5h��������s�U��3R̢�ʆ��t���g��~����շt���}p"J���?��qP��Yf�� 9���@Z��Y/�zK)��v -�Y����0VN:��uܟ��8�B�B�/	��d6\�F��h�\JH�W������j����dj�2��)��Ƴ{�A�k�&�Ҁ��O��p_i��?��f�jZ�ʯ�|��a$��W�fM���J~�8�UK@?��E)@Ӎ�X�C���@O4=u���y2����t3>�b%�8%�_`%�w�k�6��0i@]hP�$
��{qV>��u�s ���?�ZVc<�6q�δ�ap��}����{_EE���ZJ6u���}��/���|�_��t>[I�|�4��~�`�S�>%��ta�(/�Ě
��?�z` e�ՁO->o�s ��@�;t2���:�g�P�!V|��t��לl�e�(�7r���#��p��6֙��M�Y.�0���.h�D`��$(��!�Uv�^�[Rt�~G��7�u0ocI�L�6q#��4}G��/z_��n����D8�p������C��CV��Pm#A��g�D�zh���uzfj�<�nn;���XU��ہA6v =Ľ'F&����&p'��%1'Ŕ�?�i�j�j]d�+�``O:4�h�vk�*`�<���Ҧ��!p�iBT4�:8�	�N�D٭ͣ��|ܒڜ���CZ(�]G����:�r�OF|�p@ŭߌ����H��e�sA��|�Y"BV��lk4\�&��r=]K�|���,�A�P��ٲ"x����� : ;�0v%�}��vL���J����r�r̈́p` u�B�HKs���I�s'���Y�$Fm�|����c�ÒLPC$L�W6H ʘ����dmds���KL p	ة�-}k�D�OnJ�"�=�P?\]���.!�L�}qJ�Vٺ�
ֹX�i���� BN��3]�W�'��dj���.Jd�x>�:n&��l��׋�j6]$��
�\���yײҒ�g͸��J�ɤ��"���$�|�n�%5�q�<�Aw�څ1o�ľ�:	� (��H��s�}�|��ru�g��#]�k�f�b�N&���,/�#�{.�XH/`�3g�թOmi��c���W���S5�w^X�ME�ND��qa�k,�"}��!sR�]����=�q�P~�cq��X-&��d�:���C%4#u��C]q��	<���a�a���2�i��Fڊ�I�۳��,�  �F��H�ZK=��h����H�p��cv�j��#5M�|�����&7��N.����rp���,�S��:N}U0d} /ǎ%a���L̶I�=2|.�t<��,���K݉>C��oej1�Tr����x�{�!:{�>�oo��ќG$���n8x��o�<��`��!�P��!�{��7�+V�zAc3fp 6�Z.[���)	z�:n��)����;lP������E}���~�'Ū0�OE|��w�e����"�͐C��h�itD�m�uz�v>"���5�BP�҄���������(�s�����)�
I{�)ˮ ��gl�e7&�,��mM(-�AB8����u�I�w���x�{	�;r� $�M[X�f�������n��#n*����!ee�K�m�3����V�A�+踶Eh�b��s='c3�#�]ڶr���	J&p��4��/ mG�
�[H'��9��N=}��%������I��OE��i҉	lt{ϧ��|<��G��z��	>=�{��>2�m�D���v]R:0�)��O���V�]f/M/��uv�w ���]êds�����n��0VK3���1�lhH��Z],_;��yf�T�x}i�n����I>
ɼ���!�uR�����mW��<�D��Z-	� [�<C�U 甾���I�w���x��% �-����Dr8�@��
��bv<_?t�nR��z�\����j4ZOG)��P��0��7~�6u���*�,bO;�F�"]1X�湨v�t��Ğ�1_�g��$i�;k���7�`�����Q���|l?�r���-��mb����'���'_�C�z��z�z�PK�+���� vͶ��h+g��x�'v��W�S)%�g�p�wqr�#���w�}�T�k��?����%� )繾O
����c���v��j�XO��rX�4�CS��xy)�2�!P��߹��Q:6t��rn����w��q�O9���YǅJ�j��/�����Q���JR���G��P�m�]ij<7-t(7c�R���q�����<��-�(�Cv���@�'�;�#-
;�x��ܠ��a��s�!�&Y9��g���{/P4���@�9{>[Lg��p1��7���'җj4H���!�y��ܕ���'�h���m�y�8��;ݝ^����R�SK��9����Z吢��@7^��&�����f#�`�F�$�$O�T?e׶J���6h�^.�0�񞌒k^H������8,�N=g���9]L�0��e�M��R�ួ���x&-��a��G��K�}7���y�Α�NgDğ�}�L���z4�HԌ)R^�Cw�'dJ�ʀu����	IW�S��L-'�&�����}</���H���R���>���?^��7r��~|{D�͖��|D�<[�)'�Di���C�-��s}~9`�Kr�=�i@����]K��:3�)�}/����*w2P|;�ѫ4������%M�Λ�r��̓�"��Ņ���a���%����	��/]HeS6.J�]V�/#�	D���ޔÔo�SQ)�<�)x� �ِ��kյT)��c�LAi0׍D{R��)�?^���/�� V����(�QLhy%��q3]�f��p��LW��b�29/�l�/�*�u�s�&2xLܬ��F���M�Eλ���-��S|�@�Յo�W�P��s�1��Km���Qo��� �5�OG^�q�-���2.��5��l 	�v�wm�����x4�#')��m�}�$�5O�l��g�����?]�5���b���~��wOj����x����{��     