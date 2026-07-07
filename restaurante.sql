CREATE TABLE estado_pedido(
    pk_estado INT AUTO_INCREMENT PRIMARY KEY,
    nombre_estado VARCHAR(50) NOT NULL
);

CREATE TABLE pedido(
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    fk_tipo_comprobante INT NOT NULL,
    fk_cuit_restaurante INT NOT NULL,
    fk_empleado INT NOT NULL,
    fk_dni_cliente INT NOT NULL,
    fk_mesa INT NOT NULL,
    fk_estado INT NOT NULL,
    total_pedido DOUBLE NOT NULL,

    FOREIGN KEY (fk_tipo_comprobante) 
      REFERENCES tipo_comprobante(id_tipo_comprobante)
      ON UPDATE CASCADE
      ON DELETE RESTRICT,

    FOREIGN KEY (fk_cuit_restaurante) 
      REFERENCES restaurante(cuit)
      ON UPDATE CASCADE
      ON DELETE RESTRICT,

    FOREIGN KEY (fk_empleado)
      REFERENCES empleado(id_empleado)
      ON UPDATE CASCADE
      ON DELETE RESTRICT,

    FOREIGN KEY (fk_dni_cliente)
      REFERENCES cliente(dni)
      ON UPDATE CASCADE
      ON DELETE RESTRICT,
    
    FOREIGN KEY (fk_mesa)
      REFERENCES mesas(id_mesa)
      ON UPDATE CASCADE
      ON DELETE RESTRICT,

    FOREIGN KEY(fk_estado)
      REFERENCES estado_pedido(pk_estado)
      ON UPDATE CASCADE
      ON DELETE RESTRICT
);





CREATE TABLE detalle_pedido(
    fk_producto INT,
    fk_pedido INT,
    cantidad DOUBLE NOT NULL,
    subtotal DOUBLE NOT NULL,

    PRIMARY KEY (fk_producto, fk_pedido),
    FOREIGN KEY (fk_producto) REFERENCES producto(id_producto)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
    
    FOREIGN KEY (fk_pedido) REFERENCES pedido(id_pedido)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

# Producto
# Mila Napolitana
# Pizza Napolitana
# Mila a Caballo
# Muzzarella
# Pizza Primavera
# Rabas
# Papas Fritas

#Pedido 12340
# 2 Mila Napolitana
# 2 Fritas