drop table if exists Users;
create table Users (uid integer AUTO_INCREMENT PRIMARY KEY,
                    username varchar(255),
                    email varchar(255),
                    password varchar(255),
                    ulatt double null,
                    ulong double null,
                    utime datetime null,
                    ustate varchar(255) null);

drop table if exists Friendship;             
create table Friendship (user1 integer,
                         user2 integer,
                        FOREIGN KEY (user1) REFERENCES Users(uid) on DELETE CASCADE,
                        foreign key (user2) references Users(uid) on delete CASCADE);

drop table if exists Note;                
create table Note (nid integer AUTO_INCREMENT primary key,
                   nuid integer,
                   nlati double ,
                   nlong double,
                   nradius integer,
                   ndate date null,
                   nstarttime time null,
                   nendtime time null,
                   nvisibility varchar(10),
                   ncontent varchar(255),
                   FOREIGN key (nuid) REFERENCES Users(uid) on delete CASCADE);

drop table if exists RepeatNote;
create table RepeatNote (nid integer,
                         daynum integer,
                         foreign key (nid) references Note(nid) on DELETE cascade);

drop table if exists Comment;
create table Comment (uid integer,
                      nid integer,
                      content varchar(255),
                      createtime datetime,
                      primary key (uid, nid, createtime),
                      FOREIGN KEY (uid) REFERENCES Users(uid) on delete cascade,
                      FOREIGN KEY (nid) references Note(nid) on delete cascade);

drop table if exists Tag;
create table Tag (tid integer AUTO_INCREMENT primary key,
                  tagname varchar(255));

drop table if exists NoteTag;
create table NoteTag (nid integer,
                      tid integer,
                      FOREIGN key (nid) REFERENCES Note(nid) on delete cascade,
                      FOREIGN KEY (tid) REFERENCES Tag(tid) on delete cascade);

drop table if exists Filter;
create table Filter(fid integer AUTO_INCREMENT primary key,
                    fuid integer,
                    ftag integer null,
                    fstate varchar(50) null,
                    flati double null,
                    flong double null,
                    fradius integer null,
                    fdate date null,
                    fstarttime time null,
                    fendtime time null,
                    fvisibility varchar(10),
                    foreign key (fuid) references Users(uid) on delete cascade,
                    foreign key (ftag) references Tag(tid) on delete cascade);