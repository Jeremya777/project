PGDMP                      	    {           progetto    15.2    15.2 �    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
       public          postgres    false            �            1259    26133 
   animazione    TABLE     �   CREATE TABLE public.animazione (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.animazione;
       public         heap    postgres    false            �            1259    26132    animazione_id_seq    SEQUENCE     �   CREATE SEQUENCE public.animazione_id_seq
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
       public          postgres    false            �            1259    26142 	   avventura    TABLE     �   CREATE TABLE public.avventura (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.avventura;
       public         heap    postgres    false            �            1259    26141    avventura_id_seq    SEQUENCE     �   CREATE SEQUENCE public.avventura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.avventura_id_seq;
       public          postgres    false    226            7           0    0    avventura_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.avventura_id_seq OWNED BY public.avventura.id;
          public          postgres    false    225            �            1259    26124    azione    TABLE     �   CREATE TABLE public.azione (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.azione;
       public         heap    postgres    false            �            1259    26123    azione_id_seq    SEQUENCE     �   CREATE SEQUENCE public.azione_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.azione_id_seq;
       public          postgres    false    222            8           0    0    azione_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.azione_id_seq OWNED BY public.azione.id;
          public          postgres    false    221            �            1259    26151 
   biografico    TABLE     �   CREATE TABLE public.biografico (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.biografico;
       public         heap    postgres    false            �            1259    26150    biografico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.biografico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.biografico_id_seq;
       public          postgres    false    228            9           0    0    biografico_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.biografico_id_seq OWNED BY public.biografico.id;
          public          postgres    false    227            �            1259    26160    commedia    TABLE     �   CREATE TABLE public.commedia (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.commedia;
       public         heap    postgres    false            �            1259    26159    commedia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.commedia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.commedia_id_seq;
       public          postgres    false    230            :           0    0    commedia_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.commedia_id_seq OWNED BY public.commedia.id;
          public          postgres    false    229            �            1259    26169    crime    TABLE     �   CREATE TABLE public.crime (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.crime;
       public         heap    postgres    false            �            1259    26168    crime_id_seq    SEQUENCE     �   CREATE SEQUENCE public.crime_id_seq
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
       public         heap    postgres    false            �            1259    26178    documentario    TABLE     �   CREATE TABLE public.documentario (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
     DROP TABLE public.documentario;
       public         heap    postgres    false            �            1259    26177    documentario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.documentario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.documentario_id_seq;
       public          postgres    false    234            <           0    0    documentario_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.documentario_id_seq OWNED BY public.documentario.id;
          public          postgres    false    233            �            1259    26187    erotico    TABLE     �   CREATE TABLE public.erotico (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.erotico;
       public         heap    postgres    false            �            1259    26186    erotico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.erotico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.erotico_id_seq;
       public          postgres    false    236            =           0    0    erotico_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.erotico_id_seq OWNED BY public.erotico.id;
          public          postgres    false    235            �            1259    26196    famiglia    TABLE     �   CREATE TABLE public.famiglia (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.famiglia;
       public         heap    postgres    false            �            1259    26195    famiglia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.famiglia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.famiglia_id_seq;
       public          postgres    false    238            >           0    0    famiglia_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.famiglia_id_seq OWNED BY public.famiglia.id;
          public          postgres    false    237            �            1259    26205    fantascienza    TABLE     �   CREATE TABLE public.fantascienza (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
     DROP TABLE public.fantascienza;
       public         heap    postgres    false            �            1259    26204    fantascienza_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fantascienza_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fantascienza_id_seq;
       public          postgres    false    240            ?           0    0    fantascienza_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fantascienza_id_seq OWNED BY public.fantascienza.id;
          public          postgres    false    239            �            1259    26214    fantasy    TABLE     �   CREATE TABLE public.fantasy (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.fantasy;
       public         heap    postgres    false            �            1259    26213    fantasy_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fantasy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.fantasy_id_seq;
       public          postgres    false    242            @           0    0    fantasy_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.fantasy_id_seq OWNED BY public.fantasy.id;
          public          postgres    false    241            �            1259    26223    giallo    TABLE     �   CREATE TABLE public.giallo (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.giallo;
       public         heap    postgres    false            �            1259    26222    giallo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.giallo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.giallo_id_seq;
       public          postgres    false    244            A           0    0    giallo_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.giallo_id_seq OWNED BY public.giallo.id;
          public          postgres    false    243            �            1259    26232    guerra    TABLE     �   CREATE TABLE public.guerra (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.guerra;
       public         heap    postgres    false            �            1259    26231    guerra_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guerra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.guerra_id_seq;
       public          postgres    false    246            B           0    0    guerra_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.guerra_id_seq OWNED BY public.guerra.id;
          public          postgres    false    245            �            1259    26241    horror    TABLE     �   CREATE TABLE public.horror (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.horror;
       public         heap    postgres    false            �            1259    26240    horror_id_seq    SEQUENCE     �   CREATE SEQUENCE public.horror_id_seq
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
          public          postgres    false    217            �            1259    26250    musical    TABLE     �   CREATE TABLE public.musical (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.musical;
       public         heap    postgres    false            �            1259    26249    musical_id_seq    SEQUENCE     �   CREATE SEQUENCE public.musical_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.musical_id_seq;
       public          postgres    false    250            E           0    0    musical_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.musical_id_seq OWNED BY public.musical.id;
          public          postgres    false    249            �            1259    26259 
   poliziesco    TABLE     �   CREATE TABLE public.poliziesco (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.poliziesco;
       public         heap    postgres    false            �            1259    26258    poliziesco_id_seq    SEQUENCE     �   CREATE SEQUENCE public.poliziesco_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.poliziesco_id_seq;
       public          postgres    false    252            F           0    0    poliziesco_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.poliziesco_id_seq OWNED BY public.poliziesco.id;
          public          postgres    false    251            �            1259    26268 	   romantico    TABLE     �   CREATE TABLE public.romantico (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.romantico;
       public         heap    postgres    false            �            1259    26267    romantico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.romantico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.romantico_id_seq;
       public          postgres    false    254            G           0    0    romantico_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.romantico_id_seq OWNED BY public.romantico.id;
          public          postgres    false    253                       1259    26286 
   spionaggio    TABLE     �   CREATE TABLE public.spionaggio (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.spionaggio;
       public         heap    postgres    false                       1259    26285    spionaggio_id_seq    SEQUENCE     �   CREATE SEQUENCE public.spionaggio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.spionaggio_id_seq;
       public          postgres    false    258            H           0    0    spionaggio_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.spionaggio_id_seq OWNED BY public.spionaggio.id;
          public          postgres    false    257                       1259    26295    sportivo    TABLE     �   CREATE TABLE public.sportivo (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.sportivo;
       public         heap    postgres    false                       1259    26294    sportivo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sportivo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sportivo_id_seq;
       public          postgres    false    260            I           0    0    sportivo_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sportivo_id_seq OWNED BY public.sportivo.id;
          public          postgres    false    259                        1259    26277    storico    TABLE     �   CREATE TABLE public.storico (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.storico;
       public         heap    postgres    false            �            1259    26276    storico_id_seq    SEQUENCE     �   CREATE SEQUENCE public.storico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.storico_id_seq;
       public          postgres    false    256            J           0    0    storico_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.storico_id_seq OWNED BY public.storico.id;
          public          postgres    false    255                       1259    26304    thriller    TABLE     �   CREATE TABLE public.thriller (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.thriller;
       public         heap    postgres    false                       1259    26303    thriller_id_seq    SEQUENCE     �   CREATE SEQUENCE public.thriller_id_seq
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
       public          postgres    false                       1259    26313    western    TABLE     �   CREATE TABLE public.western (
    id integer NOT NULL,
    titolo character varying(255) NOT NULL,
    immagine text,
    linkvideo text,
    trama text
);
    DROP TABLE public.western;
       public         heap    postgres    false                       1259    26312    western_id_seq    SEQUENCE     �   CREATE SEQUENCE public.western_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.western_id_seq;
       public          postgres    false    264            L           0    0    western_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.western_id_seq OWNED BY public.western.id;
          public          postgres    false    263            !           2604    26136    animazione id    DEFAULT     n   ALTER TABLE ONLY public.animazione ALTER COLUMN id SET DEFAULT nextval('public.animazione_id_seq'::regclass);
 <   ALTER TABLE public.animazione ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            "           2604    26145    avventura id    DEFAULT     l   ALTER TABLE ONLY public.avventura ALTER COLUMN id SET DEFAULT nextval('public.avventura_id_seq'::regclass);
 ;   ALTER TABLE public.avventura ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226                        2604    26127 	   azione id    DEFAULT     f   ALTER TABLE ONLY public.azione ALTER COLUMN id SET DEFAULT nextval('public.azione_id_seq'::regclass);
 8   ALTER TABLE public.azione ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            #           2604    26154    biografico id    DEFAULT     n   ALTER TABLE ONLY public.biografico ALTER COLUMN id SET DEFAULT nextval('public.biografico_id_seq'::regclass);
 <   ALTER TABLE public.biografico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            $           2604    26163    commedia id    DEFAULT     j   ALTER TABLE ONLY public.commedia ALTER COLUMN id SET DEFAULT nextval('public.commedia_id_seq'::regclass);
 :   ALTER TABLE public.commedia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            %           2604    26172    crime id    DEFAULT     d   ALTER TABLE ONLY public.crime ALTER COLUMN id SET DEFAULT nextval('public.crime_id_seq'::regclass);
 7   ALTER TABLE public.crime ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            &           2604    26181    documentario id    DEFAULT     r   ALTER TABLE ONLY public.documentario ALTER COLUMN id SET DEFAULT nextval('public.documentario_id_seq'::regclass);
 >   ALTER TABLE public.documentario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            '           2604    26190 
   erotico id    DEFAULT     h   ALTER TABLE ONLY public.erotico ALTER COLUMN id SET DEFAULT nextval('public.erotico_id_seq'::regclass);
 9   ALTER TABLE public.erotico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            (           2604    26199    famiglia id    DEFAULT     j   ALTER TABLE ONLY public.famiglia ALTER COLUMN id SET DEFAULT nextval('public.famiglia_id_seq'::regclass);
 :   ALTER TABLE public.famiglia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            )           2604    26208    fantascienza id    DEFAULT     r   ALTER TABLE ONLY public.fantascienza ALTER COLUMN id SET DEFAULT nextval('public.fantascienza_id_seq'::regclass);
 >   ALTER TABLE public.fantascienza ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            *           2604    26217 
   fantasy id    DEFAULT     h   ALTER TABLE ONLY public.fantasy ALTER COLUMN id SET DEFAULT nextval('public.fantasy_id_seq'::regclass);
 9   ALTER TABLE public.fantasy ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            +           2604    26226 	   giallo id    DEFAULT     f   ALTER TABLE ONLY public.giallo ALTER COLUMN id SET DEFAULT nextval('public.giallo_id_seq'::regclass);
 8   ALTER TABLE public.giallo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            ,           2604    26235 	   guerra id    DEFAULT     f   ALTER TABLE ONLY public.guerra ALTER COLUMN id SET DEFAULT nextval('public.guerra_id_seq'::regclass);
 8   ALTER TABLE public.guerra ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    246    246            -           2604    26244 	   horror id    DEFAULT     f   ALTER TABLE ONLY public.horror ALTER COLUMN id SET DEFAULT nextval('public.horror_id_seq'::regclass);
 8   ALTER TABLE public.horror ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    248    248                       2604    25293    messenger_messages id    DEFAULT     ~   ALTER TABLE ONLY public.messenger_messages ALTER COLUMN id SET DEFAULT nextval('public.messenger_messages_id_seq'::regclass);
 D   ALTER TABLE public.messenger_messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            .           2604    26253 
   musical id    DEFAULT     h   ALTER TABLE ONLY public.musical ALTER COLUMN id SET DEFAULT nextval('public.musical_id_seq'::regclass);
 9   ALTER TABLE public.musical ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249    250            /           2604    26262    poliziesco id    DEFAULT     n   ALTER TABLE ONLY public.poliziesco ALTER COLUMN id SET DEFAULT nextval('public.poliziesco_id_seq'::regclass);
 <   ALTER TABLE public.poliziesco ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251    252            0           2604    26271    romantico id    DEFAULT     l   ALTER TABLE ONLY public.romantico ALTER COLUMN id SET DEFAULT nextval('public.romantico_id_seq'::regclass);
 ;   ALTER TABLE public.romantico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            2           2604    26289    spionaggio id    DEFAULT     n   ALTER TABLE ONLY public.spionaggio ALTER COLUMN id SET DEFAULT nextval('public.spionaggio_id_seq'::regclass);
 <   ALTER TABLE public.spionaggio ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            3           2604    26298    sportivo id    DEFAULT     j   ALTER TABLE ONLY public.sportivo ALTER COLUMN id SET DEFAULT nextval('public.sportivo_id_seq'::regclass);
 :   ALTER TABLE public.sportivo ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    260    260            1           2604    26280 
   storico id    DEFAULT     h   ALTER TABLE ONLY public.storico ALTER COLUMN id SET DEFAULT nextval('public.storico_id_seq'::regclass);
 9   ALTER TABLE public.storico ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            4           2604    26307    thriller id    DEFAULT     j   ALTER TABLE ONLY public.thriller ALTER COLUMN id SET DEFAULT nextval('public.thriller_id_seq'::regclass);
 :   ALTER TABLE public.thriller ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    261    262            5           2604    26316 
   western id    DEFAULT     h   ALTER TABLE ONLY public.western ALTER COLUMN id SET DEFAULT nextval('public.western_id_seq'::regclass);
 9   ALTER TABLE public.western ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    264    263    264                      0    26133 
   animazione 
   TABLE DATA           L   COPY public.animazione (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    224   ��                 0    25305    articolo 
   TABLE DATA           �   COPY public.articolo (id, titolo, sottotitolo, data, video, sottotitolovideo, puntichiave, versioneaudioarticolo, testoarticolo, videoarticolo, sottovideoarticolo, categoria, immaginearticolo) FROM stdin;
    public          postgres    false    220   V�       	          0    26142 	   avventura 
   TABLE DATA           K   COPY public.avventura (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    226   ��                 0    26124    azione 
   TABLE DATA           H   COPY public.azione (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    222   t�                 0    26151 
   biografico 
   TABLE DATA           L   COPY public.biografico (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    228   ��                 0    26160    commedia 
   TABLE DATA           J   COPY public.commedia (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    230   :
                0    26169    crime 
   TABLE DATA           G   COPY public.crime (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    232         �          0    25259    doctrine_migration_versions 
   TABLE DATA           [   COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
    public          postgres    false    214   �$                0    26178    documentario 
   TABLE DATA           N   COPY public.documentario (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    234   X%                0    26187    erotico 
   TABLE DATA           I   COPY public.erotico (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    236   �3                0    26196    famiglia 
   TABLE DATA           J   COPY public.famiglia (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    238   qA                0    26205    fantascienza 
   TABLE DATA           N   COPY public.fantascienza (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    240   �E                0    26214    fantasy 
   TABLE DATA           I   COPY public.fantasy (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    242   OT                0    26223    giallo 
   TABLE DATA           H   COPY public.giallo (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    244   a                0    26232    guerra 
   TABLE DATA           H   COPY public.guerra (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    246   (p                0    26241    horror 
   TABLE DATA           H   COPY public.horror (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    248   9|                0    25290    messenger_messages 
   TABLE DATA           s   COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
    public          postgres    false    218   ߉      !          0    26250    musical 
   TABLE DATA           I   COPY public.musical (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    250   ��      #          0    26259 
   poliziesco 
   TABLE DATA           L   COPY public.poliziesco (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    252   ��      %          0    26268 	   romantico 
   TABLE DATA           K   COPY public.romantico (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    254   ��      )          0    26286 
   spionaggio 
   TABLE DATA           L   COPY public.spionaggio (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    258   {�      +          0    26295    sportivo 
   TABLE DATA           J   COPY public.sportivo (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    260    �      '          0    26277    storico 
   TABLE DATA           I   COPY public.storico (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    256   =�      -          0    26304    thriller 
   TABLE DATA           J   COPY public.thriller (id, titolo, immagine, linkvideo, trama) FROM stdin;
    public          postgres    false    262   ^�      �          0    25266    user 
   TABLE DATA           �   COPY public."user" (id, username, roles, password, nome, cognome, ruolo, nomeazienda, indirizzo, cap, citta, provincia, linguapreferita, telefono, cf, cellulare, fax, sitoweb, email) FROM stdin;
    public          postgres    false    216   {�      /          0    26313    western 
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
          public          postgres    false    263            E           2606    26140    animazione animazione_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.animazione
    ADD CONSTRAINT animazione_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.animazione DROP CONSTRAINT animazione_pkey;
       public            postgres    false    224            A           2606    25323    articolo articolo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articolo
    ADD CONSTRAINT articolo_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articolo DROP CONSTRAINT articolo_pkey;
       public            postgres    false    220            G           2606    26149    avventura avventura_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.avventura
    ADD CONSTRAINT avventura_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.avventura DROP CONSTRAINT avventura_pkey;
       public            postgres    false    226            C           2606    26131    azione azione_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.azione
    ADD CONSTRAINT azione_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.azione DROP CONSTRAINT azione_pkey;
       public            postgres    false    222            I           2606    26158    biografico biografico_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.biografico
    ADD CONSTRAINT biografico_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.biografico DROP CONSTRAINT biografico_pkey;
       public            postgres    false    228            K           2606    26167    commedia commedia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.commedia
    ADD CONSTRAINT commedia_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.commedia DROP CONSTRAINT commedia_pkey;
       public            postgres    false    230            M           2606    26176    crime crime_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.crime
    ADD CONSTRAINT crime_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.crime DROP CONSTRAINT crime_pkey;
       public            postgres    false    232            7           2606    25264 <   doctrine_migration_versions doctrine_migration_versions_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);
 f   ALTER TABLE ONLY public.doctrine_migration_versions DROP CONSTRAINT doctrine_migration_versions_pkey;
       public            postgres    false    214            O           2606    26185    documentario documentario_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.documentario
    ADD CONSTRAINT documentario_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.documentario DROP CONSTRAINT documentario_pkey;
       public            postgres    false    234            Q           2606    26194    erotico erotico_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.erotico
    ADD CONSTRAINT erotico_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.erotico DROP CONSTRAINT erotico_pkey;
       public            postgres    false    236            S           2606    26203    famiglia famiglia_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.famiglia
    ADD CONSTRAINT famiglia_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.famiglia DROP CONSTRAINT famiglia_pkey;
       public            postgres    false    238            U           2606    26212    fantascienza fantascienza_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fantascienza
    ADD CONSTRAINT fantascienza_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fantascienza DROP CONSTRAINT fantascienza_pkey;
       public            postgres    false    240            W           2606    26221    fantasy fantasy_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.fantasy
    ADD CONSTRAINT fantasy_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.fantasy DROP CONSTRAINT fantasy_pkey;
       public            postgres    false    242            Y           2606    26230    giallo giallo_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.giallo
    ADD CONSTRAINT giallo_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.giallo DROP CONSTRAINT giallo_pkey;
       public            postgres    false    244            [           2606    26239    guerra guerra_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.guerra
    ADD CONSTRAINT guerra_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.guerra DROP CONSTRAINT guerra_pkey;
       public            postgres    false    246            ]           2606    26248    horror horror_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.horror
    ADD CONSTRAINT horror_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.horror DROP CONSTRAINT horror_pkey;
       public            postgres    false    248            ?           2606    25298 *   messenger_messages messenger_messages_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.messenger_messages
    ADD CONSTRAINT messenger_messages_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.messenger_messages DROP CONSTRAINT messenger_messages_pkey;
       public            postgres    false    218            _           2606    26257    musical musical_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.musical
    ADD CONSTRAINT musical_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.musical DROP CONSTRAINT musical_pkey;
       public            postgres    false    250            a           2606    26266    poliziesco poliziesco_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.poliziesco
    ADD CONSTRAINT poliziesco_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.poliziesco DROP CONSTRAINT poliziesco_pkey;
       public            postgres    false    252            c           2606    26275    romantico romantico_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.romantico
    ADD CONSTRAINT romantico_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.romantico DROP CONSTRAINT romantico_pkey;
       public            postgres    false    254            g           2606    26293    spionaggio spionaggio_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.spionaggio
    ADD CONSTRAINT spionaggio_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.spionaggio DROP CONSTRAINT spionaggio_pkey;
       public            postgres    false    258            i           2606    26302    sportivo sportivo_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sportivo
    ADD CONSTRAINT sportivo_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sportivo DROP CONSTRAINT sportivo_pkey;
       public            postgres    false    260            e           2606    26284    storico storico_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.storico
    ADD CONSTRAINT storico_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.storico DROP CONSTRAINT storico_pkey;
       public            postgres    false    256            k           2606    26311    thriller thriller_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.thriller
    ADD CONSTRAINT thriller_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.thriller DROP CONSTRAINT thriller_pkey;
       public            postgres    false    262            :           2606    25287    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    216            m           2606    26320    western western_pkey 
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
       public          postgres    false    265    218               �  x��Yˎ��r]�|E�%��Dֻ�F���z��gd��,V�H&;IVw�j~Àxe�[��?�/�9�d��a��;��t�q�ĉ`<8K�[�/��QesUغ1ީ���Kv'��'��'m�;��O�m[�����jE�h����x2��'�|��V��j9����d����*l����>yR���{�7j�O̓�e1-�.���8��M��n��a�Սu0.��݁���2�W��Tͧs�K�W���-m§��߼>;S�T������m]�B+�ߛ�i�V��y�RlZ�2��[��ǥ�Z�2մ�^U����Sz
�b���R������'�TX�ãx7�uu�E�����O׍ץU]6�.�H=�m����TՉ�����3��i���ɪo���K������]������a��f4���!���~>�T�Q�����+�
ۨ�z�}쭊�jå�ߺƿ�؇�`>�D��d��/���xv?
�d9��ۯ�r��w9ԛizk�!C%\��X�N�K��B�\-7౴����%Re6�4-���&�eD'6�n��i�$�M���Tr�2\����Y`̫G!Z��Y�H� �	о�_��0��Y ��>>e�{Ǫn���F���I�^����SYY'��uUY��C�b/Xjl���㑧�y��Sub���~ ����m4L{�#�<��%�îmn�r��%=���h��g��x���E6���4f��޸��0�_�bM?�D���u����Li��#���U�2�@t������� ��;~:C�<CG�ِ����dOi��u��p�G�ג!xh#��m��Nx���8��L�l��!��	/����N"8�5��{>ms�'pp\�ip�ڐ%�ѳ4��Oa�I-q��������KkL	X����,.	Kऎ���8��􊁞.�x��U�=���{�4�x5Y\Mǹ�� �+ͩ�Xf]	�;�E#�lg}�}���ǣǱ�DFٖ~K:g!K_!�x��~�I�tm�5�ȁ=8~/飽�ȥklo��y@39�sE[#mG�����$Gv.	�ez�U���P�`I�ģ�ᛩ��Y�rv�	�J��fHx��XRD�� �\q=6���'L9�B�|�k{;س�ۗ�>��KsP�����Su
y ;��>8��|<_·�e�&���ި����r��'W_/��u��9��O�?�=P�IWmyD�),���7X7��5e�[ �
��tl���dkL�iR����6R��]%ܘ�oܝ��
/ Y[��OA6��e���^g6���hIBQ_�eQ����^�)�t�e���V& i/BN�5 �U��' �F�}C��$/�A�Ű�m M,K�,{;���O:٩s'q>3N��j/b��b�D�����9�;�D�q�|��� ����V�1{��֪�4U�ڊa!�6dg�{�6��j���Lr<аj��(��p5Ԍ\���\e�~X|�SnC�S�es��$��!���K}�(
�2�k�]e?�Z�I�xt�}���v}P�P�]B	��]���e�i����s�b�B9��qO�xq�cg�^�������e1�E��b�Cy�A��)���L�:I�XF�3DE�Ȅ��� �%��d�-��f����?R?���l'R�Д�P;�~�K:%j��	�64�\�yҟ�C�@��4�N�����]����Ty)�tC����߈g���U��Ȋ\-�~�O��i:��΂����@��q[V �S5���\���N��zLZK~"�< �S�x-��*cͣ�_���/.7�E���������K�x�BىP��c�E�:J��>�5`3�T$���q�կ�"�g���l���X��z��Q�L�jǛ�H�#��#QhVHQ?uJ�Z!�\�D��:�6�iTV�e�w��98��5�!�4�]��FHb����@z���FC���#&(`��F�u��nL��������M���u�/��K��^CaWf��@nV���l/���j5�'��4�IY�j|�zVЪ�Za¶?~�g�ދ5��n�v�#�{�@(#]�Gl�L�������K�N`�-4i_�LU�F�����#���R���!��P���ݮ�t �{BOh9���%q�0P�������Qؙ��|ST��w��S\��q7�7���ެ�&�i<R��!��+���ETH�T�~*ش�tz	q��oy#���*Pz��YF�C�#��l5���_l>d�����a�!E�F���QU�SP��j�����P}��.�䨁�vls���nax�ά�,�ZoO��&�M�P�#���f-���g���f߫h�tV2,�W�#�i+��8�q�/jM̶X9qE��M��APG{�I��!=Q���gq6'�*1�w<�����b�`qarI���j���`,x�sG'�l�)��ߢ���Aޞ��GQ�>��].��0^L���$^ݛ�Y��QV��i�<S~QkwIR�)�%k8����)t�^R _nm��>HQn7�h�NK�=e�Te��2�����J�=h�˕�@���Ω�n�;J(sWRA���dD��t6���0����-⽾ٖ���Z%�.��;��͸��}*a��ow�޵j�H�S�
���/mLNX�t��)Mh����p��|T�/����
���:��5,BߛK���-S�'��������F���}��k䗬� ����l ��aC�@H��	k��lP���W�z��_]�2<��4�H���̜���w�O<�{t��`����@���Y�HOW��rM�t~���Y�f���p9Y�66/:�K�)=�끘�����E�p 1��?��:�G�J��H��ٟ�!șG��v ��l�Cw�qh�٠���ֹ�dF\�-�>'�G������7=%Y�#�䚂��4���&�'��3f+zB�R÷2%G��Ha�gQ@�dg�yCJ�P���'�ta"l��@��*�5ְO�Dz:`/!�3�����,g�h6/�¬�ӥ���9(��QPڵ&��7�@?¨g8��v��Lf�8��Ea�9��q2ɨH9��
a��r��""_XjZ�0,���[&�,=�tT���-< �A�4H��b����Z� �@鮼��:�9�����W�/sC��|�����Y�W�)\8�����L��<un������P&�42����P�Z�&�
QP�rԝ:����u�T'�L�/Pyw3�.�X���ʜR!��<����l坔�L/��nC���CZ�~�<�G�/�~�v�6?��ǋ�h��L��,�e�lwZ�"M����o��+ �j��H��\\����P�C��/_��M�i��(���a����%J��c�8C*��l�{A�RC횒�����;w��`�w��Z�KpKu�#Nd�� tSS�P�پ	���:�N�L�!�����Mfj4D�3�=E/mzC�M(�˸q��}m,�({f<`� ��5���?Pi�8��B��E�թ=Jq�-k5g�?}�z8�f8N�<-T����_��y4�~�>�Ϭ��� I�,��/36�2���Cx�I�Sb�ۇ��� 4ٷ�p@�U~5�C��Ap��9d�|�~�g�͉�4�4݈�d^�)�
-���2�:o=h������X���Dt.� $mbE${j� ����t�w]�M�<�f2X�g�
MM�EL� �0--��[Q]Jm9#0�������x�\Mס����ʣ����&D̷��T�TG�H�H����߂��ҺJS$����e�>R���&�0����'f+�&�[N��8@�����?�O��klʹv���,ɞ6h����5]�U�o��0���H�=����򥣑�&� �{F-�L�i)����9	S���s|"�z�pr��a���~�?8��         2   x�34���r�U����CGə��PfIjr^~N~zf"������ �n      	   �  x��YM��<S�勒
�~I�dI���ʥX�\�rU
���0�Ỳ��)#7s�-�[�O�K��0�J�x��AҒ��u�~o��N}c�ƫ�T��~�$���{��c�}2˲�Y6�&�%~��'���4���z�̧�<�/׫Y��x�V�}߷ݧO�t�5�`K�/���dn�1?�M�������w�t�w^����i�^��e�Ӫ��8g�ޘ`�u0M�q��7��{�}�>hUj���:4��[�V�O`�g�>uo/�G�A�f����h6z��V8Ua}���ن�_n��f�M�e������׏�9,g�v�F�5�
�m=ω4N���4n��j\�=6ݝ����Toƪ�J;����=�����.V��J���N��Z�R�g�V�`cW���'�K�����N����g�N:&h���n��#�x09�5��ӝ�ΙS.�~���>8���z>[M6��2���s�ܿ[_׽��AEH��3Vot��77��|�F�]�x
���Xw��
!��5w@H�chu�fW�M0���M��K�
��)�[�k��R��/Ń�Fj㑽Q�9^UV�����O��n�+��Fu� ם3a�1�����bؙ�����E�UaMA������T S5�!���u{����ag<s>ȅz�CJ����6JÏ�]���znu6v�X=�TO���o@zݘ̦�z1[,��"���mbx�yvL����*j0���i�#��q+@E�����Z�.했����H�kD���$�_���5WNۀ��G<�A��c��L�"�"l[&�d�^+�ۙ���/Gj�&-G`m�=�r�K(#�9��~e�p�^G�΃�����<��ӓ7��M'������4]ۦ�h�_��|[�T�zn���3	��P�b`���E,~P��$�>�O��wЛ#t�h 76⥑�I��7�J
Y���E]�?�5`�[������Y�!OĎ@! ���^�4�J��iך�jg;)6J�t�$G�[�Ξ�W.@ЅP����A{x~�km����lT�`4"[1�S�lbf��00}�����<�h@bP�=�b�J�f���&��b�����^�]��m��Yl�����d�"!�j�n ��R�8�3:mk�;�!�;��Q�Dg.���]k ǯ:�wP�mХ���D����;�Z���z��^c���;s�wĮW�i��v�k��B�����݈Q�=�٩�=Z_k���dC4w��=5:29[V? �DtZ-�|��֋�f��7���b�#���&���?�,a�o��9SlL*��i+�'�n����LL
�45^�?C"˔bx�[����k<�4��XT
�EM)�`S�J�+t�dk�Xc�GG�A��v��_;�zJ:ȇ���蹯*hD��C�<������"_���{ü˯�U�g7N�����ר�}o�SDՆ|�^$�P�-+9��5:�]�8Q�_������J�����������*`�<��;skˌq�V�0	d�s������L}�p_�'�%�0@�B�~?V_��{�q��V R��G�����	�OP��y!�ۭ���U���4Z��m� ��QF{!�S��YLm���nF�Z؆��R*H�u��6(�
´��oa���Y�Z�E�����S_��Q�J��xiSy}h�w��B�ޣ���@Ą"�v����$��M���IrK��j�$�YZL:�s�9@:4p��1�=���1����Ki�8��q�2<�
�!E���31�P��#�RC�lMf9�O҉P�,��H�$����tL�d�n�p���m-K!����>�v���wD��aoBy�?�%>�O���*��x���W˼�����Ѥ��.A{maW��5��0�[z#�<-�X��|�Pz��q�����sD�*������IM��ė;xf1Ԯr�z���8!VBHر2�r2iZu�3�9�j��c b�U�Nu�����_Jv�$�vz�oM'}h�y�M2�'�D{Ǥ�.�W×4r��H����x:zѨײ�s�| �V�8o���4[����~6;뷳�|�]F��݌�t����1owF��|�q��8}�le�&��`#i�PH�}j��:�y�-,<�!�^Q�6/���@$�?�J��0R[�! 	,�{!)	a-~�$�H̞�w�n|���%Q=hy"�P@�RC�H�z:C���/d�Ra��$����& ��	W�Z�,���g��,�%X��> Z�_$=!R�����|9�L�l�g�2
	[t�&_/��H��'kc�T�#�����B�����B濡H;7V�2yj9�2�X�Bl���#�OnRl���ii�X��/MQ�0�M�V��!�z��|����b�B��'&<�R$������s,[��6eq��-=�6һ��1�lM����at� ?GѼ�z�)�ϰZ���7B>��'��r��W��5�N���ۚ:;J!��P�)a��@���;q��7�^�O94	�U�"�^įFU5�iZ����=�0�d�`о�6Hk�ى��2�#��iV��Qt�X�Z���"v&U!!7���J*7������vȦd�<R��p�~�������r���0
��|? �9�`}],���z�e�M>����7�/v��V���ڐ<"%���50�N+z���ߎ�PI<�	������E�7��؇�Z� �@a"K��Ca� ��C�ɘ�`��NJ�lٲ3�r������p920�'�q���^ �k��6�Mb[B�%�׬~�Rh,ܟ���h�(�L��"�X+1_LԆ�����荅�����}�\g��f�����QX����~�B[^_�F�='��4DP���4l/�h����u�`�G�Zl��@����	��΢+���SJ�%r��)g� �1��Y�K����(HQ�la��פCV��%B����5��cR� U+z"�s�b��&?�����ڿ�W�Y��4�ƶrZC�h�{��s���Jٜ3I���`(]� ��p�o2(�Z�����#�����:�wپ��-3���!��}�\���N)�R�N��MR���@���^�4�����|Q�T*��[�bV��yP������������z���)��*��R]-��r� U\�ogj4���3t|l^qE�AȷN��A��s:Ɉ	3��������F����Cj� 6[,�D'��2_.�ٽ����^�u���ףW�dR-%��:5ةM� �6�m��6�����+`�{{�%�@뭑��:�/yA'E� �Ef�����Fɵ��2I���L��bq��a�j�2��Ҧ:��zy;�>�^fC�]=�)�8�ٓ\h�,=�2�ՑH�C����f}q%-��Z��Si�d��uյ�JWi�����l=_g��m�r��&���k��í�<�"��Y�� �G��wj��[?�^7� ��U@Ҩ1��r�G���
LK           x��Y˒�ƕ]��"��1�&��ziG��DY�5"mGLL#�Be7�3�%�W^�f����ֳ����'��s��n�����]���s�=��b�Ju�W��ުRe��Ѩ����zߚ����8�N���x����2��y���v�_�E��.ֻu����[��,���x4��]����پ��fv�!|��i���'[w1�����{Wlc�/O��~mZ�Gwr��io��+�;=ZU[5�q4�5�ȪU��ք��Ni,��{y�ӽUFզ��{�����bо5se?�/���IlG�i���h�Wۃ	������Â�V�]Եת�'kz������_���9[\C��ں~����ʡ�!�cs���8A���=��G�_�b�_;� �G˭k�u/��Y�}M��g*��_��N����X�^�X���h������s,r`����U�ֶYZ(�����nC��Q?~�X��7��3��7 ����9Uy��Ƒ`�6X���V���W�u@�j��h>���O�u�ko�$ҵ=<��#p
�5����n�����)<�;n|e���-��:C2�7�e/�w�A�j��KgS$���惱�p[슗��k2AUWM|}�39�������#��ME��ɱ��g�L{� *��Ot{�������u��Lr�l�5�V@^��Z�(���B��E�-w+�b�ڭ��]qq9��H�����U��wŻً��8j$�?�G��<�7D�&:�q'��=!R?�����z
�����#���΍���m�(f����-!�8�-U@锋������{
�@���I;���;���D�^���yym%�ßS���q��.X<��`xF��Sa����z5">z��gx[bL�sgu@�U��\Ձaw�\ξ���z�m�W���(�|���/guz�3R�}> J;��bӚ�aY�H��:�$ܝ���!5Br侶`8f��C��N K��0"w�������֨E���ρ)��#�1S��V����J�%(�|�].�ײ�ʳ�d�  e� ���f�<�����򲪪c,g��-2� Q�sы�����_��"�P���7���8�
��Dt%�-J˛H�T�����Id*�Ò�tVБ;�����D!0�ML=!��r�����+�"
🽋yV?ѐ?���f߂�Rd�]�Y,Wy����˫�ֻ��]���=�
�hG���B~��]�DH���$�ȫ��r% P̜���2�.��?�:��MA|W(����<�� �r-�OQw�oeg<Y��{R1V��fN�+�E��x����BR �(5�8�P��.B5��*��(�4���� 	z`�7�@������י�dO��fm�ډ��{����0�� �F=�P��i�
c*�뵭��(��U�͋�f�X�����C,7��C����F�u��NA���'�,��3J4�?�%j�|/5��Uc�Txkyd]�}~d��8�܎R�Xّ�]�`�u�|fd�<B6Y�9�/�[[�/)!Q>:��	r�k�wt�s֣'H��D�?=������F_c�@s+%	��~��ǹd]��ꁓ�:���RI4p>
���k<_���}%݊Ax��)Ҽ,�]�m�]^lw���Օ_��mF;{�K��k+�G`A�xt�c;�_q��H�m�?,xI)h��o]8F�ND��W��O���Qy+�2 ъ,�ڰ��h��>~����^���U�SM�D�p�O��^� ���J��a4���k(�X_��`���d[xEn/NI⹠���-���A�p���n�zЕ�|�ܴ��~R�������:tz�ɖ��zQ���Q�V��.�BY��=�����p��l�a��Q�E���Ie�E��N�H�#-XtI�Q��8Ň� �{Bi�/��4G�2�����T�3�W�E&!�s��F�J�8z��8W6w��;Z �O��G�k_3]y$&#	�L�&HGj�C�G<�^C�oLt=\�^r.�ُGc��~N�v�U��g�U�yث�|{]�3���@�˃�f2^,����^�z��EC�s�d ���V���|FY�t�L�tvK`�W�=K�F2@jʋO��3o�\�ݾ1g�Ck_i4��������,'ya���8�T<�<��Z�6�=i6�)��[ځ�(7m���ߔC��wGv���<�NFk:��1=Ny/��ٳ�@X�,<>�˼DTwź�.W��f��zg��ng�t/�k4T"�	�)�X�5"�}c{{N����OH�ɰ�MS�0�مMf�֋���:`�6�N6`��[�4ȍd��2F�h��'���d=���V�KM4�B�[�*��LT�$��K�С�s~Mp}.]�T'%����n�͞0�����dl�5�F`�-�������7����s�g��b[�y�p<m��r̺�.f��Y�4�?T�b	��zʑ	�ރ�) �Wи��@���Y/S��A�Fz���n.c���Y@$K���>7j7���4a�1v�?7+�L8S��H���4W�R����-�E�GS]�J}�~s�xD_��c�/w�M�v��d�f�����y�L\���F�i���n�Of�kk�U�5��	r�Qv@8�����7�V/�#��M��9��4*��L���>M��:o\߁�gd(�l��6atު�����%-��%�~ƶ��>i��45���%烇G��e�)���D�M9ٟ�+��@�3����@3rQ��l��c�� Z</b��eb���HQ�����n��Y�As�����f��e�\g�ءN.6��m{(��"/c7{VCB	�>{H
����d`�΁M�z�ֽ���12蜓$���Dx��͕�(\���.#~�u!
���Ӵ��:P�dk��NX�O?���j�=��c�G̀���,7�|Sn�b�.�E�?��z�����~��~r���F�utv�:	��E�Ҭw��ح�.�_�  
�����ʀ)��!����I�����M"z�U*.l�*x7��:�Ɖ[��&��ϡ��]���dR!4�n��9��M�,��:�mo|:N��l/3�

�Z�߹�IH�B\�1���L�h�΅��Fv���b����5!��t�D����d�;�k�����`.�b�\�zY����˽5��r��f?�ο:&�xN��̔#��8�\B����}�?��.>�ΰJ15%J�飴�V�zћ G���W
���M�v�g���������80WY���rܤ*������ �I�Ś��	RsW[~+&͝�����T��^�����Wޘ�u�V����M�ۡ��E�x00W�X�����U7�.��4�{c;E����}�<��v�]�����x�R6���x�vt{Jrw��E�Y%4�@�=W��(�nZ����j;{5�l3��Od���7�π�خ�l������4E׫P�k_�6�7�5�v�1��2��"rI�Dۧ
MnK�?J��B�6�Tr��7�ͥ��Ate�)�D;��M�_�1=M�Vy�=M�}�V�_r�����[�V_Evk��0}����m��=����/��F��         �  x��YM��Hr=����^چ�-�X�skIָw�5��ف�,2�*�I&�dV��蟰؀����|[�͂�����jI��V[��*�/�ŋ`6:Ӫ�]Q�^��m
��f�,���e��߅z�l��7y�&i����$O�ճl���Vy:�]T:9�H6p�]�f��^��v������ٳ.���mi�q�f��}��fv����V��T[o]��5F�Vu���Z�7�UN��wwN��S�.��E��X�F�F��խ�����=�Z�=nz���ﴷXU.�	�_u�[[Sj����1���������LF?4�x�S8.\8�Y�T7��<_L/B�6�$�F��]��k��$�ڗǗ�/�s�!�/o�վr�W^���I�6�w�\o�vL�V?����}i�Vc�;����=V��Sk��lG7���7J�sx�lt70c�~�Q��wZm\Sj���_Dg��,?����7@�u�(�O��N7��v�I���*\��C��p�n�¡d]�d��������F=?��ӿ�����|�������^[�1��O��|����S�V%�f�FQ���]��ݓ����d:O'��EÉ��iB�	�&ȤOf?�У�㬹�\΋6og#���
�*���jx�V�eS:��M�S>9V�{Ӣ�N�{��w����cU�>x>�!h�V{�ං� �$4T��N��Κ���ĳj[!������$�J�׼�+@��"q{]0�qc�����,�d�촪7%BaǸҾ�[�L���&�3V�Ł
c�Y�����rp����[0K�Fn:�� L�`�����N��'�~1�LW�E~����c�^v��4Ok?:�_�JoXR(^N�������i�H���Ĝ�q`�	�z�C�_|Zȅ�M!d���3��HF5DEy�LU>3!`U��0-���I��9V��Vki�E���{�����5Y�t�i,Bx�n��9����U eo;���heM;���V/���`+�n���ꔞ�Ѱ?�5�K�g���	�p��`<[�s�ϓI����t>{��]�\����N�,{�z�J,����A�v��$n��v����qW�F�J��7��V)��x�@��@4�-K�8�;��B��Y��W	!쭭FF�,	׎��Ԩ����8x���:�|>ɎQM���kܗ�3���XioMC3�f��eC��i���e�L�J����P�1�l��
n�����H�c<�e�|�%��щo\�X9'ӕ,�:U�]�}�����$ͳE�/V�H���Mļ���|b+��=��o�yycmq��գ��[� h����-��!r��2��Ut�����yF�+�df� �ʀ��Ҋ$���g�"��2�A(����o�� D��y�}��΃�dk����Q�H3�Yj,�y�i���%R.ҵ��{&aZ����P�(���G�k�]�	�� ��ζP�s綍��>�쀼8�B��ʗ���U`v+/�$�
�d}C����4M���Nh-��d��6)mO�7������u � �?�g`�$i��>�� �QAHA@W3s�n)�#���ON�p/��\�!x�o�O������� (�LS4�!�@�
WD���Ԍ-	��
���' �t�r�{y�Pľ��l!�z����2��"�K>�(����2u�,n���*�eq���	����wgh��5VK�HG���VՑ�z�-���ߛR�
��W�-h�މr��xF�8:PB7�cug��/���?�/��׶F:{P#r�b^\E����e��Â^�x���/Kb�-t�g��^JR�CR��LC��]Mp{D.�bC`�Jφ*jGf5��4���M����_��C�1kf/5�8H�k��zK���Pr�Y�Lg�r��e�GQ���v6Y7�&w����v��xL�A2B��ǠԝԆU��q��x	�Uqob�`'���3u��X1z�u�~ܡ�*D�������E%�e<ES����4L���_Q,���c���5���ȁ�Y��G8�>��\o��-�@5��?���V�8R�k��E�Ĳ�ar��޸ȟ���S>H�,�3�Q��=��7��60�2��Z�N�$Kj>�M���4Y�����.5L۫�b��>�WREB�a ��P��H�A�R��G�+��	lq�y��	�_e�t�d�e����Μ��>��5����j	�b������r	�$�=߽��ٚ_>z]L�o��e;�*>�F����[�v���=�q�c�����5�%6s�+��"R�?�q���&�>:��"�[���`x��<h!!��+�>�$��w��*��!N��=�c�G�P$�)��5`�yOO��� �4t�̦a��@���-�gh��VH�W��W����o��(RMw�/E�G;	��  &l�^Z4Xꅃ|��8�b��L��"_�&y��&���o&�[�v�v��ȷ.r�K�!`C-��0�يֶ�4@귨��
�[k!���Ά�����q�w����
G��E�Y�1\��A�9W���P2;�]�rH�E(X�2zS��gt�`0��$�|Үl���I�5�E��8��ļG�ފtg����D|ڽD+\((.Q�`����W��>TuX7��b��̗��2{�*���7�lWUW�ȧl����37Ԧ^6�����M Hб�<�J���൹V������CQ�1oc���E�|�~K##����h��
��],H}�&O4�d�<x�#A�
2��@9H5Sj��#T�8���u2n	qd����8%�^b��%8� �qO��Tql+4n}h[9<���:�Ԉ^�%(��?ɔ�\#\�w�t��.KW	��t9���k�K�6��.�B}���8��2L�Ş^p�]�����Jz+l1�bBT�)S�dV�S��!P�9�sÜ�S4��9��tG9V��@��9���=�=��Ї��:��T��כ�ٵe���`<g�w;u:j>?{}?m��&�+�[�R'f���E��S=
ߕl̰߳(27�F u:��@af3vC�2�i�Ӟ���9[��4�+>��֟?��nW|h���J_�P)mU�gYH�~���v�7`�Ay�+G�� @��Тoj�6ȝ�>�ѐ�~6W]�S���
p���}q�Շ�7���{�b��?��M�z��Pݲ��H��_t������k��,Px��xb��%��8zM^ Zǭ�����@���,]�fK����O�6E�
w��d�1$���o��ֶ�!�ώNj�J�r���B�(HW�y�/���N*1	�F{�W"���N�o�wi�tf��ǒ������b�c���Q���r]^TH�o3��QIn��L�K	�n� 0Z0#�yN�׎�ETX���;S�}��<�v��{/c�Z��J��`c�JK��]��JBىҐU|�p�xdV�AD�x:L����2�U X�ü�`�V�[�!�HM>v����f��b1zK�q�7|u�����@�O��^��Hе[��O��#��K���tى$�WC�=�`���?Cy��$��F�ȓ��R,�zc����@�2���_C>V�,�:^���$\?t�D,m�?�wA��S��z㇮%��R��HT�
����I�&�GX��ftR��HxZ{�|-G�����6�F���驠�)$e�r:�Ͳ���r�e�%3��i���*��+d2���A�h3���G�1��8HP2��:���n�	 �v���Jw�J�H�S4᛫e-�g}1�B�:�D�f��X}߈�K|cn�yƂc�۱�����R�n0�Cn�C�[trո�N]z�t�^	M�����f��H�[&�md�����ޡ7��N6wm7�@� �p����o��_��S9         �  x��Y˒��]S_ѥ�H�C�Mm\�d9�%���q����	4�����y���>��L>!�]�'���sI���LU��P@?���s/��۝Q_v��R���R�����֘�����:k��]Wm�����l2MF����F��8YnV�f�^�G��z2�Lf��i]vm[7O����6ao3������b��Vg�m��eS۠[�2��޸֪`tY�Q:Muֵv��w�e^u������UML�j~���j���*[�:�:X��`���٪��j_�F�3�`�7&���zs$W�����T��Q�xg��ʺB��\:ŚM�[�zeT�S^@��^>�l����X}�åz���q�X!���^��#}e���<9*J��Ri�v���,vͭ��vF5��k���^#>��,ċ����Ҩ�^���w\������t@p�ۛ��� ���[��.��[�+��w�U31��]����ڀ �5���"��9�v�
O��kK� @�
b��ɉ��nK��;$��y�kD�^)���\^ڶe�ZҦ�e��S�D_7r"n�hWtf�y�f�߹L�\}�ms�g�d=Zϓd��NV��*\4�,iVv���v-���[XgH��Cz��4&1��B�K���
CU��P[]m-�)��u|푨��?�[ū�(�ʎ|@<�-$i��������im]���bʙ_�� ��VU��T�G1���"��4�kw�4�ey�m�|��B�p��C������G��UvV�A��f<���	��2��o`m=��"@�� �Jf8����O��㥠q�J���|5{��������<9m��Y�Ze=81���Gc_hG(�ƸP��^�b��P��)ip�)2��J������"X@���p.hH�V�k&�"F���o����O��"���c��'|�!l�b��,��*���q�N�If�< H?�����q����ÿ���9��g�I|�E;�eZز�]� ���6)��[^�.����?�;�7�����h5]O���V����iz�ٝ>�M�Q3�dlj�0��k�0$�*XXR�Ab�� Vd��[4eyGiF�<�	(5.���ZT-fE�Ӭ�
<nJFP��X[@��R��5�?�����-�3x��|X��Fؼa���6���Y�� ��5�L�gl*��Z�h�u�\����Xג�[�^fQ��n�[+�V(���*�A
}yCp����';@�p��7w�R�%�]�u,���]�F�]/s{�Jϻs��Y�����I\Ռ�%��.<�"�|�`z�Wk$b�D?|r��
��J�A���� �@�C X%#2��x~�E�E�j��S�PT�4�F�����G|�ZY#�K�~'��)U�!Tb�����"8��f�,�
�r�x����UJ���r�
r���f�D�S��Bv�9ܫ�K��r:ڹ���p�;{�����wVV�`?��G􄚉;�����#﮲�����J����ѵ��V�:2�F�7����p�Ⱥ�zð�k0@�uU=E�A`M��G)�c���Qߤ�j�Oğ�,��O��t�P�R�;00�����k���V�X�Ǌ pjQ��P'4~�����q`����p�j-8��<��K;��jX1���E��ڔz��Fићc���_^y�P0��߅�������l����$�2��5�lzv���|n ��F-�����H�XUQ�p���n\�.R�J9T'��1L��.W�\����bw�2Q�K�g�G����`�jl�&`���͂#9�c^�:�e�C-��A�Q�Q�˶��үa>�m'��*H�Zaۡ��htm��0�JOg^���jkDKho������XUjq݊��n�f��A�@J[��R}+��'��l���W�e���C�}s:�2���b�C�A�1#M�ÓscZX�����!��^�J��Z�$ߢ�>PG6�o����[a��t����� 6{��Ѭ
E-2k!�r�F��Vj�J6�hΝ*+V�L;Ń���tts���R���n�d2xJ��;������e{Ԩ����:x����2�.�d�L���vdff�N�]�����d�I����дB{aJYD>cI���sy������L���K[��-QX+QWi��^u�KC��7��^��:F����w�k�f�̖�Y�X��ç�;���t��L�]t>��T�#z��ӫ���w�65��Y�-[����h-P^4�����P&φ@U���n��B�q�uaG�H��4JA4�x��>A8>�\�C4�Nx�&�)�T���m�N'�`�/�������j1MnO��_Ջ��'y�~��J�������%_f24`�3�`��8s���o�z��ȧT^�_N� �}[�LH ����>Nǈ3��Z�Ry}��@�h���?j��W���>�OV/�ADl&�.p4fd� o5��#v�a�q���ś�m0���h�o�e�f��/S�80:�ASZ��jr/4V�h�Yo6@����_���l1	��3��-��:p:��L���E��!�����%K����	
)�el�
����lG��F��_	]���a�H�w�]SF��)I_i�� ������lD�0���~^��G���&�R�v��Ƌ`�2���%ގ� �6��X_hڬ�kl:秹�<��=�8�����{,��3��n`>��A�Z�-;�{ �_�6��z���O�.�f���2�';jZ
�k!���kWf.,6�G�z�4MHHSr|ӛaj?���á�l�8]��e�¦ ��q���(H`�l�{&��a�n�0�ӏb�� :�k?�+�¡���1OmQ�SZ;E�r^%v*8��zK�W��mpI�w�'"�2ڃhG#O���3Ik�cp՛�]�>	%�p�sQ���9G�^�d2��D-L���<��jO8���ZQ�p?�c����6�6��x�2�!=��R�U��d�E~���k*ayY�xO�ͤ�T��8rw���-*>`�%��2	�>RvVH y�	F���g#�t�$�joߤly8|�2�E[8��,O���y^#{yw���|9Z�\͒����Pާ���\-�幗�&�V~:�4	R�h5-(��2Xy��.��B���J��c��qD�Z�zI��J�_��[�ѓ��o�4Q��b;q3L+�Pf��D�$��?={���7�s����b�~g����R��s�޿^l�m��ly�^JZ�9��G!�|��?LX6
��\��?�x-r�/ɬ��
I]�8u�\Ֆ���U��6��E~
⹴�^X��81�}24#��O]^��(�Ļ�m�|��j��M�����ܟ����][���~����0��"b�cd����U��l��L�]���b�^2 ��ו�(�����;�78\t$���8'b���wOQ�)�Ⳑ��8h��#(�|������m�^�H�}@��0��~fW��O-Vx�m�;��<~���� u�         �  x��Y˖��\S_�ǛY��$A�)�c;ǖ��*�&� [�P�1���|F��&��r��~,U�A�h|=�����}Uu/��w��Uo[�?���鼻�C}�^�V7��b���x��,��u�K�u����E�n��.]o���rv���{~}���#�s�~�6׻�6�۴Ik�fo�����G��:���d�ɵ�l���j������&7*7Uu�=^+�l�:��7���S�T���sK��T
���jh����R�mU�*��
7��j��z��=����^+|�z����3�V]�u���)]K\�2����X��W��Ӻ�>��*ӝVݠ����u��(��#n��W�R^���j���e��]Y��eFev5Na)6ãW����裭�\�U�˥�54P/�K�ܵp��}����[l�{W��'w�n��~���^����ݦ��]�E�kf/]��+m`��:8�w�>�z�9�Y�OawYY��eՈ���3V5�V�U�3|�h�#!zZ����.��.�;�^�Ոroj��;r˕��Vv�~iT����iSi�V e27:98�p2c1W8T2۸�0MgG�������,��tgD����M���x�O�m|��w�1��ݻ��n�3�O�H��5/�Oz���	8\�*lU�F{� 3ԡj�؛�?�o*��\I]"�z-�ѭ�#2>C�2�Q�T���R�c�������)#�������"e`�ן�՘�3K�R�g��wicݨ��C�Bu\�c'���
��B?׈/�����,�c��4�P��Ѩ
��s��jI�ʔ�jj;{�u@�	1�W����1^���6l���n2����[;Fw�4ꆤ��D�@�2q���V`��o�Ǧ���F��J����k��\�Fxq���z���G`�Sp�<:ČPF/u����Z]�e,�dˣ@r����� ��:�K�u-Q(�K�)��ۑ������b�����;Sz�?.�x�-0�y2����x��.�I���h���>O�������̀�ׄ�W���!�TR��2HԔ�x�b��B V�u���rܮ�P�A�bC� �	|ԡ�+sv+����$a�˚y�5w�G�� �	�De��e��D?%R�XM�E"��VDS����g�2��Q v��r���6�L�=��c�����4I6��b������)��L�Dz#W�oʣ�pu�+���Д�.	Wd\��/zlR����K]��ߞ�H.=� �,��P�7���z2[�i���<��{P��Sa٠EU����CN�5L����t=�����Aet��T�'t:p{ V~��z5n�M�n�GAKf_k��������hm��b'�8�7������v6/��n�=��f4�@�j|it�T��9�9ҋ���޸�4�S���N�;)
Rt> \�7�� �AP�O��*]�H��kCȡ6�4� �X��B�B{���͂�3�B��B�-���X�`cE7TH4W�@s�m>(bS����U��9��Gb?�V��o@
[\�\o��:�P�v���ŀ$k���p�a�~���
:"�P�7�[�C���|3B��m#.�u�BX��Ȣ<�|F�����Xlt�H:`A-�[2w	�L�s��f/�Ӧ��A�����;�-�:��!��VĲ���ކe@D3��{�G�-(X-g�%����ɟ�-4SJO1��v�N��e�1��,���N�\�,tʠA\��_�d�li�ǻh������ޯ���8�E� ������+���[�=7+p�kS�?Etm`�֚@*�n��(���j�k�� z�Fi|r[@q�D|��'�	6�\e��X� I�a,Y��~��u�X����$bb-��(��EϽ�7��hQJ�*�qF+�(xQ�R�Ӥ`a�=�"��w��b�cS�`]��j��c����>�M�>Z6:�H-��h�A�P��F��=Ph��[]eCì,pq��v�9Rv�"���;
>�~h[ys����DGa;�k)*Ε��!*�
���8~D�VD��i{$�xo�@��8]o֛����x��}Ӥ3$��U� ֽ��#��pu�7M�6M���|-�ä���>���i��12�y3p�k�ː�(%��y��դ3,�X���NH�~0�ሄ|���G�#��9�^OU�L�"n��b�K7�h�;�v�o���NL3{H���hP9�����r�rj�p7U�o��U?�?9�:qm��SX�	Ek��Of?S�a���i��a8[>��1$%f�S#�X�DF؝��!�,�����r'��	��eCl�tS��	zi
E����b��R����J�]wI��m���Д�J7�O�jh��J�ql2tk%X,c�~j�N*��l��F@�7���ukvy�r�x�
���T��,}�)V�,U��H�s�"s7���=Wf��W�e`und ��V����X"�A�jQ��m��ݹYy�d��xV�����>���]3���Ǒ��^^�GTy�\��gi�h��7�I��V(��z�M���H�龮�o�w�����\�4yD! [~Y�]J��	/�%;�.m�Qn`�ݹr��W��H �`�<���+����[��^{�x����j�d��'�;����1:��*«���ubt�%����'���d��h��	�$pޫ�>�{� �6ti���:�tحg3v��Xd6�"�5�@ө��lVZ.�;�dBh^�Є�.�OX6�2�~��<�+etS�����G��=^���t�;b?��vXe����N�v��2����9v��&Ț�����tL�;�^�1��ک���$ܣǾ��O���O����ft�T�ͽ��m˙j��6L2�wP{��>���so�s�g�<vs�[p�2M�pM���j����L
E��m���E��|�ۏi�UqE�x�m����\��| 7��;�`�j�:cL:` ����j��ީ{%��\�Ȝ�ד��^0��A�0���H�lB[�	E���>�ɽ�+�(���02@�f� (0%ht��-�4`"m�ߤ��.9h�6����>=i�Z���n�ڬ��eh9��͍��1�n����$!n�Nl�^�e�$��G�0h5��ܬ�љ�e���hC��l��ͤ�KT��p)"ڝZ��cT��^%��4"�9w!D�v��)��Ia84�2�nQ��'��=�P��)�wPȧЩ?d�G����ٳg��-��      �   e   x�s�O.)��K��L/J,���+��	K-*�����-͍,��8A\]s]CCs+#K+CCNCS.B���Z�02Q04�26`a����� �,$�         >  x��Y�r��]�����T��<1��EQ���H3�lWR�rz�L� ��䬼�/�*�rv�6�Tv��Kr����2�h!��}����*[�ª��V���2�^��{=8l���,6�\���zE�h�L�f4��a<[�&��8^|7����`�4ux~x����͌;h6��0�7m=n]yN]�ҟ�����NW8�/le�V�+��i�7�h��)[��wUc�.j��a-����L�>��7[��*��0��� ]�k�J�V[�2�9��JW4V���ߴ��+tc���
�ㄪ�v�ZσaaX9�uj�3m��a�m<ݴ^���V�z�ǹ���3B�%���M���P�W�6V�Ս��[TU[����S!�:�0a�u��z�U�F��C�Wc�G̸im3��k{����l����d4x�U{�B|ܧ�-���x�,��ɽ\��Ud�Uf��q���̵U��y�y��w8�~�*������������+�eB�L�W��xt�^�� ��n�����Ua�L�V]�\l���c�"+��e}i�a�����Gu�O���r| � �U��V6ժ|�K*wF�i�>Oe�����s��`}�~��uR��-RT�+�@���g�[e:�4˻ڡ��`[�]N���jɺ���:���%+��?)/�a<ZDQO����KS����૪/Ui���f�5���ļ��.�Li�6�5��W0RⰡ���Gi��3Dة3�]�5kX��I�_�4�.�['-S�apꈡg�Ln��C�hiF}e�R#�b��
U��ge�r���%��WZ��w�cu�+������=�/I�WUW��*�F�T���[�&����/B�t8��NgVo�Z}m��߬��q4��|��'Ƀ�m��ul��ee7���Aڦ�52�m�[�/0�Ѡ��-�\�T�l5��g*@�m�+d�"�+۬��ʣ�*�^�h�* 3�ٲh��QW�_8^#E��R��\�`��&SF4V�>o�)��5,dE  *y�
T��m��Na��;d�F�f�����t�F��#�Ea�}���$��p6KF�h1�=�Q�6����e>)�a�ϕQ���X-��`U�/(����zC.��| ��4�S�����P]��+н#o���N���mPĔ��dٺ-ю��z�#/�6��5,��r�8���q68k��h(�$Q4���j.�x �����u��a��b^W�̭��S��M�����X[K������5�╨�0f�IJ�@����d��q�ob�
@<���mO�� �^�7��v��4'��x>Y��l�`��ʢ�E�u;8��p��K��q�y�P�>�c���Q�������*CpD� �L��@<bt:!��Z==�A��:Y��&3����e�8A�|n��~�֚�9
�Xi�dJ^�z�1TR�	�j(��� k�`�Ug
 ���~��
c;�P�-dZ��T[9��P��\�5Ӟ�E80y��Ok6�]��q�$�4 ��W×����&��N}��o�����k��0�u�@ʦ���#��H���lO��d:�œ��_��h�4~i��9���N	5��Q�4	M��E��=�"��	�*I]Rp+-Vkd����\�)�/��Pԭ�Ep��+�\��U�7r�G��C�}M0��@���,���y���W΃�����d:���y<-b4كѝݬ�k7Y4�tIR�C�}չ���Bp%���q�J��5��B7��	z	Դ,�Z�`��uL�u���|�L���=���k��9m� ��ѹ�=�4'� �h�/�Hf!&�����KΗd�}y IDor����!�|f�����Z�a����5��r�?8�@a7�����fr��6*���G�?�B/�P�z�l��2b�����tQ���=5_�q4��(����U��X_l�W�;R�,���G�!�1pn��TĻ^�u��!�s*�8&�LX[��r�#�PgX��ݸ���CQq��D.-�Q����"��Ay!$X�H1f�!�;��_��Q�P
�k�Cf;gNj�xW������4:�K�'�a�e������AW���]Q
t+K[ cI��{��h4D�D�M9F`X!="�3�8��f��<ΦQ2� ~0����*6�B/L18�����Z�\`P���\aKЕ/8��};��XV���\~�V�q���;���=�p��1���Fˈ��6����*0.蜤�C��6Ǝ�T7w�-���5�����&d;M�`r�f�6�i3+��1ig�j�.u��zCA��-�(�e�n��r�����ܗs��9���}���
@ќQ����]D�"%�i��l�n��,&_��/e�0�$��L�j�(�����*�?���s*o�	��&�Z�#B\��ʘdX�[���S�+��A�eh���Ì|���(>�Gm�x�%t�Ò�Fs{��t4�G�x�`p&.�.���2�Y��������D�E���»+�%�j#�xjIT#��$�T��ܻ�r-�lcӮ�]�\&�=��L��]' z �^���D�����|�r֗�5S�H��x1c����H����`��\9�EY?05����F>o�ܠ�(s���"�ˊ��4�z>���[sɊ�d�aDY |%94�3n  )�1Geh4�pYq/���۵�Q�k��N]�^yw��(2���{}���r�����h2�D�8���d4�H�=S�����_�c����%��燜�~�
U|l����epR@K�N��$��d�7=]P�H�{����=Sc��FU��vH��3D�O�^�x�;�Ь���I�Ek�n
6��a��H,�tey���XwgQ$�KX�4˱O ��v4xU��C��z^����
`��bĈ���Je:8g��sSN�=W�s�/1R�ïK^I�ox�>_�I2^�w�|]��	T�fi� �����b|z@敹�v]e-�i����.�h����)�G�tz-�.i��=2 \��S���;e�aÛ�z���E^��r���� V8�	y�f�J�d[A�޿;�g���M�x�nx�$��4�)9uq�zat����[/
�&���Bs�����sN;�����  p?2u �[tώ^���:@��h%Ù�n�:�2�ʫ�(<��O�9uWq9P9�Z�2@�wO��W� O��a�3�2��}p����N{�����r�n�������I�ޖ��[��v�������P苈�/٥$R4)��nb���F�0�m[�<�v��pӗ�it7��K�|p�b�[��ia��g�h>������%�Nd�΃�ȏ��Ǜ�0�와��{���u���+����-��d$�N���9��?�T��A�r?+�d��3�n'������x��Ƴ�4���d��ß��<���[�U�3LB,��j�RHW�V,G�/{~�o	r��u�����v��)ݹ_7]��X-pI�q֜~kg��0��c�2V�d�c��r� ew��y�rp�%���hǏ<],�"^1'X
Vq|Gs����ݏ> ���	-g�Ѿ���:����9*V���~{��ɓ��         �  x��Y˒��<S_ѱ�9��H� �vV+�C��66�M�����c4<�7|�o��8|���_��jp��gG��!��U�YY�x���j�P�j5�̨�T�V��߿���bh+���?��bE�VQ���?��E���7��j��W�ߒ$9ݖ�C߷�㋋nh�mn�y?^���;���*�ܝ�~�w54Z�֍����/ۨ'Uip���զ3*;���U�QVu���7�;o��*�GM�m�j�e[ٮv�w]g3w�>�],��έ��-����+�׸�7��\]�o�
?���mm�U��vk,���\��\�7��L����V0��t��Au��q(�m	�4}�>�V��am[6��9���қ��xDcAG��e㜝U8�hJ.O��5������\�W
����G��+8��6�g�W��8B0w�r���1~�7Q�������w�o�.�*�}�� �����l
�^�{zkb����̼�s8+tm�H9�����u�w����z�3���{�q�^��j]�HzAV��Hd3�OdO���C F�0���r����.ˆ6���붑G-3��覓8Z���#���5�:�=g���7�����6'X�^�s�9��0��5Z�'�p(Xh�7�����h[�o�w5��!���8�6�d����(]���U�%�r��f_�8E�w�fy!��a��W�G?�BƷލ���c4R ='�-@l��y��Y� ��y@� 兮z��s�����K㡽>Z�g�N���!����@��nC����O�6W	�#���S!U���#�����}���<1W�a�++i�7��aO��j�&�
�w�����*�� ������wo~'��n�.�$Y���v�.��{�����z7�!ڭf_U*��18�d���](�㜠AW���r?�oPĳ��f�*������Z�>�����Ag<`��a&Ho����ؽ�	bp1����O��
|������0!���X�.��P3@��"����/M9�q�7���EJ�|O�@B����@�����V˕g"z;?�Ŧ��  jM�-*��w;����ߨ�ڏȘ�o�[��d�K��6�-�{C������n��z�U`R�ś�hr�K��ΐ�p'�w���ԁ����k�fQ#\��8��#�:�i��]ӈ���f5W/�U�\P_���\V�LYz�%�6#�
��v�t�Z$�S�h�'��Q���g~h�K^��x�̞��R �f�WX�XVH�V�)�9����l�J�9���s���l0�9b]�$x�CU�S_7�'HК�RLԊ#���@Χ�oWI�.pt�껹_F�idu�.}��٥
��vy�.+!l ntk I9� YB�k
�8�b`h����������7�P��p�đB�(��)��L@� 6��V�B�@\5�^o�B�mK��[+�ފ>�z�ʂWY*��=6e�)oD��c��@���sX��i\ł�r�O�#�A
"eaEN�R�Ar:�<X�_�v��y�I��=��ySԯ׻h�s�\�j�"O��"#Ia�Đ����e��<��<�7��idN�Z���r�Vc%!u�Z3d�<蟉T��R�C՜��~����\�e�,jP(IA\�^GjP�j�c(�@݈58��
��7%tf���{J ���Ӿ3�t�V���S��[s����J�G4Z��M�[��i�@v��\ �����G�Moʫ�r�ջf�P�l��T�ا��b����5�#�J�`�U�d�D�e: ��#L�B�A}�??��	�?�� F��&�o��1�,�i�2�("r�im���fʂ�%D �
/�*���Kݲ�2�d�]�0Ȉ�<<i���X�o�B��md��(5�����ط��,�ĭ �fO�`₇�y���Y��ܦI���W��_ɾO���;ݺ�Z���++��L-(<3��0x	ǻԾ"���x1N,�̇���"!���������E�+� ɡdl�J(,�7>�t-7�>�J�>�
 �e��n�L"����j|��q4{�����6M�m�ج�-2^��ޮyW�K{\�b�X�-k:ye���	����:��w� ��r�O�Fcն�� �{�j��79L�ym ��dr.��XO�hD��_w=��� Y��U(�Xp8N��JF�����䶀P�H#� D���$��%��1T��7R�B�H
0��D�d��Kq0�ŜznOPA-	��	i<{�F���!]��q�X�h7c4����d����T�q��y�׉�ҡ�����4h�\G*M�\���s���?�'�q�{I`n�$P�%^h�d,t�x������e����-}w������#��� g�5�׏O�	����r �}�|O0�<���4������c2)(�\�x�X�� t�P+pό�󞽙a��1�r�-ʢ�L6xpt7�<w�E�]/�u��?��馭��z{�Y�`�%� B'��,��d����-p�n��A��a>w�O���"�s����#M��:L�z-��Ɋִ>s���6ߔΖ��`Y-�0�漉r,�����`5:
S���a�� �f6Wd�h���zE�:r�P����'E���A=G~���i&�G�Ls�/`Qв�û�}�AS(�G�&Zƻ�b�$�r���'�j]�����o�bF1 �.\6U^6���Q�9��_149�!�2���	�(���Z2�
��=��Yd0F,�P���A�o2�=S}�e�WS�z�n�BO�r�zvI݈����>؛��:N����~�_.���굹&�u���ƂBpD'�v�+�=�gVu i �Z�Y�o�̈́F&���{}�~eY R��#�H;��!<�I�V%ghw���2�fn�>T�OrR�)�$Q���O%����[�����'�y�#�����[T�l�z[��"u��7�f�e�zk�S��H x�q`�J�܇�a�]/ȶ��<Q8J((eT�S�����O� /�����_#2}�c��+�ף�<F�����{Ӿ[NK�5~EP����_Z���6߿�k���
��:��v�@
���� A�x�����s�����Z]�����
��8h�8l�E��0G>��	��C=�]��]g��F�:��O:�:e�Y���M`�_��>
��	��!�ߖ�"͙GLA�&7VӬ�v7f�,�,�	����BH#rZ�.���#���dZIe7�L���^8i)��B9h���B��YB�0��`*�uL�&$�d�z��x׭[��)���7�0%�YD?��(�b�ܭ��t�>��g��Vt.<Հ�;N�-��76��@�Ha�m;�@��(ё27�{( �1����H�brM�n�Ӽ��;��=%�|W3����(�D����iZ��Ҁ�C��4��ޝ�$J{ǡ��?z��I��         I  x��V�n�F<�_�7bJ������y�^l��M.-rD������X:�7$@NA�!���KR3�����9�ؤfj��j�5]*��{!e��r��RB��x�K����$t���M�.���,ϯ�<���|���,��'��2�����]���}�� �%���9o���L<��w����ܧ�����Tʌ}?Q���?�}��.��=�����9[>�
\�󢬢��hsF�bbr;gx$t���rio��V��J�����$�m�1Z����q'^yo�k����4�賸�lB����ʫ (� ��s$2K�|S)��ĕ6������'l��g���|���ΙR���K�*�Ї�H��upڳ�j�}B������d6z�ob9O�7ͦ9�+��z>��f��g?��*����k���=UI��VQx����*F���\��@�J�qpǕ��IT��c�$�����4�fPi��ԍ��B��7���h�S��)���rQ��E�u��h�u��EЫ��G��eJ��L/Av����5lm�a�mQ�+*Rp:d ������x6Kk>)v��6	�C�����Tb���
g[��2Z^֕�����	���3^����6銻`��5q�䁪�����T�c��3Fu�7����I]2]���7����|�^ϋ���8�D��d��,>$�G�Xv��[� �����$>����f�LVT� j�;i�[i�����.i�T�KD��̌�Ž��]��~�IF머A�K0�/�"��/1��xOh5]g�Z��B+(9t�&�	�QeL�-E�����_�6���)�T.,���X��V�Ε*����3S���|��P[�#�mL�O9�c�pK;V���-�&Gq����<����6���?��*��m~���ɳ\M�|����8�&��z�V<��ݟ%�����|_Q0-z�)o�hE��K�虮U��y�ġ�1��P�X�j�Q�4�B�������g�&(�:t,�R�|7@Zn��Cw1���8+��QOe���ŀaP+���Y�XdjG����9����?��C �s�Yp߅��'''��-D         u  x��YM�9r=s~N�I�U���Čv�
�G�{q�X����j��������9z#��7�o�?�/�{���ZGG�/R�D��|/_fe�K}��2�V����Ui�J���ܡңW]Sy]�W���w����f>�Mf����d�~��6�|1�7�d�X,��v1��FǶm��W�bטp������ʼZ�s~�e���,���^�>z|��-,��'�T�ƪ�m{[�����*�.�d��W��wFigk�r���Y;?Vm�'�\�k�Z�p���]*�bq4��!Nu����>��+6����*��Z`hlL�>���Ե8�d�����{[�x3�QÜ��د���N�:X�Tz>����¨(gv�?:���cMЪ	����O�{�*l�q3��"�9U�ʶ:�+��f:��Ƈ�W��_��ߛ�Xz��ZMԥ��	�G��]h-Ru�y���u���3���I�}'�ݮ�u�����lN|�g�u>_��~;z�^DD	��]]���pK��2��k��^���<V�����$���]ӚR��j�K��:"XX���ب�-\����x0�x��>�����-�x�b� �ǈ�]��H&҉Gk�����Z�6�t�'[�+�K��̽��N&�Ķ��0}�y��u�!No��"a�;���<�hη�����DH��&��{6:�����3[��Y��:��>��[�$��ǂ?"/�=`a���kM����i�`��0�B-�z�lړ�w!fM��5"�n�f-���T�FK(O����(������Ǣ�j|և��SE�1�� ��]�߻��@G��i�(jz,؞3yգV]8�����	�8@w�N�:�����ذ>��5�J�V�FN�q6,F������2�]b�ׄn�^L��a�o��'�<��׋,6����vzݍ�#W`�b�vAX��x��^}����z�}�r�g���'ģARo/P��Qoae��E!���{z�MO�/X���o��W�42+��w_�T�y���g� m���������0q�j��%��&+�1RA|�iU��M��ᨸ���&�i�f��h��xl���5��������� �
Lod����m��?��r�J���Go�b;gl7Y>_�	0?_m������H��\gƍ޲�uHR]�~����j�N.�h D���2�hjL�+0"\0��3�q-D��pp��Hu���)e@�u��MU��Mj��jw^����u��M�9�xX.~�@]�貫�m��Ʒ�p��������	��F�l�(?!�h�D�2/�rN/����&�M��l�^ P�z�����&�~i�z����������l��`�k��@ލE�Df�pci�#4�I_���WxL��2'�I�R�YԧZΉ	�8O썈����aIo���E�å�萠J��-R[����.d�&#����:*�3��W�O��8��=�� O'Z�B|�=v���@
�ƃIh�-��������̍d���&�KW�q�ףY8LW�pw���}i���l���7�l���gC�(���u=�������:|X�	{�������I�z��}��%HZ��m�����A�O���P�FW��V��[{��fi��)/��J�G�@��="R�#~(�;]��j~$��� �֛X0��:Q�,|w�N�:h��HԶ��d=fڑ5L����>&$P:���~N�@&U}�A���z3������� ���V��|�ɳ%J�r��N��Yή���}�}&ۧ��5�V���1�#�%�c�`�A�H����zBc��� �����<v`�g�Y���D4����D�%2㔺����߉rP5�^�J1_a��wڑ�ѽ��X!�<	�h����	?.D[S)�R�K�������B@�����H��l�Dh`��oG?TLH�����Xg�u������峱���l�Y<���G��,��1(l�%��'~Wk�'�����}�9��94���R����RS#"�ӑG���f��A#�TM��O��F�D�Xd����خ��v���Xd���Bq_l�]5���s1�dv\���Ԃ�)����+q�{�w�wqL��~$�PM�$�%=�gor��;��O�oIx�A<�c�H*=�Tղ��f�����=���QBDI+V8��(�e��6���P��dűo	RSan�+{�����
v`
��;�浔(�{ut�5�Tt,�q�j���$��P���!�^�| �������>��v��֛� y6��&�Fg���ף�6�|
�,>�@������>ᙴ��h����4�����N�8��`�1`	m $ڄ(�+
F�F��Z�to�a�̱D�P-%�f-D|��p<T3X�%��Q���ڦ!i+YK�n;��wx�w����~:�*��#�;E&^�^ubi���|�S&�5���RM߸�R`���}�Y���r�\�з���*�XUU�?_�<t�< �O'+R-M����{�=~L���4�E��@Ǌ�G��'@PK�T5H�aÙz�$c�t�pT-���D2ΉqЪ:��Tp����?�BI�~�n���X�S��-H9�di�B�!|�k�\�o�K/�LLb��f�;�݃9hiQ�D�i�P(Į�"�^��z����j�Ś��b{Z��o�W���!�*����Ee�x��~H+��<I�
���lZ�FNs�&�\�+S���ok�n�Oa�{��j��}���C�iF��Tx�m�C�ED����b�~tA(O߁���'���n�AɄ@A\�q�j�U
�y�Aל�h�> �4��.Z;�0�R�1V]*\��1+}C���8�E��$Ƌ�/�8���f�e��v�������g���~YT�����U=�z�J���K�ׂ� )YA�u�2#
U'A�2��e���M{
�Ɲ4��>e8O�R�"Ȁ�%Q~�� ��<q�r�� �#�Q�dcT��W���/ �j�K��2+[�f�E��,�<�g�������]���A����^�����<"4Լ}{p�F�hL��J��z��6Vq�$�{q,R��R�Z�G,�sz[b��ҧ���)'�A����i _<�)2�ŧ��.`�^L�kMJNo�қ�Y�K3�pO��iP�+i�/TGT���]�%+6Aē(�����@X���;U�:�l5��H:O�!.�b��η�|����Q
����k�|U-7Ώ~>��P��4� |��28����g����0�fcI�
�Ԁ�I-=`a�f�A5IP�C��k�5H�`�� ����#�Z(�h���T:��}ǡ'��5����٩za)��ᵠLAe&�@�� B��g*��h	cr��_����jG���M�w�!L3~d+/ͮ��@4[�%/P����^l��|��2_�g����~y�%|���4��.Q�݀Tiv�?����Q}aM/8�2�M!+Ib�)b���	Y[ˠ,�n'��i:��&�ä+��ꎡYF��[��RB�ڒs��q8�����o��	��0`6ˉq��x� �:=�9t��A0���w��;h��W���?��%a�W����'�ތ>�PK���7U���c�Y�6��v;��в�g�}���]�i����u74��/ ��C�h�R���0���K�Zy�t7�Ll��'��
�:	Đ�������ߦ�|���3x�            x��Y�rܸ=�_�����D9Nnv;Nl���f�U[��!1$�@��t�o���kn��K�AʒR%).�=�����׭4���M��0�m���zy�mt����z8O}�?Y'�e�$q�����49I��6-�u���f�d�.ɏ��&:�~�����{�&]+{<N'�d4�U�V����E�Q���Z��Ƀod���?׶��C��������8*�T��K-��b}�-^R�*���b�C��dx��Эpj��^�J�8�8��8�Q���,���.��l�Wb���/�wv�����x+��]��
�8��T��a)^�V���d[u�?��B����׳u��j@��|r���&IʸLw��叄���F{}��?k�Y"��H��]O'�vS)��p�
Q���ѕ퀇�"Risᕐ���H
�ӕr���y�M���u�3c%Y[����$"���9��Ѿ���;�;�y��0���׎��Y��sE��{X�W�x,�J�F^y=IJ<T�5/��� X]�K������<�Ñ�.=T9�@k�8���	ތ�؅�&$���,�l�G�����9-�t���8O�b�K��Q��]wU�m�	;�-%q�ڦQN��2��>AQQF����I�xz���ρ�y��:��,�E�tL�փ
#����4C�H'I5��ӽu�Z��QDeQ!��D�G{�y�L%:�e��|����"�'N�r�l�M�`;�����P_o�����@	'�B
'�*xP��X�d���HC\@��	Xog� ��!�8mP���b���4

rm�*l"D�:XBF@�:��A)D�fpBe*�	�����?x�ƲB"�#`��2�eK�;�4�p��-�AN�2�^j6ћ
gK����YIv��M��n�4ަ�$��݃Y)����R�W�Pė�2�[���=�	��5�(l���|��e(����ЎEI�5���iH�ū4�IKZE
"h�N�Z�r���(o�GK����SD���u]=!2"S�2-7�x�����=��4]������Fo�4W7��=�u\��>_�ֻs&��R�S[-�"��K�-ѦzU�X��W.���ZW�Z:z=�LSr��3�PO�����9��B#{Y�Q6��%nQX{�!�,�(	�\�Ӥ'z�|(�@w(΍bi�d�r&ݨiW���A�m���� ;<��!��6P�nR���	{#��um=�X�=��@��	�.��m�fy��t��<e�z2�ɮ�t�����DJ��@��Qa�c��@��0w9@:�f[؂zN����-WD�����M�f�E����c 3�	~� x�$�9��X[3�_�y��`fA�9�X��� q��2������n)�I�)�u�<����a��Fs6n�s���|zۑF�l[:�û��#`h�s쵽)��=�'G:)݋:��ᔤΌN�f!��Z��hC�`a��T�>��r�Y���K��27"O��
d\a)�/B��;�3T PpÓ�^��|�s����c�NI(asܛ��n�>��Ք�����P��]�"r�p��,<1C�kmUb-SC c�QqQ����F1�G'Y�^R ^j��ȃ�

�a��e(3�_@� �W������VQ5�#U��NN%�Vf�	V�Y�蕥�NQ��}W�����f�EE�ץx@�D-��H*R5{Z���l5�M1u;�A0���4��R�JBO,>���u{��'�ON}���,Y�ۢ�qu]>ȝt_$e�Y��pGwbn���vI��dgn��Y�eB��ذ�Ƅ�o�j�Bq��ѧsY�k���qd��c\T�oh77�����;K�I��Ji�%R;��ζ��񱈮�$ED�\�l)ڵ��j�϶��6���&����;]3x�h�}k�J��&'��B�G�A�0����g������p߮����ۉ�O�T��F0nԨ3�+��Cj@9	/Ƌ�Rx�������!�M������Bv���v��������%�q�Uǜ	vmn�!�aHd�8�,�7��^���K5��h�a{�jܶ�m���q������F�Q�h>[�;s-F6!���z񆔀���KS�����z�,����0L0y�v6��W��1!7Q�=��z$ݢ�D�l�,{ߥ\7�̢���R��BMV@�ǰ���+\������ZJ�3���7�ϼ,�L|T� 1yPN5/�>%IJ�f�)�,��-�X�1�(Ƌbz���S!}����|���s]^E�\������A`�<b�ғ_C�� �|�u*4p+T+2[*pQV^󘄚�:{N�f\����0���Ξ�	D����{�JфBH�*�n-��c{n�	Y�밙�KXqv�<�4�/N��A�Y�a;�S�W�[�Ij�*�V��c���x�ʚ�+� �:�,��8wkB�CB��"�M>5�,`� g��I�H5���k�/���1�]s�D�Yj����pnFG	B�4jv�X,t����scBD��ٙ"m�,|e��_쩌܇���q5�0�q`�UDy�U F*��y�����7�D�;�'D2�H&�]�͓8-�r�IӇeN�������s�S��E��9�Xj��0�j��u��� *.��m;�_�PF�tT��	����	_��V��[�q���������6P�m!��!��*��P�V�N��#o�FJ���O������f5I�S��)+� �j�D���'/4�����Y<��������\\�p� E�B7���B&><�Q��4�Y�t�E��.��4���u�'9�N�����Wl��u��k�A3^����{���o߽Yq�:�s'�Hܐ5��A5�h0E��2�4�e>6a>�ɓ#
�TC�]�%u^���a@�hPb���
�~���'���`]��6u�U�ү�
,%��x�i��&�)Z�ϴ雍��]	����m�A�G婜�̝�q�S����]��tSf�|�`��d�fy"�����P�rO=c���Y���S�qq�6������ -T�Si��i5�k�bȒz�۳ �ü��#
�oَ*������CjI~+�B.�����s�$K�dL�9T�g�9�N���	cZ�mH����i��Sn&�����[UjN�ck>��w/�e�Z���J�Z�%���m��U���<�Y
�O��eͭ%� 4�1N(���}���n��좜������n��z��EFyzd9R4á��(�P�=�����7$yvQ�{����ٳg��-��         �  x��YM���=S�bJ9�K�?��$ɑdEN|H�R�!8�� wœ����J�|�͕[�������]�W�V\.��u�~݈FOle;��۽�;�&�Q����vt�7��y{���*=�g���l6�M�	~��hv-7��z�\�&�|���Y���i�Ѯ����Y�7��mnܴ۟�3]�I�Im���襷�V�)��{�w�Y���lQZ��xc��kUX�׵Q_�9��u��Re��u��t�,�*�7���|e[Xf]���Ԯ�?�����m3����5����ԃ���mU���[leK՚.�m��̭��4�v�l�]�W���t���T�7�:���ދG�`Z0ϫ�u�T}e޾/ˏ;{�����f/��l�X���[��nU�r��w����+����gwp~��X]�K�W8����y��6��k��JcU�����v�9,�n�X�=�d�kᤩ�C�K�3��K;oҔP�[�F��M�?u�rތ����\������<F��uI,�̚�`�p��c��L�;�ٴ����u�/��ter�9edYGù��<��8H�����@��C�=]��Ԗ�_Gz>z��!�,l)v�~}�3ț�|�N^/���=�j�����z���7���z��l^�J����4�VM))�L?0� k� (঻�S�M�ݧ%�p�
�-�;{�P�}]۩z����5n���f�6���\kTj���q>��"kp)W`�>W3T|�êTW)�U�>p�d�j��p��..��uylk��TK^N��`�����u��纰��ƖX�b��#�;���|ɜǽ*>�� �
p�71�q�ZVMZ�}OV�a�	���ޓ����_�E�ֳ��-G/���`0�q�K���\._���~$�Ӛ�)����- ���*@�֭E����V3L�/����MNF���F�g��!E���,���4D̐��:w�\@����8���U�T`�p�+d������Hy���@�6�X��,X�tgk�B�D��������o���ɵ��5�/7�d/��f�ovv�����<�M3�G��ƐkO���!� 4<���OՆ�Cb0���M|��ߛ´H�gt�ս��mecK]���d���qC���t�q=q1�OK0�x����T��#�ר9f*�2D����|�56σ�N���^3��$�����V���#_ȶ��[�#Vp��68�:���s��:5[]����/W�d��^W��߆s�o��ٻ�ݍ.�+u��������T�TE!?�\��p$�/�6�W (�!�� Wr�IM)�2[Ç�>
7*�i������c��5�����4�%�"9��Pl�'{��&>`�R1s�o��ߝE�T�L �k�C؋�t��Ϗ�g��kw����Xg��G�C��]�7!4�x�ܬׯm9I�~���	��@���1m�[�l�Nܶpћ���#��\�¡*�4�e׳j�J�		�������/�'����R��`Vz�w,��|�!�p<KVFT�s���J�`��5V��耢f�c���뾔��IF������N�Z�F9P`�O�YtM�~�C`6A�S������C(i.���QcY��:�k_��xR��힅'�Ժ���_�5~L�Q����(�5%:��v�<={@g�r�����������O�)z��Pèq��wR����@7���M��/���o =Ҵ�K����ua����G
�c�I~����k4/m���{Ek�v�,:7P�Xjn�6o'"���B�i������2d.�����gP� ��v�Y5�.I�pV֧�Ø�憀ڌ�0,�($WY�/��;��U2�̒�$�f�h9�Xs(�ܸK�d�h��)b�� 6΋Kr�-KY(�Gi�ȿ~�������Ek�����/��
m�H�^�*�\�ox*�AM�l=:��n-��ہ�z�᩻���r���x=Yl�h�lfѭ~[m7��l���=�f.:;�F���Qգ<!x�Y�`�m�	s�fK0��U��p}�~�dXl�y?p��(�kPX�ъ���B��s����;���f`�����4�(U�m�#2����I�XV�dIAG��N>2�3��{d�R2�b�*oFu���I]��˽3�aL�\.��|��{M��e'����CQ�� ���n��޿-F/?Į>*C��Z��ţ8@'�� }-�ax����3s��J��
~�O�
��>װ�v?�`ӭ邲RM���<V��> ����rlP߼��nԇ�֞}C�OAN�A;�L�؁Ml���	;B�S��A*� ���ic{>����ȭ��@�M�$���}V,Ou(b?}�����F��"�)*3���&���#*��U�ޫ�<>{�׏D4����	��*�,��f�L混�i���y��oG�l6ʜ�HHK�Ka��E(c�(��+Nݛ�	y��+�[+�!�C:�Ϛ\b�8$�6�c�Q���O���:(O�Bj#qY�:������\PP�(P'm���ퟙ.�7��I��8��l��,`�(`T@	cF~�.��,|�d�P��S�&7�����h���^{8�ʬ���N�����do^�zb�	W�
�����*^e�?�O��q&�G�r���Sv��on�8D�8�nY�,����e��i)�-���HE�uO�ֶa�������:���,?�	���E�rO@;�~��r���G;��@�>��hꢒvA�n��U%wD�&k�Y$�Ɖ�2+���E&_�[}"�A._�S� ,��77P_���$� ���])>��9D�d�\�2���.[<{���K�8��^Y�]w��L�l��,Z�;��	$�(���#��2Bq�B��)xt1�����ù��ɝ{rz��/L���J�j9����7�����G�a!1� aN}'M*뉩 ��;Z�8	����0�	S;�S^�s��ķ?��O{݀2��ے��B����C*��e<�/����:^�٭���"G��w�Q�N����ǩ��'<yh%�V���:��Nx]��u�[K���?t��W2j���H����R�Ta$IS�[�L�nC�4���q&% #|�>���CxzhPR�٠%z�Ғx��f�E�;>�%���e�=�j$'�w���� Xn�}nq����Q���@2G���h'3|��������p�n=z�Ӿ�|W��=d��J�n���#i�Բ"�Lpvd�z��?05_����~�1���I�mAsFڍ���3��.�}��F걠�0rCޣ)d�l�(�ܕ�j�E+a<a��9HhzH�����x��L�U�#i'A�2�k�P����gl����L�v,�e|��>0���F��G�B�h5o�G�V��h����j�ċ竕�!>�<�'I����r���n'�ؽS�-:����+,B�s�0ʤn
��ʰ��)�<����RJ�n�C�d��^�z�0�^��]H�Hr@&��QhS�rp��_i�Z�̆b�2i�e �@�'KS���j��c֒"жd�`+�/�h��.6�JC @��3�'�����cI,�AH�x�Ķ��#��Q߂�����U��ğ��W`'6]_�R�!�9�MX��y����U^�}�b��o�hOo�NS���VČ��w�܅9��%i-{,Q�P}c��ړ�k|�:�7��w�{������/           x��X�r�<��7�ysF7-��dR+��ۡ�tcz@��f�{����o߬sf��9L1BA�3���2+���VE�?�S�mݶA�����u���G����G���j:e�l9��6;ϗ��d:��?9�I���}�,��ѕ���y]�m[��GG��M���	�����ٍq��_�o��x�T��N�����B�O6��P�i�̵��Uq�?��������C���/F���W�m�/S��؈rZm���Y������t�����5ި<����B�KGaU��DU�5jc�m�V�$�,��D�c��3��cT�]��"��i�N���q���.h�~0ޛ��^y��A�ln��P��;T-����pm���f󻽪.TA6���<�i{xx�~��n��Ͽ�M=6��m�ɹFk��� ����G��t1� ��PR �PY��Fg�_�C�-u��3��bv�W����k������Hi8T���u��;�o���yN��PU��a�#����l���,J�)��uc6�OXZ�,���J��Ң�0s�R�ܠ4��@�m�on�r�`��W��/�J �D ���h�>,�3��;0��9�a�Tz%}&�" 7^30�Mc��ȥe>�\t�����O?Ƹ���<��j��M�Y��� �jW��˫�b�l��{���"�y**��c�L;Nق�����f8���;�j��T��yؓ-�D���I&v�rG��v��,_�Yf��;s�#�A�1[�%q���{��Q$�p��k�ԓɭ��s�|;܀LJ��#RP��fў���QkA}����7(Z���^N�l��8�z��U��7����&l����U���l��ͧ�OE��!^V�x��>�a��?�����_��^���[���W:;k��H.ϊ�^Y����� s�c"q5�$A� E�Ҳ�X;ӒE8e ��Jޓ!4�d�6>j-�L�8��/A9-� Q��-zB��y+bY�ж���k�֡ ��0�k&(��$8gC�j*��
���lp�D����6��k�$��#�O�p67ꄅ7T�Ѧ�+��ō���o���396��VP��' ���d�<�.2�]&A�� ����u�\N7���� ���R�y�b\�'�D��sѡ'5!q���AK�ڮ`�c���S�ǖEU���#E�G*��wh��,��XS�xIn�b�F3cj�t�Q�uH���<�V춖"|��F�X%RZBK�M��+��-Ⱥ�e��&��&S�^Px��I���:w��>��~_�½��Vo���-�&�sr|�\̏G�[�묔�ﹱ��_�����Mn�h�k�^d�k�j�؞d	����n;]��"�4bd��Z�H�h�%�κx�Ey_�ܯ0���|�L����p�k���H��Ե�l����;?�]^�����B�`��d�RWq�R��+�qG6�E�8���⾠k��DhO��W:}|����6��{
l��<Z��f}��!��ӣ���h�lp�ags����E��r�w0:y��69��{�2�?�Z�^�:��a$�m���Q|\�>��!cy�vJ�|��ڴ�[�.����oz�k ��}����P����$f��.����Wjr�K)'h:��o���� |�����B/ǚ�I�/��{8�^Xd=f"��=�!��{�����[�� ��l�\Ώ1.��_���G��lv�󦾬�v��q0@�xv!����� �n�ʴ�y2D����^�`3���v� 
����77���Ӹ�2��jr����?�(�s+ŀ�ON눰:���i�J��ԋ�E��:P��mO��@�4p�$�ɝ�uġ���OCg�zN_�ҷm��	�(�2&�z�+��H9�Ү=@z�y4��X��8E�;{��Zf����V���2�e.K�z��B]h���j��^"y�^��5��Vg�A��8,�j��G�eP�5G-����U�o״�^�k]4{����JK��4)���ħa%$=Z%�$Q�m��y�,�����-�Rs�0�ʰV؈^ډ�*N��<=�TIϩP�u��t���������sGjO�M栦-���g6 ��5�����#�R�v�Î���������F��t1�d]&1В#c�'ޑ�ڼ]n��q�^~E�-+�<���C���ԋ�s�0��7�Y�� ��A�����lZ�O�$��I {,>���Sa!�8�I.L�D�^�Y��w� ~c,����>�E}��?���J��X��1^ߪ&g" �j��22�'�� �y��!
�B,n�u�i)d�6��7����D�H{�B����>����?~��u��������x���.���N�1p?7u=��O�M?:^ �wM��=I�;kd�������YUA�t�<�����Ȩ�P�C���M�-��*a�ٻS���܁��F }�o*YZPyn8`#�r��V�M���'�I�*��AS"�NF!!pcZ�
��&d9�D���&*G��T����dy��:�_P����=z�W{<�I!s�&�ϦP�ݷ��q6� ��d2���O��u��d[�y�˼��x�g��*��-�<�ar���k�����]'�}��YU�|���|a��1����7����Iz~�8YI?oI�8Ez���-�J�({�!H䡅��O�Z�.C����M��5�߷�X��d�����2�t��t�mE���}ŖC�Xb}8Vm�>ݛ[N2���5��a���s<�ގ,;q���}�������}�������b<?Μ�t#d&!��=�����ZX��r�U9��xU\ZX�� =��j8�^���12s���(����E�]�j>���
haH��E��.;_�v�	��t͌�\�:^����[�2��NvL�^����bO�Ҥ��h�u#�N���}x�/�B��2��"��Ơ��(���ȍ޾���-|o�j}#W.��^��h���~��lFn����a9���ٳg����         �  x��Y˒��]S_ѻY���R)=lE*�V<��T��@���4i��!;/����MV�?ɗ�� �!y4��@���s�=�b6z��V����Uf
uf+mG�]]8�5���+���(���hM��3�'��t��$��j�l&��j��dz^�}�����Ӧ���mfܴ�O�ie��z��:>ߎ~�Tv*�ʵ�S�+2�Ze��S�#.��Z��R��W�ŕS���>������ͩ.��L�e���Vi_b�1��U�7���M�,��Xy��#.S�5�kRW{W9\��\��\��+m��ªʔ6�c������q�5xX����M�.�Vo��K1�i*��zr6ݸ4u��x�J�
}8��V�I��8�Ω����|�����8�[��= �ቒ�j�&�8Y$�d>������Ɲ���+�Ӹ�4>�[[ �ץ����Eā�Z� ����2͟�שzY�B�x��?Ti�=�g�V��!��E�����E{��cR�p�Ε�����W��׾�S�lo�u�nR���\t��90���ƣ��Ng���Q�&
i�{l�\g×��O���b3_lֳ�����KN
=	N�N�֛R�*��>_��ڶ��Ҏ�ǡppG�tmG1Ug�$+�#QpFOruW�)D��(N���Y��p`{�
r"�ԭ8L�7���0[���ZN^V��-i:�^��:x�I�\xl�ɰ<��"H|U2I�)뚫�_�~��<�J4HE��i9�F�V88ROUHJDc�^ Ad�'Ga����*�UU�,\�) ���mR$�g�!�J��*#��gs��j���d6�%�uE����EWe����z��i�q2�h݂\�R��Fw�ь��W�m�T�U��DK������ @����gDS�׷��V�.���⒯�����T�4amL�=B|Xwxf�9�'0E���V��?�?���'O@�z3�x����̕���7�ٴA#%b��N+�>��@o[���m4���x�d���4_����x���z=Yǫ�|�ܬyw���]d��v��՘�+Q(Z��X����������;�"?� ��¥�2��5ᔨDT������H�!+@��I��>F�Y�{�� Y��耟���I�b�#1��D�7�2�b����\J�c^���,�Pq���H
p�~ԭ�z�(^@��
����ٍEv)�A����+���B�5y.��
P՗�����rt�SOf���a�7"��f/W��I�q���Ei�f��>��茺A)da��# a�A�R�¨�8S��OY(��X����SRY}̧���L4m �����kXS�9�� ){�Hcс�X�!���v"Lr�c�p<]�\�V�zmV�d/��(J���_;󗳽otV�tB�E�u�v��m���1;8	����K�o����� �1������~�P@?-�X4N� �U�%<��� z"U�8���;���]�Z	]#��r�����/f0I���@$v��F���~=zމ��{�`��2�8��|1���x3��dy?��6ы�/��ّ�VvZA���ס��poA
���r�"�Xu���㉰\J��n�n�~���-���/x8ziʁ�Q��xmF_#�
���}��G	�4�,כ$YÜ-����^8mf�_���v���|	[I2~!��2��z�^�΢:����X�@-.t�ƍ�c󗎆� C�kW��#g�~%��ᎄ�&Ge��R���89
l
�̯5�p�!�E���H�'��=<�H�@�]v�nOU�\�U:�>6��v��/�Pe��P��`̵/�mK82ɀf�}*��G��X�� Q�oc:�Fp�Ip�7R��I���z�e6럹M�����$k��O#n~��3�5&+Ve�F/+��O��/���Q�J�rf%��|O�oC7C�}�b8�������`��ݮ��v�E���<u-� n8t�׺H��D�*�g6t�0�L;J(��Ac���֨����4(T	ٰ5����СRU���J�bv������ F�G�I���Pn[��v�\����l�Q��s����l��gC�$֫g��L�Ʉ�|G����|~o�/Su�W���]�"FS*=�&|���+�K;X4�1 �����`@!NٜJ �Iq�� ҴX�6�"�Ө6�u�f���b��Uju����J�IТ̒��4��f[G�3���4Z�'UA�Y�)k��a����,��!��03��A����%C����;6�DV��C3�J.�NX�9��Bj�ʄa�H����6 �beH�����;f�n Z&�(�YR�Z�K�ȶ��	N�rV6�V�(E�R�,���R"A`-nk���q�X��D-R��|�8�POZ�D|��ǣ�X���n�/��(L�h9[-�դ��a�{���l�j
����G�j��B� ����m���Z�1��M�a�*�
;����a�)K�ӆ6S����t3�!:`��0�w�Nsc#�֛�5U�Nu����D���ZeZ�]W�V�^f?w�'�x��������f�\�6�lr�!L����!t�_-g�ܯ����,���?r��Gp��T�JT(3��OK �����]��j���*N�S��ä���M�w�&?!lg����YZ�0�98:�-�6ǹ�͙K�t�ڡA�ђؚ��B:��0��#�,�٩��؁��Y�d��3�X�� b�܋�;�ߊ�Z�;mM�˝��|V\�B��p����z1$��?���B�u����_~� �͍{�h��2�A��iw97�>tz�%�C��7&΃'(`�e��Я����ō�ƅ��7���0k����7Z�7!EX����r$p.@D�����ݻ�dQ���ߙN��h��U��o���Y�&͇%������Ç�}Ѭ��/�bw�B͉K7���C&k3պw@�ܴ�����!a���G�[�c�&��'��L�Pg�u�V��x,�W����, 4��Jbӡz��(1�[;��q<]#�'�=���U��> ��}^D�hrcj;�e&����d߷M�˼=��4�i�@�ޥl;8��E��V��� \�S�������:�Jۉ�~��zS�0@�C�)�C5��*�����K�~�]�Z'��$z)/�����̌c�j4�Ad���+���/Cj
�|]S!c�8ߔ���a��O�[#jhq��3�����$�o��V��*e��P]�>���E��gYv�*���˯�C�An÷/|# =/��v���0y����[�e�(-�x)��e�+�Q�8�#������U�0���tW�Rѵ\WJ ���	�b�t�[�C�b+��N��N܊���,{7�����M����c��Ƣ�ݔJ���8�[-���r=�'�R�������G�� �N�            x������ � �      !   �  x��Yˎ��]����bdz��O���-ؒ2z�R0�jviH���<VY���2�,����$_�sn���h� Ǚ�����sϽN&����_Lp>���j��W*��0Mg&g}[9]��n����|6�^�f��4]��b:Kϒ�v�\���v��.g�4]�O߷�d�um���,���-�;�3sf���6Ib���<u�S�V�ץ͵
��[�V�U�תvee��Mn��6�oTg�7��҅z�mgO���x%�+�4V�������[k��6��51���������.��p�z�OO��������;��(�r���G�����?�S�b���T��+�uFi�����g���s͗j�А�>n\%W��wjgq=��4���_���F���t݉j��=�s�P�Y_�/O�K�.{��2\����t�7�6���T��9���'OMe�uYݔ��̘��l�Lכ�6���v�,��(]����U����/���e�AVT&�]@��0��yV"�8:��
o���j�L���kx�ҺA72��O�<����@H���j=~�u��>]�N�s&߻�i�jlչU=־�6�[�S�r�B�z��c�?��cX~����>���0�c�s&���6��oUS=��������±N?M�b�NW
�|�p���4�M7�r��-��YZv�e�,�{g��7��}�
6b�����	Ze�#���A��@샋ty����n�:�Uеf^v����yU��|Z��qwWuX^cC�j���)�F�k�#�"�x�B��Naa��T�S���`��
�s>��l�<n�U �뽮  �xm�G�/HJ�-�:pI�5ސ����\�AI�@F�?�U�-��O����{�����e^��j�M�VO���Χ �Av�r����U~�o��n�,���=h�{�:^��@6;f��$���R�Ք�o�����>GV��<��(`�A�:��]�����G��#t4@���I/�u���9qT �c���V{�T�C�k�L6��l�^���f�J��k^��ۛ��d�~�<y��9��7��D���e�g`D ����3�?j��\��*��羂~k�Ce^�f���eJW�"6�!����.˞���*s�H	��k\A��V����5��o�꠻굀�[o�/(��v�H��m�\���q�Il�_���&o)���s0RC�L��
�R5x�q=_���_ �����3 ~� 3a,� ���0&�p�1����Sg�����62X�%��~(gW��vG�̖��*Yn��fc��lV7�*���Ց���э��r������(<(`�uT�����w����u����~'����vT�;pQ!���4Pأ0��*�=�Sk欆��]Ӷ�����ܻ
8.�i&��A`WL+T�?0�Wܱd���g�~��9�Z�Q��g��$̷�4�lf��6YM�ˇ[�γٰ��'�}o��U?0<��7ֳ�&�+�����}@��D=���Ie��+��6�5<�+;1eX �a���3"�q�_e�������o��=L�����lp��ES(�wj����\㚖;�{��R��-��$�����c��.�U��&p��q�/.ܶ�����x�-��,ảuL��Q�Y �m$!MG]��]����̇�cV�;ߧ[|p�HZCx
ZQ����.�wt6:�H�7V�J�������#�QDa"��0��%��U�]]2��x]x��ψ�j;[MW��Z���t���Z��e3y	��F]��I�w��pą�"H5�bsBH�b���+�J�L����z�
���[��^g(���:}rh��e�D�f���ֹ�`P�����)�:&�əF�D�ţ��&�;:ĝ��gJ OK��ߠ  �8<C굽���;�x{h�}2$���#t�3R��/��E�ެ����/��M�^��%�����-%kEoE�uO��(�~��P?A�cIc�̖#�7b�@7�[ ��£�6 p�d�A?ze���%}�4<��L|�]��\�qX��0��w�>7���.v h�;Kk͍K��ۣyRU�Jw��ҪB��6],���͐�I�,�\"<T'#���P4���ئ��w��|�ԹH�r)F �H;ӛ$i�XO!p�$�oǛ�+����]�B��Q���R|�mdz���f�!�щ\!��')�b}L�>�Ɔ��N��B��d�C	�
t��l���c�i��C�bXUОF�q�(�A��$�
��ب�e��[}�V��l��tr<�L&�KgP�����S���8.����qe�*V����C���@�`������/u����<����.���z��Η0��l�=�����m=����R�C�'�-����^�Q#~^r'��]tt��G��(���d�k���B%�f�~�D�;:'�Z��5�<���U�Q�I�',� c�&ӱ�I��A�-����T�䀶LzЈ?�́��=qPt_,c�ƻ�yp�7}1ݤ�U:�%;󛴺���������h*y\	�L������x�^P��	�?ˌ'�������J�U��2��ů�Fh���� ^����iX�p�Q�P�0�����/�YV�/�ڙqE��ң	&Жu|;��CH���xd����8���Kc�h����M�ؑ�d�mūJ�D�8L�S��#2	�A8�뇮����3j5y�{�E���%|��-ۄ���ن|���z�,6���lk;ۧ`qY���uʹTH8EO�B�X�y[
;�׹aY|�s7���8����x�܋��/��)
�`N>���4�f��:��U���'�TU6��H�$㰪���/�!l��c�j=�v�[������z�YɃ�D+��i:���N1=^�f���b��d��<Gz�pV��x�Q��v�N��k��X��pD/>�\��G���k�r���F��*^����R��Y�><R�M��n��2I���%�t]g���ku�1��+�������2d"��4�$.#��4-k-mS���ؙ1s�_Z%���/�/���=�;�������k�3�U���ԦL�t�]'3�r|�Ҙվin
���c��p7��p�x!����%�lg�1�Ύ� ����d0����,ʑ��NOi�N�]Ƶ�|���B���"��:Ew5po?p�E]�^��F�s?��<Ax�Hnρ���8�y���9��Gz��Ħ;g=6�b9$�7�;97b�а���<�%%ctD*���̛�}��p�l���a �O�b��y�n��:]�"cz��<��A(z�׊�@˄8h��R�91L���x%�k<:t��U�j؏s6̫��Y䐪8�	��f *{�s]�Ԓ�OC���G����Z      #     x��Y�r��]�_�3�Ȯ�HjgK�k�G,{fRIM�I��@C� ii���&U�6�Tv��Kr�m��4U�fc	jt߾�sν���X�ײ�F�cY���a�+Kخ�jq�Dѧ4�F�h��$��a�ϧ�,�F�hM�y2M���f5X�m�}�(�ѥ��vs�g���ҫ(�Z>Ԣ���V	���kYY'E�EWK��J^_KQ��P`<��[ء(�*-U�+�Z�J�:Yj�����H_h9���l����z�X/�v��B������E�Vj��um�6����͆^�����0ti��� ��0rm��x+�����l���(��&y4��[���r�;;58�`��t��Y������Fs@nc_�Y��_b�7
v���m�~U��L>��-��Nۅ�/�����8<v��ڊ�]9o�w#�F9�~�e(��p[->�>5�ha�}�r$d%�]�?.�v�%M�,�K�8�-����?�r<_�5'G��G��'
�Y*��[�N��<q$Lp���Gpض���:xj,^��)���Ҩ�aM�k$���ꔂM2D5e�$��$��ԏe9���r���<E8ېf���JdpH�}y4������s��r�ϻR�X]��!�~�^��*�2�Vp8��-��),�bR�\���3?ֲ�ֲ��Rx�`�#�;��@y*7�j,����MΡd4���(r��b �py5��SN�_U�d���W.���{l���a���vƋ�8�l?^�u��M�Y��I4����d>˳y~w%�.-.
���X�S���]��5l(�S����We�P �;d�$_�7J�d�^�[X{,%��m=��k�xI�?9ٮ���v��I�0k^8e�S��Si�N8�U���Wp�S�	�e)ŉ�V�:��Xw�k~B1�����#?����3m����W��W ؗ��5/{ﬥ,�s<9�f#K������[T����4J����wy[񡾨qu^�Zm��-!������o�]�t��LWH������]��Y4��,��I>�3ԓɶTZ~\�UKUڢ[jS���?�vD9�������L�(�TӴr���(����==�+�Aّ���#�"vC��(S�dAa��� 'L w:_�K��J�I�U���VUZ���qE� i`T�4V� p$���v�A���
��|��sX�p�+a;`�{2K�^F�$���^�OPȎ�\\�&X"�0;?���烧F�vkm�B/�BE��O�om�[=I�t>���4��t\�RFQ%�fp�@�=0��3����B�)���R��0xg%=��e4������1g5�R��b+��Lªs��Ȩ$�L&�~i��^�:�%#B�`����L: �/Fa	�Xw���1u���+g����\��m'~�Ơ�;wk��W�f�0T~�����4���4�M�8���/�eQm..������i�i�@�H!�V� �6�5�@�BP�9��F��#}H�P����<��6�$"͡@��P�TM� �!e[��G�A.��$��/<Ѥ"Qrcqv�P@��T�b����+h��0�J$� a"+
DC�>�"�Pi�Q�F��B@j��)��S��J ש	������1�C6��6��ـ��P��s��=�"��p�5u�z�~��O�i�Ei2J�<�N�w��lgZ�d������Sq���s��8?}���Փ�wH~+�.y��"E@�f��~�DP��8!l"ƥ���V)�Ή��)�XK�WE��ቅ�� '���#.�'�Z��)U>ac	�܊�OM'ޡzX񒘂��j��F��}r�h/�VH�5	t��KJ��x�m7��N��e
��!��vǁ�.��z%]r��!C B�.�u3����!T#�́>����"A8�����9o����AO(��,�2T|�0��o���ӧ�x���/cn��]-d�^i��!�$ZK	LeY3q�%泠4d)�
B�Է*���!($#]�	�&(\ ���p��
��Q�cb��#��
�ם�X⭛A�V�4��ʷ\��+\!�XӉ!�زah��j4c����EF�[�%�&�G"_21�O3>���ҷ���8<�#�O�T��Ѿ�)��$�tL�NfY'�(M&I>I���V�nb��r�5x
mH�-��8VW̲(;��S
��2v�ʀP���a21q�V�+��I�t� ڊJL�r��l����J��GnE L�g{tA�VBzh! �j_��8� {�+���T��H��A��z1��>R���B�Ag�f�����%��z*�b�ā�o=Z Z.�­`ǃ�H���f�wh���$s��<�&�QC0G�,�3Ъ�d���6NfT�8t���p�1H���!ɼX������K�*�VrSY��@�0?Lg�b)�][l��V,*�-H�A~�x��y�lCe����%���(�Z/5@���A�����B������1<"j_��}��l�4|Z䚦g
"�v'�3I9�*g�����(GP�l2O�8%�l�D�yvgP�����R����@ʓd��p��C�^����-���%�Bwx�\�2�U|Q�5�2*���7��t'�C�Ө�ԙ��=a�x�԰��U�G
�
���:�S��hЃ��+:��/t�������t�ܢ�X���J;s_�N�l�p�$�~c��L�[s���-�Z`�|�V#�N��a;c�ף� ��A�?v��e99�w��<�0�c�ss8ïj�/Q@^���?��aJD�1|��eW^�Q�Q�_Wsx*D�U�f1A|����#Z�!׹�g�c�p؃���_.����H����X\�@A�ă}�Y꯴+�#��e�<�r������N'�+�~�k��B�='�ER�;`�坽'<6B���o�?x�f�|6ɣQ2���$��=�慾�.��:q��F�ǐ����k,�����n����ԫ�دliC 0���d�3[�O�~��v��_F�18pk�_y!x4L�i\�Y�}�bM���-og���[GM��kU�?A�� Yux���G(��:~��������ig�t��]��L�;=�خ�(^$u�N��V۾'I䠀�D�1U���\�!Bb��1c���G��V1G���"�?B��ѷ��o�P�4*�B���S�f�mw/�f�=��4�R�~�� 
{�ƽ�Y�mg�����$B�O�Y�N�A��Ko#_-�4��<+�p2��ZJ�%��p?��
����=���{��#홒���� �U�C��Jh�9�
����>�}M��vKX5���U�aU��B�Ҿ4�kU/�Q�q|�ٚƷl��@�1!+6
�h��7�w ;�A�]XB&��-�өxdvc ~+����D��ս�,M�$Am��I<ˣ������{��~r�c�H�l)WÜ���!�C��$�RZ������i5��m�%�6�.,e��M� �'�nDL�bcq���ؙ��ˇ��?,P���H=\v-���C�RQ�C~Su���^���y��}^ ��RC�H3���cG3�Gm]���\�T�.O��H�S�N�Ћ���0N��݅n�&�Y�&�������C�;��H�t���4ͳdM��>���/��C-լ�C%'>W��r�0�*)C5�&�Bׁ����E���bgS0C�<z*HZLL�;�p�Ln�(E����o��8�Mӹ�n��v�]�x5K��5T ,#ŤC��`H�к��6�4}ӢO�<;�A6��# p�ʖ�~*ލ2��6�>Pj�Lq���ݜ�۱x�hz_�ߟ�<�?t�[      %   �  x��WKs�>k~��TDYҖ6��g&ٚJ�y8{K�T���� ��_��nUN��r��X�eGv�<��D4�=���|V;oY�ڨʵ-�@��:oK���I쌣:��W�-O����j>��ٺ��%>-N��:_o6�:�l�!`v0�}��׮�\�}�?9	��~�Z�Y?���_��ˍ9��dI���ZQב׶׭�Q[,F����
.t����[��OV�1p��*g�����k��9&,���MUKO;���*T���|���8&Dc�[��-��Y�
�eӪ�zm��!��Q],K�����|���D�}d�|T��]Z�bZ��\�>f�{�]-K��m^����VWZ��5�c�jKR��248���:�DQ�N�@( �>��ԯ��֩����rrA�Z�v�0n$�lJ�"n�B�SPa6�|��EČM���Y��!b�"f����m�*+t����7����v�^d�T���J����Q��BR?h�RR추Z*���j��i%_�	y�w�1�Nj�D{L� A�D��y�����gp���jpIV�K�D�(�b������竳"���=��g�0o��bwEw}U-����y�x]��J�ubC�	���=�(��!u�.@m�n��:j8��;�Ԓ�� @��Q�)�B�P�x ���Za����K��u����x�i��1q<�X�q�vGʠ�i��� �I`�G^���+���i�7/��'?�A!){��ʽ�x`˷X�Xg�5`Z��"_��R��� ^���*J��s�o�����J��%ٞ &h��X7�kKaZ��	S���9$�F���:%rc�NHxx���a�I���V�
�: 5�#z��JQ�v�=��*�{Y�~Ԋ=V~�H<�Y+J cM�@G��@nd�OԄ�k��5v�đ�x�����O�LJ�s�U�|���:#r��D��K����'�s��2�T�΁����4���Ϳ�l�j����B��nv.�U�ɇ�WW4���44�j5N`�	ZI�<0������4Y�W��C�j�2��b���v�c�;-�u&�x0����_��$�(��]����)����ZT��hEߔ0 A ;��MӒإ׉T3�w��(�OQ�ցz����S�-6��{d{�����#V���B�RZ��B,��|y���h��z
�2�(��i�o��ȗ�b�J�N�2���d�1ګ���������l�� �l(�.؈�с/��f(�'�~d���Q@H<�W��؛��P)�ϡ���V<A�H*�%�5���,��F�
l�cDz���P��w��e�R�m���[#	�G[6��֧.�?A��2 WP��bᕉ/��l�#	���fw6K`�X�.�8�l���
����p�+S&���AF;i$U���p !I�A�_�|����y��w;8���`}�2*��?��9}4�j�i@�xѼ+i� �w��� �1�ox��	�1Q���$�a�$�ϭh�_�%D98���� �Yˠ���H�`�x9���f����#y�.���U��gJL^pEm�F��o:�Y6� �y�Xl�՗��z�^�ez������Y6�O�!�gc�Wa]��:��}W�2�w�h�{�b���>y�����@�2��$����.�)��ɨ���=�<��B�qفX�z�1�by��`����̡�w�ES)�{����88 ��T�xt���c�i�L�:,�t�4 ��^��ʠ��(���2�~n���1t�����;\$�ލ��b3�`��o=����<+eӫP~��������L�Շ��n��JK�y��I�=$An���ɜ�%h�+$�;mY�+ނG1I�e�5/�i$@��4^��ۭ�Un�@drC7��1X/�r�>�G�d��P���f0��ᠹ�%�2Y:��������=�S��b����8q0RLc^*f�>%9��s7�m:I
���S��D��	�m��ݻ�ҙ��      )   �  x��YMs9r=��
x/�wQU�ݺ�c�Ն4+���F86���Bw����B��_��o�Y��%�)��hD��� 2�|�U�>��7�׽��m�uս���ټ����4ϳ<[���d����b=���u���������e�����^�x��ք���?�/̋�s���o��z5�P���tYzl:V�����˽QM�u��xe�u�	�U�`U�U��`����N��N׶����Wz�����Ʃ�:\�s�/�`����LP��,��y��ܸ3;�{�J[���G���[�ڕ��8
�l��U�V]�ʙƖ^�)n�l��:%����'�M�Õ��'�ҟ;�n=�Q���?����]�����ٿ;�X�AW�+��7>??W����^���0��'��t�gG�gx� ��|�^�V٪��V�b92�7�U^��Jo���t���X�z��ᦥ��1�4���!�;�\z�ۛΜ?���M�ؿ�A�nz�U&��r��ϖ��Ye���F�����2������;�c�U�ȯ��~��n}��|}�>Y�n����^}B�t��y\O�>�H��7���;C���S��t�^�
yl�AZ��wN�	����yx �<��V��6��a�ᨍ�c�l6�n�`xg�f�E�)u�����0mt6�	�7mM������2S�g�Y�{�f?i�/��1��X��2��k��'��>&tLVض�!����t3���ޘX(�_�CU������F�����8�_��3�^0�E>����0߸���c~�rݻ~s�l��6fZ1�;�z����|V���͕����^���\�n�������油�8��r~o'���X���I�4�*��_S�~�]g������p��H��l
��g�B:�/.��u��N���jcz��+#_E��+�E�*�*��	;��H@���Q{&#Ho�l�J�j�!%ȱ�4���#��G�Y�O&P��EV�p���]���cb��ݾZ�g��vc�N�b��23�L���ca�k�U�����ʷ@������|��A��W�=i������6�H�`���p���1�B��X�ڴ��'d�N�fXW�@��u�qt�Pj�1Z�|/���O�!�Ah<���F;��6x@�P�@�}g��;���<�]e� +��;]�Fs1����q�-Q\�rZ�۽��gĘ��&�b�\\�a4ۉ����7���d��^��g�|9+��dW[�'L�v`C��!�����i5j7�R�p�H���.�T�]D�� ~��N}�w���n.���l��8�N遽+d
��\���e�쀾�H��Č�\"���8�Y��b՞r,~�z`�u� [�l4Ður�tP�A��t�n��@�U�~�R�ݤ������6�j�|��%v�+���mք�V�ҧ�I>͗)w�ZM�O�}�-����q~����|@��o���;��@l|8%�ƤJ�$ <(�wTcb���J�F.�>�NZ*0��c�5!*��P������mh�`�(ɏⰑ����s���Ҙ>U�s�]�{ _�~J���ѱ����1/��!���ߒ򋞕�!�kn��Vw.��5e.H����|���o@W:9�R�"��wa��Kz�X��2����j�*�O��e8�Y�庩�_F��{}�� PI�z�[���\"P{21��c�M�������,觜#�/<��g�#����$��@RX"U���{;��Q����ͥo�l�xH�7mz���u0u�~nh��FB�����"�MJ$ފ����(Q����AZ�~�|Lj���!�f@���E+O�̋�:_,�Af0�mh0�xf�p�����vzcW��7ǝ�\�#ٶ��` �8��b��Z�AE⺱��x��O�J�S`��_��1����%*����ۺ6G�c����u��n��gn���6�V�!�W"D%
*���`�a�l6$�*5���Pԩh5 ����c<A2�M�K\U� ��* ��/%%Rk�
��8)~I�N�.������9Q�"�_����^[���&-�j>�gC�>+���PO�E=]7������1�H�f<.|�$P���/R���Z�pD�Q��=���P� #hahJ> g�����H��v���b.��XjuR@�l��H -�X�`�LzO�A�m��m���w���1;5����7�G�%6�i*�q�ŗ,&�C&�VH�$�2�'�$6υ��D�H}*p\�8���=P�l��қ#��-���e��uO�u�]/�����l�ZtR
xԫ�O�N��+�
E�<�,\{;?�W�y@�\t���k��֗H��q��"��!��1m�F��$�^�dD�fTTt�'����e�L�O��!\H
p<�٫`���z˔k��q#��F��	�'�LK�n�I'P=���)��/�7S#��/�c'������	�b�d�?@����
��4_ΗY��>�*�RV��CO���.���n�FTR�_%]�*U̧���3�3���]QK_�č�����������5�������cW~��!G�������B�/��݉[�,�,��	�k�5��g>T��|� ���V|�^$l�OI����|�D�y?0g~\c����.�s���(��֜��n�g�X���:.�ݢ;��G	0�j��-J�?=#�F|�^O��E���(k�q�����,�#�?�?,���VR�Aq����[p��V���.H��c��I%���qG�!ß:�>�{�^�j�`�M���Ƿi���r�
�G����C���Ծ�sN��V��_2%R,h�u����]ζ!"���Y�G;Ȭ	J�2���4Q}���y�=[i�U�0��3ؘ������{�(�3RfEaѧa�/��9�NA�MQ��ǃ�dw,V��w�ԍ�27��Ñ���uދ�P�9�`���,*έQ)v�'?è;����
���q(kq�>���$m阠���>���������Dݓ���5(��i�������.�ΐ���֧�/g����I�PB -r��x,9�Q�Ngk�׿�����V8<��G��3�=���?�� �>0�P ���?��|�#����?��,�.���d5ɜy�?-����~e��bF����>��.V�o�t9�4d6�gN��q����Cl[Ӊp
F�(���������}�^�&+	�H��jZXSfYÀB�`a���O�x?����(�_�`w*ri�{R�I]��;P���:hƠ�@��ݦ�����i &�[��m)ʛfk!�����gvV���P�]��(���|�^�X��Bψ��]-�E�^�Β�Lgm2�4�m�Y���|���Wæ�n�V�1i�A![�����/��W6�.)W:��$�Oj��n���4&�&0�i� �PE-s��-y%�"��� <�X�E���EetC7U�-Eڭ�2Md;�P�����`M[z�6(��Ч�=�t�y(����b8��i�{��[A\�C���z9� �|4l���XK=_�E>[��zX��v������k�n����uT�T+^o7C3q>��kyq#�&56���׬�l��������:o	E�p���h�ة�: $�n�7�J#(�sx�8�ܡ�juW/�NwYǫ�ugR7ʃ�W�y�kJ���Tx(<^d�?��"2Uf���F��|�v��PL�x��AV�'_<8�X=�	���}��A^�>�]���^�wG2?�S{:+�����3û�dF"��G�`L�O:Pn��!!�՜�����	��+�W~յ	",��`�3�P���2�)^�A�t_7�
�	�!f�6w5�8)��Y��=�$O�:
����P���`�޲����K�L�>1��d#:�l�Ӭ���eƕ^[����&!�ث�{��m�b��鿞����?gd      +      x������ � �      '     x��Y˒�H]��"W�*I���������1�TZ�*)S��twyŒ_`ǒŬ��?�K8���z�LE��%��{�9�v>�F��yy*L�k/o��/L�vo��<���u8���΋,�4˲i6]��R̦��<_��ղ���i�^-��j�:���v��������ڝ�s}K_}�������n�w_���k��]��Ko��p�V��N?�I\�C+B��ش��E{2�y-^�c��N4�K���V����t�J��0\��T^�4����!ck�SF�U���1�+���rv�vpg⥳. Jc��j��8���4RX���WX�[�e���I�*E�]�g�[+*�+���Nת�f#;I���v�$�	.�Ղ�J9HQK:�����ԧ�.��ggg��w������|kOpO9h![�*8�Q�����#�]��:[�VE�>ڴ��:S�[��Κ啹���Of���U���"�����Ȋ��";������Dq`kMB�u>a�����mlMX!vR!9 ���AbP �ε���7'8��e��,�Ed��  ��Ͻ�����&���m/Eg�o�m���u^��S~w�w�a�Zv�6�l��֋��o��b���-�pG� �Oyou�15`�r��ce8n�����`(7����QR�#;�F�޴�(��@�!7���['kl���H�"�_��v��~@���+�Gu�(TRi���3|��&�;��c�L�MT`�!l�?�1�Al�ΨK>j�n<�uBWCtQv��C��ӎ�O��ٳA�pP�l�5��]���C/{��R���H���|�^�����^���ߠ=5�<��O#ކ}�aa��a�O���:��yc]G��!zl�d�&(C��#�eb�Ҙ�R�b�h��)�q�e���}"�H��	dg8���܃m�t"[ܢE�hрT0�@�E����B��}���kc��J*'�#2U�(�(9obH��#">��٪,�����u�-�����_[=��c��"����+S�+C�p�J��Ii�
�'�ù���WRmQ	T<���.!@ʹ	�U(��㵢����jG8D�(}g�s�Y�lC�ys޴s�a��:_���;
��*�O����N=���B�c=B_k����:��_ҦPM��'-®U��kl0�cI��0��t~30�w�^L�6��m��{L-1���lVLg�b1_��뇑���Ϫv���9(>��R��L�Lb�����#�H�8�
=�e#�Б��e��!����f���؁^I?v���s�J�`[��="J��N)�����(�q�Wn�QV"�$�)��=Qc�Ħ���L\�L�ǔ�G2g�HY�5k�ݴQ�������$����B�� �6�Rf�J�G�� [.W�2/�����E��N���"O!Ae}VlWM�'#<��/Fu�R"�<���� fo����FQ���x �) 5;����S�f�P��]\"��?�0j�k���#,!S#9U�3��%�G�voZh�(�c���Q���H��ā��'��5�һA�č��x��f ��}B�INw!����9�=�>E!�s������X�$��)ل���׳r:G0˳e�̶��L:|T���&9��%_8��%��F��-����X�
# �a,t���5�Ua3�&�א&Y�}7��C��A��*9r�\X$����y� ��?&_��7:�����n��.g�]�@���_鸤�I�\���xm�p�kZ�ؑ�[C	nn��+Q90(�.��	�S�rʊ��3HG{�E^�Ӳ(��l�.D�).���]��~��n��@�ٍ�DRQ�X{4s-Q1��M��6$�7�ƴD�Ǽ�A�%zp�hp 	$^5��:�}�)#�$\-��6���(�� g><V��-x�|O{'Lt,��O!X�%���!�F5b#��t�(��ˇ=d��\l>�����PműC8��D�����Ar�Ŵ����j�;���	���; ���)�W�� ��ջ#[M+�$Ȏ��:��o�,n�	�ڦ?h)�{Cr&����Wjj��H����S:�p���ɺRǷ#�ut���?�W��#)\e�U�ԯ�HL�<!�_X�A�������fvLh�m"Fx:��z�Fq�e���6vX���zya���ɫ�-_\�G�d?G���{@���iE�=�V��lxO�~�)�����bO��qnB@�n��<,/�� �z���#�-�/RPN��h9M�a��S9s�pKR�C1;+��D�x�9��"�/#��z�)Ǒ�)�}�f�`�<���r=��%�Q ����]�/��Xp4x�:��m�?�褸M�Eײ�(r!��)����&B_'���P�ڛ�z�c�4Ԫ�	��lh`Y�^p��p�G�%�� �9�wQ:�;���E�Q��-[C��<+�嬜=���nV���OVM~�]�>nާ�Tq���Y��) Ǐn�!�4��Ɖ$�i�*���\����6)�kҀ?{�1M"�<�Z�ŉÙxGU��oy���<���kY��Q
k�N�CFɅe~�l?uI��������Jʕ-#��D�t/��E���jOdǡ�q�9�<�m���)�Z�' �Z��<_��Y�p#vy��se����T��ƭ�t�A��XYq^��PRv�ae�' MB9h���ɫ<y1�1��/b�&�+�-�!5��8��Q���B<4�э^�����o�m��B��L���V�J{&�@t��]��w�W�'S�VR�qƬt��4R07�wg�,n�9I͈MU��M׆�R{C?Ss��z�2U5+��S�gR��$���t1���\<�z�89��f�LS��@C7���w�����jP�$*�������4���i%��&^�#��&��N}�8n�?��D�8�j(�۲�b�i���88lH9�h����i�Jm����I��k�7잶y�����b9�C�)���Շ��^d�l-��R�1Z�FiJ����c ��\D7qu'�7�└a���D��!��U4NQ�{? �[<C��Ef?6�u�Ȧ�ي��h���]1�eP�z1y� y�T�����8qf2,<�LsD�7��0I�j ,�Ӹ��j��׍�I����X7?����C��F�ʤ�����2�}���.�(�'�Z�!kN��3okFA��֠��.���a �^��X��>H�� =��ҫ'��/��y��ְ�������MCF�������skȯ_����Р��r�*�E"�4v�D����h���aq���ˡ#8r�[��ٳ��h�      -      x������ � �      �   D  x��P�R�@<O�����fC�$��u�<1	���cH������Ѫ���>�TGx%�@�5DjI���m%Q�ӂ-����\���y8��7_8����J���@�NC[x���`B,hj B�0 ��0�<���=s�F�O� �05A��˜����f2��Ʈ���1^�#�XVؗ���2�\�%<?�e��2	C��W�׉��J}A�ʂ�;���玐`PL�π�����]�����˟�#�A�+%uW4��Mz��?��u'9VX�4��L�mKe=�fbkW��K�|<l�bڍ��y�?���i�)&.      /   �  x��Y˒Ǖ]C_�^5�h�Uxx�HI�X�hS���DU���U�Ŭ�B+����WOĬf71;�O�%>�f$��4P����s�͚���TkBc\gF�cSy]�ϻ}���g���|2O��������t�YM6�l9�6��r:�/nn�r�ﺦ����mlL�ma�M�?7ϋ��]W.��w�����.���N�U�m�U���0J�����l���	6ת���Q�V_�r���QXG5��:�/m�j1��q�`{�o�r�����0�Ϊ�;�e�U��l��;<f�
�����v�t�����[n��4g���-v�}v!湿�?��ϫ��g�ѷ���zSi�zk��Ɇѝo6��|��l6{4��۟�w]�����`�|����q��0��3���r��k���l�j�]�^[�j���W[�cgw�B �( D�##�֕*�mǹ��G2��އ`w6��eT�S\?���� �ܨ����U��7�j�c��@\��6�{�;�^�ck��v{�Q�\�W�̕�hq:Ι��Ӫ҆
�x��c��^wW��c����4����@���x� Ӛ0�֫l�^����z5[n���խ˦h�O�����6���@kP�m�4�o4���;Sz��Zةջ��ѫ4���7*ͷ�ζ����s��}�7��7��=Y���B��ں��:�ErDr���m�cU�+��[Kp-,��ѝ�Q�e((q�r��r�����H�2�P0o��U"r�>z�Ո�Q���ْ�|~X^3���������G{?��9UV�T�S|�o��A��� +\��1��n��d����|6�"9��g�z�X��Y����.��9*ĥ����t����خ�9�Ep_Ó2zu���A��>�>�$T��#�.��6�8�9�HA�/�L��B��\��!��N��V�Ǩ���D�镆��֚��7[aUߓ3 ��	:}fg�i���RsP��9����u$;�a�&��b@O�%�ձ��b��h{M.l�����l��
S�L׳�x=����l�z<��~z*�Pĺ�t��ܨ?����^;R�q�^*Y��Yo�i�����C���+��l��ӄ�ʷ/}��-����W��Υ��j5?p��'Pb�[?����Xd�e)E�^`��Z	i�`�8�籑E�+H��Ox���a�-�6TN`J�.�R���,��h�&U��dC���A��g����&m��礟���1bRK��p�Z���~����=]f�I6ŷ�,�g���x�.�vv|w��t��i���^#(9ux����'J��5��<jPx(��C��4v��HWLH��Pk �E�)2��\�`���2�IM�t�����ŠХuR���OЈg��(�����7d�����-���4>_ƀ |.�N�S���]N�F�Ǘ��AM`�,�	t�ZPMPh�t�����l�X�g�X��x���3|~<�O�9[X���1�1����g;!�f`P~\�+:>ko=ސe��C�Q�Bl����,Q�:{-��y���zu��$�%6��eR,���^T���x�q%�@��͐�Z�v�b�����L�R�4wP��?�`�:�2�hB��87b� &��G�/h�#0,�:J�$ҝ?!�ဆG������x�hW�v��V��x5��+X�G��d�f����Oq9����3���]ٺaj����ѕH)�2����,�o���CI�rYDZ v|����:���ܦLw�W�qȚT�Jy6�9�Ʋ%A�Bĝ
���V<�������k=� r
�]On(I4� IՊ9�}o����0������Zt;�AkC]Fb���_����\s�,�p24~�Ɖ��ӊ6}�]$C�|���p�TB���ɀ���l=�6��z1_>.�v}*�>���f:�e�7������ZZa5��^�q�	w��]�#��r�A�(��x,��Ce�Q�bЃi9s����1)j�H�(t Fk��Ik���"������uZG��u}T/a|\2�T}0�\�锇��+j	y����D�T�B�6��b�jˆ�>�z���9��eT$����)���蕏[0��Sq]/gk4�?2t�b���f�҇��m�-F��k�jD#Q�n��>�����n-H�jv��D'��g#A���H$y���C�H{1��@𠏉�R�'�ፅCKR�@7��#����T~��,h��K�&��]s'"Ԟn15mD"5x�,��ri�(t�`�@�����[P����T�͒1�5���W0�A�V�"<H�)C��t~����O v)�N2v�?�}��<���1o"��]9�:;��vy[/�����hϦ���(�E�8��>�/����
���!A��7�袰�ޚʖ��z���}���k��&&���@^��e@6�~GG�!竔,C�Dk�[����)vgm� DG��ޟm<�"�N(�6���\\�.���Ti�,�����尗;��I+K�s;jK�/U"ЊS�~��l��3�?Y�I _��ޮ~l���a����+6�x8N���(lg�t����ef)��G��@��ꑻZ@sIA+����P�e���㌒�"��r���K��J�a�5�9���4�ɶ�wG�9jN ,s��1���Ng�I�J�7/g_��`/W��j9O��R7���7��~~{�OP����{�-�|�ˠw���kS�Hv����Ŧ��Z	°�v�y,��/�X\ir�S�j Q�����������՗ťi�y�P�sY�]L^�f��"�*��xv���/�N���"�8�
��.�7�r#"<*��68i�P@
�xݤ2)�=<����VU�\��o����[������J����Zn{��z��̲�x5n?L4�cS��L�(��ﺣ;����݌ފ����t�|�KW18��<m�0x��q�O���K��i����
g�V����{D�'1��K�� �����\��^Z&�v�\�ǋ^��MqtW���~���-&g��(������r��%��F�֘���4�A�woOH��	�-���f5^�2 ���-�a���n榋h���NCVl{yo��5���"�N~0���_ݰ����JZs=ܩЋ��8���H/V�9��=�$5&	�$m��6t|_B��[�94=�W���v�T�ۃ&ݮ���lg喒Zf��.8e�IZz� ���K"�N�&��-�`Wu����0%[��~��p-�u�ZH�����Q6�)�м"���t���r3���2���װDa��Eڥ���.��A�8X��XҞ�V��L�����9����I��y��*���C�x��IC	.�z:�h���$�l6���xo��AZ�Z��8�����\Hk+Br]�"���WPi1?ډ���$:H�%���|I�à���An+���/�+N�����^./6V�P���=�)v�%��M�tw�/خ%̆��f�eGȭ
줒t��\�#I��ث$X��6��rgB�s��0HK��O_�;AL�`���֣�c�\p��X}�2�r�h����z3�-g�u�Z��h~�w]_[�ܣ�(�zhr�<j�t��L/̶�V_��}�A�+?����B�V����;�w}�Q_����uW��s����l`���tB����m�~��	|;�Y�)���N&�V�����Z��Uއa��f?m����G�k�Mal1Y�U�������|��g��+��     