-- Trigger for merchants table
CREATE TRIGGER trg_aud_merchants
BEFORE INSERT OR UPDATE ON merchants
FOR EACH ROW EXECUTE FUNCTION update_audit_fields();

-- Trigger for establishments table
CREATE TRIGGER trg_aud_establishments
BEFORE INSERT OR UPDATE ON establishments
FOR EACH ROW EXECUTE FUNCTION update_audit_fields();