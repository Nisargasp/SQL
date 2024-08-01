create table temple_info(temple_id int not null,temple_name varchar(30) unique,
location varchar(20)unique,built_at date,built_by varchar(20),open_time time,
close_time time,distance int not null,no_of_devotees bigint,constraint devotes_chk 
check(no_of_devotees>50),no_of_priest int,constraint priest_chk check(no_of_priest>=1));

insert into temple_info values(1,'ganesha temple','davanagere','2003/08/14',
'ravindra','06:00:00','8:00:00',109,50,6);
insert into temple_info values(2,'saibaba temple','shirdi','2004/11/08',
'yograj','07:00:00','9:00:00',60,350,7);
insert into temple_info values(3,'anjeneya swamy temple','rajajinagara','1957/09/20',
'raama','05:30:00','8:30:00',70,450,3);
insert into temple_info values(4,'vishnu temple','dharwad','1090/11/01',
'narendra','04:15:00','06:00:00',80,550,2);
insert into temple_info values(5,'rama temple','ayodye','2000/06/06',
'sandeep','06:00:00','8:45:00',90,500,5);
insert into temple_info values(6,'durgambika temple','huchhavanahalli','1970/09/09',
'virat','11:00:00','12:00:00',15,55,6);
insert into temple_info values(7,'karya siddi anjeneya temple','banashankari','1979/10/08',
'sukanya','12:00:00','13:00:00',25,150,4);
insert into temple_info values(8,'venkateshwara swamy temple','tirupati','1990/12/07',
'sahadeva','13:30:00','14:30:00',35,100,9);
insert into temple_info values(9,'lakshmi temple','mandya','1890/01/19',
'bhageeratha','14:15:00','15:00:00',45,200,6);
insert into temple_info values(10,'annapurneswari temple','horanaadu','1289/02/11',
'leelavathi','15:00:00','16:45:00',55,300,4);