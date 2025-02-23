SELECT p.BRAND, SUM(t.FINAL_SALE) AS total_sales
FROM users u
JOIN transactions t ON u.ID = t.USER_ID
JOIN products p ON t.BARCODE = p.BARCODE
WHERE julianday('now') - julianday(u.CREATED_DATE) >= 180
GROUP BY p.BRAND
ORDER BY total_sales DESC
LIMIT 5