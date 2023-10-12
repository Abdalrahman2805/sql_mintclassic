select
	distinct pr.productCode
from 
	mintclassics.products pr 
where pr.productCode not in
	(select
		distinct productCode
	from
		mintclassics.orderdetails o ) 