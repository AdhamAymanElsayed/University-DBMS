Creation
-- Departments table
create table Departments (
    Department_id number primary key,
    Department_name varchar2(100),
    Graduated_hours number);    

-- Courses table
create table Courses (
    course_code number primary key,
    course_name varchar2(100),
    course_hours number,
    Dept_id number,
    constraint fk_Department_courses foreign key (Dept_id) references Departments(Department_id));


-- Instructors table
create table Instructors (
    inst_ID number primary key,
    inst_name varchar2(100),
    E_mail varchar2(100));


-- Students table
create table Students (
    student_id number primary key,
    F_name varchar2(50),
    L_name varchar2(50),
    Gender varchar2(10),
    Hours_completed number,
    E_mail varchar2(100),
    Dept_id number,
    constraint fk_Department foreign key (Dept_id) references Departments(Department_id));


-- Grades table
create table Grades (
    std_id number,
    course_code number,
    grade varchar2(2),
    primary key (std_id, course_code),
    constraint fk_Student foreign key (std_id) references Students(student_id),
    constraint fk_Course foreign key (course_code) references Courses(course_code));


-- Instructor_courses table
create table Instructor_courses (
    inst_id number,
    course_code number,
    primary key (inst_id, course_code),
    constraint fk_Instructor foreign key (inst_id) references Instructors(inst_ID),
    constraint fk_Course_instructor foreign key (course_code) references Courses(course_code))
Insert
insert into Departments (Department_id, Department_name, graduated_hours) values (1, 'Computer Science', 120);
insert into Departments (Department_id, Department_name, graduated_hours) values (2, 'Electrical Engineering', 160);
insert into Departments (Department_id, Department_name, graduated_hours) values (3, 'Mechanical Engineering', 160);
insert into Departments (Department_id, Department_name, graduated_hours) values (4, 'Chemical Engineering', 160);
insert into Departments (Department_id, Department_name, graduated_hours) values (5, 'Civil Engineering', 160);
insert into Departments (Department_id, Department_name, graduated_hours) values (6, 'Biomedical Engineering', 160);

insert into  Courses (course_code, course_name, course_hours, Dept_id) values (101, 'Introduction to Programming', 3, 1);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (102, 'Database Management', 4, 1);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (201, 'Circuit Analysis', 3, 2);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (202, 'Digital Signal Processing', 4, 2);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (301, 'Thermodynamics', 3, 3);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (302, 'Fluid Mechanics', 4, 3);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (401, 'Chemical Kinetics', 3, 4);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (402, 'Process Control', 4, 4);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (501, 'Structural Engineering', 3, 5);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (502, 'Transportation Engineering', 4, 5);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (601, 'Biomechanics', 3, 6);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (602, 'Medical Imaging', 4, 6);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (701, 'Spacecraft Design', 3, 7);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (702, 'Aerodynamics', 4, 7);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (801, 'Environmental Impact Assessment', 3, 8);
insert into  Courses (course_code, course_name, course_hours, Dept_id) values (802, 'Water Resources Management', 4, 8);

INSERT INTO Instructors (inst_ID, inst_name, E_mail) VALUES (1, 'John Doe', 'john.doe@example.com');
INSERT INTO Instructors (inst_ID, inst_name, E_mail) VALUES (2, 'Jane Smith', 'jane.smith@example.com');
INSERT INTO Instructors (inst_ID, inst_name, E_mail) VALUES (3, 'Michael Jordan', 'michael.jordan@example.com');
INSERT INTO Instructors (inst_ID, inst_name, E_mail) VALUES (4, 'Emma Watson', 'emma.watson@example.com');
INSERT INTO Instructors (inst_ID, inst_name, E_mail) VALUES (5, 'Sophia Johnson', 'sophia.johnson@example.com');
INSERT INTO Instructors (inst_ID, inst_name, E_mail) VALUES (6, 'Alexander Turner', 'alexander.turner@example.com');
INSERT INTO Instructors (inst_ID, inst_name, E_mail) VALUES (7, 'David Miller', 'david.miller@example.com');
INSERT INTO Instructors (inst_ID, inst_name, E_mail) VALUES (8, 'Sophie Anderson', 'sophie.anderson@example.com');

INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (101, 'Alice', 'Johnson', 'Female', 60, 'alice.johnson@example.com', 1);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (102, 'Bob', 'Williams', 'Male', 75, 'bob.williams@example.com', 1);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (201, 'Charlie', 'Brown', 'Male', 50, 'charlie.brown@example.com', 2);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (202, 'Diana', 'Clark', 'Female', 65, 'diana.clark@example.com', 2);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (301, 'Ethan', 'Taylor', 'Male', 55, 'ethan.taylor@example.com', 3);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (302, 'Olivia', 'Davis', 'Female', 70, 'olivia.davis@example.com', 3);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (401, 'Noah', 'Clarkson', 'Male', 45, 'noah.clarkson@example.com', 4);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (402, 'Ava', 'Miller', 'Female', 60, 'ava.miller@example.com', 4);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (501, 'Mia', 'Roberts', 'Female', 58, 'mia.roberts@example.com', 5);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (502, 'Liam', 'Smith', 'Male', 72, 'liam.smith@example.com', 5);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (601, 'Ella', 'Fisher', 'Female', 47, 'ella.fisher@example.com', 6);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (602, 'William', 'Turner', 'Male', 62, 'william.turner@example.com', 6);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (701, 'Jackson', 'Lee', 'Male', 55, 'jackson.lee@example.com', 7);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (702, 'Lily', 'Garcia', 'Female', 70, 'lily.garcia@example.com', 7);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (801, 'Oliver', 'Cooper', 'Male', 45, 'oliver.cooper@example.com', 8);
INSERT INTO Students (student_id, F_name, L_name, Gender, hours_completed, e_mail, Dept_id) VALUES (802, 'Aria', 'Baker', 'Female', 60, 'aria.baker@example.com', 8);

INSERT INTO Grades (std_id, course_code, grade) VALUES (101, 101, 'A');
INSERT INTO Grades (std_id, course_code, grade) VALUES (101, 102, 'B+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (102, 101, 'C-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (102, 102, 'A-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (201, 201, 'D+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (201, 202, 'A+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (202, 201, 'D-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (202, 202, 'B+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (301, 301, 'B-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (301, 302, 'C+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (302, 301, 'A-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (302, 302, 'B+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (401, 401, 'D');
INSERT INTO Grades (std_id, course_code, grade) VALUES (401, 402, 'A+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (402, 401, 'A-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (402, 402, 'B-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (501, 501, 'C+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (501, 502, 'A-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (502, 501, 'A+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (502, 502, 'B-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (601, 601, 'C');
INSERT INTO Grades (std_id, course_code, grade) VALUES (601, 602, 'A-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (602, 601, 'B+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (602, 602, 'B-');
INSERT INTO Grades (std_id, course_code, grade) VALUES (701, 701, 'C+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (701, 702, 'A+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (702, 701, 'A');
INSERT INTO Grades (std_id, course_code, grade) VALUES (702, 702, 'B+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (801, 801, 'B');
INSERT INTO Grades (std_id, course_code, grade) VALUES (801, 802, 'C+');
INSERT INTO Grades (std_id, course_code, grade) VALUES (802, 801, 'C');
INSERT INTO Grades (std_id, course_code, grade) VALUES (802, 802, 'D+');

INSERT INTO Instructor_courses (inst_id, course_code) VALUES (1, 101);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (1, 102);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (2, 201);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (2, 202);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (3, 301);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (3, 302);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (4, 401);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (4, 402);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (5, 501);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (5, 502);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (6, 601);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (6, 602);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (7, 701);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (7, 702);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (8, 801);
INSERT INTO Instructor_courses (inst_id, course_code) VALUES (8, 802);






return null ;
end ;
/
