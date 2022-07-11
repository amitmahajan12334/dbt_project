{{
    config(
      target_database='DBT_SAMPLE',
      target_schema='SNAPSHOT',
      unique_key='O_ORDERKEY',
      strategy='check',
      check_cols=['O_ORDERKEY', 'O_CUSTKEY', 'O_ORDERSTATUS', 'O_TOTALPRICE', 'O_ORDERDATE', 'O_ORDERPRIORITY', 'O_CLERK', 'O_SHIPPRIORITY', 'O_COMMENT','INSERTED_DATE']
    )
}}

select * from {{ source('RAW', 'ORDERS') }}