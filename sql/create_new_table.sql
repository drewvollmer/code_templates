-- create_new_table.sql

create table table_name
	   -- Type serial for the id column will create a sequence automatically
	   (id serial constraint table_name_pkey primary key, 
	   -- Adding a reference to another table will automatically create a foreign key
	    foreign_table_id integer not null references foreign_table(id), 
		data_col numeric not null,
		created_at timestamp not null default now(),
		updated_at timestamp not null default now(),
		updated_by text not null default "current_user"());
