{{ config(materialized='table') }}

with source_data as (

    select * from vis where state='TAMIL NADU')

select *
from source_data
