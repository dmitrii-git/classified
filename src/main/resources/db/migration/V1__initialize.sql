create table users (
  id                    bigserial,
  username              varchar(30) not null,
  password              varchar(80) not null,
  email                 varchar(50) unique,
  primary key (id)
);

create table roles (
  id                    serial,
  name                  varchar(50) not null,
  primary key (id)
);

CREATE TABLE users_roles (
  user_id               bigint not null,
  role_id               int not null,
  primary key (user_id, role_id),
  foreign key (user_id) references users (id),
  foreign key (role_id) references roles (id)
);

insert into roles (name)
values
('ROLE_USER'), ('ROLE_ADMIN'), ('SOMETHING');

insert into users (username, password, email)
values
('user', '$2a$04$Fx/SX9.BAvtPlMyIIqqFx.hLY2Xp8nnhpzvEEVINvVpwIPbA3v/.i', 'user@gmail.com');

insert into users_roles (user_id, role_id) values (1, 1), (1, 2);





create table products (
    id                      bigserial primary key,
    title                   varchar(255),
    price                   int
);

insert into products (title, price)
values
('Bread1', 21),
('Bread2', 2112),
('Bread3', 23),
('Bread4', 24),
('Bread5', 135),
('Bread6', 26),
('Bread7', 275),
('Bread8', 28),
('Bread9', 29),
('Bread10', 31),
('Bread11', 32),
('Bread12', 33),
('Bread13', 34),
('Bread14', 35),
('Bread15', 36),
('Bread16', 37),
('Bread17', 3458),
('Bread18', 39),
('Bread19', 4011),
('Bread2', 2112),
('Bread3', 23),
('Bread4', 24),
('Bread5', 135),
('Bread6', 26),
('Bread7', 275),
('Bread8', 28),
('Bread9', 29),
('Bread10', 31),
('Bread11', 32),
('Bread12', 33),
('Bread13', 34),
('Bread14', 35),
('Bread15', 36),
('Bread16', 37),
('Bread17', 3458),
('Bread18', 39),
('Bread19', 4011),
('Bread2', 2112),
('Bread3', 23),
('Bread4', 24),
('Bread5', 135),
('Bread6', 26),
('Bread7', 275),
('Bread8', 28),
('Bread9', 29),
('Bread10', 31),
('Bread11', 32),
('Bread12', 33),
('Bread13', 34),
('Bread14', 35),
('Bread15', 36),
('Bread16', 37),
('Bread17', 3458),
('Bread18', 39),
('Bread19', 4011),
('Bread2', 2112),
('Bread3', 23),
('Bread4', 24),
('Bread5', 135),
('Bread6', 26),
('Bread7', 275),
('Bread8', 28),
('Bread9', 29),
('Bread10', 31),
('Bread11', 32),
('Bread12', 33),
('Bread13', 34),
('Bread14', 35),
('Bread15', 36),
('Bread16', 37),
('Bread17', 3458),
('Bread18', 39),
('Bread19', 4011),
('Bread2', 2112),
('Bread3', 23),
('Bread4', 24),
('Bread5', 135),
('Bread6', 26),
('Bread7', 275),
('Bread8', 28),
('Bread9', 29),
('Bread10', 31),
('Bread11', 32),
('Bread12', 33),
('Bread13', 34),
('Bread14', 35),
('Bread15', 36),
('Bread16', 37),
('Bread17', 3458),
('Bread18', 39),
('Bread19', 4011),
('Bread20', 41);


