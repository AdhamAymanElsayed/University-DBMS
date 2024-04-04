CREATE OR REPLACE procedure UNIVERSITY2.update_gpa
is

total_hours number :=0;
total_grades number :=0;
v_gpa number(3,2) := 0;
  
begin

for i in (SELECT distinct std_id FROM grades ) 

loop
declare

v_student_id number := i.std_id;


cursor enrollment_cursor is
select e.std_id, e.course_code , e.grade, c.course_hours
from grades e , courses c 
where e.course_code=c.course_code and e.std_id=v_student_id;
begin

for enrollment_record in enrollment_cursor
loop
total_hours := total_hours + enrollment_record.course_hours;

if enrollment_record.grade = 'A' or enrollment_record.grade = 'A+'  then total_grades := total_grades + (4 * enrollment_record.course_hours);
elsif enrollment_record.grade = 'B+' then total_grades := total_grades + (3.7 * enrollment_record.course_hours);
elsif enrollment_record.grade = 'B' then total_grades := total_grades + (3.3 * enrollment_record.course_hours);
elsif enrollment_record.grade = 'B-' then total_grades := total_grades + (3 * enrollment_record.course_hours);
elsif enrollment_record.grade = 'C+' then total_grades := total_grades + (2.7 * enrollment_record.course_hours);
elsif enrollment_record.grade = 'C' then total_grades := total_grades + (2.3 * enrollment_record.course_hours);
elsif enrollment_record.grade = 'C-' then total_grades := total_grades + (2 * enrollment_record.course_hours);
elsif enrollment_record.grade = 'D+' then total_grades := total_grades + (1.7 * enrollment_record.course_hours);
elsif enrollment_record.grade = 'D' then total_grades := total_grades + (1.3 * enrollment_record.course_hours);
elsif enrollment_record.grade = 'D-' then total_grades := total_grades + (1 * enrollment_record.course_hours);
else  total_grades := total_grades + (0 * enrollment_record.course_hours);
end if;
end loop ;
v_gpa := total_grades / total_hours;



update Students
SET gpa = v_gpa
WHERE student_id = v_student_id;
end;




end loop;
end;
/

