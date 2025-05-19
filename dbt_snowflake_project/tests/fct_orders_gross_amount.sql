select
    *
from
    {{ref('fct_orders')}}
where
    GROSS_ITEM_SALES_AMOUNT >= 50000