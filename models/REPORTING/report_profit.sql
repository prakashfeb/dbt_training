select
Product_ID,
PRODUCTNAME,
CATEGORY,
SUBCATEGORY,
sum(REFG) as profit
from 
{{ ref('stg_orders') }}
group by Product_ID,
PRODUCTNAME,
CATEGORY,
SUBCATEGORY