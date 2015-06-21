% import_data_with_text_fields.m

% Using textscan and calling all entries strings will simplify the import and prevent some
% formatting issues I couldn't solve earlier.
fid = fopen('file.csv', 'r');
raw_data = textscan(fid, '%s %s %s %s %s %s %s %s', 'Delimiter', ',', 'HeaderLines', 2);
fclose(fid);

% Then you can cast the numeric columns as regular arrays
type = str2double(raw_data{1});

% Or use cell2mat to cast as character arrays
maturity_date = datenum(cell2mat(raw_data{3}), 'mm/dd/yyyy');
