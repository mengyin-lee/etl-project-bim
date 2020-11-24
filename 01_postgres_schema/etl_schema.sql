CREATE TABLE state_abbr (
    state_code Varchar(2)   NOT NULL,
    state_name Varchar(100)   NOT NULL,
    CONSTRAINT pk_state_abbr PRIMARY KEY (state_code)
     );
	 

CREATE TABLE election_demographic (
id serial primary key,
state_code varchar(2) not null,
county_name varchar(100) not null,
men_count integer,
women_count integer);


CREATE TABLE governors_county (
id serial primary key,
state_code varchar(2) not null,
state_name varchar(100) not null,
county_name varchar(100) not null,
current_votes integer);


CREATE TABLE gov_cty_candidate
(id serial primary key,
state_code varchar(2) not null,
state_name varchar(100) not null,
county_name varchar(100) not null,
candidate varchar(100) not null,
party varchar(5),
votes integer,
won boolean);





