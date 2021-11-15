INSERT INTO person
values (DEFAULT,'Richard', 'Morrison'),
       (DEFAULT,'Victor', 'Donnatti'),
       (DEFAULT,'Lucinda', 'Morrison'),
       (DEFAULT,'Elvin', 'Morrison'),
       (DEFAULT,'James', 'McCann'),
       (DEFAULT,'Hellen', 'McCann'),
       (DEFAULT,'Gregory', 'House'),
       (DEFAULT, 'Adolf', 'Hitler'),
       (DEFAULT, 'Stephen', 'McQueen'),
       (DEFAULT, 'Eva', 'Braun');


INSERT INTO doctor
values (DEFAULT,2,5000),
       (DEFAULT,7,8000);


INSERT INTO smoker
values (DEFAULT,1,1,0,83),
       (DEFAULT,5,2,0,92),
       (DEFAULT,7,1,0,67),
       (DEFAULT,8,2,0,77);

INSERT INTO bill
values (DEFAULT,1,1,0),
       (DEFAULT,2,2,0),
       (DEFAULT,3,1,0);

INSERT INTO observationSchedule
values (DEFAULT,1,DATE '2021-10-18',DATE '2021-11-17',24),
       (DEFAULT,1,DATE '2021-11-18',DATE '2022-01-17',12),
       (DEFAULT,1,DATE '2022-01-18',DATE '2022-02-17',24),
       (DEFAULT,2,DATE '2011-12-01',DATE '2011-11-30',20),
       (DEFAULT,2,DATE '2011-12-01',DATE '2012-01-30',10),
       (DEFAULT,2,DATE '2012-02-01',DATE '2012-02-29',14),
       (DEFAULT,3,DATE '2001-03-01',DATE '2001-03-31',24),
       (DEFAULT,3,DATE '2001-04-01',DATE '2002-04-30',8),
       (DEFAULT,3,DATE '2002-05-01',DATE '2002-05-15',24),
       (DEFAULT,3,DATE '2001-07-01',DATE '2002-07-30',8),
       (DEFAULT,3,DATE '2002-08-17',DATE '2002-08-31',12),
       (DEFAULT,3,DATE '2001-11-01',DATE '2002-11-15',12),
       (DEFAULT,3,DATE '2002-12-01',DATE '2002-12-24',8),
       (DEFAULT,4,DATE '1945-04-15',DATE '1945-05-14', 24);

INSERT INTO punishment
values (DEFAULT,1,'electric shock for 30 seconds',3,2),
       (DEFAULT,2,'electric shock for 1 minute', 5, 5),
       (DEFAULT,2,'electric shock for 30 seconds', 6, 2),
       (DEFAULT,2,'broke left hand', 6, 50),
       (DEFAULT,4,'electric shock for 30 seconds', 8, 14),
       (DEFAULT,4,'electric shock for 2 minutes', 8, 88),
       (DEFAULT,4,'broke left hand', 8, 300),
       (DEFAULT,4,'broke right hand', 8, 300),
       (DEFAULT,4,'posadit na butilku', 8, 300),
       (DEFAULT,4,'gang bang', 8, 1488);

INSERT INTO weighing
values (DEFAULT,1,DATE '2021-12-01',false,79),
       (DEFAULT,1,DATE '2022-01-01',false,77),
       (DEFAULT,1,DATE '2022-02-01',false,77),
       (DEFAULT,1,DATE '2022-03-01',false,76),
       (DEFAULT,1,DATE '2022-04-01',false,79),
       (DEFAULT,1,DATE '2022-05-01',false,78);

INSERT INTO relative
values (DEFAULT,1,3,false, 'wife'),
       (DEFAULT,1,4,false, 'son'),
       (DEFAULT,2,6,true, 'wife'),
       (DEFAULT,3,9,false, 'rat'),
       (DEFAULT,4,10,false, 'wife');
