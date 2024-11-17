CREATE DATABASE STOREDB;
USE STOREDB;
SHOW TABLES;
```
 select e.name,d.dname from employee e 
   join department d on d.dno=e.dno 
   join project p on d.dno=p.dno where d.dno=5 
   and not exists(select p.pno from project p where p.dno=d.dno 
   and not exists(select w.pno from works_on w where w.pno=p.pno and e.ssn=w.ssn));
