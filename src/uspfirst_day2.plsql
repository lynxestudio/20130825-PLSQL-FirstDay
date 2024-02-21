
FUNCTION first_day(p_date varchar) return date
as
v_date date;
period varchar(16);
begin
    v_date := to_date(p_date,'dd/mm/rrrr');
    select trunc(v_date,'MM') into period from dual;
    DBMS_OUTPUT.PUT_LINE(period);
    return to_date(period,'dd/mm/rrrr');
end first_day;