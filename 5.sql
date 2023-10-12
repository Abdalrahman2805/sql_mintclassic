select
	p.productCode,
    o.priceEach,
	sum(o.quantityOrdered),
	sum(o.priceEach * o.quantityOrdered) as price
from
	mintclassics.orderdetails o join mintclassics.products p
	on o.productCode = p.productCode
group by
	1,2
order by
	3 desc
limit 5