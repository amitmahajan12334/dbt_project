{{ config(
    schema= 'PUBLISH',
    database='DBT_SAMPLE'
  ) }}

select
    c.C_CUSTKEY
    ,c.C_NAME
    ,c.C_ADDRESS
    ,c.C_PHONE
    ,C_ACCTBAL
    ,O_ORDERKEY
    ,O_ORDERSTATUS
    ,O_TOTALPRICE
    ,O_ORDERDATE
    ,O_ORDERPRIORITY
    ,O_CLERK
from {{ source('STAGE', 'CUSTOMER') }} c
    left join {{ source('STAGE', 'ORDERS') }} o
        on c.C_CUSTKEY = o.O_CUSTKEY
order by 
    C_CUSTKEY asc