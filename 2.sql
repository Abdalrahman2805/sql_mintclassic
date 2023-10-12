select
	warehouseCode,
    productLine,
	count(productCode) as number_products
from
	mintclassics.products
group by
	1,2
order by
	3 desc

