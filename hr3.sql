declare
   v_emp employees%rowtype;
   cursor c_emps is select first_name, last_name from employees;
begin
  open c_emps;
  fetch c_emps into v_emp.first_name, v_emp.last_name;
  DBMS_OUTPUT.PUT_LINE(v_emp.first_name' '|| v_emp.last_name); 
  close c_emps;
end;
   