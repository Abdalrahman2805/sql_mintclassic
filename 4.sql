select
	distinct productCode,
    productLine,
    warehouseCode
from
	mintclassics.products
where
	productCode not in (select productCode from mintclassics.orderdetails o)