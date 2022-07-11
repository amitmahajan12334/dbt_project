{{ config(
    schema= 'STAGE',
    database='DBT_SAMPLE',
    materialized='incremental',
    unique_key='INSERTED_DATE',
  ) }}

select * from {{ source('RAW', 'V_ORDERS') }}

{% if is_incremental() %}
where INSERTED_DATE > (select max(INSERTED_DATE) from {{ this }})
{% endif %}