select * from Customers where Sales > 59536;

select avg(sales) from Customers;

select * from customers where sales > (select avg(sales) from customers);

select * from customers where sales > (select max(sales) from customers where city = 'cleveland');

select * from customers where id = 8 or id = 11 or id = 12;

select * from customers where Name like '%bank%';

select * from customers where CHARINDEX('bank', name) > 0;

select * from customers where id in (8,11,12);

select * from customers where id in (select id from customers where CHARINDEX('bank', name) > 0);

select * from customers where id in (select id from customers where Name like '%cardinal%' or Name like '%eagle%' or Name like '%bank%');