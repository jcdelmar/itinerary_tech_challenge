PGDMP     +    (                {            itinerary_db    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16399    itinerary_db    DATABASE     �   CREATE DATABASE itinerary_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE itinerary_db;
                postgres    false            �            1259    24577 	   itinerary    TABLE     �   CREATE TABLE public.itinerary (
    itinerary_id integer NOT NULL,
    title text,
    destination text,
    arrival date,
    departure date,
    is_deleted boolean DEFAULT false,
    notes text
);
    DROP TABLE public.itinerary;
       public         heap    postgres    false            �            1259    24587    itinerary_day    TABLE     �   CREATE TABLE public.itinerary_day (
    itinerary_day_id integer NOT NULL,
    itinerary_id integer,
    is_deleted boolean DEFAULT false
);
 !   DROP TABLE public.itinerary_day;
       public         heap    postgres    false            �            1259    24586 "   itinerary_day_itinerary_day_id_seq    SEQUENCE     �   CREATE SEQUENCE public.itinerary_day_itinerary_day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.itinerary_day_itinerary_day_id_seq;
       public          postgres    false    217                       0    0 "   itinerary_day_itinerary_day_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.itinerary_day_itinerary_day_id_seq OWNED BY public.itinerary_day.itinerary_day_id;
          public          postgres    false    216            �            1259    24576    itinerary_itinerary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.itinerary_itinerary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.itinerary_itinerary_id_seq;
       public          postgres    false    215                       0    0    itinerary_itinerary_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.itinerary_itinerary_id_seq OWNED BY public.itinerary.itinerary_id;
          public          postgres    false    214            �            1259    24595    todos    TABLE     �   CREATE TABLE public.todos (
    todo_id integer NOT NULL,
    itinerary_day_id integer,
    todo_title text,
    todo_location text,
    todo_start text,
    todo_end text,
    todo_notes text,
    is_deleted boolean DEFAULT false
);
    DROP TABLE public.todos;
       public         heap    postgres    false            �            1259    24594    todos_todo_id_seq    SEQUENCE     �   CREATE SEQUENCE public.todos_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.todos_todo_id_seq;
       public          postgres    false    219                       0    0    todos_todo_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.todos_todo_id_seq OWNED BY public.todos.todo_id;
          public          postgres    false    218            o           2604    24580    itinerary itinerary_id    DEFAULT     �   ALTER TABLE ONLY public.itinerary ALTER COLUMN itinerary_id SET DEFAULT nextval('public.itinerary_itinerary_id_seq'::regclass);
 E   ALTER TABLE public.itinerary ALTER COLUMN itinerary_id DROP DEFAULT;
       public          postgres    false    214    215    215            q           2604    24590    itinerary_day itinerary_day_id    DEFAULT     �   ALTER TABLE ONLY public.itinerary_day ALTER COLUMN itinerary_day_id SET DEFAULT nextval('public.itinerary_day_itinerary_day_id_seq'::regclass);
 M   ALTER TABLE public.itinerary_day ALTER COLUMN itinerary_day_id DROP DEFAULT;
       public          postgres    false    216    217    217            s           2604    24598    todos todo_id    DEFAULT     n   ALTER TABLE ONLY public.todos ALTER COLUMN todo_id SET DEFAULT nextval('public.todos_todo_id_seq'::regclass);
 <   ALTER TABLE public.todos ALTER COLUMN todo_id DROP DEFAULT;
       public          postgres    false    219    218    219            
          0    24577 	   itinerary 
   TABLE DATA           l   COPY public.itinerary (itinerary_id, title, destination, arrival, departure, is_deleted, notes) FROM stdin;
    public          postgres    false    215   .                 0    24587    itinerary_day 
   TABLE DATA           S   COPY public.itinerary_day (itinerary_day_id, itinerary_id, is_deleted) FROM stdin;
    public          postgres    false    217   �                 0    24595    todos 
   TABLE DATA           �   COPY public.todos (todo_id, itinerary_day_id, todo_title, todo_location, todo_start, todo_end, todo_notes, is_deleted) FROM stdin;
    public          postgres    false    219   �                  0    0 "   itinerary_day_itinerary_day_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.itinerary_day_itinerary_day_id_seq', 9, true);
          public          postgres    false    216                       0    0    itinerary_itinerary_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.itinerary_itinerary_id_seq', 29, true);
          public          postgres    false    214                       0    0    todos_todo_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.todos_todo_id_seq', 1, true);
          public          postgres    false    218            x           2606    24593     itinerary_day itinerary_day_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.itinerary_day
    ADD CONSTRAINT itinerary_day_pkey PRIMARY KEY (itinerary_day_id);
 J   ALTER TABLE ONLY public.itinerary_day DROP CONSTRAINT itinerary_day_pkey;
       public            postgres    false    217            v           2606    24585    itinerary itinerary_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.itinerary
    ADD CONSTRAINT itinerary_pkey PRIMARY KEY (itinerary_id);
 B   ALTER TABLE ONLY public.itinerary DROP CONSTRAINT itinerary_pkey;
       public            postgres    false    215            z           2606    24603    todos todos_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (todo_id);
 :   ALTER TABLE ONLY public.todos DROP CONSTRAINT todos_pkey;
       public            postgres    false    219            
   P   x�3���,�IU��K�tI-.��K,������u�t��Lc�4μ���b���T.#KNC#c0Ƣ(������� �A            x������ � �            x������ � �     