CREATE DATABASE IF NOT EXISTS hw;

CREATE TABLE IF NOT EXISTS hw.sales
(
    order_id UInt64,
    category UInt64,
    order_date DateTime,
    revenue Decimal(10,2)
)
ENGINE = MergeTree()
ORDER BY order_id;

INSERT INTO hw.sales 
VALUES
(1,0,'2022-05-24',10.00), (2,1,'2022-05-24',10.00), (3,1,'2022-05-24',45.00), (4,3,'2022-05-24',20.00), (5,2,'2022-05-26',25.00), (6,1,'2022-05-26',60.00), (7,3,'2022-05-26',25.00), (8,2,'2022-05-27',30.00), (9,0,'2022-05-27',15.00), (10,2,'2022-05-27',10.00), (11,1,'2022-05-29',15.00), (12,3,'2022-05-29',10.00);