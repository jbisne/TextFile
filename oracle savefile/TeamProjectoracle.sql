create table mdto(
img varchar2(200),
thumbimg varchar2(200));

drop table members;

select * from members;
delete from members where MPASSWORD='1234';
commit;

create table members(
memail varchar2(40) primary key,
mpassword varchar2(100),
mpwconfirm varchar2(50),
mname varchar2(20),
mphonenum varchar2(20),
maddress varchar2(100),
mdetailaddress varchar2(100),
mextraaddress varchar2(100),
mauthkey varchar2(100),
moriginalname varchar2(200),
msavefilename varchar2(200),
mauthority varchar2(20),
mblackdate varchar2(40),
mblack number(2),
menabled number(2));

insert into members
(memail, mpassword, mpwconfirm, mname, mphonenum, maddress, mdetailaddress, mextraaddress, mauthkey, moriginalname, msavefilename, mauthority, mblackdate, mblack, menabled)
values ('jhj@jhj.com', '1234', '1234', 'jhj','01012341234','서울', '구로구', '1-1', '11', '', '', 'ROLE_ADMIN','', '0', '1');

insert into members
(memail, mpassword, mname, mphonenum, maddress, mdetailaddress, mextraaddress, mauthkey, moriginalname, msavefilename, mauthority, mblackdate, mblack, menabled)
values ('admin', '$2a$10$c3rZdvzUkZbbQqypRa5OzurXJLHQ41mrX9gTQIK0Df2wJ1/2VLwW2','jhj','01012341234','서울', '구로구', '1-1', '11', '', '', 'ROLE_ADMIN','', '0', '1');


select * from members ;
select count(*) from members
where memail = 'jhj@jhj.com' and mpassword = '1234';


delete from members where mname = '1' and mphonenum = '1';
commit;

update members
set mpassword = '$2a$10$c3rZdvzUkZbbQqypRa5OzurXJLHQ41mrX9gTQIK0Df2wJ1/2VLwW2'
where memail = 'jhj@jhj.com';

select memail as userName, mpassword as password, menabled as enabled
                        from members where memail = 'jangh0429@naver.com';
                                
create table GOODSBOARD(
BID number(4) primary key,
BHIT number(4),
BCOST varchar2(20),
BTITLE varchar2(20),
BNAME varchar2(20),
BCONTENT varchar2(300),
BLOCATION varchar2(60),
BXLOC varchar2(50),
BYLOC varchar2(50),
BIMAGE1 varchar2(100),
BTHUMBIMG1 varchar2(100),
BIMAGE2 varchar2(100),
BIMAGE3 varchar2(100),
BIMAGE4 varchar2(100),
BDATE date default sysdate,
BCATEGORY varchar2(20),
BPOSITION varchar2(20),
BQRCODE varchar2(50),
BTRADEOK varchar2(10),
BPRODUCT number(5),
BREPLYCOUNT number(5),
BCOMMENTCOUNT number(4),
BREPORTCOUNT number(4) );

create sequence GOODSBOARD_seq;
select * from GOODSBOARD;
drop table GOODSBOARD;
drop sequence GOODSBOARD_seq;
commit;

create table REPLY(
REPLYNUM number(4) primary key,
REPLYCONTENT varchar2(200),
REPLYNAME varchar2(30),
REPLYPARENT varchar2(30),
REPLYDATE date default sysdate,
RGROUP number(4),
RSTEP number(4),
RINDENT number(4) );

create sequence REPLY_seq;

commit;

select * from REPLY;

create table REVIEW(
REVIEWNUM number(4) primary key,
REVIEWCONTENT varchar2(200),
REVIEWSTAR number(4),
REVIEWNAME varchar2(30),
REVIEWDATE date default sysdate,
REVIEWPBNAME varchar2(30),
REVIEWPBID varchar2(30) );
create sequence REVIEW_seq;
select * from REVIEW;
commit;

drop table REPORT;
create table REPORT(
REPORTNUM number(4) primary key,
REPORTREASON varchar2(200),
REPORTNAME varchar2(30),
REPORTDATE date default sysdate,
PARENTBID varchar2(30),
PARENTNAME varchar2(30) );
create sequence REPORT_seq;
select * from REPORT;
commit;