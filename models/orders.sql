-- models/orders.sql

SELECT
    order_id,
    cust_id,
    order_date,
    order_status,
    total_amount,
    payment_method,
    shipping_address,
    billing_address,
    items_count,
    store_location,
    created_at,
    updated_at
FROM {{ source('raw', 'orders_raw_data') }}
WHERE order_status NOT IN ('Cancelled', 'Returned')  -- example filter
