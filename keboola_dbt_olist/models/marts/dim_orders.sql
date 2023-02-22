select
    *,
    datediff(day,try_to_timestamp("order_delivered_customer_date"),try_to_timestamp("order_estimated_delivery_date")) as "est_date_diff"
from
    {{ ref('stg_orders') }}