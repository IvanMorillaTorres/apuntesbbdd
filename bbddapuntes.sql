Show databases;  ENSEÑA LAS BASES DE DATOS

Show tables; muestra las tablas de una base de datos

USE para "entrar a la base de datos"

Create database; CREA UNA BASE DE DATOS

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
 
-- FOREIGN KEY
ALTER TABLE habitatge
    add contraint `nom_FK_habitatge_a_municipi` FOREIGN KEY(``)
    REFERENCES tbl_municipi (`codi_postal`);

