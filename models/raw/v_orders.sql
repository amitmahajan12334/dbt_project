-- config is for writing into the target
{{ config(
    schema= 'RAW',
    database='DBT_SAMPLE'
  ) }}

select * from {{ source('RAW', 'ORDERS') }}