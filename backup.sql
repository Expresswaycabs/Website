PGDMP     6                    s            d5vk21kjdqopl2    9.4.1    9.4.0 =    2           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            3           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            4           1262    114731    d5vk21kjdqopl2    DATABASE     �   CREATE DATABASE d5vk21kjdqopl2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d5vk21kjdqopl2;
             hukokhbwholscu    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             hukokhbwholscu    false            5           0    0 
   SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  hukokhbwholscu    false    6            6           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM hukokhbwholscu;
GRANT ALL ON SCHEMA public TO hukokhbwholscu;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  hukokhbwholscu    false    6            �            3079    11861    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            7           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    183            �            1259    230974    AVAILABILITY_DETAIL    TABLE     �   CREATE TABLE "AVAILABILITY_DETAIL" (
    "Availability_id" integer NOT NULL,
    from_date date,
    to_date date,
    car_no character varying
);
 )   DROP TABLE public."AVAILABILITY_DETAIL";
       public         hukokhbwholscu    false    6            �            1259    230355    BOOKING_DETAIL    TABLE     �  CREATE TABLE "BOOKING_DETAIL" (
    customer_id uuid,
    booking_no uuid NOT NULL,
    route_id integer,
    customer_eid character varying,
    payment_id uuid,
    payment_amount money,
    customer_mno bigint,
    car_no character varying,
    status_no integer,
    from_city name,
    to_city name,
    from_date date,
    to_date date,
    time_arr time with time zone,
    time_ret time with time zone,
    status_id integer
);
 $   DROP TABLE public."BOOKING_DETAIL";
       public         hukokhbwholscu    false    6            �            1259    229794 
   CAR_DETAIL    TABLE     8  CREATE TABLE "CAR_DETAIL" (
    car_no character varying NOT NULL,
    car_capacity integer,
    car_name name,
    availability boolean,
    price_km money,
    rating integer,
    waiting_price_hr money,
    carpooling boolean,
    return_stat boolean,
    sp_name name,
    sp_eid character varying,
    sp_password character varying,
    sp_ownername name,
    sp_mno bigint,
    sp_add text,
    sp_pin bigint,
    sp_city name,
    sp_lno character varying,
    sp_adhaar character varying,
    sp_carno integer,
    sp_id uuid,
    "Availability_id" integer
);
     DROP TABLE public."CAR_DETAIL";
       public         hukokhbwholscu    false    6            �            1259    228588    CUSTOMER_DETAIL    TABLE     f  CREATE TABLE "CUSTOMER_DETAIL" (
    customer_id uuid NOT NULL,
    customer_name name,
    customer_eid character varying(30) NOT NULL,
    customer_password character varying(30),
    customer_gender character varying(10),
    customer_mno bigint NOT NULL,
    customer_add text,
    customer_pin bigint,
    customer_city name,
    "customer_DOB" date
);
 %   DROP TABLE public."CUSTOMER_DETAIL";
       public         hukokhbwholscu    false    6            �            1259    469009    EM_DRIVER_DETAIL    TABLE       CREATE TABLE "EM_DRIVER_DETAIL" (
    em_id integer NOT NULL,
    em_mno int8range NOT NULL,
    sp_id uuid,
    em_name name,
    em_lno int8range NOT NULL,
    "em_DOB" date,
    em_gender character varying,
    car_no character varying,
    aadhar character varying NOT NULL
);
 &   DROP TABLE public."EM_DRIVER_DETAIL";
       public         hukokhbwholscu    false    6            �            1259    228908    PLACES    TABLE     �   CREATE TABLE "PLACES" (
    route_id integer NOT NULL,
    from_city name,
    from_city_lat numeric,
    from_city_long numeric,
    to_city name,
    to_city_lat numeric,
    to_city_long numeric
);
    DROP TABLE public."PLACES";
       public         hukokhbwholscu    false    6            �            1259    228952    SELECTION_CRITERIA    TABLE     a  CREATE TABLE "SELECTION_CRITERIA" (
    customer_id uuid,
    customer_name name,
    customer_eid character varying(30),
    customer_password character varying(30),
    customer_gender character varying(10),
    customer_mno bigint,
    customer_add text,
    customer_pin bigint,
    customer_city name,
    "customer_DOB" date,
    select_id integer NOT NULL,
    carpooling boolean,
    return_status boolean,
    from_date date,
    to_date date,
    from_time time with time zone,
    to_time time with time zone,
    no_of_pass integer,
    status_no integer
)
INHERITS ("PLACES", "CUSTOMER_DETAIL");
 (   DROP TABLE public."SELECTION_CRITERIA";
       public         hukokhbwholscu    false    172    6    173            �            1259    229495    SERVICE_PROVIDER    TABLE     i  CREATE TABLE "SERVICE_PROVIDER" (
    sp_id uuid NOT NULL,
    sp_name name,
    sp_eid character varying NOT NULL,
    sp_password character varying,
    sp_ownername name,
    sp_mno bigint NOT NULL,
    sp_add text,
    sp_pin bigint,
    sp_city name,
    sp_lno character varying NOT NULL,
    sp_adhaar character varying NOT NULL,
    sp_carno integer
);
 &   DROP TABLE public."SERVICE_PROVIDER";
       public         hukokhbwholscu    false    6            �            1259    248526    STATUS_DETAIL_2    TABLE     7  CREATE TABLE "STATUS_DETAIL_2" (
    status2_id integer NOT NULL,
    select_id integer,
    route_id integer,
    status_no integer,
    booking_no uuid,
    car_no character varying,
    from_place name,
    to_place name,
    from_time time with time zone,
    payment_id integer,
    payment_amout money
);
 %   DROP TABLE public."STATUS_DETAIL_2";
       public         hukokhbwholscu    false    6            �            1259    251507    STATUS_DETAIL_4    TABLE     6  CREATE TABLE "STATUS_DETAIL_4" (
    status4_id integer NOT NULL,
    select_id integer,
    booking_no uuid,
    car_no character varying,
    payment_id integer,
    status_no integer,
    payment_amount money,
    route_id integer,
    from_city name,
    to_city name,
    from_time time with time zone
);
 %   DROP TABLE public."STATUS_DETAIL_4";
       public         hukokhbwholscu    false    6            �            1259    251331    STATUS_DETAIL_5    TABLE     �   CREATE TABLE "STATUS_DETAIL_5" (
    from_time time with time zone,
    status5_id integer NOT NULL,
    car_no character varying,
    payment_id integer,
    payment_amount money,
    booking_no uuid
)
INHERITS ("SELECTION_CRITERIA");
 %   DROP TABLE public."STATUS_DETAIL_5";
       public         hukokhbwholscu    false    174    6            +          0    230974    AVAILABILITY_DETAIL 
   TABLE DATA               W   COPY "AVAILABILITY_DETAIL" ("Availability_id", from_date, to_date, car_no) FROM stdin;
    public       hukokhbwholscu    false    178   �V       *          0    230355    BOOKING_DETAIL 
   TABLE DATA               �   COPY "BOOKING_DETAIL" (customer_id, booking_no, route_id, customer_eid, payment_id, payment_amount, customer_mno, car_no, status_no, from_city, to_city, from_date, to_date, time_arr, time_ret, status_id) FROM stdin;
    public       hukokhbwholscu    false    177   �V       )          0    229794 
   CAR_DETAIL 
   TABLE DATA                 COPY "CAR_DETAIL" (car_no, car_capacity, car_name, availability, price_km, rating, waiting_price_hr, carpooling, return_stat, sp_name, sp_eid, sp_password, sp_ownername, sp_mno, sp_add, sp_pin, sp_city, sp_lno, sp_adhaar, sp_carno, sp_id, "Availability_id") FROM stdin;
    public       hukokhbwholscu    false    176   �V       %          0    228588    CUSTOMER_DETAIL 
   TABLE DATA               �   COPY "CUSTOMER_DETAIL" (customer_id, customer_name, customer_eid, customer_password, customer_gender, customer_mno, customer_add, customer_pin, customer_city, "customer_DOB") FROM stdin;
    public       hukokhbwholscu    false    172   �V       /          0    469009    EM_DRIVER_DETAIL 
   TABLE DATA               q   COPY "EM_DRIVER_DETAIL" (em_id, em_mno, sp_id, em_name, em_lno, "em_DOB", em_gender, car_no, aadhar) FROM stdin;
    public       hukokhbwholscu    false    182   vW       &          0    228908    PLACES 
   TABLE DATA               s   COPY "PLACES" (route_id, from_city, from_city_lat, from_city_long, to_city, to_city_lat, to_city_long) FROM stdin;
    public       hukokhbwholscu    false    173   �W       '          0    228952    SELECTION_CRITERIA 
   TABLE DATA               {  COPY "SELECTION_CRITERIA" (route_id, from_city, from_city_lat, from_city_long, to_city, to_city_lat, to_city_long, customer_id, customer_name, customer_eid, customer_password, customer_gender, customer_mno, customer_add, customer_pin, customer_city, "customer_DOB", select_id, carpooling, return_status, from_date, to_date, from_time, to_time, no_of_pass, status_no) FROM stdin;
    public       hukokhbwholscu    false    174   �W       (          0    229495    SERVICE_PROVIDER 
   TABLE DATA               �   COPY "SERVICE_PROVIDER" (sp_id, sp_name, sp_eid, sp_password, sp_ownername, sp_mno, sp_add, sp_pin, sp_city, sp_lno, sp_adhaar, sp_carno) FROM stdin;
    public       hukokhbwholscu    false    175   �W       ,          0    248526    STATUS_DETAIL_2 
   TABLE DATA               �   COPY "STATUS_DETAIL_2" (status2_id, select_id, route_id, status_no, booking_no, car_no, from_place, to_place, from_time, payment_id, payment_amout) FROM stdin;
    public       hukokhbwholscu    false    179   �W       .          0    251507    STATUS_DETAIL_4 
   TABLE DATA               �   COPY "STATUS_DETAIL_4" (status4_id, select_id, booking_no, car_no, payment_id, status_no, payment_amount, route_id, from_city, to_city, from_time) FROM stdin;
    public       hukokhbwholscu    false    181   X       -          0    251331    STATUS_DETAIL_5 
   TABLE DATA               �  COPY "STATUS_DETAIL_5" (route_id, from_city, from_city_lat, from_city_long, to_city, to_city_lat, to_city_long, customer_id, customer_name, customer_eid, customer_password, customer_gender, customer_mno, customer_add, customer_pin, customer_city, "customer_DOB", select_id, carpooling, return_status, from_date, to_date, from_time, to_time, no_of_pass, status_no, status5_id, car_no, payment_id, payment_amount, booking_no) FROM stdin;
    public       hukokhbwholscu    false    180   $X       �           2606    230978    availability_key 
   CONSTRAINT     l   ALTER TABLE ONLY "AVAILABILITY_DETAIL"
    ADD CONSTRAINT availability_key PRIMARY KEY ("Availability_id");
 P   ALTER TABLE ONLY public."AVAILABILITY_DETAIL" DROP CONSTRAINT availability_key;
       public         hukokhbwholscu    false    178    178            �           2606    230362    booking_key 
   CONSTRAINT     [   ALTER TABLE ONLY "BOOKING_DETAIL"
    ADD CONSTRAINT booking_key PRIMARY KEY (booking_no);
 F   ALTER TABLE ONLY public."BOOKING_DETAIL" DROP CONSTRAINT booking_key;
       public         hukokhbwholscu    false    177    177            �           2606    229801    car_key 
   CONSTRAINT     O   ALTER TABLE ONLY "CAR_DETAIL"
    ADD CONSTRAINT car_key PRIMARY KEY (car_no);
 >   ALTER TABLE ONLY public."CAR_DETAIL" DROP CONSTRAINT car_key;
       public         hukokhbwholscu    false    176    176            �           2606    228595    customer_key 
   CONSTRAINT     z   ALTER TABLE ONLY "CUSTOMER_DETAIL"
    ADD CONSTRAINT customer_key PRIMARY KEY (customer_id, customer_eid, customer_mno);
 H   ALTER TABLE ONLY public."CUSTOMER_DETAIL" DROP CONSTRAINT customer_key;
       public         hukokhbwholscu    false    172    172    172    172            �           2606    469019    em_key1 
   CONSTRAINT     l   ALTER TABLE ONLY "EM_DRIVER_DETAIL"
    ADD CONSTRAINT em_key1 PRIMARY KEY (em_id, em_mno, aadhar, em_lno);
 D   ALTER TABLE ONLY public."EM_DRIVER_DETAIL" DROP CONSTRAINT em_key1;
       public         hukokhbwholscu    false    182    182    182    182    182            �           2606    228915 	   place_key 
   CONSTRAINT     O   ALTER TABLE ONLY "PLACES"
    ADD CONSTRAINT place_key PRIMARY KEY (route_id);
 <   ALTER TABLE ONLY public."PLACES" DROP CONSTRAINT place_key;
       public         hukokhbwholscu    false    173    173            �           2606    251338    select5_key 
   CONSTRAINT     \   ALTER TABLE ONLY "STATUS_DETAIL_5"
    ADD CONSTRAINT select5_key PRIMARY KEY (status5_id);
 G   ALTER TABLE ONLY public."STATUS_DETAIL_5" DROP CONSTRAINT select5_key;
       public         hukokhbwholscu    false    180    180            �           2606    228959 
   select_key 
   CONSTRAINT     ]   ALTER TABLE ONLY "SELECTION_CRITERIA"
    ADD CONSTRAINT select_key PRIMARY KEY (select_id);
 I   ALTER TABLE ONLY public."SELECTION_CRITERIA" DROP CONSTRAINT select_key;
       public         hukokhbwholscu    false    174    174            �           2606    229502    sp_key 
   CONSTRAINT     v   ALTER TABLE ONLY "SERVICE_PROVIDER"
    ADD CONSTRAINT sp_key PRIMARY KEY (sp_id, sp_eid, sp_mno, sp_lno, sp_adhaar);
 C   ALTER TABLE ONLY public."SERVICE_PROVIDER" DROP CONSTRAINT sp_key;
       public         hukokhbwholscu    false    175    175    175    175    175    175            �           2606    248533    status2_key 
   CONSTRAINT     \   ALTER TABLE ONLY "STATUS_DETAIL_2"
    ADD CONSTRAINT status2_key PRIMARY KEY (status2_id);
 G   ALTER TABLE ONLY public."STATUS_DETAIL_2" DROP CONSTRAINT status2_key;
       public         hukokhbwholscu    false    179    179            �           2606    251514    status4_key 
   CONSTRAINT     \   ALTER TABLE ONLY "STATUS_DETAIL_4"
    ADD CONSTRAINT status4_key PRIMARY KEY (status4_id);
 G   ALTER TABLE ONLY public."STATUS_DETAIL_4" DROP CONSTRAINT status4_key;
       public         hukokhbwholscu    false    181    181            �           1259    263330    fki_availability_fkey    INDEX     R   CREATE INDEX fki_availability_fkey ON "AVAILABILITY_DETAIL" USING btree (car_no);
 )   DROP INDEX public.fki_availability_fkey;
       public         hukokhbwholscu    false    178            �           1259    274346    fki_booking_fkey3    INDEX     L   CREATE INDEX fki_booking_fkey3 ON "BOOKING_DETAIL" USING btree (status_id);
 %   DROP INDEX public.fki_booking_fkey3;
       public         hukokhbwholscu    false    177            �           1259    231028    fki_car_fkey    INDEX     K   CREATE INDEX fki_car_fkey ON "CAR_DETAIL" USING btree ("Availability_id");
     DROP INDEX public.fki_car_fkey;
       public         hukokhbwholscu    false    176            �           1259    469025    fki_em_fkey    INDEX     E   CREATE INDEX fki_em_fkey ON "EM_DRIVER_DETAIL" USING btree (car_no);
    DROP INDEX public.fki_em_fkey;
       public         hukokhbwholscu    false    182            �           2606    263325    availability_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY "AVAILABILITY_DETAIL"
    ADD CONSTRAINT availability_fkey FOREIGN KEY (car_no) REFERENCES "CAR_DETAIL"(car_no);
 Q   ALTER TABLE ONLY public."AVAILABILITY_DETAIL" DROP CONSTRAINT availability_fkey;
       public       hukokhbwholscu    false    1943    178    176            �           2606    230363 
   booking_fkey1 
   FK CONSTRAINT     y   ALTER TABLE ONLY "BOOKING_DETAIL"
    ADD CONSTRAINT booking_fkey1 FOREIGN KEY (car_no) REFERENCES "CAR_DETAIL"(car_no);
 H   ALTER TABLE ONLY public."BOOKING_DETAIL" DROP CONSTRAINT booking_fkey1;
       public       hukokhbwholscu    false    177    1943    176            �           2606    230368 
   booking_fkey2 
   FK CONSTRAINT     �   ALTER TABLE ONLY "BOOKING_DETAIL"
    ADD CONSTRAINT booking_fkey2 FOREIGN KEY (customer_id, customer_eid, customer_mno) REFERENCES "CUSTOMER_DETAIL"(customer_id, customer_eid, customer_mno) MATCH FULL;
 H   ALTER TABLE ONLY public."BOOKING_DETAIL" DROP CONSTRAINT booking_fkey2;
       public       hukokhbwholscu    false    172    177    177    177    172    172    1935            �           2606    274341 
   booking_fkey3 
   FK CONSTRAINT     �   ALTER TABLE ONLY "BOOKING_DETAIL"
    ADD CONSTRAINT booking_fkey3 FOREIGN KEY (status_id) REFERENCES "STATUS_DETAIL_2"(status2_id);
 H   ALTER TABLE ONLY public."BOOKING_DETAIL" DROP CONSTRAINT booking_fkey3;
       public       hukokhbwholscu    false    1952    179    177            �           2606    274367 
   booking_fkey4 
   FK CONSTRAINT     �   ALTER TABLE ONLY "BOOKING_DETAIL"
    ADD CONSTRAINT booking_fkey4 FOREIGN KEY (status_id) REFERENCES "STATUS_DETAIL_4"(status4_id);
 H   ALTER TABLE ONLY public."BOOKING_DETAIL" DROP CONSTRAINT booking_fkey4;
       public       hukokhbwholscu    false    181    1956    177            �           2606    274378 
   booking_fkey5 
   FK CONSTRAINT     �   ALTER TABLE ONLY "BOOKING_DETAIL"
    ADD CONSTRAINT booking_fkey5 FOREIGN KEY (status_id) REFERENCES "STATUS_DETAIL_5"(status5_id);
 H   ALTER TABLE ONLY public."BOOKING_DETAIL" DROP CONSTRAINT booking_fkey5;
       public       hukokhbwholscu    false    177    180    1954            �           2606    231023    car_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY "CAR_DETAIL"
    ADD CONSTRAINT car_fkey FOREIGN KEY ("Availability_id") REFERENCES "AVAILABILITY_DETAIL"("Availability_id");
 ?   ALTER TABLE ONLY public."CAR_DETAIL" DROP CONSTRAINT car_fkey;
       public       hukokhbwholscu    false    176    178    1949            �           2606    469020    em_fkey 
   FK CONSTRAINT     u   ALTER TABLE ONLY "EM_DRIVER_DETAIL"
    ADD CONSTRAINT em_fkey FOREIGN KEY (car_no) REFERENCES "CAR_DETAIL"(car_no);
 D   ALTER TABLE ONLY public."EM_DRIVER_DETAIL" DROP CONSTRAINT em_fkey;
       public       hukokhbwholscu    false    176    182    1943            �           2606    228960    select_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY "SELECTION_CRITERIA"
    ADD CONSTRAINT select_fkey FOREIGN KEY (route_id) REFERENCES "PLACES"(route_id) MATCH FULL;
 J   ALTER TABLE ONLY public."SELECTION_CRITERIA" DROP CONSTRAINT select_fkey;
       public       hukokhbwholscu    false    173    1937    174            �           2606    248534    status2_fkey 
   FK CONSTRAINT     �   ALTER TABLE ONLY "STATUS_DETAIL_2"
    ADD CONSTRAINT status2_fkey FOREIGN KEY (booking_no) REFERENCES "BOOKING_DETAIL"(booking_no);
 H   ALTER TABLE ONLY public."STATUS_DETAIL_2" DROP CONSTRAINT status2_fkey;
       public       hukokhbwholscu    false    179    177    1946            �           2606    248539 
   status2_fkey2 
   FK CONSTRAINT     �   ALTER TABLE ONLY "STATUS_DETAIL_2"
    ADD CONSTRAINT status2_fkey2 FOREIGN KEY (select_id) REFERENCES "SELECTION_CRITERIA"(select_id);
 I   ALTER TABLE ONLY public."STATUS_DETAIL_2" DROP CONSTRAINT status2_fkey2;
       public       hukokhbwholscu    false    174    179    1939            �           2606    251515 
   status4_fkey1 
   FK CONSTRAINT     �   ALTER TABLE ONLY "STATUS_DETAIL_4"
    ADD CONSTRAINT status4_fkey1 FOREIGN KEY (booking_no) REFERENCES "BOOKING_DETAIL"(booking_no);
 I   ALTER TABLE ONLY public."STATUS_DETAIL_4" DROP CONSTRAINT status4_fkey1;
       public       hukokhbwholscu    false    177    1946    181            �           2606    251339 
   status5_fkey1 
   FK CONSTRAINT     �   ALTER TABLE ONLY "STATUS_DETAIL_5"
    ADD CONSTRAINT status5_fkey1 FOREIGN KEY (select_id) REFERENCES "SELECTION_CRITERIA"(select_id);
 I   ALTER TABLE ONLY public."STATUS_DETAIL_5" DROP CONSTRAINT status5_fkey1;
       public       hukokhbwholscu    false    180    1939    174            �           2606    251344 
   status5_fkey2 
   FK CONSTRAINT     �   ALTER TABLE ONLY "STATUS_DETAIL_5"
    ADD CONSTRAINT status5_fkey2 FOREIGN KEY (booking_no) REFERENCES "BOOKING_DETAIL"(booking_no);
 I   ALTER TABLE ONLY public."STATUS_DETAIL_5" DROP CONSTRAINT status5_fkey2;
       public       hukokhbwholscu    false    177    1946    180            �           2606    251349 
   status5_fkey3 
   FK CONSTRAINT     z   ALTER TABLE ONLY "STATUS_DETAIL_5"
    ADD CONSTRAINT status5_fkey3 FOREIGN KEY (route_id) REFERENCES "PLACES"(route_id);
 I   ALTER TABLE ONLY public."STATUS_DETAIL_5" DROP CONSTRAINT status5_fkey3;
       public       hukokhbwholscu    false    1937    173    180            �           2606    251520    status_fkey2 
   FK CONSTRAINT     �   ALTER TABLE ONLY "STATUS_DETAIL_4"
    ADD CONSTRAINT status_fkey2 FOREIGN KEY (select_id) REFERENCES "SELECTION_CRITERIA"(select_id);
 H   ALTER TABLE ONLY public."STATUS_DETAIL_4" DROP CONSTRAINT status_fkey2;
       public       hukokhbwholscu    false    1939    174    181            +   
   x������ � �      *   
   x������ � �      )   
   x������ � �      %   x   x�M�;�  �z9��a��t�A[���B&���o��^$v\i)5�MŊ�D(�IEx�Xy���g�p�d�z��>�i��>�}���
^��&�s���<o�>S ����k��K�i�R?1'�      /   
   x������ � �      &   
   x������ � �      '   
   x������ � �      (   
   x������ � �      ,   
   x������ � �      .   
   x������ � �      -   
   x������ � �     