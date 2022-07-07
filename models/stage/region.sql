-- config is for writing into the target
{{ config(
    schema= 'STAGE',
    database='DBT_SAMPLE'
  ) }}

select * from {{ source('RAW', 'V_REGION') }}