-- Insertar datos en la tabla direccion_entrega
INSERT INTO direccion_entrega (calle, ciudad, estado, codigo_postal)
VALUES 
('123 Calle Principal', 'Ciudad A', 'Estado A', '12345'),
('456 Calle Secundaria', 'Ciudad B', 'Estado B', '67890'),
('789 Calle Terciaria', 'Ciudad C', 'Estado C', '11223'),
('555 Calle Terciaria', 'Ciudad D', 'Estado D', '12223'),
('333 Calle Terciaria', 'Ciudad E', 'Estado E', '12223'),
('555 Calle Terciaria', 'Ciudad F', 'Estado F', '11223'),
('666 Calle Terciaria', 'Ciudad G', 'Estado G', '11223'),
('777 Calle Terciaria', 'Ciudad H', 'Estado H', '11223');

-- Insertar datos en la tabla cliente
INSERT INTO cliente (nombre, apellido, email, cedula, telefono)
VALUES 
('Juan', 'Pérez', 'juan.perez@example.com', '1234567890', '555-1234'),
('María', 'González', 'maria.gonzalez@example.com', '0987654321', '555-5678'),
('Carlos', 'López', 'carlos.lopez@example.com', '1122334455', '555-8765'),
('Mirta', 'Paredes', 'Mirta.Paredes@example.com', '0987654321', '555-3678'),
('Lortan', 'Gomez', 'Lortan.Gomez@example.com', '0987654321', '555-5543'),
('Mercedes', 'Xález', 'Mercedes.Xález@example.com', '0987654321', '555-5658'),
('Camilo', 'Messi', 'Camilo.Messi@example.com', '0987654321', '555-5898'),
('Fridda', 'Franco', 'Fridda.Franco@example.com', '0987654321', '555-9978');


-- Insertar datos en la tabla pedido
INSERT INTO pedido (fecha_pedido, direccion_entrega_id)
VALUES 
('2024-06-01', 1),
('2024-06-02', 2),
('2024-06-03', 3),
('2024-06-01', 4),
('2024-06-02', 5),
('2024-06-01', 6),
('2024-06-02', 7),
('2024-06-01', 8);

-- Insertar datos en la tabla carrito_compra
INSERT INTO carrito_compra (cliente_id, pedido_id)
VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- Insertar datos en la tabla categoria_empleado
INSERT INTO categoria_empleado (nombre, descripcion)
VALUES 
('Gerente', 'Responsable de la gestión de la tienda'),
('Cajero', 'Responsable del manejo de la caja registradora'),
('Repartidor', 'Responsable de las entregas a domicilio');

-- Insertar datos en la tabla empleado
INSERT INTO empleado (nombre, apellido, cargo, salario, fecha_contrato, categoria_id)
VALUES 
('Luis', 'Martínez', 'Gerente', 5000.00, '2022-01-01', 1),
('Ana', 'Hernández', 'Cajero', 2500.00, '2023-01-01', 2),
('Pedro', 'Ramírez', 'Repartidor', 2000.00, '2023-05-01', 3);

-- Insertar datos en la tabla promociones
INSERT INTO promociones (nombre, descripcion, fecha_inicio, fecha_fin, descuento)
VALUES 
('Descuento Verano', 'Descuento del 20% en todos los productos de verano', '2024-06-01', '2024-06-30', 20.00),
('Descuento Invierno', 'Descuento del 15% en productos seleccionados de invierno', '2024-12-01', '2024-12-31', 15.00);

-- Insertar datos en la tabla factura
INSERT INTO factura (fecha_factura, total, cliente_id, empleado_id, promociones_id)
VALUES 
('2024-06-01', 100.00, 1, 1, 1),
('2024-06-02', 200.00, 2, 2, NULL),
('2024-06-03', 150.00, 3, 3, 2);

-- Insertar datos en la tabla contrato
INSERT INTO contrato (empleado_id, tipo_contrato, fecha_inicio, fecha_fin, salario)
VALUES 
(1, 'Indefinido', '2022-01-01', NULL, 5000.00),
(2, 'Temporal', '2023-01-01', '2023-12-31', 2500.00),
(3, 'Por Hora', '2023-05-01', NULL, 2000.00);

-- Insertar datos en la tabla metodo_pago
INSERT INTO metodo_pago (nombre, descripcion)
VALUES 
('Tarjeta de Crédito', 'Pago con tarjeta de crédito'),
('PayPal', 'Pago a través de PayPal'),
('Transferencia Bancaria', 'Pago mediante transferencia bancaria');

-- Insertar datos en la tabla categoria_producto
INSERT INTO categoria_producto (nombre, descripcion)
VALUES 
('Electrónica', 'Productos electrónicos y gadgets'),
('Ropa', 'Prendas de vestir y accesorios'),
('Hogar', 'Artículos para el hogar y decoración');

-- Insertar datos en la tabla proveedor
INSERT INTO proveedor (nombre, contacto, telefono, email)
VALUES 
('Proveedor A', 'Carlos Soto', '555-1234', 'proveedorA@example.com'),
('Proveedor B', 'Lucía Morales', '555-5678', 'proveedorB@example.com'),
('Proveedor C', 'Juan Castillo', '555-8765', 'proveedorC@example.com');

-- Insertar datos en la tabla producto
INSERT INTO producto (proveedor_id, nombre, descripcion, precio, categoria_id)
VALUES 
(1, 'Televisor', 'Televisor LED 40 pulgadas', 300.00, 1),
(2, 'Camisa', 'Camisa de algodón talla M', 25.00, 2),
(3, 'Sofá', 'Sofá de tres plazas color gris', 500.00, 3);

-- Insertar datos en la tabla detalle_factura
INSERT INTO detalle_factura (factura_id, producto_id, metodo_id, cantidad, precio_unitario)
VALUES 
(1, 1, 1, 1, 300.00),
(2, 2, 2, 2, 25.00),
(3, 3, 3, 1, 500.00);

-- Insertar datos en la tabla pasillo
INSERT INTO pasillo (nombre)
VALUES 
('Electrónica'),
('Ropa'),
('Muebles');

-- Insertar datos en la tabla detalle_producto
INSERT INTO detalle_producto (producto_id, pasillo_id, fecha_ingreso, cantidad, precio_compra)
VALUES 
(1, 1, '2024-05-01', 10, 250.00),
(2, 2, '2024-05-10', 50, 20.00),
(3, 3, '2024-05-15', 5, 450.00);

-- Insertar datos en la tabla bodega
INSERT INTO bodega (nombre, direccion, ciudad, estado, codigo_postal)
VALUES 
('Bodega Central', 'Av. Central 123', 'Ciudad A', 'Estado A', '12345'),
('Bodega Norte', 'Calle Norte 456', 'Ciudad B', 'Estado B', '67890'),
('Bodega Sur', 'Carrera Sur 789', 'Ciudad C', 'Estado C', '11223');

-- Insertar datos en la tabla producto_bodega
INSERT INTO producto_bodega (producto_id, bodega_id, cantidad)
VALUES 
(1, 1, 5),
(2, 2, 20),
(3, 3, 2);






