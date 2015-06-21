% Matlab includes a function, lbusdate(y,m), that returns the last
% business day for the given month m in year y.  This lets you loop and
% write to a csv.


last_busdates_of_months = [];


init_year = 2008;
init_month = 4;
last_year = 2013;


for year=init_year:last_year;
    
    first_month=1;
    if(year == init_year);
        first_month=init_month;
    end;
    
    for month=first_month:12;
        
        last_busdates_of_months = [last_busdates_of_months lbusdate(year,month)];
        
    end;
    
end;

fid = fopen('dates.csv','w');
fprintf(fid,'last_busdates\n');

for i=1:length(last_busdates_of_months);
    fprintf(fid,'%10.17s',datestr(last_busdates_of_months(i),'yyyy-mm-dd HH:MM:SS'));
    fprintf(fid,'\n');
end;

fclose(fid);

