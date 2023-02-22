
  
    

        create or replace transient table KEBOOLA_7167.WORKSPACE_35314553.stg_orders  as
        (

select
    "order_id" as "order_pk",
    "customer_id" as "customer_fk",
    "order_status",
    "order_purchase_timestamp",
    "order_approved_at",
    "order_delivered_carrier_date",
    "order_delivered_customer_date",
    "order_estimated_delivery_date"
from
    "KEBOOLA_7167"."in.c-data_import"."olist_orders_dataset"
        );
      
  