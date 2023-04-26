create procedure update_book_price(IN id integer, IN new_price numeric)
    language plpgsql
as
$$
    DECLARE v_RowCountInt  Int;
BEGIN
  UPDATE book
  SET price = new_price
  where book.book_id = id;
  
  get diagnostics v_RowCountInt = row_count;

  IF FOUND THEN
    RAISE NOTICE 'Price updated for % books', v_RowCountInt;
  ELSE
    RAISE EXCEPTION 'Book not found with id %', book_id;
  END IF;
END;
$$;

alter procedure update_book_price(integer, numeric) owner to postgres;
