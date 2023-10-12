select
	count(distinct productCode)
from
	(select
		p.warehouseCode,
		p.productLine,
		p.productCode,
		o.quantityOrdered,
        o.priceEach * o.quantityOrdered as price
	from
		mintclassics.orderdetails o join mintclassics.products p
		on o.productCode = p.productCode) o_p
 where productCode != "S18_3233" 