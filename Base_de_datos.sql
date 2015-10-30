/*
SQLyog Community Edition- MySQL GUI v5.31
Host - 5.6.26-log : Database - proyectowebupla
*********************************************************************
Server version : 5.6.26-log
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `proyectowebupla`;

USE `proyectowebupla`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `academico` */

DROP TABLE IF EXISTS `academico`;

CREATE TABLE `academico` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `rut` varchar(10) NOT NULL,
  `contrasena` varchar(25) NOT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL,
  `correo` varchar(50) NOT NULL,
  PRIMARY KEY (`rut`,`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `academico` */

/*Table structure for table `administrativo` */

DROP TABLE IF EXISTS `administrativo`;

CREATE TABLE `administrativo` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `contrasena` varchar(25) NOT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `administrativo` */

/*Table structure for table `alumno` */

DROP TABLE IF EXISTS `alumno`;

CREATE TABLE `alumno` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `rut` varchar(10) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `contrasena` varchar(25) NOT NULL,
  `estado` enum('Activo','Inactivo') NOT NULL,
  `correo` varchar(50) NOT NULL,
  PRIMARY KEY (`rut`,`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `alumno` */

insert  into `alumno`(`nombre`,`apellido`,`rut`,`carrera`,`contrasena`,`estado`,`correo`) values ('Juan Francisco','Perez Cerda','18230912-5','informatica','juan1823','Activo','juan.perez.c@alumnos.upla.cl');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
