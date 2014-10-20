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
);

ALTER TABLE program ADD FULLTEXT (course_name,major_category,institute_name,program_level,degree_offered,program_type,city,state);
