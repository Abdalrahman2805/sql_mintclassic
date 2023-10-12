select
	warehouseCode,
	productLine,
    count(productCode) as products,
    sum(quantityOrdered) orders,
    sum(price) prices
from
	(select
		p.warehouseCode,
		p.productLine,
		p.productCode,
		o.quantityOrdered,
        o.priceEach * o.quantityOrdered as price
	from
		mintclassics.orderdetails o join mintclassics.products p
		on o.productCode = p.productCode) p_o
group by
	1,2
order by
	5 desc