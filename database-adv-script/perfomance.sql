-- Initial Complex Query

SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    p.first_name,
    p.last_name,
    u.email,
    prop.name AS property_name,  
    prop.description,           
    pay.payment_method,
    pay.payment_date
FROM
    bookings AS b
JOIN
    profile AS p ON b.user_id = p.user_id
JOIN
    UserAuthentication AS u ON b.user_id = u.user_id
JOIN
    payments AS pay ON b.booking_id = pay.booking_id
JOIN
    properties AS prop ON b.property_id = prop.property_id -- Renamed alias
WHERE
    u.email = 'specific_user@example.com'
    AND b.start_date > '2025-01-01';

-- Performance Analysis


EXPLAIN ANALYZE
SELECT b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    p.first_name,
    p.last_name,
    u.email,
    p.name AS property_name,
    p.description,
    pay.payment_method,
    pay.payment_date
FROM bookings b
    JOIN profile AS p ON b.user_id = p.user_id
    JOIN users AS u ON b.user_id = u.user_id
    JOIN payments AS pay ON b.booking_id = pay.booking_id
    JOIN properties AS p ON b.property_id = p.property_id;