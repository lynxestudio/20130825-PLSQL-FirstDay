
FUNCTION first_day(p_date varchar) return date
as
v_date date;
period date;
begin
    v_date := to_date(p_date,'dd/mm/rrrr');
    select ADD_MONTHS(LAST_DAY(v_date),-1)+1 into period from dual;
    DBMS_OUTPUT.PUT_LINE(period);
    return period;
end first_day;  