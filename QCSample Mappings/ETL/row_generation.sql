select * 
from a
left join (select level ll from dual d
connect by level <=1000) l on l.ll <= a.id;
