SELECT p.BRAND, COUNT(DISTINCT t.RECEIPT_ID) AS receipt_count
FROM users u
JOIN transactions t ON u.ID = t.USER_ID
JOIN products p ON t.BARCODE = p.BARCODE
WHERE u.AGE >= 21 
  AND p.BRAND IS NOT NULL 
  AND p.BRAND <> ''
GROUP BY p.BRAND
ORDER BY receipt_count DESC
LIMIT 5