{{ config(materialized='table') }}
with source_data as (

   select json_extract_path_text(items::json,'id') AS Id,
    json_extract_path_text(items::json,'snippet','title') AS Category,
    country
    from cat_id
)

select * from source_data
