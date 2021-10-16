

create table students(
	stu_name varchar(20) not null,
    year int(4),
    major varchar(10),
    indi_no int(3), #year + major + indi_no = 학번
    phone_no int(11),
    address varchar(30),
    credits int(4) default 0,
    average_grade numeric(2, 2),
    current_status tinyint(1) default 1,
    primary key(year, major, indi_no)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;