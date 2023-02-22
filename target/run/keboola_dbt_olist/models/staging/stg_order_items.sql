
  
    

        create or replace transient table KEBOOLA_7167.WORKSPACE_35314553.stg_order_items  as
        (

select
    "order_id" as "order_fk",
    "order_item_id",
    "product_id" as "product_fk",
    "seller_id" as "seller_fk",
    "shipping_limit_date",
    "price",
    "freight_value"
from
    "KEBOOLA_7167"."in.c-data_import"."olist_order_items_dataset"
        );
      
  