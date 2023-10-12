select
	p.warehouseCode,
    p.productLine,
    orderNumber,
    time
from
	(select
		o.orderNumber,
		od.productCode,
		timediff(shippedDate,orderDate) as time,
        customerNumber
	from 
		mintclassics.orders o join mintclassics.orderdetails od
		on o.orderNumber = od.orderNumber) ord
join mintclassics.products p
on ord.productCode = p.productCode
-- group by
-- 	1,2,3
-- order by orderNumber, time24 desc
 