-- pass_file_as_parameter.sql

\set load '\\copy temp_table (date, col1, col2) from \'':file'\'' ' csv header'

:load
