/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.15-enterprise-commercial-advanced : Database - key_asset
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`key_asset` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `key_asset`;

/*Table structure for table `admin_master` */

DROP TABLE IF EXISTS `admin_master`;

CREATE TABLE `admin_master` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin_master` */

insert  into `admin_master`(`admin_id`,`username`,`password`) values (1,'admin','admin');

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(20) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`city_id`,`city_name`,`s_id`) values (1,'Vadodara',1),(2,'Ahmedabad',1),(3,'Surat',1),(4,'Rajkot',1),(5,'surat',1),(6,'anand',1),(7,'nadiad',1),(8,'bharuch',1),(9,'kutch',1),(10,'sabarkantha',1),(11,'himmatnagar',1),(12,'gandhinagar',1),(13,'surendranagar',1),(14,'jamanagar',1),(15,'bhavnagar',1),(16,'Ajmer',2),(17,'Bikaner',2),(18,'Churu',2),(19,'Bundi',2);

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `country` */

insert  into `country`(`c_id`,`c_name`) values (1,'India'),(2,'PK'),(3,'Australia'),(4,'France'),(5,'Germany'),(6,'Nepal'),(7,'Switzerland'),(8,'China'),(9,'Japan'),(10,'Japan'),(11,'Brazil');

/*Table structure for table `cust_registration` */

DROP TABLE IF EXISTS `cust_registration`;

CREATE TABLE `cust_registration` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_firstname` varchar(20) DEFAULT NULL,
  `cust_lastname` varchar(20) DEFAULT NULL,
  `cust_contact` varchar(20) DEFAULT NULL,
  `cust_gender` varchar(20) DEFAULT NULL,
  `cust_birthdate` date DEFAULT NULL,
  `cust_email` varchar(30) DEFAULT NULL,
  `cust_re_enter_email` varchar(30) DEFAULT NULL,
  `cust_password` varchar(30) DEFAULT NULL,
  `cust_re_enter_password` varchar(30) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `cust_registration` */

insert  into `cust_registration`(`cust_id`,`cust_firstname`,`cust_lastname`,`cust_contact`,`cust_gender`,`cust_birthdate`,`cust_email`,`cust_re_enter_email`,`cust_password`,`cust_re_enter_password`,`city_id`) values (1,'mumu','sonar','7874780767','Female','1989-09-27','mumusonar@gmail.com','mumusonar@gmail.com','123','123',NULL);

/*Table structure for table `ftable1` */

DROP TABLE IF EXISTS `ftable1`;

CREATE TABLE `ftable1` (
  `T_id` int(10) NOT NULL AUTO_INCREMENT,
  `T_Brand` varchar(20) DEFAULT NULL,
  `T_Type` varchar(20) DEFAULT NULL,
  `T_Model_number` varchar(20) DEFAULT NULL,
  `T_Color` varchar(20) DEFAULT NULL,
  `T_Material` varchar(20) DEFAULT NULL,
  `T_Width` varchar(20) DEFAULT NULL,
  `T_Length` varchar(20) DEFAULT NULL,
  `T_Depth` varchar(20) DEFAULT NULL,
  `T_Warranty_period` varchar(20) DEFAULT NULL,
  `T_Vendor_name` varchar(20) DEFAULT NULL,
  `T_Purchase_date` varchar(20) DEFAULT NULL,
  `T_Price` varchar(20) DEFAULT NULL,
  `T_Picture` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`T_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `ftable1` */

insert  into `ftable1`(`T_id`,`T_Brand`,`T_Type`,`T_Model_number`,`T_Color`,`T_Material`,`T_Width`,`T_Length`,`T_Depth`,`T_Warranty_period`,`T_Vendor_name`,`T_Purchase_date`,`T_Price`,`T_Picture`) values (1,'svd','jkkj','hjjk','jkj','jk','jkkj','kjj','jkj','jkjj',NULL,NULL,'jkjk','lcd-tv-images-3.jpg'),(2,'nilkamal','sqaure','56456','black','wood','65','55','55','5 yr','home shop','12/9/2014','40000','imagesHAIXEZMI.jpg');

/*Table structure for table `laptop` */

DROP TABLE IF EXISTS `laptop`;

CREATE TABLE `laptop` (
  `L_id` int(10) NOT NULL AUTO_INCREMENT,
  `L_Brand` varchar(20) DEFAULT NULL,
  `L_Type` varchar(20) DEFAULT NULL,
  `L_Processor` varchar(20) DEFAULT NULL,
  `L_Color` varchar(20) DEFAULT NULL,
  `L_RAM` varchar(20) DEFAULT NULL,
  `L_HDD` varchar(20) DEFAULT NULL,
  `L_Operating_system` varchar(20) DEFAULT NULL,
  `L_Speed` varchar(20) DEFAULT NULL,
  `L_Cache` varchar(20) DEFAULT NULL,
  `L_Screen_size` varchar(20) DEFAULT NULL,
  `L_Bluetooth` varchar(20) DEFAULT NULL,
  `L_Battery_life` varchar(20) DEFAULT NULL,
  `L_Warranty_period` varchar(20) DEFAULT NULL,
  `L_Purchase_date` varchar(20) DEFAULT NULL,
  `L_Vendor_name` varchar(20) DEFAULT NULL,
  `L_Picture` varchar(20) DEFAULT NULL,
  `L_price` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`L_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `laptop` */

insert  into `laptop`(`L_id`,`L_Brand`,`L_Type`,`L_Processor`,`L_Color`,`L_RAM`,`L_HDD`,`L_Operating_system`,`L_Speed`,`L_Cache`,`L_Screen_size`,`L_Bluetooth`,`L_Battery_life`,`L_Warranty_period`,`L_Purchase_date`,`L_Vendor_name`,`L_Picture`,`L_price`) values (9,'Sony','sony1','i5 processor','black','4 GB','1 TB','windows 8','12 ghz','L3','15.2','yes','6Hr','1 yr','15/03/2015','croma','sony_vaio.jpg','25000');

/*Table structure for table `pincode` */

DROP TABLE IF EXISTS `pincode`;

CREATE TABLE `pincode` (
  `pincode_id` int(11) NOT NULL AUTO_INCREMENT,
  `pincode_number` varchar(20) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pincode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `pincode` */

insert  into `pincode`(`pincode_id`,`pincode_number`,`city_id`) values (1,'391421',1),(2,'39111',1),(3,'391510',1),(4,'390019',1),(5,'390017',1),(6,'390002',1),(7,'390001',1),(8,'390009',1),(9,'390023',1),(10,'391330',1),(11,'390020',1),(12,'391770',1),(13,'391440',1),(14,'390011',1),(15,'390014',1),(16,'390018',1),(17,'390021',1),(18,'390003',1),(19,'391740',1);

/*Table structure for table `price` */

DROP TABLE IF EXISTS `price`;

CREATE TABLE `price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `price_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `price` */

/*Table structure for table `printer` */

DROP TABLE IF EXISTS `printer`;

CREATE TABLE `printer` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_brand` varchar(20) DEFAULT NULL,
  `p_model_number` varchar(20) DEFAULT NULL,
  `p_type` varchar(20) DEFAULT NULL,
  `p_height` varchar(20) DEFAULT NULL,
  `p_width` varchar(20) DEFAULT NULL,
  `p_dimension` varchar(20) DEFAULT NULL,
  `p_vendor_name` varchar(20) DEFAULT NULL,
  `p_purchase_date` varchar(20) DEFAULT NULL,
  `p_warranty_period` varchar(20) DEFAULT NULL,
  `p_price` varchar(20) DEFAULT NULL,
  `p_picture` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `printer` */

insert  into `printer`(`p_id`,`p_brand`,`p_model_number`,`p_type`,`p_height`,`p_width`,`p_dimension`,`p_vendor_name`,`p_purchase_date`,`p_warranty_period`,`p_price`,`p_picture`) values (1,'kgh','hh','hh','hhj','hjh','hjjh','hjh','jhj','kjhkj','456456','lcd-tv-images-3.jpg');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_name` varchar(20) DEFAULT NULL,
  `reg_contact` varchar(20) DEFAULT NULL,
  `reg_street` varchar(20) DEFAULT NULL,
  `reg_designation` varchar(20) DEFAULT NULL,
  `reg_qualification` varchar(20) DEFAULT NULL,
  `reg_date_of_joining` varchar(20) DEFAULT NULL,
  `reg_blood_group` varchar(20) DEFAULT NULL,
  `reg_gender` varchar(20) DEFAULT NULL,
  `reg_birthdate` varchar(20) DEFAULT NULL,
  `reg_nationality` varchar(20) DEFAULT NULL,
  `reg_email` varchar(20) DEFAULT NULL,
  `reg_password` varchar(20) DEFAULT NULL,
  `reg_re_enter_password` varchar(20) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `department` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `registration` */

insert  into `registration`(`reg_id`,`reg_name`,`reg_contact`,`reg_street`,`reg_designation`,`reg_qualification`,`reg_date_of_joining`,`reg_blood_group`,`reg_gender`,`reg_birthdate`,`reg_nationality`,`reg_email`,`reg_password`,`reg_re_enter_password`,`city_id`,`department`) values (2,'jalpa','7874780760','nizampura vadodara','student','B.Tech','2014-03-12','B+','Female','1993-07-07','1','jalpa rao','123','123',NULL,'2'),(3,'mumu','9033418996','tarsali','student','B.Tech','2014-06-10','O+','Female','1989-09-27','1','mumusonar@gmail.com','123456789','123456789',NULL,'3'),(4,'ashu','8866315278','nizampura','student','B.Tech','2015-03-04','B+','Female','1993-07-07','1','ashu@gmail.com','123456','123456',NULL,'1'),(11,'jalpa','7874780767','dfr','dvfd','sdd','2015-03-11','f','Female','1988-01-03','1','bvc@yuf.com','12','12',NULL,'1'),(12,'regre','65556','gfdh','gfdf','hgcfgh','2015-03-18','ghf',NULL,'1989-01-08','1','ghfgh@hgf.cm','123','123',NULL,'2');

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `state` */

insert  into `state`(`s_id`,`s_name`,`c_id`) values (1,'Gujarat',1),(2,'Rajasthan',1),(3,'Bombay',1),(4,'madhyapradesh',1);

/*Table structure for table `vendor` */

DROP TABLE IF EXISTS `vendor`;

CREATE TABLE `vendor` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_firstname` varchar(20) DEFAULT NULL,
  `v_middlename` varchar(20) DEFAULT NULL,
  `v_lastname` varchar(20) DEFAULT NULL,
  `v_company_name` varchar(20) DEFAULT NULL,
  `v_address` varchar(40) DEFAULT NULL,
  `v_pincode` varchar(20) DEFAULT NULL,
  `v_contact` varchar(20) DEFAULT NULL,
  `v_company_contact` varchar(20) DEFAULT NULL,
  `v_email` varchar(20) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `vendor` */

/*Table structure for table `vendor_asset` */

DROP TABLE IF EXISTS `vendor_asset`;

CREATE TABLE `vendor_asset` (
  `v_id` int(10) NOT NULL AUTO_INCREMENT,
  `v_vendor_name` varchar(20) DEFAULT NULL,
  `v_company_name` varchar(30) DEFAULT NULL,
  `v_address` varchar(50) DEFAULT NULL,
  `v_contact` varchar(20) DEFAULT NULL,
  `v_date` varchar(20) DEFAULT NULL,
  `v_email` varchar(30) DEFAULT NULL,
  `v_type_of_business` varchar(30) DEFAULT NULL,
  `v_website` varchar(30) DEFAULT NULL,
  `v_pricing` varchar(20) DEFAULT NULL,
  `v_quality_factor` varchar(20) DEFAULT NULL,
  `v_delivery_factor` varchar(20) DEFAULT NULL,
  `v_service_factor` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `vendor_asset` */

insert  into `vendor_asset`(`v_id`,`v_vendor_name`,`v_company_name`,`v_address`,`v_contact`,`v_date`,`v_email`,`v_type_of_business`,`v_website`,`v_pricing`,`v_quality_factor`,`v_delivery_factor`,`v_service_factor`) values (1,'jalpa','jalpa and co.','nizampura','7874780767',NULL,'jalpa.rao672@gmail.com','student','jhjh','Price accuracy','Reliability',NULL,NULL),(2,'jalpa','jalpa and co.','DZF\"nB\"VB  ','7874780767',NULL,'jalpa.rao672@gmail.com','student','jhjh','Price stability','Reliability','Time','Technical support'),(3,'jalpa','jalpa and co.','DZF\"nB\"VB  ','8866315278','2015-03-11','jalpa.rao672@gmail.com','student','fhyjufnfgbdfxdfe','Competitive pricing','Reliability','Time','Technical support'),(4,'ashruti','ashu pvt. lmt','manu bahi tower, sayajigunj vadodara','7874780767','2015-03-04','jalpa.rao67@gmail.com','asset management','www.shrijee.com','Price stability','Reliability','Time','Technical support');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
