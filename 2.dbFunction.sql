---- Auditing function to update last_updated and updated_by_user_id
CREATE OR REPLACE FUNCTION update_audit_fields()
RETURNS TRIGGER AS $$
BEGIN
    NEW.last_updated := CURRENT_TIMESTAMP;
    NEW.updated_by_user_id := current_setting('app.current_user_id')::INTEGER;
    RETURN NEW;
END;

$$ LANGUAGE plpgsql;