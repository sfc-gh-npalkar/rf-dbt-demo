-- Daily sales by store, built from the R&F CRM order tables.
select
    s.store_name,
    s.district,
    o.order_date,
    count(*)            as order_count,
    sum(o.order_total)  as revenue
from RF_DEMO.CRM_PG.ORDERS o
join RF_DEMO.CRM_PG.STORES s
  on o.store_id = s.store_id
group by 1, 2, 3
