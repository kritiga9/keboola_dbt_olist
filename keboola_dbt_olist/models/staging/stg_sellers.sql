
{{ config(
    materialized="table"
) }}

select
    "seller_id" as "seller_fk",
    "seller_city",
    "seller_state" 
from
    {{ source('in.c-data_import','olist_sellers_dataset') }}
