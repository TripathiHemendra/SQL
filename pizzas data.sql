select * from orders;
select * from order_details;
select * from pizza_types;
select * from pizzas;

-- 1) Retrive the total number of orders placed 

select count(order_id) as Total_order from orders;

-- 2) calculate the total revenue generated from pizza sales

SELECT 
    round(SUM(order_details.quantity * pizzas.price),2) AS Total_revenue
FROM
    order_details
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id;
    
-- 3) Identify the heighest price pizza

SELECT 
    pizza_types.name, pizzas.price
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
    ORDER BY pizzas.price DESC
LIMIT 1;

-- 4)Identify the most common pizza size order

SELECT 
    pizzas.size,count(order_details.order_details_id) as od
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
    group by pizzas.size  order by od desc limit 1;
    
-- 5)List the top 5 most orders pizza type along with their quantities

SELECT 
    pizza_types.name,count(order_details.quantity) as od
FROM
    pizza_types
        JOIN
    pizzas ON  pizza_types.pizza_type_id = pizzas.pizza_type_id
    JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
    group by pizza_types.name  order by od desc limit 5;
    
-- 6) Join the necessary tables to find the total quantity of each pizza ordered

SELECT 
    pizza_types.category,count(order_details.quantity) as od
FROM
    pizza_types
        JOIN
    pizzas ON  pizza_types.pizza_type_id = pizzas.pizza_type_id
    JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
    group by pizza_types.category ;
    
-- 7) Determine the distribution of orders by hours of the day

SELECT 
    hour(orders.order_time) as t,count(orders.order_id) as od
FROM
    orders group by t;
       
-- 8) join relvent table find the cotegory wise distribution of pizza.

SELECT category ,count(name) from pizza_types group by category;

-- 9) Group the order by date and calculate the avrage number of pizza order per day.

SELECT 
    ROUND(AVG(quantity), 0) as average_pizza_order_per_day
FROM
    (SELECT 
        orders.order_date AS od,
            COUNT(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY od) AS order_quantity;
