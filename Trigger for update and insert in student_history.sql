CREATE OR REPLACE TRIGGER UNIVERSITY2.std_history
before update ON UNIVERSITY2.STUDENTS for each row
declare
olddept number ; 
begin
olddept := :old.dept_id ;
    INSERT INTO student_history (STUDENT_ID, OLD_DEPARTMENT, COURSE_CODE, GRADE)
    SELECT :NEW.STUDENT_ID, :OLD.dept_id, g.course_code, g.grade
    FROM grades g
    JOIN courses c ON g.course_code = c.course_code AND c.dept_id = olddept
    WHERE g.std_id = :NEW.STUDENT_ID;

    DELETE FROM grades
    WHERE std_id = :NEW.STUDENT_ID AND course_code IN (SELECT course_code FROM courses WHERE dept_id = olddept);

end ;
/
