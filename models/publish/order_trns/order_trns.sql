{{ config(
    schema= 'PUBLISH',
    database='DBT_SAMPLE'
  ) }}

select
    O_CUSTKEY
    ,O_ORDERKEY
    ,O_ORDERSTATUS
    ,L_LINENUMBER
    ,L_EXTENDEDPRICE
    ,O_TOTALPRICE
    ,O_ORDERDATE
    ,L_QUANTITY
    ,L_DISCOUNT
    ,L_TAX
    ,L_RETURNFLAG
    ,L_LINESTATUS
    ,L_RECEIPTDATE 
from {{ source('STAGE', 'ORDERS') }} o
       left join {{ source('STAGE', 'LINEITEM') }} l
        on o.O_ORDERKEY = l.l_orderkey
order by O_ORDERKEY,L_LINENUMBER