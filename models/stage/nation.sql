{{ config(
    schema= 'STAGE',
    database='DBT_SAMPLE'
  ) }}

select * from {{ source('RAW', 'V_NATION') }}