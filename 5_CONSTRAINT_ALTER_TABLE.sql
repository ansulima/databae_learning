ALTER TABLE categories ADD CONSTRAINT name NOT NULL;
ALTER TABLE categories ADD CONSTRAINT name_uniq UNIQUE(name);
alter table categories ALTER column name set not null;

alter table articles add constraint check_views CHECK(views >= 0)
alter table profiles alter column last_name set not null;
alter table articles add constraint fk_profile_id foreign key (user_id) references users(id);
alter table users drop constraint unique_email;
alter table USERS add constraint unique_email unique(email);