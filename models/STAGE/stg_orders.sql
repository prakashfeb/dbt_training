select 
O.* ,
C.* ,
P.* ,
(O.OrderSellingPrice - O.OrderCostPrice) as REFG
from {{ ref('RAW_ORDERS') }} as O
Left Join 
{{ ref('RAW_CUSTOMER') }} as C
on C.Customer_ID = O.CustomerID
Left Join 
{{ ref('RAW_PRODUCT') }} as P
ON P.Product_ID = O.ProductID

