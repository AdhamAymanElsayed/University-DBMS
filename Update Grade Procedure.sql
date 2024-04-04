CREATE OR REPLACE procedure UNIVERSITY2.update_grade(v_std_id in number , v_course_id in number , new_grade in varchar2)
is

v_grade varchar2(2 byte) ; 

begin

select grade 
into v_grade
from grades
where course_code = v_course_id and std_id = v_std_id;

if v_grade in ('A+' , 'A' , 'A-' , 'B+' , 'B' , 'B-') then
        dbms_output.put_line('Grade is '|| v_grade || ', You cannot improve grade higher than C+') ;
        
else 
    if new_grade in ('A+' , 'A' , 'A-') then 
   
        update grades
        set grade = 'B+'
        where course_code = v_course_id and std_id = v_std_id ; 
        dbms_output.put_line(' The maximum improvement grade is B+') ;
    else 
        update grades
        set grade = new_grade
        where course_code = v_course_id and std_id = v_std_id ;     
    end if ; 
end if; 



end ;
/

