create database sales1;
use sales1;

select * from sales_cc;
show tables;

-- Q1 get all transaction done for beauty category in the month of december

update sales_cc
set sales_date = STR_TO_DATE(sales_date, '%m/%d/%Y');
select * from sales_cc where categoryProduct='Beauty' and date_format(sales_date, '%m') = '12';

-- Q2 Get the total sales done for each category in each month
select categoryProduct, sum(total_sale) from sales_cc group by categoryProduct;

-- Q3 find the maximum , minium , average age for people buying beauty products
select categoryProduct, max(age),min(age),avg(age) from sales_cc where categoryProduct='Beauty';

-- Q4 GEt number of transaction done by each user in each category

select categoryProduct,count(quantiy) from sales_cc group by categoryProduct;

select * from sales_cc;
-- Q5 Find the best selling month for each year along with the average sales for each month




-- Q6 Get the top 3 and the bottom 3 customer based on their average sales

select avg(total_sale) from 

-- 