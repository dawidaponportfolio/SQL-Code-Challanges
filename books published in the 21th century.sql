SELECT book_id, title, date, sales
FROM Books
WHERE date > '1999-12-31'
ORDER BY sales DESC
;