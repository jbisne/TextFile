create table BLUEMARKETUSER(
    B_NICK VARCHAR2(20),
    B_PHONE VARCHAR2(20),
    B_ADDRESS VARCHAR2(100),
    B_EMAIL VARCHAR2(30),
    B_IMAGE VARCHAR2(20)
);

create sequence BLUEMARKETUSER_seq;

commit;

select * from BLUEMARKETUSER;
delete from BLUEMARKETUSER where B_NICK='momo';

INSERT into BLUEMARKETUSER values(
    'momo','1111','가산동','momo@twice.com','NoImage'
);
INSERT into BLUEMARKETUSER values(
    'sana','2222','가양동','sana@twice.com','NoImage'
);
INSERT into BLUEMARKETUSER values(
    'mina','3333','화곡동','mina@twice.com','NoImage'
);INSERT into BLUEMARKETUSER values(
    'Tsuyu','4444','내발산동','Tsuyu@twice.com','NoImage'
);

drop table BLUEMARKETUSER;