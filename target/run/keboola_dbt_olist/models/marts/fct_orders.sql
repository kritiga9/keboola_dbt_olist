
  create or replace   view KEBOOLA_7167.WORKSPACE_35314553.fct_orders
  
   as (
    with stg_order_items as (
    select
        *,
        "order_fk" || '-' || "product_fk" as "order_product_sk"
    from
        KEBOOLA_7167.WORKSPACE_35314553.stg_order_items
),
items_by_order as (
    select
        "order_fk",
        "product_fk",
        "order_product_sk",
        "price",
        SUM("freight_value") as "order_freight_value",
        MAX("order_item_id") as "product_quantity"
    from
        stg_order_items
    group by
        "order_fk", "product_fk", "price", "order_product_sk"
),
items_by_order_with_order_value as (
    select
        "order_fk",
        "product_fk",
        "order_product_sk",
        "price",
        "order_freight_value",
        "product_quantity",
        "price" * "product_quantity" as "order_value_without_freight",
        ("price" * "product_quantity") + "order_freight_value" as "order_value_with_freight"

    from
        items_by_order
)
select
    *
from
    items_by_order_with_order_value
  );

