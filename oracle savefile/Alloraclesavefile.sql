create table mdto(
img varchar2(200),
thumbimg varchar2(200));

commit;

drop table members;

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


/***********************************************************/
select * from TestDB;
create SEQUENCE TestDB;
commit;

create table TestDB1(
    B_NICK varchar2(20),
    B_PHONE varchar2(20),
    B_ADDRESS varchar2(20),
    B_IMAGE varchar2(20)
);
create SEQUENCE TESTDB1;
commit;

insert into TestDB1 values('momo','1111','가산동','NoImage');
select * from TestDB1;


drop table simple_bbs;
create table simple_bbs (
    id number(4) primary key,
    writer varchar2(100),
    title varchar2(100),
    content varchar2(100)
);

drop sequence simple_bbs_seq;
create sequence simple_bbs_seq;
commit;
select * from simple_bbs;

create table myuser (
    id varchar2(10),
    name varchar2(10)
);
select * from myuser;
delete  from myuser where name='유주';
insert into myuser values('aaaa', '모모');
insert into myuser values('bbbb', '슬기');
insert into myuser values('cccc', '유주');
commit;

drop table CARD;
create table CARD (
consumerid varchar2(20),
amount number );

drop table TICKET;
create table TICKET (
consumerid varchar2(20),
countnum number constraint con_ticket_countnum check(countnum < 5));
    
insert into card (consumerid, amount) values ('123', 5);
insert into ticket values ('123', 4);

select * from card;
select * from ticket;
delete from card;
delete from ticket;
commit;

create table user_list (
    name varchar2(20) primary key,
    password varchar2(20),
    authority varchar(20),
    enabled number(1)
);

insert into user_list values ('user', '1234', 'ROLE_USER', 1);
insert into user_list values ('admin', '1234', 'ROLE_ADMIN', 1);
commit;
select * from user_list;
update user_list set password='$2a$10$eLPrtHEGKYhkv//dVkCsBuLr2dHwTG9.VhS7itS.QbBlGhKLyPhAC';

create table board (
    mId number(4) primary key,
    mWriter varchar2(100),
    mContent varchar2(100)
 );

 create sequence board_seq;
 select * from board;
 drop table board;
commit;
select * from members;

select * from mvc_board;
select * from mvc_board2;

insert into mvc_board (bId, bName, bTitle, bContent, bGroup, bStep, bIndent) values (mvc_board_seq.nextval, '홍길동01', '01 테스트 제목입니다.', '01 테스트 내용입니다.', mvc_board_seq.currval, 0, 0);

select * from file_board;

delete from members
 where id='aaaa';
 
delete from mvc_board
 where bstep='1';
 
delete from file_board
 where fname=bbbb;

create sequence mvc_board_seq;
create sequence mvc_board2_seq;
create sequence file_board_seq;

commit;

drop table mvc_board;

create table mvc_board (
bId number(4) primary key,
bName varchar2(40),
bTitle varchar2(100),
bContent varchar2(300),
bDate date default sysdate,
bHit number(4) default 0,
bGroup number(4),
bStep number(4),
bIndent number(4)
);

create table mvc_board2 (
bCategory number(2),
bId number(4) primary key,
bName varchar2(40),
bTitle varchar2(100),
bContent varchar2(300),
bDate date default sysdate,
bHit number(4) default 0,
bGroup number(4),
bStep number(4),
bIndent number(4)
);

create table file_board (
fId number(4) primary key,
fName varchar2(40),
fTitle varchar2(100),
fContent varchar2(300),
fileName varchar2(100),
orgfileName varchar2(100),
fDate date default sysdate,
fHit number(4) default 0
);

SELECT * FROM BOARD ORDER BY MID DESC;