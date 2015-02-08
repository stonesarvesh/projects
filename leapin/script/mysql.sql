create table program (
  course_name varchar(100) not null,
  major_category varchar(40) not null,
  institute_name varchar(100) not null,
  city varchar(15) not null,
  state varchar(15) not null,
  program_link varchar(100) default 'NA' ,
  institute_link varchar(100) default 'NA',
  program_level varchar(20),
  degree_offered varchar(20),
  seats_available varchar(4) default 'NA',
  program_type varchar(15) default 'NA',
  duration varchar(20) default 'NA',
  qualification varchar(500) default 'NA',
  commencement varchar(100) default 'NA',
  notification varchar(100) default 'NA',
  addmission_procedure varchar(500) default 'NA',
  admission_syllabus varchar(500) default 'NA',
  reservation varchar(200) default 'NA' ,
  fee varchar(50) default 'NA' ,
  accomodation varchar(100) default 'NA'
)  ENGINE=InnoDB;

--mysql --local-infile -uroot -pyourpwd yourdbname
ALTER TABLE program ADD FULLTEXT (course_name,major_category,institute_name,program_level,degree_offered,program_type,city,state);
CREATE  TABLE users (
  user_id integer not null primary key AUTO_INCREMENT,
  name varchar(50) not null,
  user_name VARCHAR(45) NOT NULL ,
  password VARCHAR(300) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1
 );
 
 CREATE TABLE user_roles (
  user_role_id INT(11) NOT NULL AUTO_INCREMENT,
  user_id integer NOT NULL,
  ROLE VARCHAR(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (ROLE,user_id),
  KEY fk_username_idx (user_id),
  CONSTRAINT fk_userid FOREIGN KEY (user_id) REFERENCES users (user_id)
  );

create table notification (
	id integer primary key AUTO_INCREMENT,
	title text not null,
	description text,
	links varchar(500),
	issue_date date,
	end_date date,
	created_on date,
	created_by integer,
	updated_on date,
	updated_by integer
);

create table notification_category (
	id integer primary key AUTO_INCREMENT,
	name varchar(50)
);

insert into notification_category (name) values ('Banking');
insert into notification_category (name) values ('Railway');
insert into notification_category (name) values ('Education');
insert into notification_category (name) values ('PSU');
insert into notification_category (name) values ('SSC');
insert into notification_category (name) values ('UPSC');
