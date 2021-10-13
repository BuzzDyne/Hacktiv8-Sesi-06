CREATE DATABASE db_sesi6;

CREATE TABLE tbl_siswa(
	id_siswa int identity(1,1) primary key,
	nis varchar(10),
	nama varchar(50),
	alamat varchar(100),
	tgl_lahir date,
	j_kelamin varchar(1)
);

ALTER TABLE tbl_siswa ALTER COLUMN j_kelamin VARCHAR(10);

SELECT ts.*, ts.nama, ts.nis FROM tbl_siswa ts;

SELECT * FROM tbl_siswa;

INSERT INTO tbl_siswa(NIS,NAMA,ALAMAT,tgl_lahir,J_KELAMIN)VALUES('10001','BEJO','SURABAYA','2010-10-06','PRIA');
INSERT INTO tbl_siswa(NIS,NAMA,ALAMAT,tgl_lahir,J_KELAMIN)VALUES('10002','ANI','MALANG','2010-10-06','WANITA');

SELECT * FROM tbl_siswa WHERE nis = '10001';

SELECT nama, tgl_lahir FROM tbl_siswa WHERE nis = '10002';

SELECT * FROM tbl_siswa WHERE alamat LIKE 'SU%';

SELECT * FROM tbl_siswa ts WHERE tgl_lahir BETWEEN '2010-10-06' AND '2010-10-06';

UPDATE tbl_siswa SET nama = 'SEJO SUTEDJO' WHERE nis = '10001';

DELETE tbl_siswa WHERE NIS = '10002';









