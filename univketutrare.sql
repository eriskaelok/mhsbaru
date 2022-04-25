/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.28-MariaDB : Database - univketutrare
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`univketutrare` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `univketutrare`;

/*Table structure for table `tb_dosen` */

DROP TABLE IF EXISTS `tb_dosen`;

CREATE TABLE `tb_dosen` (
  `id_dosen` int(5) NOT NULL AUTO_INCREMENT,
  `ktp_dosen` varchar(50) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `alamat_dosen` varchar(100) NOT NULL,
  `email_dosen` varchar(100) DEFAULT NULL,
  `notlp_dosen` varchar(15) NOT NULL,
  `bidang_dosen` varchar(100) NOT NULL,
  `jadwal_dosen` varchar(50) NOT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_dosen` */

insert  into `tb_dosen`(`id_dosen`,`ktp_dosen`,`nama_dosen`,`alamat_dosen`,`email_dosen`,`notlp_dosen`,`bidang_dosen`,`jadwal_dosen`) values (1,'0102030405','Indra Permana, S.Kom','Jl. Biaung Gede Gianyar','indra_prm@gmail.com','081999777889','Jaringan','Senin, Selasa, Kamis'),(2,'0103040401','Santika Wahyu, S.T','Jl. Peguyangan Kauh Denpasar','stk_wahyu@gmail.com','089767888123','RPL','Senin, Rabu, Jumat'),(3,'0102040505','Gede Suparwata, S.Kom, M.Cs.','Jl. Bidak Jelantik IIC No. 4 Renon','suparwata@gmail.com','084995996997','Jaringan','Rabu, Kamis, Jumat'),(4,'0103030405','Gede Karim, S.T','Jalan Gunung Rinjani Gang Kasuari IIA','karim@gmail.com','081999775776','Komputasi','Selasa, Rabu, Kamis');

/*Table structure for table `tb_mahasiswa` */

DROP TABLE IF EXISTS `tb_mahasiswa`;

CREATE TABLE `tb_mahasiswa` (
  `id_mhs` int(10) NOT NULL AUTO_INCREMENT,
  `ktp_mhs` varchar(10) DEFAULT NULL,
  `nim_mhs` varchar(10) DEFAULT NULL,
  `nama_mhs` varchar(50) DEFAULT NULL,
  `agama_mhs` varchar(10) DEFAULT NULL,
  `tgllahir_mhs` varchar(20) DEFAULT NULL,
  `jk_mhs` varchar(10) DEFAULT NULL,
  `alamat_mhs` varchar(200) DEFAULT NULL,
  `email_mhs` varchar(50) DEFAULT NULL,
  `notlp_mhs` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_mhs`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_mahasiswa` */

insert  into `tb_mahasiswa`(`id_mhs`,`ktp_mhs`,`nim_mhs`,`nama_mhs`,`agama_mhs`,`tgllahir_mhs`,`jk_mhs`,`alamat_mhs`,`email_mhs`,`notlp_mhs`) values (1,'0101020201','2019046001','Wayan Agus Wirayasa','Hindu','1992-08-03','Laki','Jl. Dangin Bingin Sading Kangin','wira@gmail.com','081999675883'),(3,'0101020202','2019046002','Andi Siswanto','Muslim','1993-04-09','Laki','Jl. Dauh Tukad Bilok','andis@gmail.com','081345445675');

/*Table structure for table `tb_mahasiswa2` */

DROP TABLE IF EXISTS `tb_mahasiswa2`;

CREATE TABLE `tb_mahasiswa2` (
  `id_mhs` int(10) NOT NULL AUTO_INCREMENT,
  `ktp_mhs` varchar(10) DEFAULT NULL,
  `nim_mhs` varchar(10) DEFAULT NULL,
  `nama_mhs` varchar(50) DEFAULT NULL,
  `tgllahir_mhs` varchar(20) DEFAULT NULL,
  `tmplahir_mhs` varchar(20) DEFAULT NULL,
  `agama_mhs` varchar(10) DEFAULT NULL,
  `kwn_mhs` varchar(10) DEFAULT NULL,
  `jk_mhs` varchar(10) DEFAULT NULL,
  `alamat_mhs` varchar(200) DEFAULT NULL,
  `email_mhs` varchar(50) DEFAULT NULL,
  `notlp_mhs` varchar(15) DEFAULT NULL,
  `smak_mhs` varchar(50) DEFAULT NULL,
  `almtsmak_mhs` varchar(100) DEFAULT NULL,
  `llssmak_mhs` varchar(10) DEFAULT NULL,
  `ortu_mhs` varchar(50) DEFAULT NULL,
  `tlportu_mhs` varchar(15) DEFAULT NULL,
  `almtortu_mhs` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_mhs`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_mahasiswa2` */

insert  into `tb_mahasiswa2`(`id_mhs`,`ktp_mhs`,`nim_mhs`,`nama_mhs`,`tgllahir_mhs`,`tmplahir_mhs`,`agama_mhs`,`kwn_mhs`,`jk_mhs`,`alamat_mhs`,`email_mhs`,`notlp_mhs`,`smak_mhs`,`almtsmak_mhs`,`llssmak_mhs`,`ortu_mhs`,`tlportu_mhs`,`almtortu_mhs`) values (1,'0404010103','2019046001','Agus Wirayasa','1993-03-01','Tabanan','Hindu','Indonesia','Laki','Jl. Dangin Bingin Sading','wirayasa@gmail.com','081333444333','SMAN 2 Denpasar','Jl. Sudirman Denpasar','2010','Resti Ketut','084333929123','Jl. Raya Baturiti Tabanan'),(2,'0404031102','2019046002','Made Bagus Indra','1999-02-02','Singaraja','hindu','Indonesia','Laki','Jl. Patih Jelantik IIIC','indrabagus@gmail.com','081345445675','SMAN 1 Singaraja','Jl. Ahmad Yani Utara Singaraja','2011','Ni Made Surtiningsih','082334556665','Jl. Dangin Peken SIngaraja');

/*Table structure for table `tb_matkul` */

DROP TABLE IF EXISTS `tb_matkul`;

CREATE TABLE `tb_matkul` (
  `id_matkul` int(10) NOT NULL AUTO_INCREMENT,
  `kode_matkul` varchar(50) DEFAULT NULL,
  `nama_matkul` varchar(50) DEFAULT NULL,
  `jmlsks_matkul` varchar(5) DEFAULT NULL,
  `semester_matkul` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id_matkul`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tb_matkul` */

insert  into `tb_matkul`(`id_matkul`,`kode_matkul`,`nama_matkul`,`jmlsks_matkul`,`semester_matkul`) values (1,'ILKD101','Interaksi Manusia dan Komputer','3','1'),(2,'ILKD102','Kalkulus','3','1'),(3,'ILKD103','Aljabar Linear Elementer','2','1'),(4,'ILKD201','Kalkulus 2','3','2'),(5,'ILKD202','Pemrograman Dasar','3','2'),(6,'ILKD203','Fisika Dasar','3','2'),(7,'ILKD301','Praktikum Pemrograman Dasar','3','3'),(8,'ILKD302','Praktikum Jaringan','3','3'),(9,'ILKD303','Jaringan Komputer','3','3'),(10,'ILKD304','Arsitektur Komputer','2','3'),(11,'ILKD305','Arsitektur dan Struktur Data','3','3');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id_user`,`username`,`password`) values (1,'wira','$2y$10$11ozkSKlDUurVR2e3bvdGurGWv2uqrxClGApj8t0pBnnE9ULWxNcy'),(2,'admin','$2y$10$15w5WEl0gVtM1/JDAKmySek88wK4T1wrIIkHOhyUYZkV10dvfr1o2'),(3,'administrator','$2y$10$BSdwXZrvkYvxaTBhbzhMleLfAi7PzoLOLD8Z9IuoB.UZ.lpcsjf42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
