% write_to_csv.m

fid=fopen('pred_quote.csv','w');
format long;

fprintf(fid,'head1, head2, head3, head4, head5, head6, head7, head8 \n');

for i=1:length(data);
    fprintf(fid,['%10.0f, %6.10f, %6.10f, %6.10f, %6.10f, %6.10f, ' ...
    '%6.10f, %10.0f'],data(i,:));
    fprintf(fid,'\n');
end;

fclose(fid);
