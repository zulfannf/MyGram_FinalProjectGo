PGDMP                      |            myGram    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16652    myGram    DATABASE     �   CREATE DATABASE "myGram" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "myGram";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16666    photos    TABLE     �   CREATE TABLE public.photos (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    title text NOT NULL,
    caption text,
    photo_url text NOT NULL,
    user_id bigint
);
    DROP TABLE public.photos;
       public         heap    postgres    false    4            �            1259    16665    photos_id_seq    SEQUENCE     v   CREATE SEQUENCE public.photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.photos_id_seq;
       public          postgres    false    218    4            �           0    0    photos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;
          public          postgres    false    217            �            1259    16654    users    TABLE     "  CREATE TABLE public.users (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    username text NOT NULL,
    email text NOT NULL,
    age bigint NOT NULL,
    password text NOT NULL,
    CONSTRAINT chk_users_age CHECK ((age > 8))
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    16653    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216    4            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215                        2604    16669 	   photos id    DEFAULT     f   ALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);
 8   ALTER TABLE public.photos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218                       2604    16657    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16666    photos 
   TABLE DATA                 public          postgres    false    218   �       �          0    16654    users 
   TABLE DATA                 public          postgres    false    216   �       �           0    0    photos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.photos_id_seq', 4, true);
          public          postgres    false    217            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    215            '           2606    16673    photos photos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.photos DROP CONSTRAINT photos_pkey;
       public            postgres    false    218            %           2606    16662    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            "           1259    16663    idx_users_email    INDEX     I   CREATE UNIQUE INDEX idx_users_email ON public.users USING btree (email);
 #   DROP INDEX public.idx_users_email;
       public            postgres    false    216            #           1259    16664    idx_users_username    INDEX     O   CREATE UNIQUE INDEX idx_users_username ON public.users USING btree (username);
 &   DROP INDEX public.idx_users_username;
       public            postgres    false    216            (           2606    16674    photos fk_users_photos    FK CONSTRAINT     u   ALTER TABLE ONLY public.photos
    ADD CONSTRAINT fk_users_photos FOREIGN KEY (user_id) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.photos DROP CONSTRAINT fk_users_photos;
       public          postgres    false    4645    216    218            �   �   x�őMK1E��+���M^^��$�\t1 lu�I�L��	4�v%�.��.��^�\-�֤]�I*�!x��1�'�r��X�+�%3�ssD��"X0��n@�����L�P|!>��\$�.��C��d4��=��)oL#��|�`t�k���ȕц�M���ݥs^�U��r��v��,h
���L�M�r���6_�J~-�*�\K�L�l�Ɋ��qy��rU�g֪�      �   �   x���OS�P�=��-���޽�@��lzJB������X�3�;s�Y�[8ӥK��5ɦ}-�Pl�q�%��i�3zI�a8�q @@�A�q$j@�B�)TASֈ��uZy)�uu8"<�����Rb��:M6ҋ�fڵ7x��K��3
�bA�{o�%/���\8���_���>�D
���Iʉ��~zL?!�1����>$k�cY�xںM�q�Gi�ZRo��j�O�3��1�Q=3�Q�	�3�ld     