CREATE OR REPLACE FUNCTION count_records(table_name text)
RETURNS integer AS $$
DECLARE
  row_count integer;
BEGIN
  EXECUTE 'SELECT COUNT(*) FROM ' || table_name INTO row_count;
  RETURN row_count;
END;
$$ LANGUAGE plpgsql;
