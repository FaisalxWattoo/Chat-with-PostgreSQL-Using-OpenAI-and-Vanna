-- Table: rental
CREATE TABLE rental (rental_id integer NOT NULL, rental_date timestamp without time zone NOT NULL, inventory_id integer NOT NULL, customer_id smallint NOT NULL, return_date timestamp without time zone, staff_id smallint NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: staff
CREATE TABLE staff (staff_id integer NOT NULL, first_name character varying(45) NOT NULL, last_name character varying(45) NOT NULL, address_id smallint NOT NULL, email character varying(50), store_id smallint NOT NULL, active boolean NOT NULL, username character varying(16) NOT NULL, password character varying(40), last_update timestamp without time zone NOT NULL, picture bytea);

-- Table: payment
CREATE TABLE payment (payment_id integer NOT NULL, customer_id smallint NOT NULL, staff_id smallint NOT NULL, rental_id integer NOT NULL, amount numeric NOT NULL, payment_date timestamp without time zone NOT NULL);

-- Table: actor
CREATE TABLE actor (actor_id integer NOT NULL, first_name character varying(45) NOT NULL, last_name character varying(45) NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: actor_info
CREATE TABLE actor_info (actor_id integer, first_name character varying(45), last_name character varying(45), film_info text);

-- Table: customer_list
CREATE TABLE customer_list (id integer, name text, address character varying(50), zip code character varying(10), phone character varying(20), city character varying(50), country character varying(50), notes text, sid smallint);

-- Table: film_list
CREATE TABLE film_list (fid integer, title character varying(255), description text, category character varying(25), price numeric, length smallint, rating USER-DEFINED, actors text);

-- Table: film
CREATE TABLE film (film_id integer NOT NULL, title character varying(255) NOT NULL, description text, release_year integer, language_id smallint NOT NULL, rental_duration smallint NOT NULL, rental_rate numeric NOT NULL, length smallint, replacement_cost numeric NOT NULL, rating USER-DEFINED, last_update timestamp without time zone NOT NULL, special_features ARRAY, fulltext tsvector NOT NULL);

-- Table: address
CREATE TABLE address (address_id integer NOT NULL, address character varying(50) NOT NULL, address2 character varying(50), district character varying(20) NOT NULL, city_id smallint NOT NULL, postal_code character varying(10), phone character varying(20) NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: category
CREATE TABLE category (category_id integer NOT NULL, name character varying(25) NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: city
CREATE TABLE city (city_id integer NOT NULL, city character varying(50) NOT NULL, country_id smallint NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: country
CREATE TABLE country (country_id integer NOT NULL, country character varying(50) NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: customer
CREATE TABLE customer (customer_id integer NOT NULL, store_id smallint NOT NULL, first_name character varying(45) NOT NULL, last_name character varying(45) NOT NULL, email character varying(50), address_id smallint NOT NULL, activebool boolean NOT NULL, create_date date NOT NULL, last_update timestamp without time zone, active integer);

-- Table: film_actor
CREATE TABLE film_actor (actor_id smallint NOT NULL, film_id smallint NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: film_category
CREATE TABLE film_category (film_id smallint NOT NULL, category_id smallint NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: inventory
CREATE TABLE inventory (inventory_id integer NOT NULL, film_id smallint NOT NULL, store_id smallint NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: language
CREATE TABLE language (language_id integer NOT NULL, name character(20) NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: nicer_but_slower_film_list
CREATE TABLE nicer_but_slower_film_list (fid integer, title character varying(255), description text, category character varying(25), price numeric, length smallint, rating USER-DEFINED, actors text);

-- Table: sales_by_film_category
CREATE TABLE sales_by_film_category (category character varying(25), total_sales numeric);

-- Table: store
CREATE TABLE store (store_id integer NOT NULL, manager_staff_id smallint NOT NULL, address_id smallint NOT NULL, last_update timestamp without time zone NOT NULL);

-- Table: sales_by_store
CREATE TABLE sales_by_store (store text, manager text, total_sales numeric);

-- Table: staff_list
CREATE TABLE staff_list (id integer, name text, address character varying(50), zip code character varying(10), phone character varying(20), city character varying(50), country character varying(50), sid smallint);

