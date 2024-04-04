CREATE OR REPLACE function UNIVERSITY2.avg_gpa 
return number
is
total_gpa number;
total_students number ; 

begin
for i in (select department_id  from departments)
loop
declare
v_dep_id number := i.department_id;

cursor dep_cursor is
select GPA 
from students 
where dept_id = v_dep_id ;
begin

total_gpa := 0;
total_students := 0 ; 
for dep_record in dep_cursor
loop
total_gpa := total_gpa + dep_record.GPA;
total_students := total_students + 1;
end loop ; 

dbms_output.put_line( 'Department id:'|| v_dep_id ||  ', AVG GPA: ' ||  total_gpa /total_students );
end;
end loop ;


return null ;
end ;
/
