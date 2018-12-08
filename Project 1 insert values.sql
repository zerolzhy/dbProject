insert into Users(username, email, password, ulatt, ulong, utime, ustate) values 
("John", "xxx@nyu.edu", "123", 40.726790, -74.034285, "2018-09-25 12:44:14", "Happy"),
("Smith", "qwe@gmail.com", "123", 40.694894, -73.986065, "2018-10-12 09:22:15", "Working"),
("Frank", "0970@outlook.com", "123", 40.725254, -74.033692, "2018-09-25 13:11:14", "Boring");
                
insert into Friendship(user1, user2) values (1,2),
											(1,3),
                                            (2,3),
                                            (2,1),
                                            (3,1),
                                            (3,2);


insert into Note(nuid, nlati, nlong, nradius, ndate, nstarttime, nendtime, nvisibility, ncontent) values
(1, 40.727059, -74.032369, 5, "2018-09-25", "00:00:00", "23:59:59", "everyone", "Lovely Place"),
(1, 40.727327, -74.033485, 10, "2018-09-25", "12:30:14", "17:20:12", "friends", "Wow"),
(2, 40.726945, -74.032841, 10, "2018-09-25", "15:12:34", "20:20:12", "private", "Check this out"),
(3, 40.727059, -74.032369, 20, "2018-09-25", "00:00:00", "23:59:59", "everyone", "This place is wonderful");


insert into Tag(tagname) values ("Breakfast"),
                                ("Lunch"),
                                ("Dinner"),
                                ("Brunch");

insert into RepeatNote values (4, 2),
                            (4, 3);

insert into NoteTag(nid, tid) values (1, 2),
                                     (1, 3),
                                     (2, 4),
                                     (3, 1),
                                     (4, 2),
                                     (4, 3);


insert into Filter(fuid, ftag, fstate, flati, flong, fradius, fdate, fstarttime, fendtime, fvisibility) values 
(1, 2, "Happy", 40.726482, -74.032208, 10, "2018-09-25", "00:00:00", "23:59:59", "everyone");



