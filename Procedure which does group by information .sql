CREATE OR REPLACE PROCEDURE get_book_group_totals()
LANGUAGE plpgsql
AS $$
DECLARE
    cat_id INTEGER;
    au_id INTEGER;
    book_count INTEGER;
    total_price NUMERIC(10,2);
BEGIN
    FOR cat_id IN SELECT DISTINCT category_id FROM book LOOP
        FOR au_id IN SELECT DISTINCT author_id FROM book WHERE category_id = category_id LOOP
            SELECT COUNT(*), SUM(price) INTO book_count, total_price FROM book WHERE category_id = cat_id AND author_id = au_id;
            RAISE NOTICE 'Category %, Author %: % books, total price $%', cat_id, au_id, book_count, total_price;
        END LOOP;
    END LOOP;
END;
$$;
