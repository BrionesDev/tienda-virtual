	CREATE DATABASE B3_Components;
 
	
	CREATE TABLE Categorias (
	ID_Categoria int,
    Nombre varchar(100),
    Descripción varchar(150),
    primary key (ID_Categoria)
    );
	
	CREATE TABLE Productos (
	ID_Producto int,
	ID_Categoria int,
    Nombre varchar(100),
    Descripción varchar(150),
    Precio real,
	Stock int,
	Imagen blob,
	Rating int,
    primary key (ID_Producto),
	foreign key (ID_Categoria) references Categoria (ID_Categoria)
    );
	
	CREATE TABLE Usuarios (
	ID_Usuario int,
	ID_Pregunta int,
	ID_Cesta int,
    Nombre varchar(100),
	Apellidos varchar(100),
	Edad int,
	Direccion varchar(150),
	Payment_Method varchar(100),
    email varchar(150),
	password varchar(16),
	nickname varchar(50),
	imagen blob,
    primary key (ID_Usuario),
	foreign key (ID_Pregunta) references PreguntasYRespuestas (ID_Pregunta),
	foreign key (ID_Cesta) references Cesta (ID_Cesta)
    );
	
	CREATE TABLE Contactos (
	ID_Contacto int,
    Nombre varchar(100),
	telefono int,
    email int,
	SitioWeb varchar(100),
	Mensaje_Contacto varchar(150),
    primary key (ID_Contacto)
    );
	
	CREATE TABLE PreguntasYRespuestas (
	ID_Preguntas int,
	ID_Respuesta int,
	Descripcion_Pregunta varchar(150),
	Descripcion_Respuesta varchar(150),
	Comentarios varchar(150),
    primary key (ID_Preguntas)
    );
	
	/*CREATE TABLE VistasyVotos (
	);*/
	
	CREATE TABLE Cesta (
	ID_Cesta int,
	Nombre_Producto varchar(100),
	Precio real,
	Cantidad int,
	Total real,
	primary key (ID_Cesta)
	);