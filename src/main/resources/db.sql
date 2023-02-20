CREATE DATABASE IF NOT EXISTS `QuanLyNhanSu`;
USE `QuanLyNhanSu`;
CREATE TABLE IF NOT EXISTS EMPLOYEES(
	`id`		 	int auto_increment,
    `name`		 	varchar(100) not null,
    `email`		 	varchar(100) not null unique check(`email` LIKE '%_@_%.__%'),
    `phone`		 	varchar(10) not null unique,
    `address`	 	varchar(250) not null,
    `DOB`		 	date,
    `gender`	 	Bit not null check(`gender` = 0 or `gender` = 1),
    `idDepartment`	int not null,
    `job`		 	varchar(50) not null,
    `salary`	 	DOUBLE(16, 4),
    `idRole`		int not null,
    `startDay`	 	date default(CURRENT_DATE),
    `endDay`	 	date,
    `isStatus`	 	Bit default(1) check(`isStatus` = 0 or `isStatus` = 1),
    primary key(`Id`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;
CREATE TABLE IF NOT EXISTS ROLES (
	`id`		int primary key,
    `name`		varchar(40) not null unique
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;
CREATE TABLE IF NOT EXISTS DEPARTMENT(
	`id`			int primary key,
    `name`			varchar(50) not null unique,
    `idProjects`	int not null
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;
CREATE TABLE IF NOT EXISTS PROJECTS(
	`id`			int primary key,
    `name`			varchar(50) not null unique,
    `description`	LONGTEXT not null,
    `process`		bit not null check(`process` = 0 or `process` = 1),
    `startDay`		datetime not null,
    `endDay`		datetime not null
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;
ALTER TABLE EMPLOYEES ADD CONSTRAINT FK_EMPLOYEES_ROLES FOREIGN KEY(`IdRole`) REFERENCES ROLES(`Id`);
ALTER TABLE EMPLOYEES ADD CONSTRAINT FK_EMPLOYEES_DEPARTMENT FOREIGN KEY(`IdDepartment`) REFERENCES DEPARTMENT(`Id`);
ALTER TABLE DEPARTMENT ADD CONSTRAINT FK_DEPARTMENT_PROJECTS FOREIGN KEY(`IdProjects`) REFERENCES PROJECTS(`Id`);
INSERT INTO ROLES (`Id`, `name`)
VALUES (1, 'CEO'),
		(2, 'Manager'),
		(3, 'Employee');
INSERT INTO PROJECTS (`Id`, `name`, `description`, `process`, `startDay`, `endDay`)
VALUES (1, 'Project A', 'This is project A', 0, '2023-03-01 08:00:00', '2023-04-01 17:00:00'),
		(2, 'Project B', 'This is project B', 1, '2023-03-15 08:00:00', '2023-05-15 17:00:00'),
		(3, 'Project C', 'This is project C', 1, '2023-04-01 08:00:00', '2023-06-30 17:00:00'),
		(4, 'Project D', 'This is project D', 0, '2023-03-01 08:00:00', '2023-05-01 17:00:00'),
		(5, 'Project E', 'This is project E', 1, '2023-04-01 08:00:00', '2023-06-30 17:00:00'),
		(6, 'Project F', 'This is project F', 0, '2023-03-15 08:00:00', '2023-05-15 17:00:00'),
		(7, 'Project G', 'This is project G', 1, '2023-05-01 08:00:00', '2023-07-31 17:00:00'),
		(8, 'Project H', 'This is project H', 0, '2023-06-01 08:00:00', '2023-08-01 17:00:00'),
		(9, 'Project I', 'This is project I', 1, '2023-06-15 08:00:00', '2023-09-15 17:00:00'),
		(10, 'Project J', 'This is project J', 1, '2023-07-01 08:00:00', '2023-09-30 17:00:00');
INSERT INTO DEPARTMENT (Id, name, IdProjects)
VALUES (1, 'Marketing', 1),
		(2, 'IT', 2),
		(3, 'Customer Support',3);
INSERT INTO EMPLOYEES (`name`, `email`, `phone`, `address`, `DOB`, `gender`, `idDepartment`, `job`, `salary`, `idRole`)
VALUES ('John Doe', 'johndoe@example.com', '1234567890', '123 Main St, Anytown, USA', '1985-12-02', 1, 1, 'Manager', 5000.00, 1),
		('Jane Smith', 'janesmith@example.com', '2345678901', '456 Oak Ave, Anytown, USA', '1990-02-25', 0, 1, 'Assistant Manager', 4000.00, 2),
		('Bob Johnson', 'bobjohnson@example.com', '3456789012', '789 Maple Rd, Anytown, USA', '1995-05-12', 1, 1, 'Clerk', 3000.00, 3),
		('Samantha Brown', 'samanthabrown@example.com', '4567890123', '321 Elm St, Anytown, USA', '1988-07-20', 0, 2, 'Engineer', 6000.00, 2),
		('Mark Davis', 'markdavis@example.com', '5678901234', '654 Pine Dr, Anytown, USA', '1992-10-06', 1, 2, 'Software Developer', 5500.00, 3),
		('Emily Jones', 'emilyjones@example.com', '6789012345', '987 Cedar Ln, Anytown, USA', '1993-11-06', 0, 2, 'Data Analyst', 4500.00, 3),
		('Tom Wilson', 'tomwilson@example.com', '7890123456', '159 Cherry St, Anytown, USA', '1987-01-01', 1, 3, 'Sales Manager', 5500.00,2 ),
		('Sarah Lee', 'sarahlee@example.com', '8901234567', '357 Rose Dr, Anytown, USA', '1989-04-05', 0, 3, 'Sales Representative', 3500.00, 3),
		('Mike Brown', 'mikebrown@example.com', '9012345678', '753 Peach Ave, Anytown, USA', '1991-09-24', 1, 3, 'Marketing Manager', 6000.00, 3),
		('Karen Chen', 'karenchen@example.com', '0123456789', '246 Berry Rd, Anytown, USA', '1994-08-08', 0, 2, 'Marketing Coordinator', 4000.00, 3);