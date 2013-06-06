CREATE TABLE users(
uname varchar(80) primary key,
upassword varchar(70), 
fname varchar(30),
lname varchar(30),
uaddress varchar(100),
email varchar(50),
squestion varchar(100),
sanswer varchar(100),
bpoints real,
ustatus varchar(20)
);

drop table users
drop table products
CREATE TABLE categories(
imageurl varchar(70),

cname varchar(70) primary key, 

);

CREATE TABLE products(
imageurl varchar(70),
imageurl2 varchar(70),

cname varchar(70)references categories(cname),
pname varchar(70) unique,
pid varchar(50) primary key, 
sdescrip varchar(500),
descrip varchar(1000),
price real,
);
insert into categories values('~/Images/m4.jpg','Mouse')
insert into categories values('~/Images/intel.jpg','Processor')
insert into categories values('~/Images/m4.jpg','Mgde')
insert into categories values('~/Images/intel.jpg','Pgxgsor')
insert into categories values('~/Images/m4.jpg','Mohdhe')
insert into categories values('~/Images/intel.jpg','dhsor')
insert into categories values('~/Images/m4.jpg','dhhe')
insert into categories values('~/Images/intel.jpg','Phdhdhhsor')
insert into categories values('~/Images/intel.jpg','ddjjr')
insert into categories values('~/Images/m4.jpg','hjdj')
insert into categories values('~/Images/intel.jpg','Pdjjjhsor')
delete

from categories
select  
from users
delete
from users
where fname='ADMIN'
from cart
from users
select  distinct pname 
from products
insert into products values('~/Images/intel.jpg','','Processor','core i5','1','beubuesuf sjegsegeshg sbgkl','nirhdg hreooe hoejjhodjojdj jhoprejjo nheguerhrj
jhorejhpojoh jhoprjhjdj hdphjrpj rojpjep hrpdojgorpeh hnpejhorbd porejherdoo hpohrejh heprjgopeue hjpjhepje jpejye jepjypey yejyjpe',646)

Insert into products values('~/Images/m4.jpg','','Mouse','sony opt','2','gg hhhio hihio','nirhdg hreooe hoejjhodjojdj jhoprejjo nheguerhrj
jhorejhpojoh jhoprjhjdj hdphjrpj rojpjep hrpdojgorpeh hnpejhorbd porejherdoo hpohrejh heprjgopeue hjpjhepje jpejye jepjypey yejyjpe',25)
select *
from categories
select *
from users

insert into users values('guest','gg','hh','hh','hhh','hh','hhh','hh',0)
insert into categories values('~/Images/m4.jpg','c2','Mouse')

drop table productsusers

drop table categories

CREATE TABLE cart(

uname varchar(80),
imageurl varchar(70),
pname varchar(70) ,
price real,
quantity int

primary key(uname,pname)

);
CREATE TABLE bonus(
uname varchar(80),
percentage real
)


insert into bonus values('admin',5)


select * from cart
select * from products
insert into cart values('tdk','~/Images/intel.jpg','Processor',1000,2)
insert into cart values('tdk','~/Images/m4.jpg','mouse',500,3)

insert into cart values('mdk','~/Images/intel.jpg','Processor',1000,2)
drop table Receipts
delete
select *
delete
 from corders
update users, set bpoints=3600 where uname='tdk'

CREATE TABLE Corders(
mainorderno int,
uname varchar(80),
corderno int,
pname varchar(70),
quantity int,
tprice real,
dstatus varchar(30)


);

CREATE TABLE Receipts(
mainreceiprno int,
uname varchar(80),
creceiprno int,
tprice real,
pmethod varchar(80),

primary key(uname,creceiprno)

);
select*
from Corders
order by corderno desc
select *
from Receipts
delete from
Receipts

select * from Corders
Insert INto Corders values(1,'tdk',1,'a',1,21,'shippped')
Insert INto Corders values(2,'tdk',2,'b',1,21,'shippped')
Insert INto Corders values(3,'tdk',3,'c',1,21,'notshippped')
Insert INto Corders values(4,'tdk',4,'b',1,21,'shippped')
Insert INto Corders values(5,'mdk',1,'a',1,21,'shippped')

create table requestForUserActivation(
uname varchar(80),
);

drop table products

--prasad

select *
from corders

create table faq(
qno int,
name varchar(100),
question varchar(1000),
answer varchar(1000)
);

create table contact
(
cno int,
name varchar(50),
email varchar(100),
details varchar(1000),
dstatus varchar(50)
);

select *
from users

select uname from users where ustatus not like 'admin';

select *
from contact

drop table contact


select *
from categories

delete from products 
where pid = '3'

select *
from products

select *
from products
where pname not like 'G510' and pname not like 'sony opt'


select *
from faq

update Corders
set dstatus = 'Issued'
where tprice = 25

select *
from requestForUserActivation;


select *
from users

update users
set ustatus ='activate'
where uname = 'prasad'

delete from requestForUserActivation

update users
set ustatus = 'activate'
where uname = 'admin'

insert into users values ('anuja', '123', 'anuja', 'anujfa', 'fsdf', 'a@gmail.com', 'fdsaf', 'fsdaf', 5.2, 'activate')