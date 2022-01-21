create database news_db;
use news_db;

CREATE TABLE address (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT(24),
    subscriber_id BIGINT(24),
    first_name VARCHAR(56),
    middle_name VARCHAR(56),
    last_name VARCHAR(56),
	mobile VARCHAR(16),
    email VARCHAR(56),
    line1 VARCHAR(56),
    line2 VARCHAR(56),
    city VARCHAR(56),
    province VARCHAR(56),
    country VARCHAR(56),
    area_code varchar(56),
    created_at DATETIME,
    updated_at DATETIME
);

CREATE TABLE user (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(56),
    middle_name VARCHAR(56),
    last_name VARCHAR(56),
    mobile VARCHAR(16),
    email VARCHAR(56),
    password_hash VARCHAR(32),
    admin TINYINT(1),
    customer TINYINT(1),
    registered_at DATETIME,
    last_login DATETIME,
    intro TINYTEXT,
    profile TEXT
);

CREATE TABLE edition (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    news_letter_id BIGINT(24),
    title VARCHAR(104),
    description VARCHAR(2048),
    status SMALLINT(8),
    created_at DATETIME,
    updated_at DATETIME,
    published_at DATETIME,
    content TEXT
);

CREATE TABLE subscriber (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT(24),
    first_name VARCHAR(104),
    middle_name VARCHAR(104),
    last_name VARCHAR(104),
    email VARCHAR(104),
    mobile VARCHAR(56),
    phone VARCHAR(56),
    active TINYINT(1),
    created_at DATETIME,
    updated_at DATETIME
);




CREATE TABLE news_letter_trigger (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    news_letter_id BIGINT(24),
    edition_id BIGINT(24),
    subscriber_id BIGINT(24),
    sent TINYINT(1),
    delivered TINYINT(1),
    mode SMALLINT(8),
    created_at DATETIME,
    updated_at DATETIME,
    sent_at DATETIME,
    delivered_at DATETIME
);

CREATE TABLE mailingList (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    news_letter_id BIGINT(24),
    subscriber_id BIGINT(24),
    active TINYINT(1),
    created_at DATETIME,
    updated_at DATETIME
);



CREATE TABLE news_letter_meta (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    news_letter_id BIGINT(24),
    type VARCHAR(56),
    news_key VARCHAR(160),
    content TEXT
);

CREATE TABLE news_letter (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT(24),
    title VARCHAR(80),
    description VARCHAR(2048),
    type SMALLINT(8),
    multiple tinyint(1),
    global tinyint(1),
    status SMALLINT(8),
    created_at DATETIME,
    updated_at DATETIME,
    published_at DATETIME,
    content TEXT
);


/*
Add foreign key
*/


alter table address
add foreign key(user_id) references user(id);

alter table address
add foreign key(subscriber_id) references subscriber(id);


alter table subscriber
add foreign key(user_id) references user(id);

alter table news_letter_trigger
add foreign key(news_letter_id) references news_letter(id);

alter table news_letter_trigger
add foreign key(edition_id) references edition(id);

alter table news_letter_trigger
add foreign key(subscriber_id) references subscriber(id);


alter table edition
add foreign key(news_letter_id) references news_letter(id);


alter table news_letter
add foreign key(user_id) references user(id);

alter table mailinglist
add foreign key(news_letter_id) references news_letter(id);

alter table mailinglist
add foreign key(subscriber_id) references subscriber(id);

alter table news_letter_meta
add foreign key(news_letter_id) references news_letter(id);


select*from user;
select*from news_letter;
select*from edition;

INSERT INTO `news`.`edition` (`id`, `news_letter_id`, `title`, `description`, `status`, `created_at`, `updated_at`, `published_at`, `content`) VALUES ('1', '1', 'edition1', 'edesc1', '1', '2005-09-11 09:07:58', '2005-09-19 09:07:58', '2006-09-11 09:07:58', 'content1');
INSERT INTO `news`.`edition` (`id`, `news_letter_id`, `title`, `description`, `status`, `created_at`, `updated_at`, `published_at`, `content`) VALUES ('2', '2', 'edition2', 'edesc2', '0', '2005-08-11 09:07:58', '2006-09-11 09:07:58', '2007-09-11 09:07:58', 'content2');
INSERT INTO `news`.`edition` (`id`, `news_letter_id`, `title`, `description`, `status`, `created_at`, `updated_at`, `published_at`, `content`) VALUES ('3', '3', 'edition3', 'edesc3', '1', '2005-10-11 09:07:58', '2005-10-15 09:07:58', '2005-11-11 09:07:58', 'content3');
