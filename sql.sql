-- MEMBUAT DATABASE
CREATE DATABASE `db_sql`; 

-- MEMBUAT TABEL 1
CREATE TABLE `tbl_sql` 
(
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `nama` varchar(255) NOT NULL,
    `jurusan` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);

-- MEMBUAT TABEL 2
CREATE TABLE `tbl_sql2`
(
    `nama` varchar(255) NOT NULL,
    `panggilan` varchar(255) NOT NULL
);

-- MEMBUAT VIEW
CREATE VIEW v_sql AS SELECT tbl_sql.*, tbl_sql2.panggilan FROM tbl_sql INNER JOIN tbl_sql2 ON tbl_sql.nama=tbl_sql2.nama;

-- Menambah data di tabel 1
INSERT INTO tbl_sql VALUES(NULL, 'Papa Beta', 'Boga'), (NULL, 'Mama Beta', 'Mesin'), (NULL, 'Kakak Beta', 'Listrik'), (NULL, 'Adik Beta', 'Perkayuan');

-- Menambah data di tabel 2
INSERT INTO tbl_sql2 VALUES('Papa Beta', 'Papa'), ('Mama Beta', 'Mama'), ('Kakak Beta', 'Kakak'), ('Adik Beta', 'Adik');

-- Menampilkan semua data
SELECT * FROM tbl_sql;

-- Menampilkan data dengan limit
SELECT * FROM tbl_sql LIMIT 1,2;

-- Menampilkan single data
SELECT nama FROM tbl_sql WHERE id=1;

-- Menampilkan data dengan join
SELECT tbl_sql.*, tbl_sql2.panggilan FROM tbl_sql INNER JOIN tbl_sql2 ON tbl_sql.nama=tbl_sql2.nama;
