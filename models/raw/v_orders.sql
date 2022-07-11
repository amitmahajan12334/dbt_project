{{ config(
    schema= 'RAW',
    database='DBT_SAMPLE'
  ) }}

select * from {{ source('RAW', 'ORDERS') }}
