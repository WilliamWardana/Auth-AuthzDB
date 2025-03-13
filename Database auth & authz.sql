CREATE TABLE users (
	id_user SERIAL PRIMARY KEY,
	username VARCHAR(100) NOT NULL,
	email VARCHAR(255) NOT NULL,
	password VARCHAR(10) NOT NULL,
	created_at TIMESTAMP DEFAULT now()
)

CREATE TABLE profile (
	id_profile SERIAL PRIMARY KEY,
	id_user INT NOT NULL UNIQUE,
	-- FOREIGN KEY (id_user) REFERENCES users(id_user),
	fullname VARCHAR(100) NOT NULL,
	alamat VARCHAR(100) NOT NULL,
	notelp INT NOT NULL,
	foto_profil VARCHAR(255)
)

CREATE TABLE Role (
	id_role SERIAL PRIMARY KEY,
	nama_role VARCHAR(50) NOT NULL
)

CREATE TABLE Veryfication (
	id_verifikasi SERIAL PRIMARY KEY,
	id_user INT NOT NULL UNIQUE,
	kode_veryfikasi INT NOT NULL,
	status_veryfikasi VARCHAR(50) NOT NULL,
	expired_at VARCHAR(50)
	-- 3 minute
)

CREATE TABLE User_Role (
	id_user_role SERIAL PRIMARY KEY,
	id_user INT NOT NULL UNIQUE,
	id_role INT NOT NULL UNIQUE
)

INSERT INTO users (username,email,password) VALUES ('William','William@gmail.com','123')

INSERT INTO profile (id_user,fullname,alamat,notelp,foto_profil) VALUES ('1','WilliamWardana','Jl.Inpres',8783954,'')

INSERT INTO Veryfication (id_user,kode_veryfikasi,status_veryfikasi) VALUES ('1','123321','ongoing')

INSERT INTO Role (nama_role) VALUES ('admin');

INSERT INTO User_Role (id_user,id_role) VALUES ('1','1')

SELECT * FROM users;
SELECT * FROM profile;
SELECT * FROM role;
SELECT * FROM user_role;
SELECT * FROM veryfication;
