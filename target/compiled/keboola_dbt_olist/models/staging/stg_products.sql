

select
    "product_id" as "product_pk",
    "product_category_name",
    "product_name_lenght",
    "product_description_lenght",
    "product_photos_qty",
    "product_weight_g",
    "product_length_cm",
    "product_height_cm",
    "product_width_cm"
from
    "KEBOOLA_7167"."in.c-data_import"."olist_products_dataset"