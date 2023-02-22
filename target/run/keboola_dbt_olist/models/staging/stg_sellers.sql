
  
    

        create or replace transient table KEBOOLA_7167.WORKSPACE_35314553.stg_sellers  as
        (

select
    "seller_id" as "seller_fk",
    "seller_city",
    "seller_state" 
from
    "KEBOOLA_7167"."in.c-data_import"."olist_sellers_dataset"
        );
      
  