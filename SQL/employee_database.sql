CREATE DATABASE employee_database;

USE employee_database;

CREATE TABLE permission (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(80),
    slug VARCHAR(104),
    description TINYTEXT,
    type SMALLINT(8),
    active SMALLINT(8),
    created_at DATETIME,
    updated_at DATETIME,
    content TEXT
);

CREATE TABLE role_permission (
    role_id BIGINT(24),
    permission_id BIGINT(24),
    created_at DATETIME,
    updated_at DATETIME
);

insert into role_permission
values(1 , 1 ,'2010-10-15 02:04:53.165','2012-10-14 02:04:53.165'),
	  (2 , 2 ,'2011-10-15 02:04:53.165','2012-10-14 02:04:53.165'),
      (3 , 3 ,'2012-10-15 02:04:53.165','2013-10-14 02:04:53.165');	

CREATE TABLE role (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(80),
    slug VARCHAR(104),
    description TINYTEXT,
    type SMALLINT(8),
    active SMALLINT(8),
    created_at DATETIME,
    updated_at DATETIME,
    content TEXT
);

CREATE TABLE employee (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT(24),
    organization_id BIGINT(24),
    role_id BIGINT(24),
    created_by BIGINT(24),
    updated_by BIGINT(24),
    code VARCHAR(104),
    status SMALLINT(8),
    created_at DATETIME,
    updated_at DATETIME,
    starts_at DATETIME,
    ends_at DATETIME,
    notes TEXT
);

CREATE TABLE user (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    role_id BIGINT(24),
    first_name VARCHAR(56),
    middle_name VARCHAR(56),
    last_name VARCHAR(56),
    mobile VARCHAR(16),
    email VARCHAR(56),
    password_hash VARCHAR(32),
    registered_at DATETIME,
    last_login DATETIME,
    intro TINYTEXT,
    profile TEXT
);

CREATE TABLE organization (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    created_by BIGINT(24),
    updated_by BIGINT(24),
    title VARCHAR(80),
    meta_title VARCHAR(104),
    slug VARCHAR(104),
    summary TINYTEXT,
    status SMALLINT(8),
    created_at DATETIME,
    updated_at DATETIME,
    profile TEXT,
    content TEXT
);

CREATE TABLE organization_meta (
    id BIGINT(24) PRIMARY KEY AUTO_INCREMENT,
    organization_id BIGINT(24),
    org_key VARCHAR(56),
    content TEXT
);


/*Forien key*/

ALTER TABLE role_permission
ADD foreign key(permission_id) references permission(id);

ALTER TABLE role_permission
ADD foreign key(role_id) references role(id);

Alter TABLE user
ADD foreign key(role_id) references role(id);


alter table employee
add foreign key(user_id) references user(id);

alter table employee
add foreign key(organization_id) references organization(id);

alter table employee
add foreign key(role_id) references role(id);

alter table employee
add foreign key(created_by) references user(id);

alter table employee
add foreign key(updated_by) references user(id);


alter table organization
add foreign key(created_by) references user(id);

alter table organization
add foreign key(updated_by) references user(id);

alter table organization_meta
add foreign key(organization_id) references organization(id);


select * from employee;
select * from permission;
select * from role;
select * from role_permission;
select * from user;
select * from organization;
select * from organization_meta;
