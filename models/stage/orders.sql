{{ config(
    alias = 'ORDERS_1',
    schema= 'STAGE',
    database='DBT_SAMPLE'
  ) }}

select * from "DBT_SAMPLE"."RAW"."ORDERS"