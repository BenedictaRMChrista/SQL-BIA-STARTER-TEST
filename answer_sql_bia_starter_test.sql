1. Jumlah seluruh produk yang terjual
SELECT sum(sales) as total_sales FROM `bia-starter-test.superstore.order`

2. Jumlah unique customer yang telah memesan produk
SELECT count (distinct customer_id) as jumlah_unik_customer FROM `bia-starter-test.superstore.customer`

3. Rata-rata profit dari seluruh order (dalam mata uang)
SELECT CONCAT("$", avg(profit)) FROM `superstore.order`

4. Berapa discount terkecil dari seluruh order
select min (discount) as discount_terkecil from `superstore.order`
order by discount_terkecil

5. Jumlah seluruh produk dari kategori Furniture
select b. category, sum(a.qty) as total_quantity
from `superstore.order` as a
left join
`superstore.categories` as b
on a.productid = b.product_id
where category = "Furniture"
group by category
order by total_quantity

6. Nama pelanggan yang membeli produk paling banyak (dalam quantity)
select b. cutomername, sum(a.qty) as total_pembelian
from `superstore.order` as a
left join
`superstore.customer` as b
on a.customerid = b.customer_id
group by cutomername
order by total_pembelian desc
limit 1

7. Nama pelanggan yang paling sering melakukan repeat order
select b. cutomername, a.orderid, count(a.orderid) as jumlah_order
from `superstore.order` as a
left join
`superstore.customer` as b
on a.customerid = b.customer_id
group by cutomername, orderid
order by jumlah_order desc
limit 1

8. Dari kota mana pelanggan yang paling sering melakukan repeat order
select b. cutomername as customername, a.city, count(a.orderid) as jumlah_order
from `superstore.order` as a
left join
`superstore.customer` as b
on a.customerid = b.customer_id
group by customername, city
order by jumlah_order desc
limit 1

9. Order mana yang mendapatkan total discount paling kecil
select orderid, sum (discount) as total_discount
from `superstore.order`
group by orderid
order by total_discount asc
limit 1

10.Total profit yang datang dari produk dengan sub category Furnishings &
Supplies
SELECT b. subcategory, sum(a.profit) as total_profit
FROM `bia-starter-test.superstore.order` as a
left join
`superstore.categories` as b
on a.productid = b.product_id
where subcategory = "Furnishings" or subcategory = "Supplies"
group by 1


11. Jumlah order yang berasal dari produk warna hitam (terdapat keterangan
“black” di nama produknya)
SELECT b. productname, sum(a.qty) as total_order
FROM `bia-starter-test.superstore.order` as a
left join
`superstore.categories` as b
on a.productid = b.product_id
where productname like "%Black"
group by 1

12.Jumlah order yang memiliki waktu pengiriman masih di hari yang sama dengan waktu pemesanan
SELECT  count(orderid)
FROM `bia-starter-test.superstore.order`
Where shipdate is not null and shipdate = orderdate


BIE
2. Select salary From employees
	where department_id = "engineering"
	order by 1 desc
	limit 2

3. select name from users
	where neighborhood_id = 0


