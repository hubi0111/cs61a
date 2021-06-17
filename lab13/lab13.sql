.read data.sql


CREATE TABLE average_prices AS
  SELECT category, avg(MSRP) as average_price
  from products
  group by category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price)
  from inventory
  group by item;


CREATE TABLE shopping_list AS
  SELECT name, store
  from products, lowest_prices
  where name = item
  group by category
  having MIN(MSRP / rating);


CREATE TABLE total_bandwidth AS
  SELECT sum(a.Mbs)
  from stores as a, shopping_list as b
  where a.store = b.store;

