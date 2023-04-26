CREATE OR REPLACE FUNCTION validate_title(title text)
RETURNS boolean AS $$
BEGIN
  IF length(title) < 5 THEN
    RAISE EXCEPTION 'Title must be at least 5 characters long';
  END IF;
  RETURN true;
END;
$$ LANGUAGE plpgsql;
