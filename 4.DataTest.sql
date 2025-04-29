-- Insert roles
INSERT INTO roles (name) VALUES ('Administrador'), ('Auxiliar de Registro');

-- Insert users
INSERT INTO users (name, email, password, role_id) VALUES
('Marlon Antonio Sanchez', 'antonio.sanchez@ol.com', 'D7p$3r!uVg9q@1ZwTb8&', 1),
('Carlos Moreno Nuñez', 'carlos.moreno@ol.com', 'D7p$3r!uVg9q@1ZwTb8&', 2);

-- Set current user session for auditing
SET session "app.current_user_id" = 1;

-- Insert merchants
INSERT INTO merchants (business_name, municipality, phone, email, state_id)
VALUES
('Olimpico', 'Bogotá', '3001234567', 'olimpico@company.com', 1),
('Ara', 'Medellín', NULL, 'ara@company.com', 1),
('Exito', 'Cali', '3019876543', NULL, 2),
('Shein', 'Barranquilla', NULL, NULL, 1),
('Termales', 'Pereira', '3206549871', 'termales@company.com', 1);

-- Insert establishments
INSERT INTO establishments (name, revenue, number_of_employees, merchant_id)
VALUES
('Principal sede', 100000.50, 4, 1),
('Centro', 500000.00, 10, 2),
('Calle 80', 350000.25, 6, 2),
('Carrera 10', 120000.00, 3, 3),
('Iglesia', 80000.50, 2, 3),
('Santa Barbarita', 45000.00, 1, 4),
('El poblado', 200000.00, 5, 4),
('Gran Plaza', 110000.00, 4, 5),
('Sede Centro', 250000.75, 8, 1),
('Araucarias', 60000.00, 2, 5);