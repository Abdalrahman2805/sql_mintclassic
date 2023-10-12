select
	p.warehouseCode,
    p.productLine,
	f.productCode,
    count(case when time = "24:00:00" then 1 else null end) as equal_24,
    count(case when time <> "24:00:00" then 1 else null end) as more_24
from
	(select
		o.orderNumber,
		od.productCode,
		timediff(shippedDate,orderDate) as time
	from 
		mintclassics.orders o join mintclassics.orderdetails od
		on o.orderNumber = od.orderNumber) f 
join mintclassics.products p
	on f.productCode = p.productCode
group by
	1,2,3
order by
	4 desc, 5