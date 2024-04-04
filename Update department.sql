CREATE OR REPLACE procedure UNIVERSITY2.update_dept(v_std_id in number , new_dep in number)
is

begin
update students
set dept_id = new_dep
where student_id = v_std_id ; 

end ;
/

