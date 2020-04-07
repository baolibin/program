/*  1070. 产品销售分析 III
    销售表 Sales：
    +-------------+-------+
    | Column Name | Type  |
    +-------------+-------+
    | sale_id     | int   |
    | product_id  | int   |
    | year        | int   |
    | quantity    | int   |
    | price       | int   |
    +-------------+-------+
    sale_id 是此表的主键。
    产品 ID 是产品表的外键。
    请注意，价格是按每单位计的。
    产品表 Product：
    +--------------+---------+
    | Column Name  | Type    |
    +--------------+---------+
    | product_id   | int     |
    | product_name | varchar |
    +--------------+---------+
    产品 ID 是此表的主键。

    编写一个 SQL 查询，选出每个销售产品的 第一年 的 产品 id、年份、数量 和 价格。
    查询结果格式如下：
    Sales table:
    +---------+------------+------+----------+-------+
    | sale_id | product_id | year | quantity | price |
    +---------+------------+------+----------+-------+
    | 1       | 100        | 2008 | 10       | 5000  |
    | 2       | 100        | 2009 | 12       | 5000  |
    | 7       | 200        | 2011 | 15       | 9000  |
    +---------+------------+------+----------+-------+
    Product table:
    +------------+--------------+
    | product_id | product_name |
    +------------+--------------+
    | 100        | Nokia        |
    | 200        | Apple        |
    | 300        | Samsung      |
    +------------+--------------+
    Result table:
    +------------+------------+----------+-------+
    | product_id | first_year | quantity | price |
    +------------+------------+----------+-------+
    | 100        | 2008       | 10       | 5000  |
    | 200        | 2011       | 15       | 9000  |
    +------------+------------+----------+-------+
*/


/*
超时
select S.product_id product_id,S.year first_year,S.quantity,S.price
from Sales S,Product P
where S.product_id=P.product_id
and S.year=(select min(year) from Sales where S.product_id=product_id group by S.product_id)
*/

-- 2.1、解法一：
select S.product_id,S.year first_year,S.quantity,S.price
from Sales S
where (S.product_id,S.year) in (select product_id,min(year) from Sales group by product_id)
