orden para crear las bases de datos:
1a fase , excel con las entidades de todas las tablas que hemos creado y todos sus datos que queremos implementar, con su ddominio, su pk , y toda la info.
2a faste, diagrama entidad relacion (a-----b) el cuadradito sin mas,con el nombre, con la cardinalidad y la pk y 3 atributos.
3a fase, vamos a hacer las tablas del mmodelo relacional con las pk y las fk, minimo sus 3 atributos , con las relaciones hechas, las tablas intermedias con las pk y sus dos fk de las tablas de N a N.

Create database; CREA UNA BASE DE DATOS
Show databases;  ENSEÑA LAS BASES DE DATOS

Show tables; muestra las tablas de una base de datos

Varchar CADENAD E LONGITUD FIJA

Char CADENAD E LONGITUD VARIABLE

Not null : CAMPO REQUERIDO


EJEMPLO DE CREACION DE TABLAS
create table habitant(
NIE char(9) NOT NULL PRIMARY KEY,
nom_ha varchar(50) NOT NULL,
cognom1_ha varchar(50) NOT NULL,
cognom2_ha varchar(50) NOT NULL,
sexe enum('home','dona','altre') NOT NULL,
data_naixament date NOT NULL,
domicili varchar(100) NOT NULL,
telefon varchar(11) NOT NULL,
email varchar(100) NOT NULL
);

insert into habitant (NIE,nom_ha,cognom1_ha,cognom2_ha,sexe,data_naixament,domicili,telefon,email) values ('11335228X','Ivan','Morilla','Torres','2005/10/05','carrer barcelona 32, puerta 25, piso 2 puerta A','644333863','ivanmorillatorres@gmial.com')


null : CAMPO NO REQUERIDO

describe tbl_municipi; ENSEÑA ESTRUCTURA DE LA TABLA

insert into tbl_municipi (cp,nom_mun) values ('08111','Orís');  INSERTAR DATOSS EN LA COLUMNA Y LA TABLA SELECCIONADA.

select * from tbl_municipi; ENSEÑAR/MOSTRAR  *(TODO) DE LA TABLA TBL_MUNICIPI

RENAME COLUMN old_col_name TO new_col_name;  Para cambiar el nombre de una columna

Describe TABLAQUEQUIEROVER;

-- modificar eun camp d'una taula i el seu nom
ALTER TABLE tbl_padro CHANGE ANTIGUONOMBREQUETIENE NUVEONOMBREQUEQUIERODARLE cahr(9) NOT NULL  

-- AQUI LO QUE QEUREMOS HACER ES CMABIAR ADE LA ATBLA PADRO LA COLUMNA DE CORREU_PADRO POR EMAI_PADRO CON ESE TIPO DE DATOS VARCHAR(100)
ALTER TABLE tbl_padro CHANGE correu_padro email_padro Varchar(100) NULL;

-- VAMOS A CAMBIAR UN TIPO DE DATOS DE UNA TABLA
ALTER TABLE tbl_padro MODIFY NOMBREDELACOLUMNA char(9) NULL;(O EL TIPO DE DATOS QUE QUERAMOS)

INTEGRIDAD REFERENCIAL
1.LAS DOS TABLAS DEBEN TENER CLAVE PRIMARIA
2.LO DOS TIPOS DE DATOS DE LOS CAMPOS A RELACIONAR DEBEN SER LOS MISMOS
3. CUANDO METAMOS DATOS EN LA CLAVE FORANEA DEBE ESTAR EN LAPRINICIPAL TMABIÉN

-- 
ALTER TABLE tbl_padro MODIFY NOMBREDELACOLUMNA char(10) NOT NULL ;(O EL TIPO DE DATOS QUE QUERAMOS)

-- ESTABLIM LA RELACIÓ ENTRE TBL_PADRO Y TBL_HABITATGE

ALTER TABLE tbl_padro
-- voy a modificar esa tabla
    add constraint `fk_padro_hbaitatge` FOREIGN KEY(`direccio_padro`)
    -- voy a añadirle la restriccion que se va a llamar fk_(y las dos tablas con un guion en medio para no liarme), 
    -- en la que la foreign key va a ser (y el nombre que le quiera poner)
    REFERENCES `tbl_habitatge` (`num_cat`);
    -- y hace referencia a/ va estar el campo afectado de la tabla `tbl_laquesea`(el campoquesea)
