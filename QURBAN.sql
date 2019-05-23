/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.1.38-MariaDB : Database - qurban
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qurban` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `qurban`;

/*Table structure for table `kambing` */

DROP TABLE IF EXISTS `kambing`;

CREATE TABLE `kambing` (
  `No_Antrian` int(100) NOT NULL,
  `berat_kambing` int(10) DEFAULT NULL,
  `umur_kambing` int(10) DEFAULT NULL,
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`No_Antrian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kambing` */

insert  into `kambing`(`No_Antrian`,`berat_kambing`,`umur_kambing`,`jenis_kelamin`) values 
(1,30,2,'jantan'),
(2,32,2,'betina');

/*Table structure for table `kelompok_sapi` */

DROP TABLE IF EXISTS `kelompok_sapi`;

CREATE TABLE `kelompok_sapi` (
  `No_Antrian` int(100) NOT NULL,
  `Nama1` varchar(120) DEFAULT NULL,
  `Nama2` varchar(120) DEFAULT NULL,
  `Nama3` varchar(120) DEFAULT NULL,
  `Nama4` varchar(120) DEFAULT NULL,
  `Nama5` varchar(120) DEFAULT NULL,
  `Nama6` varchar(120) DEFAULT NULL,
  `Nama7` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`No_Antrian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kelompok_sapi` */

insert  into `kelompok_sapi`(`No_Antrian`,`Nama1`,`Nama2`,`Nama3`,`Nama4`,`Nama5`,`Nama6`,`Nama7`) values 
(3,'Solihah','Fia','Intan','Dila','Virna','Jihan','Alfi');

/*Table structure for table `pemilik` */

DROP TABLE IF EXISTS `pemilik`;

CREATE TABLE `pemilik` (
  `No_Antrian` int(100) NOT NULL,
  `Nama` varchar(120) NOT NULL,
  `Alamat` varchar(120) NOT NULL,
  `Jenis_Qurban` varchar(50) NOT NULL,
  UNIQUE KEY `No. Antrian` (`No_Antrian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pemilik` */

insert  into `pemilik`(`No_Antrian`,`Nama`,`Alamat`,`Jenis_Qurban`) values 
(1,'intan','tanjunsari','Kambing'),
(2,'ela','sukabumi','Domba'),
(3,'Solihah','majalengka','Sapi');

/*Table structure for table `sapi` */

DROP TABLE IF EXISTS `sapi`;

CREATE TABLE `sapi` (
  `No_Antrian` int(100) NOT NULL,
  `berat_sapi` int(10) DEFAULT NULL,
  `umur_sapi` int(10) DEFAULT NULL,
  `jenis_kelamin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`No_Antrian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sapi` */

insert  into `sapi`(`No_Antrian`,`berat_sapi`,`umur_sapi`,`jenis_kelamin`) values 
(3,1000,4,'jantan');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
