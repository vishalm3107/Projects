{{ config(materialized='table') }}
with source_data as (
   select name,state from Vishal.vis where code >=30 )select * from source_data
