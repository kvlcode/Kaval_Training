create database poll_survey;
use poll_survey;

create table user
(
	id bigint,
    first_name varchar(50),
    middel_name varchar(50),
    last_name varchar(50),
    mobile varchar(15),
    email varchar(50),
    password_hash varchar(32),
    host tinyint(1),
    registered_at datetime,
    last_login datetime,
    intro tinytext,
    profile text,
    primary key(id)    
);



create table poll(
	id bigint(20),
    host_id bigint(20),
    title varchar(75),
    meta_title varchar(100),
    slug varchar(100),
    summary tinytext,
	type smallint(6),
    published tinyint(1),
    created_at datetime,
    updated_at datetime,
    starts_at datetime,
    ends_at datetime,
    content text,
     primary key(id) 

);

create table tag(
	id bigint(20),
    title varchar(75),
    meta_title varchar(100),
    slug varchar(100),
    content text,
     primary key(id) 
);

create table poll_tag(
		poll_id bigint(20),
        tag_id bigint(20)

);


create table poll_question(
	id bigint(20),
    poll_id bigint(20),
    type varchar(50),
    active tinyint(1),
    created_at datetime,
    updated_at datetime,
    content text,
     primary key(id) 
);

create table poll_answer(
	id bigint(20),
    poll_id bigint(20),
    question_id bigint(20),
    active tinyint(1),
    created_at datetime,
    updated_at datetime,
    content text,
     primary key(id) 
);


create table poll_meta
(
	id bigint(20),
    poll_id bigint(20),
    meta_key varchar(50),
    content text,
    primary key(id)
);

create table category
(
	id bigint(20),
    parent_id bigint(20),
    title varchar(75),
    meta_title varchar(100),
    slug varchar(100),
    content text,
    primary key(id)
);

create table poll_category(
    poll_id bigint(20),
    category_id bigint(20)
);

create table poll_vote
(
	id bigint(20),
    poll_id bigint(20),
    question_id bigint(20),
    answer_id bigint(20),
    user_id bigint(20),
	created_at datetime,
    updated_at datetime,
    content text,
    primary key(id)
);

/*Foreign Keys*/

ALTER TABLE poll
add foreign key(host_id) references user(id);

ALTER TABLE poll_meta
add foreign key(poll_id) references poll(id);


ALTER TABLE poll_category
add foreign key(poll_id) references poll(id);

ALTER TABLE poll_category
add foreign key(category_id) references category(id);


ALTER TABLE category
add foreign key(parent_id) references category(id);


ALTER TABLE poll_tag
add foreign key(poll_id) references poll(id);

ALTER TABLE poll_tag
add foreign key(tag_id) references tag(id);


ALTER TABLE poll_answer
add foreign key(poll_id) references poll(id);


ALTER TABLE poll_answer
add foreign key(question_id) references poll_question(id);



ALTER TABLE poll_question
add foreign key(poll_id) references poll(id);



ALTER TABLE poll_vote
add foreign key(poll_id) references poll(id);


ALTER TABLE poll_vote
add foreign key(question_id) references poll_question(id);


ALTER TABLE poll_vote
add foreign key(answer_id) references poll_answer(id);


ALTER TABLE poll_vote
add foreign key(user_id) references user(id);










