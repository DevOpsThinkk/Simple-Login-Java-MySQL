# CREATE DATABASE `sample`;

 use sample;
 CREATE TABLE `user` (
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `regdate` tinyint NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
