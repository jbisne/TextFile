select*from MEMBERS;
select*from GOODSBOARD;
select*from REPORT;
select*from REVIEW;
select*from REPLY;

delete from members where MEMAIL='jisun9206@naver.com';
delete from GOODSBOARD  where BID='55';
update members set MPWCONFIRM='1234';
commit;
select * from MEMBERS;
select * from GOODSBOARD;
select * from REPORT;
select * from REVIEW;
select * from REPLY;

select * from user_list;
drop table GOODSBOARD;