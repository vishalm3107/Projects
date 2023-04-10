{{ config(materialized='table') }}

with source_data as (
   select * from vishal where id=1
)

select * from source_data
