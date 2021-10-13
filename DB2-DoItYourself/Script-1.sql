--Soal A
CREATE DATABASE staff;

--Soal B
CREATE TABLE data_staff(
	id_staff int identity(1,1) primary key,
	nama varchar(50),
	alamat varchar(200),
	handphone varchar(15)
);

-- Soal C dan D
INSERT INTO data_staff(nama,alamat,handphone)VALUES('Ricky','Jakarta Barat, DKI Jakarta','0815191111111');
INSERT INTO data_staff(nama,alamat,handphone)VALUES('Adi','Jakarta Timur, DKI Jakarta','0815192222222');
INSERT INTO data_staff(nama,alamat,handphone)VALUES('Budi','Jakarta Pusat, DKI Jakarta','0815193333333');
INSERT INTO data_staff(nama,alamat,handphone)VALUES('Cica','Jakarta Selatan, DKI Jakarta','0815194444444');
INSERT INTO data_staff(nama,alamat,handphone)VALUES('Dodi','Jakarta Utara, DKI Jakarta','081519555555');

--Soal E
ALTER TABLE data_staff ADD joindate date;
INSERT INTO data_staff(nama,alamat,handphone, joindate)VALUES('Dodi','Jakarta Utara, DKI Jakarta','081519555555', '2021-10-13');

--Soal F
SELECT TOP 2 * FROM data_staff
--Soal G
SELECT TOP 3 * FROM data_staff

--Soal H
CREATE TABLE staffoutsource(
	id_staff int identity(1,1) primary key,
	nama varchar(50),
	alamat varchar(200),
	handphone varchar(15),
	joindate date
);

--Soal I
INSERT INTO staffoutsource(nama,alamat,handphone, joindate)VALUES('Zazi','Jakarta Utara, DKI Jakarta','081519555555', '2021-10-01');
INSERT INTO staffoutsource(nama,alamat,handphone, joindate)VALUES('Yazi','Jakarta Utara, DKI Jakarta','081519555555', '2021-10-02');
INSERT INTO staffoutsource(nama,alamat,handphone, joindate)VALUES('Xazi','Jakarta Utara, DKI Jakarta','081519555555', '2021-10-03');
INSERT INTO staffoutsource(nama,alamat,handphone, joindate)VALUES('Pazi','Jakarta Utara, DKI Jakarta','081519555555', '2021-10-04');
INSERT INTO staffoutsource(nama,alamat,handphone, joindate)VALUES('Qazi','Jakarta Utara, DKI Jakarta','081519555555', '2021-10-05');
INSERT INTO staffoutsource(nama,alamat,handphone, joindate)VALUES('Wazi','Jakarta Utara, DKI Jakarta','081519555555', '2021-10-06');
INSERT INTO staffoutsource(nama,alamat,handphone, joindate)VALUES('Sazi','Jakarta Utara, DKI Jakarta','081519555555', '2021-10-13');
INSERT INTO staffoutsource(nama,alamat,handphone, joindate)VALUES('Cazi','Jakarta Utara, DKI Jakarta','081519555555', '2021-10-08');


--Soal J
SELECT * FROM data_staff s JOIN staffoutsource o on s.joindate = o.joindate;
--Soal K
SELECT * FROM data_staff s RIGHT JOIN staffoutsource o on s.joindate = o.joindate;
--Soal L
SELECT * FROM data_staff s LEFT JOIN staffoutsource o on s.joindate = o.joindate;
--Soal M
SELECT * FROM data_staff s FULL JOIN staffoutsource o on s.joindate = o.joindate;

































