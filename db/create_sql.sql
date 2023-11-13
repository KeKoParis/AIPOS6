create table if not exists songs
(
    id          integer primary key autoincrement not null,
    album       integer                           not null,
    name        varchar(50) unique                not null,
    single      boolean                           not null,
    description text                              ,
    foreign key (album) references albums (id) on delete cascade on update cascade
);

create table if not exists albums
(
    id          integer primary key autoincrement not null,
    name        varchar(50) unique                not null,
    year        integer                           not null,
    authors     text                              not null,
    description text                              not null
);

create table if not exists group_members
(
    id      integer primary key autoincrement not null,
    name    varchar(50) unique                not null,
    session boolean                           not null,
    concert boolean                           not null,
    bio     text unique                       not null
);
