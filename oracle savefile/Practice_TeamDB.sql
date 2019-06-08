select*from MEMBERS;
select*from GOODSBOARD;
select*from REPORT;
select*from REVIEW;
select*from REPLY;

select * from GOODSBOARD;
commit;

insert into GOODSBOARD values(
    '01',0,'3000', '싸게사세요', 'MOMOLOVE', '설명설명','서울시 금천구 가산동',
    'X좌표','Y좌표','image1','썸네일','image2','image3','NoImage','2019.06.06',
    '0','도서','QR코드','완료',0,0,0,0
);
insert into GOODSBOARD values(
    '02',0,'10000', '팝니당', 'SEULGILOVE', '설명설명','서울시 강서구 가양동',
    'X좌표','Y좌표','image1','썸네일','image2','NoImage','NoImage','2019.06.01',
    '0','자동차','QR코드','완료',0,0,0,0
);



