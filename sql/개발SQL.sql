drop sequence seq_emaillist;
create sequence seq_emaillist
start with 1
increment by 1;

select * from tab;
desc emaillist;

--insert 하기
insert into emaillist 
     values(seq_emaillist.nextval, '대혁', '안', 'kickscar@gmail.com', sysdate);

insert into emaillist 
     values(seq_emaillist.nextval, '둘리', '고', 'dooly@gmail.com', sysdate);

commit;

--list 가져오기
select no, first_name, last_name, email, to_char(reg_date, 'yyyy-mm-dd')
  from emaillist;

