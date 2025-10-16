select * from retail_sales
--how many customers we have?
select count (distinct customer_id) from retail_sales
-- how many category we have?
select distinct category from 


promblems solvings queations


retreves all culomns for sales made on '2022-11-05'

select * from retail_sales
where sale_date = '2022-11-05'

retrive all the transction where category is clothing and quantity >= 4 sahow the details and month is nov-2022?

select * from retail_sales
where
	category = 'Clothing'
	and 
	quantity >= 4  
     and 
	 to_char(sale_date,'YYYY-MM') = '2022-11'


to calculate total sales (total_sale) for each category

select sum(total_sale) as net_sales
,count (*) as total_orders,category
from retail_sales
group by category 


-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.


select 
      round(avg(age),0) 
from retail_sales
where 
	category = 'Beauty'

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

select transactions_id, total_sale from retail_sales
where total_sale > '1000'

-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select category,gender,count(*) as total_tran
from retail_sales
   group by     gender,
			   category

order by category

-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year

select 
	extract(year from sale_date) as year,
	extract(month from sale_date) as month,
	round(avg(total_sale),0) as avg
from retail_sales
group by 1,2
order by 1,3 desc

-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 

select customer_id, sum(total_sale) from retail_sales 
group by customer_id
order by 1,sum(total_sale) desc
limit 5

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

select count(distinct customer_id) as unique_customers,
	category 
from retail_sales
group by category

-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)

select * from retail_sales



- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)


