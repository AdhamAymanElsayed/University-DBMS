
CREATE OR REPLACE TRIGGER UNIVERSITY2.UpdategpaTrigger
FOR INSERT OR UPDATE  ON UNIVERSITY2.GRADES 
COMPOUND TRIGGER
     student_ids number;
      after each row is
      begin
        student_ids := :new.std_id;
      end after each row;
      
      after statement is
      begin
       update_one_std(student_ids);
      end after statement;
END;
/
