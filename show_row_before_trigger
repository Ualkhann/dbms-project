CREATE OR REPLACE FUNCTION show_row_count() RETURNS trigger AS $$
DECLARE
  row_count INTEGER;
BEGIN
  EXECUTE 'SELECT COUNT(*) FROM ' || TG_TABLE_NAME INTO row_count;
  RAISE NOTICE 'Current row count: %', row_count;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
--
CREATE TRIGGER count_rows_trigger
BEFORE INSERT ON customer
FOR EACH ROW
EXECUTE FUNCTION show_row_count();
