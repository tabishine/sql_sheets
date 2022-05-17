declare
  cursor c_emps (p_dept_id number, p_job_id varchar2) is select first_name, last_name, department_name
                             from employees join departments using (department_id)
                             where department_id = p_dept_id;
                             and job_id=p_job_id;
    v_emps c_emps%rowtype;
begin
    for i in c_emps(50, 'ST_MAN') loop
        dbms_output.put_line(i.first_name||' '||i.last_name||'-'||i.job_id);
    end loop;
        dbms_output.put_line('-');
        for i in c_emps(80, 'SA_MAN') loop
          dbms_output.put_line(i.first_name||' '||i.last_name||'-'||i.job_id);
    end loop;
end;