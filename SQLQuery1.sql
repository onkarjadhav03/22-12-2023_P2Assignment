create database ContentDb

use ContentDb

create table Articles(
ArticleId int primary key,
Title nvarchar(20),
Content nvarchar(20),
PublishDate date)

insert into Articles values(1,'AI','Technology','02-01-2019')

insert into Articles values(2,'SelfDrving cars','Automobiles','05-15-2020')
insert into Articles values(3,'Effects of Suger','Health Issues','05-15-2020')
insert into Articles values(4,'ArjunRatna Award ','Sports','05-15-2020')
