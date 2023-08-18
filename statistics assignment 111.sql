#### ASSIGNMENT 3 

USE DAY2

select * from bank_inventory_pricing;

select product, Estimated_sale_price from bank_inventory_pricing where Estimated_sale_price=(select max(Estimated_sale_price) from bank_inventory_pricing);

select product,max(Estimated_sale_price)                                          
from bank_inventory_pricing group by Estimated_sale_price

select product, Estimated_sale_price, purchase_cost as total_profit from bank_inventory_pricing;

select product from bank_inventory_pricing where purchase_cost is null

select sum(purchase_cost)from bank_inventory_pricing;

SELECT SUM(Quantity) AS purchase_cost  FROM bank_inventory_pricing order by  product;

select product , sum(quantity * estimated_sale_price) as total_Revenue from bank_inventory_pricing;

