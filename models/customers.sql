-- models/customers.sql

SELECT
    cust_id,
    first_name,
    last_name,
    email_address,
    contact_number,
    registration_date,
    last_active,
    total_purchase_amount,
    purchase_count,
    membership_level,
    rewards_balance,
    preferred_language,
    account_status,
    region_code
FROM {{ source('raw', 'customers_raw_data') }}
WHERE account_status = 'active'  -- example filter
