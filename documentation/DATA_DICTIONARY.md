# Data Dictionary

## Pizza Sales Dataset

The dataset contains transactional pizza sales information used to analyze
orders, revenue, quantity sold, product performance, pizza categories,
pizza sizes, and ordering patterns.

| Column              |   Data Type  |                Description            |
|---------------------|--------------|---------------------------------------|
| `pizza_id`          | INT          | Identifier for the pizza sales record |
| `order_id`          | INT          | Unique order identifier               |
| `pizza_name_id`     | VARCHAR(100) | Identifier for the pizza product      |
| `quantity`          | INT          | Number of pizzas sold                 |
| `order_date`        | DATE         | Date on which the order was placed    |
| `order_time`        | TIME         | Time at which the order was placed    |
| `unit_price`        | DECIMAL(10,2)| Price of one pizza                    |
| `total_price`       | DECIMAL(10,2)| Total value of the pizza line item    |
| `pizza_size`        | VARCHAR(50)  | Size of the pizza                     |
| `pizza_category`    | VARCHAR(50)  | Category of the pizza                 |
| `pizza_ingredients` | VARCHAR(MAX) | Ingredients associated with the pizza |
| `pizza_name`        | VARCHAR(MAX) | Name of the pizza                     |

## Key Analytical Measures

### Total Revenue
Sum of `total_price` across all sales records.

### Average Order Value
Total revenue divided by the number of distinct orders.

### Total Pizzas Sold
Sum of `quantity` across all sales records.

### Total Orders
Count of distinct `order_id` values.

### Average Pizzas Per Order
Total pizzas sold divided by total number of distinct orders.


