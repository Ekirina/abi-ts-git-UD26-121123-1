DROP DATABASE IF exists data26_01;
CREATE DATABASE data26_01;
USE data26_01;


CREATE table piezas(
	id int auto_increment,
    nombre VARCHAR(100),
    primary key (id)
);
CREATE table proveedores(
	id int,
    nombre VARCHAR(100),
    primary key (id)
);
CREATE table suministra(
    id int auto_increment,
	codigo_pieza int,
    id_proveedor int,
    precio int,
    foreign key (codigo_pieza) REFERENCES piezas (id)
	ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key (id_proveedor) REFERENCES proveedores (id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (id)
);
insert into piezas (nombre) values ("RTX 2080"),
								  ("Intel Core i7-12700k"),
								  ("CPU Fan Hyper"),
								  ("Placa Base Gigabyte z200"),
								  ("Razer Blackwidow 2022"),
								  ("Razer Naga"),
								  ("SteelSeries Actis Pro 7");

insert into proveedores values    ("1031", "Razer"),
								("1076", "Nvidia"),
								("1045", "Gigabyte"),
								("1043", "SteelSeries"),
								("1012", "Intel");
                                
insert into suministra values (1, 1, "1076", 1780),
							  (2, 2, "1012", 980),
							  (3, 3, "1045", 35),
							  (4, 4, "1045", 98),
							  (5, 5, "1031", 130),
							  (6, 6, "1031", 78),
							  (7, 7, "1043", 167);