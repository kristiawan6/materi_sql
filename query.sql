CREATE DATABASE restoran;

\c restoran;

CREATE TABLE users (id SERIAL PRIMARY KEY,nama VARCHAR NOT NULL,no_telp BIGINT NOT NULL, email VARCHAR NOT NULL);

INSERT INTO users (nama, no_telp, email) VALUES ('Joko', 81290234505, 'joko@mail.com');
INSERT INTO users(nama,no_telp,email) VALUES ('Budi',081221334505,'budi@mail.com');
INSERT INTO users(nama,no_telp,email) VALUES ('Dina',08124343098,'dina@mail.com');

SELECT * FROM users;

CREATE TABLE makanan (id SERIAL PRIMARY KEY,nama_makanan VARCHAR NOT NULL,harga INT NOT NULL, stock INT NOT NULL);

INSERT INTO makanan(nama_makanan,harga,stock) VALUES ('Bolu Pisang',5000,10);
INSERT INTO makanan(nama_makanan,harga,stock) VALUES ('Martabak Pisang',45000,5);

SELECT * FROM makanan;

CREATE TABLE orders (id SERIAL PRIMARY KEY,id_user VARCHAR REFERENCES users(id) NOT NULL,id_makanan INT REFERENCES makanan(id) NOT NULL,harga INT NOT NULL,quantity INT NOT NULL,sub_total INT NOT NULL);

INSERT INTO orders(id_user,id_makanan,harga,quantity,sub_total) VALUES (1,2,45000,2,90000);

SELECT * FROM orders;


