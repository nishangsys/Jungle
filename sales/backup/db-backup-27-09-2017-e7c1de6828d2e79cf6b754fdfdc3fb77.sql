

CREATE TABLE `all_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(51) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `total` varchar(20) NOT NULL,
  `ids` int(11) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `printed` int(11) NOT NULL,
  `section` varchar(40) NOT NULL,
  `opening_stocks` varchar(8) NOT NULL,
  `closing_stocks` varchar(8) NOT NULL,
  `profit` varchar(11) NOT NULL,
  `date` varchar(19) NOT NULL,
  `day` varchar(6) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(6) NOT NULL,
  `cp` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `aorders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room` varchar(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sector` varchar(40) NOT NULL,
  `paid` varchar(16) NOT NULL,
  `bf` varchar(15) NOT NULL,
  `date` varchar(18) NOT NULL,
  `yourid` int(11) NOT NULL,
  `cf` varchar(20) NOT NULL,
  `month` varchar(8) NOT NULL,
  `year` varchar(12) NOT NULL,
  `cost` varchar(15) NOT NULL,
  `cashs` varchar(15) NOT NULL,
  `name` varchar(90) NOT NULL,
  `tab` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `autocomplete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bar_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `sector` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO bar_tables VALUES("1","1","1","2");
INSERT INTO bar_tables VALUES("2","2","1","2");
INSERT INTO bar_tables VALUES("3","3","1","15");
INSERT INTO bar_tables VALUES("4","4","1","15");
INSERT INTO bar_tables VALUES("5","5","1","15");





CREATE TABLE `barproducts` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(51) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `total` varchar(20) NOT NULL,
  `ids` varchar(20) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `printed` int(11) NOT NULL,
  `section` varchar(40) NOT NULL,
  `opening_stocks` varchar(8) NOT NULL,
  `closing_stocks` varchar(8) NOT NULL,
  `profit` varchar(11) NOT NULL,
  `date` varchar(19) NOT NULL,
  `day` varchar(6) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(6) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `time` varchar(18) NOT NULL,
  `authorize` varchar(60) NOT NULL,
  `froms` varchar(90) NOT NULL,
  `sub` varchar(11) NOT NULL,
  `agent` varchar(80) NOT NULL,
  `split` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO basket VALUES("1","1/2 Chicken","restau","8000.00","0","1","0","6","3","15","0","Bar","","","","23-09-2017","23","09","2017","0","12:23","","restau","","","");





CREATE TABLE `basket_rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(51) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `total` varchar(20) NOT NULL,
  `ids` int(11) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `printed` int(11) NOT NULL,
  `yourid` int(11) NOT NULL,
  `opening_stocks` varchar(11) NOT NULL,
  `closing_stocks` varchar(13) NOT NULL,
  `profit` varchar(11) NOT NULL,
  `date` varchar(19) NOT NULL,
  `day` varchar(6) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(6) NOT NULL,
  `cp` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `bauca_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(51) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `total` varchar(20) NOT NULL,
  `ids` varchar(20) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `printed` int(11) NOT NULL,
  `section` varchar(40) NOT NULL,
  `opening_stocks` varchar(8) NOT NULL,
  `closing_stocks` varchar(8) NOT NULL,
  `profit` varchar(11) NOT NULL,
  `date` varchar(19) NOT NULL,
  `day` varchar(6) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(6) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `time` varchar(18) NOT NULL,
  `authorize` varchar(60) NOT NULL,
  `froms` varchar(11) NOT NULL,
  `sub` varchar(11) NOT NULL,
  `agent` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO bauca_basket VALUES("1","Export","hot","1000.00","1","2","1000.00","","1","2","2","cash","12.00","11","1000","26-07-2017","26","07","2017","","17:30","","bar","","");
INSERT INTO bauca_basket VALUES("2","Bar Fish","restau","4500.00","1","2","4500.00","","1","2","2","cash","","","","26-07-2017","26","07","2017","0","17:30","","restau","","");
INSERT INTO bauca_basket VALUES("4","Anana","hot","1000.00","3","2","3000","4","2","2","2","posted bills","12.00","11","1000","26-07-2017","26","07","2017","","17:46",""," Haddison","","");
INSERT INTO bauca_basket VALUES("5","Vegetable Salad","restau","3000.00","1","2","3000.00","4","2","2","2","posted bills","","","","26-07-2017","26","07","2017","0","17:47",""," Haddison","","");
INSERT INTO bauca_basket VALUES("6","Bar Fish","restau","4500.00","1","2","4500.00","4","2","2","2","posted bills","","","","26-07-2017","26","07","2017","0","17:48",""," Haddison","1000","");
INSERT INTO bauca_basket VALUES("7","1/2 Chicken","restau","8000.00","1","2","8000.00","21","2","2","0","posted bills","","","","05-08-2017","05","08","2017","0","19:13",""," OMEGA FIRE","","");





CREATE TABLE `bauca_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(19) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO bauca_tables VALUES("1","1","2");
INSERT INTO bauca_tables VALUES("2","2","2");
INSERT INTO bauca_tables VALUES("3","3","2");
INSERT INTO bauca_tables VALUES("4","5","2");
INSERT INTO bauca_tables VALUES("5","4","2");





CREATE TABLE `bauffet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `arrival` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `confirmation` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` varchar(15) NOT NULL,
  `year` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `endtime` varchar(15) NOT NULL,
  `sectors` varchar(60) NOT NULL,
  `allDay` varchar(15) NOT NULL,
  `yourid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO blocks VALUES("3","1");
INSERT INTO blocks VALUES("4","2");





CREATE TABLE `buffet_paymts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(90) NOT NULL,
  `tel` varchar(17) NOT NULL,
  `fromm` varchar(17) NOT NULL,
  `too` varchar(15) NOT NULL,
  `date` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `paid` varchar(20) NOT NULL,
  `owed` varchar(20) NOT NULL,
  `cost` varchar(20) NOT NULL,
  `howlong` int(11) NOT NULL,
  `month` varchar(11) NOT NULL,
  `paidto` varchar(20) NOT NULL,
  `endtime` varchar(7) NOT NULL,
  `reason` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `startdate` varchar(48) NOT NULL,
  `enddate` varchar(48) NOT NULL,
  `allDay` varchar(5) NOT NULL,
  `idds` int(11) NOT NULL,
  `area` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO calendar VALUES("1","Atem mathias","2017-08-17T10:00:00+05:30","2017-08-17T17:00:00+05:30","false","1","Conference Hall");
INSERT INTO calendar VALUES("2","Omega Fire Ministries Int","2017-08-08T07:00:00+05:30","2017-08-08T18:00:00+05:30","false","6","Conference Hall");





CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` int(11) NOT NULL,
  `facilities` text NOT NULL,
  `floor` int(11) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `lastprice` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO categories VALUES("1","60000"," Micro Wafe\nKitchen\nLiving Room\nBed Room                                                                         \n                                  \n                                  \n                                  \n                                  \n                 ","0","SUITES","60000");
INSERT INTO categories VALUES("2","65000"," Bed\nFlatscreen TV\nHot/cold Water\nAir Condition\nFridge\n                                                                         \n                                  \n                                  \n                                  \n                                  \n                 ","0","DELUXE","30000");
INSERT INTO categories VALUES("3","35000","Living Room\nBdroom\n Bed\nFlatscreen TV\nHot/cold Water\nAir Condition\nFridge\n                                                                                     \n                                  \n                                  \n                                  \n                                  \n                 ","0","PRESIDENTIAL","15000");
INSERT INTO categories VALUES("4","28000","                                                               \nBed\nFlatscreen TV\nHot/cold Water\nAir Condition\n\n                                      \n                                  \n                                  \n                 ","0","Standard","10000");
INSERT INTO categories VALUES("7","40000","Family Size Bed With Road Side View<br />\nFlatscreen TV<br />\nHot/cold Water<br />\nAir Condition<br />\nFridge<br />\n           ","0","Executive","40000");





CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yourid` int(11) NOT NULL,
  `sentby` varchar(40) NOT NULL,
  `sentto` int(11) NOT NULL,
  `date2` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `client` (
  `clien_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `address` text,
  `as1` varchar(60) DEFAULT NULL,
  `as2` varchar(120) DEFAULT NULL,
  `as3` varchar(60) DEFAULT NULL,
  `abs` varchar(20) NOT NULL,
  PRIMARY KEY (`clien_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO client VALUES("2","MUSANGO BEACH HOTEL","P.O Box:927 Limbe, South West Region, Cameroon",":(237) 233 332 267/ 233 332 270","","V-2515","HSC");





CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `contact` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO companies VALUES("1","BASIC EDUCATION","");
INSERT INTO companies VALUES("2","Mtn","5556655555");
INSERT INTO companies VALUES("3","Perinko","");
INSERT INTO companies VALUES("4","OMEGA FIRE MINISTRY","");





CREATE TABLE `company_debts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yourid` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `staff` varchar(60) NOT NULL,
  `room` varchar(15) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `howlong` varchar(10) NOT NULL,
  `paid` varchar(10) NOT NULL,
  `debt` varchar(10) NOT NULL,
  `checkin` varchar(20) NOT NULL,
  `checkout` varchar(20) NOT NULL,
  `agent` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO company_debts VALUES("1","6","OMEGA FIRE MINISTRY","NJOUONKOU NGOUYAMSA JEAN","S202(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("2","7","OMEGA FIRE MINISTRY","NWAOZALA RACHEAL KELEKE","S205(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("3","8","OMEGA FIRE MINISTRY","ELIAS NNAMDI","S104(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("4","9","OMEGA FIRE MINISTRY","AROWOSEGBE MATTHEW OLUSHOLA","S105(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("5","10","OMEGA FIRE MINISTRY","OJEABU ISI CHRISTOPHER","S103(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("6","11","OMEGA FIRE MINISTRY","MOMODU DAVID","S108(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("7","12","OMEGA FIRE MINISTRY","ISA LEWIS AMUZA","S201(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("8","13","OMEGA FIRE MINISTRY","EMMANUEL OGECHI DORCAS","S204(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("9","14","OMEGA FIRE MINISTRY","ERIC ISOKEN EMIKE","S106(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("10","15","OMEGA FIRE MINISTRY","OKORO AMOS GODSPOWER","S203(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("11","16","OMEGA FIRE MINISTRY","AGHO JOEL OMOSERE","S107(Standard)","25000","3","0","75000","31-07-2017","08/03/2017","admin12");
INSERT INTO company_debts VALUES("12","19","OMEGA FIRE MINISTRY","Mbah Erica Lum","S101(Standard)","25000","2","0","50000","26-07-2017","07/28/2017","NISHANG");
INSERT INTO company_debts VALUES("13","20","OMEGA FIRE MINISTRY","Pa Tambi Boue","1(SUITES)","40000","1","0","40000","03-08-2017","08/04/2017","NISHANG");
INSERT INTO company_debts VALUES("14","21","OMEGA FIRE MINISTRY","Mua Bero","D204(Executive)","15000","2","0","30000","05-08-2017","08/07/2017","admin12");
INSERT INTO company_debts VALUES("15","22","OMEGA FIRE MINISTRY","Andrew Tawe","S105(Standard)","25000","1","0","25000","08-08-2017","08/09/2017","admin12");
INSERT INTO company_debts VALUES("16","23","OMEGA FIRE MINISTRY","Andrew Tawe","S205(Standard)","25000","1","0","25000","08-08-2017","08/09/2017","admin12");





CREATE TABLE `current` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `customers` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(30) DEFAULT NULL,
  `ayear` varchar(30) DEFAULT NULL,
  `dor` varchar(30) DEFAULT NULL,
  `reg_date` varchar(20) NOT NULL,
  `class` varchar(40) NOT NULL,
  `install` varchar(15) NOT NULL,
  `status` varchar(6) NOT NULL,
  `level` int(11) NOT NULL,
  `others` varchar(50) NOT NULL,
  `other1` varchar(80) NOT NULL,
  `category` varchar(20) NOT NULL,
  `pof` varchar(40) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gname` varchar(60) NOT NULL,
  `gtec` varchar(20) NOT NULL,
  `gadd` varchar(30) NOT NULL,
  `gemail` varchar(30) NOT NULL,
  `innum` varchar(30) NOT NULL,
  `olevel` varchar(30) NOT NULL,
  `alevel` varchar(30) NOT NULL,
  `photo` varchar(20) NOT NULL,
  `carmark` varchar(50) NOT NULL,
  `carnum` varchar(50) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO customers VALUES("4","TEMBENG PHILIP NGOH","","","31-07-2017","","","","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("5","BANG ARMSTRONG","","","31-07-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("6","OMEGA FIRE MINISTRY(NJOUONKOU ","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("7","OMEGA FIRE MINISTRY(NWAOZALA R","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("8","OMEGA FIRE MINISTRY(ELIAS NNAM","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("9","OMEGA FIRE MINISTRY(AROWOSEGBE","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("10","OMEGA FIRE MINISTRY(OJEABU ISI","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("11","OMEGA FIRE MINISTRY(MOMODU DAV","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("12","OMEGA FIRE MINISTRY(ISA LEWIS ","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("13","OMEGA FIRE MINISTRY(EMMANUEL O","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("14","OMEGA FIRE MINISTRY(ERIC ISOKE","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("15","OMEGA FIRE MINISTRY(OKORO AMOS","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("16","OMEGA FIRE MINISTRY(AGHO JOEL ","","","31-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("17","MENGUEDE LAKASE","","","01-08-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("18","Mbah Isaac","","","03-08-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("19","OMEGA FIRE MINISTRY(Mbah Erica","","","26-07-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("20","OMEGA FIRE MINISTRY(Pa Tambi B","","","03-08-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("21","OMEGA FIRE MINISTRY(Mua Bero)","","","05-08-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("22","OMEGA FIRE MINISTRY(Andrew Taw","","","08-08-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("23","OMEGA FIRE MINISTRY(Andrew Taw","","","08-08-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("24","Guy Daneil Kamga","","","14-08-2017","","","2","0","","","","","","","","","","","","","","","","");





CREATE TABLE `daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(20) NOT NULL,
  `room` varchar(20) NOT NULL,
  `date` varchar(17) NOT NULL,
  `rec` varchar(17) NOT NULL,
  `exp` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `area` int(11) NOT NULL,
  `time` text NOT NULL,
  `reason` varchar(40) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL,
  `owed` varchar(20) NOT NULL,
  `paidto` varchar(90) NOT NULL,
  `paidtou` varchar(60) NOT NULL,
  `amt` varchar(20) NOT NULL,
  `idds` int(11) NOT NULL,
  `staffname` varchar(50) NOT NULL,
  `day` varchar(21) NOT NULL,
  `purpose` text NOT NULL,
  `discount` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO daily VALUES("1","19","S101","26-07-2017","0","","07","2017","0","","Mbah Erica Lum","2","25000","50000","50000","NISHANG","","","0","OMEGA FIRE MINISTRY","2017-06-26","Reception","");
INSERT INTO daily VALUES("2","19","S101","01-07-2017","0","","07","2017","0","","1.5 L WATER","2","1000","2000","2000","NISHANG","","","11","OMEGA FIRE MINISTRY","2017-07-28","1.5 L WATER","");
INSERT INTO daily VALUES("4","19","OMEGA FIRE MINISTRY","03-08-2017","0","","08","2017","17","5","Car Rental Service Rentage","1","5000","5000","","NISHANG","","","0","BASIC EDUCATION","2017-08-03","","");
INSERT INTO daily VALUES("5","19","S101","03-08-2017","232000","","08","2017","0","","Lodging","0","","0","","NISHANG","","","0","OMEGA FIRE MINISTRY","2017-08-03","","");
INSERT INTO daily VALUES("6","20","1","03-08-2017","0","","08","2017","0","","Pa Tambi Boue","1","40000","40000","40000","NISHANG","","","0","OMEGA FIRE MINISTRY","2017-08-03","Reception","");
INSERT INTO daily VALUES("7","20","1","03-08-2017","0","","08","2017","15","07:02:04","Bar bills","1","","5500","5500","admin12","","0","0"," OMEGA FIRE MINISTRY","2017-08-03","Bar  bills","");
INSERT INTO daily VALUES("8","20","1","05-08-2017","125500","","08","2017","0","","Lodging","0","","0","","admin12","","","0","OMEGA FIRE MINISTRY","2017-08-05","","");
INSERT INTO daily VALUES("9","21","D204","05-08-2017","0","","08","2017","0","","Mua Bero","2","15000","30000","30000","admin12","","","0","OMEGA FIRE MINISTRY","2017-08-05","Reception","");
INSERT INTO daily VALUES("10","21","D204","05-08-2017","0","","08","2017","2","07:13:42","Terrace Bar bills","1","","8000","8000","admin12","","0","0"," OMEGA FIRE MINISTRY","2017-08-05","Terrace Bar  bills","");
INSERT INTO daily VALUES("11","21","D204","08-08-2017","0","","08","2017","0","","Lodging","0","","0","","admin12","","","0","OMEGA FIRE MINISTRY","2017.08-08","","");
INSERT INTO daily VALUES("12","0","Omega Fire Ministrie","08-08-2017","0","","08","2017","17","6","Conference Hall Rentage","1","230000","230000","","admin12","","","0","OMEGA FIRE MINISTRY","2017-08-08","","");
INSERT INTO daily VALUES("13","22","S105","08-08-2017","0","","08","2017","0","","Andrew Tawe","1","25000","25000","25000","admin12","","","0","OMEGA FIRE MINISTRY","2017-08-08","Reception","");
INSERT INTO daily VALUES("15","23","S205","08-08-2017","0","","08","2017","0","","Andrew Tawe","1","25000","25000","25000","admin12","","","0","OMEGA FIRE MINISTRY","2017-08-08","Reception","");
INSERT INTO daily VALUES("16","23","S205","08-08-2017","0","","08","2017","0","","Lodging","0","","0","","admin12","","","0","OMEGA FIRE MINISTRY","2017-08-08","","");
INSERT INTO daily VALUES("17","24","S101","14-08-2017","0","","08","2017","0","","Lodging","2","24000","48000","48000","NISHANG","","","0","","2017-08-14","Reception","");





CREATE TABLE `debts` (
  `id` int(11) NOT NULL,
  `checkin` varchar(20) NOT NULL,
  `out` varchar(20) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `room` varchar(25) NOT NULL,
  `owed` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `dept_stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(90) NOT NULL,
  `discribe` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `receive` varchar(10) NOT NULL,
  `lefts` varchar(10) NOT NULL,
  `senttby` varchar(50) NOT NULL,
  `sentto` varchar(50) NOT NULL,
  `date` varchar(18) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(7) NOT NULL,
  `name` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `disburse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentby` varchar(30) NOT NULL,
  `sentto` varchar(40) NOT NULL,
  `item` varchar(80) NOT NULL,
  `stock` varchar(7) NOT NULL,
  `taken` varchar(15) NOT NULL,
  `current` varchar(15) NOT NULL,
  `discribe` varchar(50) NOT NULL,
  `date` varchar(17) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` text NOT NULL,
  `status` int(11) NOT NULL,
  `receiver` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `expense` (
  `exp_id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `total` varchar(13) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `status` int(13) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `area` int(11) NOT NULL,
  `section` varchar(40) NOT NULL,
  PRIMARY KEY (`exp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `finances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yourid` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `room` varchar(15) NOT NULL,
  `cost` varchar(18) NOT NULL,
  `howlong` int(11) NOT NULL,
  `paid` varchar(18) NOT NULL,
  `added` varchar(18) NOT NULL,
  `bal` varchar(15) NOT NULL,
  `duedate` varchar(20) NOT NULL,
  `newadd` varchar(12) NOT NULL,
  `status` int(2) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `nation` varchar(50) NOT NULL,
  `level` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `area` int(11) NOT NULL,
  `situation` varchar(20) NOT NULL,
  `otherbal` varchar(20) NOT NULL,
  `mydebt` varchar(15) NOT NULL,
  `allow` int(11) NOT NULL,
  `printed` varchar(30) NOT NULL,
  `checked` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO finances VALUES("1","19","OMEGA FIRE MINISTRY","Standard","S101","25000","9","0","","50000","07/28/2017","","2","26-07-2017","7","2017","","03-08-2017","18:01","0","","0","0","2","03-08-2017","0");
INSERT INTO finances VALUES("2","0","BASIC EDUCATION","","","5000","1","0","","","","","0","28-07-2017","7","2017","","","4","17","","","","0","","0");
INSERT INTO finances VALUES("3","0","BASIC EDUCATION","","","5000","1","0","","","","","0","03-08-2017","8","2017","","","5","17","","","","0","","0");
INSERT INTO finances VALUES("4","20","OMEGA FIRE MINISTRY","SUITES","1","40000","3","0","","40000","08/04/2017","","2","03-08-2017","8","2017","","05-08-2017","19:00","0","","0","0","2","05-08-2017","0");
INSERT INTO finances VALUES("5","21","OMEGA FIRE MINISTRY","Executive","D204","15000","4","0","","30000","08/07/2017","","2","05-08-2017","8","2017","","08-08-2017","19:04","0","","68000","68000","2","08-08-2017","0");
INSERT INTO finances VALUES("6","0","OMEGA FIRE MINISTRY","","","230000","1","0","","","","","0","08-08-2017","8","2017","","","6","17","","","","0","","0");
INSERT INTO finances VALUES("7","22","OMEGA FIRE MINISTRY","Standard","S105","25000","1","0","","25000","08/09/2017","","2","08-08-2017","8","2017","","08-08-2017","19:23","0","","25000","25000","2","08-08-2017","0");
INSERT INTO finances VALUES("8","23","OMEGA FIRE MINISTRY","Standard","S205","25000","1","0","","25000","08/09/2017","","2","08-08-2017","8","2017","","08-08-2017","19:25","0","","25000","25000","2","08-08-2017","0");
INSERT INTO finances VALUES("9","24","Guy Daneil Kamga","Standard","S101","24000","2","0","0","48000","08/16/2017","","1","14-08-2017","8","2017","","","13:39","0","","","","0","","0");





CREATE TABLE `fixed_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(200) NOT NULL,
  `discribe` varchar(255) NOT NULL,
  `qty` varchar(15) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` varchar(7) NOT NULL,
  `year` varchar(7) NOT NULL,
  `model` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `foods` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(65) NOT NULL,
  `cprice` varchar(11) NOT NULL,
  `price` varchar(21) NOT NULL,
  `quatity` varchar(21) NOT NULL,
  `serial` varchar(90) NOT NULL,
  `area` int(11) NOT NULL,
  `sector` varchar(90) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO foods VALUES("1","BAR  FISH","","5500.00","","PLAT CHAUD","15","15");
INSERT INTO foods VALUES("2","CHIEFS SALAD","","3000.00","","STARTER","15","15");
INSERT INTO foods VALUES("3","FRUITS SALAD","","2500.00","","DESERT","15","15");
INSERT INTO foods VALUES("4","Bar Fish","","4500.00","","Fish","2","Reception");
INSERT INTO foods VALUES("5","Babicue","","5000.00","","General","2","Reception");
INSERT INTO foods VALUES("6","1/4 Chicken","","6000.00","","Chicken","2","Reception");
INSERT INTO foods VALUES("7","1/2 Chicken","","8000.00","","Chicken","2","Reception");





CREATE TABLE `hall_paymts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `names` varchar(90) NOT NULL,
  `tel` varchar(17) NOT NULL,
  `fromm` varchar(17) NOT NULL,
  `too` varchar(15) NOT NULL,
  `date` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `paid` varchar(20) NOT NULL,
  `owed` varchar(20) NOT NULL,
  `cost` varchar(20) NOT NULL,
  `howlong` int(11) NOT NULL,
  `month` varchar(11) NOT NULL,
  `paidto` varchar(20) NOT NULL,
  `endtime` varchar(7) NOT NULL,
  `reason` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO hall_paymts VALUES("1","Mbah Isaac","","2017-08-03","13","03-08-2017","2017","50000","150000","200000","1","08","2","19","Conference Hall");
INSERT INTO hall_paymts VALUES("2","Mbah Isaac","","2017-08-03","7","03-08-2017","2017","20000","30000","50000","1","08","3","15","Pool");
INSERT INTO hall_paymts VALUES("3","OMEGA FIRE MINISTRY","","2017-07-28","10","28-07-2017","2017","0","5000","5000","1","07","4","15","Car Rental Service");
INSERT INTO hall_paymts VALUES("4","OMEGA FIRE MINISTRY","","2017-08-03","10","03-08-2017","2017","0","5000","5000","1","08","5","18","Car Rental Service");
INSERT INTO hall_paymts VALUES("5","Omega Fire Ministries Int","","08/08/2017","7","08-08-2017","2017","0","230000","230000","1","08","6","18","Conference Hall");





CREATE TABLE `historique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yourid` varchar(15) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `room` varchar(15) NOT NULL,
  `cost` varchar(18) NOT NULL,
  `howlong` int(11) NOT NULL,
  `paid` varchar(18) NOT NULL,
  `added` varchar(18) NOT NULL,
  `bal` varchar(15) NOT NULL,
  `duedate` varchar(20) NOT NULL,
  `date` varchar(15) NOT NULL,
  `month` varchar(5) NOT NULL,
  `year` varchar(15) NOT NULL,
  `day` int(2) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO historique VALUES("1","19","Standard","S101","25000","2","232000","","0","07/28/2017","26-07-2017","07","2017","26","0");
INSERT INTO historique VALUES("2","20","SUITES","1","40000","1","125500","","0","08/04/2017","03-08-2017","08","2017","2017","0");
INSERT INTO historique VALUES("3","21","Executive","D204","15000","2","0","","68000","08/07/2017","05-08-2017","08","2017","2017","0");
INSERT INTO historique VALUES("4","22","Standard","S105","25000","1","0","","25000","08/09/2017","08-08-2017","08","2017","2017","0");
INSERT INTO historique VALUES("5","23","Standard","S205","25000","1","0","","25000","08/09/2017","08-08-2017","08","2017","2017","0");
INSERT INTO historique VALUES("6","24","Standard","S101","24000","2","0","0","48000","08/16/2017","14-08-2017","08","2017","2017","0");





CREATE TABLE `internet_shop` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `img` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `room_number` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `img` (`img`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `desc` varchar(100) NOT NULL,
  `uprice` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `days` varchar(10) NOT NULL,
  `persons` varchar(10) NOT NULL,
  `total` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO invoice VALUES("1","Guy Kamga Daneil","18-01-2017","","","","","","","0");





CREATE TABLE `main_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disc` varchar(50) NOT NULL,
  `amt` int(11) NOT NULL,
  `howlong` int(11) NOT NULL,
  `facil` varchar(50) NOT NULL,
  `ins` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO main_cats VALUES("1","Pool With Drinks Monthly","20000","12","With Drinks","Monthly");
INSERT INTO main_cats VALUES("2","Pool With Drinks Monthly","15000","12","No Drinks","Monthly");





CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` varchar(17) NOT NULL,
  `nation` varchar(100) NOT NULL,
  `idcard` varchar(40) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `cate` int(11) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `matric` varchar(20) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `done` int(11) NOT NULL,
  `fini` int(11) NOT NULL,
  `date` varchar(23) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `members_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `matricule` varchar(30) NOT NULL,
  `paid` varchar(17) NOT NULL,
  `owed` varchar(20) NOT NULL,
  `date` varchar(17) NOT NULL,
  `duedate` varchar(17) NOT NULL,
  `status` varchar(8) NOT NULL,
  `disc` varchar(50) NOT NULL,
  `inter` varchar(50) NOT NULL,
  `again` varchar(20) NOT NULL,
  `times` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `myinvoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `disc` varchar(100) NOT NULL,
  `uprice` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `days` varchar(10) NOT NULL,
  `persons` varchar(10) NOT NULL,
  `total` varchar(15) NOT NULL,
  `yourid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `nightclub_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(29) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `nights_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(51) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `total` varchar(20) NOT NULL,
  `ids` int(11) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `printed` int(11) NOT NULL,
  `section` varchar(40) NOT NULL,
  `opening_stocks` varchar(11) NOT NULL,
  `closing_stocks` varchar(11) NOT NULL,
  `profit` varchar(11) NOT NULL,
  `date` varchar(19) NOT NULL,
  `day` varchar(6) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(6) NOT NULL,
  `cp` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `ostocks` (
  `roll` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(90) NOT NULL,
  `price` varchar(11) NOT NULL,
  `qty` varchar(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(8) NOT NULL,
  `agent` varchar(20) NOT NULL,
  `froms` varchar(13) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`roll`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `other_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(51) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `total` varchar(20) NOT NULL,
  `ids` varchar(20) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `printed` int(11) NOT NULL,
  `section` varchar(40) NOT NULL,
  `opening_stocks` varchar(8) NOT NULL,
  `closing_stocks` varchar(8) NOT NULL,
  `profit` varchar(11) NOT NULL,
  `date` varchar(19) NOT NULL,
  `day` varchar(6) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(6) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `time` varchar(18) NOT NULL,
  `authorize` varchar(60) NOT NULL,
  `froms` varchar(11) NOT NULL,
  `sub` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `other_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` varchar(50) NOT NULL,
  `facilities` text NOT NULL,
  `floor` int(11) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `lastprice` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO other_services VALUES("1","WATER 1.5 L","","0","","0");





CREATE TABLE `other_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(19) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `our_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `sector` varchar(90) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO our_tables VALUES("4","1","1","Terrace Bar And Grill","2");
INSERT INTO our_tables VALUES("5","2","1","Terrace Bar And Grill","2");
INSERT INTO our_tables VALUES("6","3","1","Terrace Bar And Grill","2");
INSERT INTO our_tables VALUES("7","4","1","Terrace Bar And Grill","2");
INSERT INTO our_tables VALUES("8","1","1","Bar Le Dja","15");
INSERT INTO our_tables VALUES("9","2","1","Bar Le Dja","15");
INSERT INTO our_tables VALUES("10","3","1","Bar Le Dja","15");
INSERT INTO our_tables VALUES("11","4","1","Bar Le Dja","15");
INSERT INTO our_tables VALUES("12","5","1","Bar Le Dja","15");
INSERT INTO our_tables VALUES("13","1","1","Restau Le Dja","10");
INSERT INTO our_tables VALUES("14","2","1","Restau Le Dja","10");
INSERT INTO our_tables VALUES("15","3","1","Restau Le Dja","10");
INSERT INTO our_tables VALUES("16","4","1","Restau Le Dja","10");
INSERT INTO our_tables VALUES("17","5","1","Restau Le Dja","10");
INSERT INTO our_tables VALUES("18","11","1","Restau Le Dja","10");
INSERT INTO our_tables VALUES("19","6","1","Restau Le Dja","10");





CREATE TABLE `ourclients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yourid` int(11) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `room` varchar(15) NOT NULL,
  `cost` varchar(18) NOT NULL,
  `howlong` int(11) NOT NULL,
  `paid` varchar(18) NOT NULL,
  `added` varchar(18) NOT NULL,
  `bal` varchar(15) NOT NULL,
  `duedate` varchar(20) NOT NULL,
  `date` varchar(23) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `nation` varchar(50) NOT NULL,
  `time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO ourclients VALUES("1","2","VIP","VIP","40000","2","40000","0","40000","08/02/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("2","5","Executive","D210","20000","3","0","0","60000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("3","6","Standard","S202","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("4","7","Standard","S205","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("5","8","Standard","S104","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("6","9","Standard","S105","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("7","10","Standard","S103","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("8","11","Standard","S108","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("9","12","Standard","S201","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("10","13","Standard","S204","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("11","14","Standard","S106","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("12","15","Standard","S203","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("13","16","Standard","S107","25000","3","0","","75000","08/03/2017","31-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("14","17","Executive","D204","25000","2","25000","0","25000","08/03/2017","01-08-2017","8","2017","","");
INSERT INTO ourclients VALUES("15","18","Standard","","28000","2","50000","0","6000","08/05/2017","03-08-2017","8","2017","","");
INSERT INTO ourclients VALUES("16","19","Standard","S101","25000","2","232000","","0","07/28/2017","26-07-2017","7","2017","","");
INSERT INTO ourclients VALUES("17","20","SUITES","1","40000","1","125500","","0","08/04/2017","03-08-2017","8","2017","","");
INSERT INTO ourclients VALUES("18","21","Executive","D204","15000","2","0","","68000","08/07/2017","05-08-2017","8","2017","","");
INSERT INTO ourclients VALUES("19","22","Standard","S105","25000","1","0","","25000","08/09/2017","08-08-2017","8","2017","","");
INSERT INTO ourclients VALUES("20","23","Standard","S205","25000","1","0","","25000","08/09/2017","08-08-2017","8","2017","","");
INSERT INTO ourclients VALUES("21","24","Standard","S101","24000","2","0","0","48000","08/16/2017","14-08-2017","8","2017","","");





CREATE TABLE `overtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `payment_modes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `contact` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO payment_modes VALUES("1","CASH","");
INSERT INTO payment_modes VALUES("2","COMPANY","");
INSERT INTO payment_modes VALUES("3","FREE","");





CREATE TABLE `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hall_rents` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `problems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(21) NOT NULL,
  `problem` text NOT NULL,
  `incharge` text NOT NULL,
  `floor` varchar(5) NOT NULL,
  `room` varchar(6) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO problems VALUES("1","24-07-2017 20:45:39","<p>bad door lock</p>","mevybrown","S","S202","2");





CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(65) NOT NULL,
  `category` varchar(21) NOT NULL,
  `price` varchar(21) NOT NULL,
  `quatity` varchar(21) NOT NULL,
  `total` varchar(21) NOT NULL,
  `date` varchar(25) NOT NULL,
  `status` int(2) NOT NULL,
  `month` varchar(25) NOT NULL,
  `year` varchar(25) NOT NULL,
  `agent` varchar(25) NOT NULL,
  `barcode` varchar(90) NOT NULL,
  `serial` varchar(90) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO products VALUES("1","Top A","TOP","1000.00","22","","26-07-2017","0","445","","","","Bar Le Dja","15");
INSERT INTO products VALUES("2","TOP C","TOP","1000.00","22","","26-07-2017","0","445","","","","Bar Le Dja","15");
INSERT INTO products VALUES("3","EXPORT","BEER","1500.00","0","","","0","560","","","","Bar Le Dja","15");
INSERT INTO products VALUES("4","AMSTEL","BEER","1500.00","23","","26-07-2017","0","555","","","","Bar Le Dja","15");
INSERT INTO products VALUES("5","GUINESS SM","BEER","1500.00","23","","26-07-2017","0","590","","","","Bar Le Dja","15");





CREATE TABLE `records` (
  `roll` int(11) NOT NULL AUTO_INCREMENT,
  `income` varchar(30) DEFAULT NULL,
  `expense` varchar(30) DEFAULT NULL,
  `date` varchar(12) DEFAULT NULL,
  `month` varchar(12) DEFAULT NULL,
  `year` varchar(12) DEFAULT NULL,
  `reason` varchar(20) NOT NULL,
  `yr` varchar(8) NOT NULL,
  PRIMARY KEY (`roll`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `rents_sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO rents_sectors VALUES("16","Pool");
INSERT INTO rents_sectors VALUES("19","Hall");
INSERT INTO rents_sectors VALUES("20","Conference Hall");
INSERT INTO rents_sectors VALUES("21","Car Rental Service");





CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yourid` int(11) NOT NULL,
  `checkin` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `cout` varchar(20) NOT NULL,
  `days_uesd` int(11) NOT NULL,
  `name` varchar(90) NOT NULL,
  `room` varchar(25) NOT NULL,
  `withus` varchar(18) NOT NULL,
  `paidin` varchar(15) NOT NULL,
  `paidout` varchar(15) NOT NULL,
  `paidby` varchar(90) NOT NULL,
  `howmuch` varchar(20) NOT NULL,
  `reason` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO reports VALUES("1","19","26-07-2017","03-08-2017","08","2017","03-08-2017","9","OMEGA FIRE MINISTRY","S101","0","232000","0","","","checkout");
INSERT INTO reports VALUES("2","20","03-08-2017","05-08-2017","08","2017","05-08-2017","3","OMEGA FIRE MINISTRY","1","0","125500","0","","","checkout");
INSERT INTO reports VALUES("3","21","05-08-2017","08-08-2017","08","2017","08-08-2017","4","OMEGA FIRE MINISTRY","D204","68000","0","0","","","checkout");
INSERT INTO reports VALUES("4","22","08-08-2017","08-08-2017","08","2017","08-08-2017","1","OMEGA FIRE MINISTRY","S105","25000","0","0","","","checkout");
INSERT INTO reports VALUES("5","23","08-08-2017","08-08-2017","08","2017","08-08-2017","1","OMEGA FIRE MINISTRY","S205","25000","0","0","","","checkout");





CREATE TABLE `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(20) NOT NULL,
  `arrival` varchar(30) NOT NULL,
  `departure` varchar(30) NOT NULL,
  `result` int(11) NOT NULL,
  `payable` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `confirmation` varchar(20) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;






CREATE TABLE `reserves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `room` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `day` varchar(30) NOT NULL,
  `block` varchar(30) NOT NULL,
  `date1` varchar(20) NOT NULL,
  `month1` varchar(20) NOT NULL,
  `year1` varchar(17) NOT NULL,
  `day1` varchar(17) NOT NULL,
  `advance` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `restau_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(51) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `total` varchar(20) NOT NULL,
  `ids` varchar(20) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `printed` int(11) NOT NULL,
  `section` varchar(40) NOT NULL,
  `opening_stocks` varchar(8) NOT NULL,
  `closing_stocks` varchar(8) NOT NULL,
  `profit` varchar(11) NOT NULL,
  `date` varchar(19) NOT NULL,
  `day` varchar(6) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(6) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `time` varchar(18) NOT NULL,
  `authorize` varchar(60) NOT NULL,
  `froms` varchar(10) NOT NULL,
  `sub` varchar(11) NOT NULL,
  `split` varchar(5) NOT NULL,
  `agent` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `restau_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(29) NOT NULL,
  `status` int(11) NOT NULL,
  `area` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `restauproducts` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `roll` (
  `roll_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(100) NOT NULL,
  `new` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `status` varchar(2) NOT NULL,
  `r12` varchar(30) NOT NULL,
  `r13` varchar(30) NOT NULL,
  PRIMARY KEY (`roll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO roll VALUES("1","cca5b81448c4b749f0d6201ad546d76aaabed92b","2018/ 05 /19","1e5a4f7606f6d4345c6cf4872b06ab50","2","19-05-2018","");





CREATE TABLE `rooinventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `arrival` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `confirmation` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` varchar(15) NOT NULL,
  `year` varchar(10) NOT NULL,
  `day` varchar(20) NOT NULL,
  `endtime` varchar(15) NOT NULL,
  `sectors` varchar(60) NOT NULL,
  `allDay` varchar(15) NOT NULL,
  `yourid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO rooinventory VALUES("1","Atem mathias","","08/17/2017","10","active","yes","","07","2017","17","17","Conference Hall","","0");
INSERT INTO rooinventory VALUES("2","Mbah Isaac","","2017-08-03","13","active","yes","16","08","2017","03/08/2017","19","Conference Hall","","18");
INSERT INTO rooinventory VALUES("3","Mbah Isaac","","2017-08-03","7","active","yes","18","08","2017","03/08/2017","15","Pool","","18");
INSERT INTO rooinventory VALUES("4","OMEGA FIRE MINISTRY","","2017-07-28","10","active","yes","18","07","2017","28/07/2017","15","Car Rental Service","","19");
INSERT INTO rooinventory VALUES("5","OMEGA FIRE MINISTRY","","2017-08-03","10","active","yes","08","08","2017","03/08/2017","18","Car Rental Service","","19");
INSERT INTO rooinventory VALUES("6","Omega Fire Ministries Int","","08/08/2017","7","active","yes","","08","2017","08","18","Conference Hall","","0");





CREATE TABLE `roomproduct_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(50) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `name` varchar(90) NOT NULL,
  `yourid` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `bill` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `room` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `roomproducts` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(40) NOT NULL,
  `cateogry` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `floor` varchar(11) NOT NULL,
  `who` varchar(11) NOT NULL,
  `disc` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

INSERT INTO rooms VALUES("1","1100","Standard","1","1","1134","0");
INSERT INTO rooms VALUES("2","1102","Standard","2","1","2441","0");
INSERT INTO rooms VALUES("3","1200","Presidential Suites","1","1","1252","0");
INSERT INTO rooms VALUES("4","1201","Standard","2","1","2081","0");
INSERT INTO rooms VALUES("5","1202","Standard","2","1","0","0");
INSERT INTO rooms VALUES("6","1203","Executive Suites","1","1","0","0");
INSERT INTO rooms VALUES("7","1204","Executive Suites","1","1","2390","0");
INSERT INTO rooms VALUES("8","1205","Deluxe","1","1","2384","0");
INSERT INTO rooms VALUES("9","1206","Standard","2","1","2437","0");
INSERT INTO rooms VALUES("10","1207","Deluxe","1","1","0","0");
INSERT INTO rooms VALUES("11","1300","Executive Suites","1","1","2391","0");
INSERT INTO rooms VALUES("12","1302","Deluxe","1","1","2439","0");
INSERT INTO rooms VALUES("13","1303","Standard","1","1","2440","0");
INSERT INTO rooms VALUES("14","1304","Executive Suites","1","1","2392","0");
INSERT INTO rooms VALUES("15","1305","Executive Suites","1","1","2394","0");
INSERT INTO rooms VALUES("16","1306","Deluxe","2","1","0","0");
INSERT INTO rooms VALUES("17","1307","Standard","1","1","0","0");
INSERT INTO rooms VALUES("18","1308","Standard","1","1","0","0");
INSERT INTO rooms VALUES("19","1101","Standard","1","1","0","0");
INSERT INTO rooms VALUES("20","1301","Standard","2","1","0","0");
INSERT INTO rooms VALUES("21","2100","Suite","1","2","0","0");
INSERT INTO rooms VALUES("22","2102","Standard","1","2","1145","0");
INSERT INTO rooms VALUES("23","2103","Suite","1","2","1562","0");
INSERT INTO rooms VALUES("24","2104","Standard","1","2","0","0");
INSERT INTO rooms VALUES("25","2105","Standard","1","2","1148","0");
INSERT INTO rooms VALUES("26","2106","Standard","1","2","0","0");
INSERT INTO rooms VALUES("27","2200","Suite","1","2","0","0");
INSERT INTO rooms VALUES("28","2201","Standard","1","2","1815","0");
INSERT INTO rooms VALUES("29","2202","Standard","1","2","1816","0");
INSERT INTO rooms VALUES("30","2203","Standard","1","2","1817","0");
INSERT INTO rooms VALUES("31","2204","Standard","1","2","0","0");
INSERT INTO rooms VALUES("32","2205","Standard","1","2","0","0");
INSERT INTO rooms VALUES("33","2206","Standard","1","2","","0");
INSERT INTO rooms VALUES("34","2300","Deluxe","2","2","1133","0");
INSERT INTO rooms VALUES("35","2301","Standard","1","2","1860","0");
INSERT INTO rooms VALUES("36","2302","Standard","1","2","0","0");
INSERT INTO rooms VALUES("37","2303","Standard","1","2","0","0");
INSERT INTO rooms VALUES("38","2304","Standard","1","2","0","0");
INSERT INTO rooms VALUES("39","2305","Standard","1","2","1819","0");
INSERT INTO rooms VALUES("40","2306","Standard","1","2","1813","0");
INSERT INTO rooms VALUES("41","2101","Standard","1","2","","0");





CREATE TABLE `rooms_fridge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room` varchar(20) NOT NULL,
  `product` varchar(60) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `rooms_products` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(65) NOT NULL,
  `category` varchar(21) NOT NULL,
  `price` varchar(21) NOT NULL,
  `quatity` varchar(21) NOT NULL,
  `total` varchar(21) NOT NULL,
  `date` varchar(25) NOT NULL,
  `status` int(2) NOT NULL,
  `month` varchar(25) NOT NULL,
  `year` varchar(25) NOT NULL,
  `agent` varchar(25) NOT NULL,
  `barcode` varchar(90) NOT NULL,
  `room` varchar(15) NOT NULL,
  `expense` varchar(20) NOT NULL,
  `cprice` varchar(16) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `roomstockl_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(50) NOT NULL,
  `category` varchar(60) NOT NULL,
  `price` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `name` varchar(90) NOT NULL,
  `yourid` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `bill` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `room` varchar(20) NOT NULL,
  `level` int(11) NOT NULL,
  `cprice` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `area` int(11) NOT NULL,
  `link` varchar(98) NOT NULL,
  `does` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

INSERT INTO sectors VALUES("18","Admin","20","Admin/adminpage,php?sector=Admin","0");
INSERT INTO sectors VALUES("19","Reception","0","Reception/frontpage.php?sector=Reception","0");
INSERT INTO sectors VALUES("21","Bar Le Dja","15","Bar/restaupage.php?area=15","2");
INSERT INTO sectors VALUES("22","Restau Le Dja","10","Restau/restaupage.php?area=10","2");
INSERT INTO sectors VALUES("23","Rental Services","17","Rental/rentalpage.php?sector=Rental Services","0");
INSERT INTO sectors VALUES("25","Terrace Bar And Grill","2","Bauca/restaupage.php?area=2","2");
INSERT INTO sectors VALUES("26","Drinks Control Admin","150","Chiefs/dashboard.php?sector=Drinks Control Admin","0");
INSERT INTO sectors VALUES("27","House Keeping Deparment","16","Store/stockpage.php?sector=Fixed Stock Supply Admin","0");
INSERT INTO sectors VALUES("28","Swimming Pool Guard","3","Swimming/frontpage.php?area=3","2");





CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `ids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO services VALUES("1","Bar Bills","0");
INSERT INTO services VALUES("2","Restau Bills","0");
INSERT INTO services VALUES("3","ROOM SERVICE","0");
INSERT INTO services VALUES("4","Ironing","0");
INSERT INTO services VALUES("6","Laudry","0");
INSERT INTO services VALUES("7","1.5 L WATER","0");





CREATE TABLE `spendingcats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(90) NOT NULL,
  `ids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `splits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sp` varchar(11) NOT NULL,
  `area` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `staff_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `date` varchar(20) NOT NULL,
  `checkin` varchar(25) NOT NULL,
  `checkout` varchar(25) NOT NULL,
  `shift` varchar(50) NOT NULL,
  `month` varchar(60) NOT NULL,
  `year` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `age` varchar(17) NOT NULL,
  `nation` varchar(100) NOT NULL,
  `idcard` varchar(40) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `cate` int(11) NOT NULL,
  `adress` varchar(50) NOT NULL,
  `matric` varchar(20) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `done` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `banned` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `stockreports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(90) NOT NULL,
  `price` varchar(15) NOT NULL,
  `qty` varchar(15) NOT NULL,
  `sentby` varchar(40) NOT NULL,
  `sentto` varchar(40) NOT NULL,
  `oldstock` varchar(15) NOT NULL,
  `news` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(7) NOT NULL,
  `cost_price` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO stockreports VALUES("1","Top A","1000.00","24","admin12","Bar Le Dja","0","24","26-07-2017","07","2017","");





CREATE TABLE `stocks` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(65) NOT NULL,
  `category` varchar(21) NOT NULL,
  `price` varchar(21) NOT NULL,
  `quatity` varchar(21) NOT NULL,
  `cprice` varchar(11) NOT NULL,
  `barcode` varchar(90) NOT NULL,
  `serial` varchar(11) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO stocks VALUES("1","Top A","TOP","1000.00","26","445","","TOP");
INSERT INTO stocks VALUES("2","TOP C","TOP","1000.00","26","445","","TOP");
INSERT INTO stocks VALUES("3","EXPORT","BEER","1500.00","24.00","560","","BEER");
INSERT INTO stocks VALUES("4","AMSTEL","BEER","1500.00","26","555","","BEER");
INSERT INTO stocks VALUES("5","GUINESS SM","BEER","1500.00","26","590","","BEER");





CREATE TABLE `sub_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `tbl_image` (
  `tbl_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `image_location` varchar(100) NOT NULL,
  PRIMARY KEY (`tbl_image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO tbl_image VALUES("7","n","SUITE","DSCN0652.JPG");
INSERT INTO tbl_image VALUES("8"," n","Standard","IMG_2230.JPG");
INSERT INTO tbl_image VALUES("9","m","Executive","IMG_2224.JPG");
INSERT INTO tbl_image VALUES("10","p","Presidential ","IMG_2228.JPG");
INSERT INTO tbl_image VALUES("11","h","Deluxe","IMG_2226.JPG");
INSERT INTO tbl_image VALUES("12","","","m.jpg");





CREATE TABLE `thelast` (
  `roll` int(11) NOT NULL,
  `figu` int(11) NOT NULL,
  `whom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `to_boss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paidby` varchar(30) NOT NULL,
  `tot_rec` varchar(15) NOT NULL,
  `athand` varchar(15) NOT NULL,
  `date` varchar(16) NOT NULL,
  `month` varchar(11) NOT NULL,
  `year` varchar(11) NOT NULL,
  `status` varchar(5) NOT NULL,
  `day` varchar(5) NOT NULL,
  `to_boss` varchar(15) NOT NULL,
  `sentto` varchar(40) NOT NULL,
  `cf` varchar(11) NOT NULL,
  `spent` varchar(11) NOT NULL,
  `dept` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `ref2` varchar(60) NOT NULL,
  `agent` varchar(60) NOT NULL,
  `ip` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1137 DEFAULT CHARSET=latin1;

INSERT INTO tracker VALUES("1","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("2","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("3","admin12","26-06-2017","14:55","login","/V2515/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("4","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("5","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("6","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("7","admin12","26-06-2017","14:55","login","/V2515/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("8","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("9","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("10","admin12","26-06-2017","14:55","login","/V2515/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("11","admin12","26-06-2017","14:55","login","/V2515/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("12","admin12","26-06-2017","14:55","login","/V2515/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("13","admin12","26-06-2017","14:55","login","/V2515/restau/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("14","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("15","admin12","26-06-2017","14:55","login","/V2515/restau/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("16","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("17","admin12","26-06-2017","14:55","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("18","admin12","26-06-2017","14:55","login","/V2515/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("19","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("20","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("21","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("22","admin12","26-06-2017","14:56","login","/V2515/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("23","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("24","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("25","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("26","admin12","26-06-2017","14:56","login","/V2515/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("27","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("28","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("29","admin12","26-06-2017","14:56","login","/V2515/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("30","admin12","26-06-2017","14:56","login","/V2515/restau/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("31","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("32","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("33","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("34","admin12","26-06-2017","14:56","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("35","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("36","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("37","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("38","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("39","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("40","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("41","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("42","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("43","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("44","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("45","admin12","26-06-2017","14:57","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("46","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("47","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("48","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("49","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("50","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("51","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("52","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("53","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("54","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("55","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("56","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("57","admin12","26-06-2017","14:58","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("58","admin12","26-06-2017","14:59","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("59","admin12","26-06-2017","14:59","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("60","admin12","26-06-2017","14:59","logout","","","");
INSERT INTO tracker VALUES("61","","26-06-2017","15:00","logout","","","");
INSERT INTO tracker VALUES("62","myfixed","26-06-2017","15:02","login","/v2515/store/stockpage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("63","myfixed","26-06-2017","15:02","login","/v2515/store/stockpage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("64","myfixed","26-06-2017","15:02","login","/v2515/store/stockpage.php","Mozilla/5.0 (Windows NT 6.1; rv:55.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("65","","27-06-2017","10:04","logout","","","");
INSERT INTO tracker VALUES("66","","27-06-2017","10:04","logout","","","");
INSERT INTO tracker VALUES("67","itoe_gideon","04-07-2017","10:51","logout","","","");
INSERT INTO tracker VALUES("68","itoe_gideon","07-07-2017","0:17","logout","","","");
INSERT INTO tracker VALUES("69","admin12","24-07-2017","19:38","logout","","","");
INSERT INTO tracker VALUES("70","admin12","24-07-2017","19:42","logout","","","");
INSERT INTO tracker VALUES("71","mevybrown","24-07-2017","20:06","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("72","mevybrown","24-07-2017","20:07","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("73","mevybrown","24-07-2017","20:08","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("74","mevybrown","24-07-2017","20:08","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("75","mevybrown","24-07-2017","20:08","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("76","mevybrown","24-07-2017","20:12","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("77","mevybrown","24-07-2017","20:12","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("78","mevybrown","24-07-2017","20:12","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("79","mevybrown","24-07-2017","20:13","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("80","mevybrown","24-07-2017","20:19","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("81","mevybrown","24-07-2017","20:20","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("82","mevybrown","24-07-2017","20:21","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("83","mevybrown","24-07-2017","20:21","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("84","mevybrown","24-07-2017","20:21","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("85","mevybrown","24-07-2017","20:21","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("86","mevybrown","24-07-2017","20:22","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("87","mevybrown","24-07-2017","20:22","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("88","mevybrown","24-07-2017","20:22","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("89","mevybrown","24-07-2017","20:22","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("90","mevybrown","24-07-2017","20:23","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("91","mevybrown","24-07-2017","20:23","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("92","mevybrown","24-07-2017","20:23","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("93","mevybrown","24-07-2017","20:23","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("94","mevybrown","24-07-2017","20:24","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("95","mevybrown","24-07-2017","20:24","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("96","mevybrown","24-07-2017","20:24","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("97","mevybrown","24-07-2017","20:24","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("98","mevybrown","24-07-2017","20:25","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("99","mevybrown","24-07-2017","20:25","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("100","mevybrown","24-07-2017","20:25","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("101","mevybrown","24-07-2017","20:25","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("102","mevybrown","24-07-2017","20:26","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("103","mevybrown","24-07-2017","20:26","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("104","mevybrown","24-07-2017","20:26","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("105","mevybrown","24-07-2017","20:26","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("106","mevybrown","24-07-2017","20:27","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("107","mevybrown","24-07-2017","20:27","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("108","mevybrown","24-07-2017","20:27","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("109","mevybrown","24-07-2017","20:27","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("110","mevybrown","24-07-2017","20:28","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("111","mevybrown","24-07-2017","20:28","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("112","mevybrown","24-07-2017","20:28","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("113","mevybrown","24-07-2017","20:29","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("114","mevybrown","24-07-2017","20:29","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("115","mevybrown","24-07-2017","20:29","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("116","mevybrown","24-07-2017","20:29","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("117","mevybrown","24-07-2017","20:30","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("118","mevybrown","24-07-2017","20:30","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("119","mevybrown","24-07-2017","20:30","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("120","mevybrown","24-07-2017","20:31","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("121","mevybrown","24-07-2017","20:31","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("122","mevybrown","24-07-2017","20:31","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("123","mevybrown","24-07-2017","20:31","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("124","mevybrown","24-07-2017","20:32","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("125","mevybrown","24-07-2017","20:32","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("126","mevybrown","24-07-2017","20:32","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("127","mevybrown","24-07-2017","20:32","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("128","mevybrown","24-07-2017","20:33","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("129","mevybrown","24-07-2017","20:33","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("130","mevybrown","24-07-2017","20:33","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("131","mevybrown","24-07-2017","20:33","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("132","mevybrown","24-07-2017","20:34","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("133","mevybrown","24-07-2017","20:34","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("134","mevybrown","24-07-2017","20:40","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("135","mevybrown","24-07-2017","20:41","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("136","mevybrown","24-07-2017","20:41","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("137","mevybrown","24-07-2017","20:41","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("138","mevybrown","24-07-2017","20:41","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("139","mevybrown","25-07-2017","7:50","logout","","","");
INSERT INTO tracker VALUES("140","admin12","26-07-2017","17:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","10.1.0.18");
INSERT INTO tracker VALUES("141","admin12","26-07-2017","17:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("142","admin12","26-07-2017","17:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("143","admin12","26-07-2017","17:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("144","admin12","26-07-2017","17:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("145","admin12","26-07-2017","17:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("146","admin12","26-07-2017","17:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("147","admin12","26-07-2017","17:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("148","admin12","26-07-2017","17:04","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","10.1.0.18");
INSERT INTO tracker VALUES("149","admin12","26-07-2017","17:04","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("150","admin12","26-07-2017","17:04","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("151","admin12","26-07-2017","17:04","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("152","admin12","26-07-2017","17:04","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("153","admin12","26-07-2017","17:04","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("154","admin12","26-07-2017","17:05","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("155","admin12","26-07-2017","17:09","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("156","admin12","26-07-2017","17:09","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("157","admin12","26-07-2017","17:09","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("158","admin12","26-07-2017","17:09","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("159","admin12","26-07-2017","17:12","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("160","admin12","26-07-2017","17:12","login","/v2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("161","admin12","26-07-2017","17:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("162","admin12","26-07-2017","17:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:18.0) Gecko/20100101 Firefox","fe80::45d2:6d1b:cd64:1883");
INSERT INTO tracker VALUES("163","admin12","26-07-2017","17:21","logout","","","");
INSERT INTO tracker VALUES("164","annlouis","26-07-2017","17:22","logout","","","");
INSERT INTO tracker VALUES("165","admin12","26-07-2017","17:30","login","/v2515/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("166","annlouis","26-07-2017","17:38","logout","","","");
INSERT INTO tracker VALUES("167","admin12","26-07-2017","17:41","logout","","","");
INSERT INTO tracker VALUES("168","admin12","26-07-2017","17:50","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("169","admin12","26-07-2017","17:50","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("170","admin12","26-07-2017","17:51","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("171","admin12","26-07-2017","17:51","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("172","admin12","26-07-2017","17:51","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("173","admin12","26-07-2017","17:51","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("174","admin12","26-07-2017","17:51","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("175","admin12","26-07-2017","17:51","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("176","admin12","26-07-2017","17:51","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("177","admin12","26-07-2017","17:51","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("178","admin12","26-07-2017","17:51","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("179","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("180","admin12","26-07-2017","17:52","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("181","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("182","admin12","26-07-2017","17:52","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("183","admin12","26-07-2017","17:52","login","/v2515/bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("184","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("185","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("186","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("187","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("188","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("189","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("190","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("191","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("192","admin12","26-07-2017","17:52","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("193","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("194","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("195","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("196","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("197","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("198","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("199","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("200","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("201","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("202","admin12","26-07-2017","17:53","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("203","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("204","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("205","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("206","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("207","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("208","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("209","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("210","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("211","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("212","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("213","admin12","26-07-2017","17:54","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("214","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("215","bayemi","26-07-2017","17:55","logout","","","");
INSERT INTO tracker VALUES("216","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("217","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("218","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("219","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("220","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("221","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("222","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("223","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("224","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("225","admin12","26-07-2017","17:55","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("226","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("227","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("228","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("229","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("230","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("231","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("232","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("233","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("234","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("235","admin12","26-07-2017","17:56","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("236","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("237","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("238","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("239","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("240","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("241","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("242","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("243","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("244","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("245","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("246","admin12","26-07-2017","17:57","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("247","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("248","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("249","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("250","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("251","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("252","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("253","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("254","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("255","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("256","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("257","admin12","26-07-2017","17:58","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("258","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("259","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("260","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("261","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("262","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("263","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("264","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("265","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("266","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("267","admin12","26-07-2017","17:59","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("268","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("269","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("270","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("271","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("272","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("273","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("274","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("275","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("276","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("277","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("278","admin12","26-07-2017","18:00","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("279","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("280","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("281","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("282","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("283","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("284","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("285","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("286","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("287","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("288","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("289","admin12","26-07-2017","18:01","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("290","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("291","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("292","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("293","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("294","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("295","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("296","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("297","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("298","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("299","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("300","admin12","26-07-2017","18:02","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("301","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("302","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("303","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("304","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("305","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("306","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("307","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("308","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("309","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("310","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("311","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("312","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("313","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("314","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("315","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("316","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("317","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("318","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("319","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("320","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("321","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("322","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("323","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("324","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("325","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("326","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("327","admin12","26-07-2017","18:03","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("328","admin12","26-07-2017","18:03","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("329","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("330","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("331","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("332","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("333","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("334","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("335","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("336","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("337","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("338","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("339","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("340","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("341","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("342","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("343","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("344","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("345","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("346","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("347","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("348","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("349","admin12","26-07-2017","18:04","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("350","admin12","26-07-2017","18:04","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("351","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("352","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("353","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("354","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("355","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("356","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("357","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("358","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("359","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("360","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("361","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("362","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("363","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("364","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("365","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("366","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("367","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("368","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("369","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("370","admin12","26-07-2017","18:05","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("371","admin12","26-07-2017","18:05","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("372","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("373","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("374","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("375","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("376","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("377","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("378","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("379","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("380","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("381","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("382","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("383","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("384","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("385","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("386","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("387","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("388","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("389","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("390","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("391","admin12","26-07-2017","18:06","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("392","admin12","26-07-2017","18:06","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("393","admin12","26-07-2017","18:07","login","/v2515/bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("394","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("395","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("396","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("397","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("398","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("399","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("400","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("401","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("402","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("403","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("404","admin12","26-07-2017","18:07","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("405","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("406","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("407","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("408","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("409","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("410","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("411","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("412","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("413","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("414","admin12","26-07-2017","18:08","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("415","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("416","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("417","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("418","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("419","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("420","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("421","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("422","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("423","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("424","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("425","admin12","26-07-2017","18:09","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("426","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("427","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("428","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("429","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("430","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("431","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("432","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("433","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("434","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("435","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("436","admin12","26-07-2017","18:10","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("437","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("438","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("439","mevybrown","26-07-2017","18:11","logout","","","");
INSERT INTO tracker VALUES("440","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("441","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("442","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("443","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("444","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("445","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("446","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("447","admin12","26-07-2017","18:11","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("448","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("449","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("450","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("451","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("452","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("453","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("454","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("455","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("456","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("457","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("458","admin12","26-07-2017","18:12","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("459","admin12","26-07-2017","18:13","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("460","admin12","26-07-2017","18:13","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("461","admin12","26-07-2017","18:13","login","/v2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("462","admin12","26-07-2017","18:13","logout","","","");
INSERT INTO tracker VALUES("463","halidou","26-07-2017","18:13","login","/v2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("464","admin12","26-07-2017","18:16","login","/V2515/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("465","admin12","26-07-2017","18:16","login","/V2515/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("466","admin12","26-07-2017","18:16","login","/V2515/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("467","admin12","26-07-2017","18:16","login","/V2515/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("468","admin12","26-07-2017","18:20","login","/V2515/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("469","admin12","26-07-2017","18:20","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("470","admin12","26-07-2017","18:21","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("471","admin12","26-07-2017","18:21","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("472","admin12","26-07-2017","18:22","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("473","admin12","26-07-2017","18:23","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("474","admin12","26-07-2017","18:23","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("475","admin12","26-07-2017","18:23","login","/V2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("476","admin12","26-07-2017","18:23","login","/V2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("477","admin12","26-07-2017","18:23","login","/V2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("478","admin12","26-07-2017","18:23","login","/V2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("479","admin12","26-07-2017","18:24","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("480","admin12","26-07-2017","18:24","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("481","admin12","26-07-2017","18:25","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("482","admin12","26-07-2017","18:25","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("483","admin12","26-07-2017","18:25","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("484","admin12","26-07-2017","18:25","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("485","admin12","26-07-2017","18:25","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("486","admin12","26-07-2017","18:25","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("487","admin12","26-07-2017","18:27","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("488","admin12","26-07-2017","18:28","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("489","halidou","26-07-2017","18:28","login","/v2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","10.1.0.21");
INSERT INTO tracker VALUES("490","admin12","26-07-2017","18:31","login","/V2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("491","admin12","26-07-2017","18:31","login","/V2515/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("492","admin12","26-07-2017","18:32","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("493","admin12","26-07-2017","18:33","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("494","admin12","26-07-2017","18:33","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("495","admin12","26-07-2017","18:38","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("496","admin12","26-07-2017","18:38","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("497","admin12","26-07-2017","18:38","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("498","admin12","26-07-2017","18:39","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("499","admin12","26-07-2017","18:40","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("500","admin12","26-07-2017","18:41","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("501","admin12","26-07-2017","18:42","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("502","admin12","26-07-2017","18:50","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("503","admin12","26-07-2017","18:50","login","/V2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("504","admin12","26-07-2017","18:50","login","/V2515/Bar/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("505","admin12","26-07-2017","18:51","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("506","admin12","26-07-2017","18:51","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("507","admin12","26-07-2017","18:51","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("508","admin12","26-07-2017","18:52","login","/V2515/chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("509","admin12","26-07-2017","19:04","logout","","","");
INSERT INTO tracker VALUES("510","admin12","26-07-2017","19:13","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("511","admin12","26-07-2017","19:13","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("512","admin12","26-07-2017","19:13","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("513","admin12","26-07-2017","19:13","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("514","admin12","26-07-2017","19:13","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("515","admin12","26-07-2017","19:14","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("516","admin12","26-07-2017","19:15","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("517","admin12","26-07-2017","19:15","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("518","admin12","26-07-2017","19:15","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("519","admin12","26-07-2017","19:15","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("520","admin12","26-07-2017","19:15","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("521","admin12","26-07-2017","19:19","logout","","","");
INSERT INTO tracker VALUES("522","itoe_gideon","26-07-2017","19:35","logout","","","");
INSERT INTO tracker VALUES("523","itoe_gideon","27-07-2017","7:10","login","/V2515/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("524","itoe_gideon","27-07-2017","7:13","logout","","","");
INSERT INTO tracker VALUES("525","admin12","01-08-2017","10:31","logout","","","");
INSERT INTO tracker VALUES("526","admin12","01-08-2017","10:33","logout","","","");
INSERT INTO tracker VALUES("527","admin12","01-08-2017","11:17","login","/V2515/Store/stockpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("528","admin12","01-08-2017","11:18","login","/V2515/Store/stockpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("529","admin12","01-08-2017","11:18","login","/V2515/Store/stockpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("530","admin12","01-08-2017","11:18","login","/V2515/Store/stockpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("531","admin12","01-08-2017","11:18","login","/V2515/Store/stockpage.php","Mozilla/5.0 (Windows NT 6.1; rv:54.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("532","admin12","01-08-2017","13:23","logout","","","");
INSERT INTO tracker VALUES("533","itoe_gideon","01-08-2017","14:37","logout","","","");
INSERT INTO tracker VALUES("534","admin12","03-08-2017","5:23","login","/musango/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("535","admin12","03-08-2017","5:32","logout","","","");
INSERT INTO tracker VALUES("536","NISHANG","03-08-2017","10:01","logout","","","");
INSERT INTO tracker VALUES("537","admin12","03-08-2017","10:02","logout","","","");
INSERT INTO tracker VALUES("538","NISHANG","03-08-2017","10:55","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("539","NISHANG","03-08-2017","10:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("540","NISHANG","03-08-2017","10:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("541","NISHANG","03-08-2017","10:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("542","NISHANG","03-08-2017","10:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("543","NISHANG","03-08-2017","11:00","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("544","NISHANG","03-08-2017","11:00","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("545","NISHANG","03-08-2017","11:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("546","NISHANG","03-08-2017","11:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("547","NISHANG","03-08-2017","11:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("548","NISHANG","03-08-2017","11:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("549","NISHANG","03-08-2017","11:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("550","NISHANG","03-08-2017","11:02","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("551","NISHANG","03-08-2017","11:02","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("552","NISHANG","03-08-2017","11:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("553","NISHANG","03-08-2017","11:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("554","NISHANG","03-08-2017","11:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("555","NISHANG","03-08-2017","11:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("556","NISHANG","03-08-2017","11:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("557","NISHANG","03-08-2017","11:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("558","NISHANG","03-08-2017","11:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("559","NISHANG","03-08-2017","11:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("560","NISHANG","03-08-2017","11:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("561","NISHANG","03-08-2017","11:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("562","NISHANG","03-08-2017","11:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("563","NISHANG","03-08-2017","11:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("564","NISHANG","03-08-2017","11:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("565","NISHANG","03-08-2017","11:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("566","NISHANG","03-08-2017","11:08","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("567","NISHANG","03-08-2017","11:08","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("568","NISHANG","03-08-2017","11:08","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("569","NISHANG","03-08-2017","11:08","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("570","NISHANG","03-08-2017","11:09","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("571","NISHANG","03-08-2017","11:09","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("572","NISHANG","03-08-2017","15:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("573","NISHANG","03-08-2017","15:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("574","NISHANG","03-08-2017","15:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("575","NISHANG","03-08-2017","15:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("576","NISHANG","03-08-2017","15:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("577","NISHANG","03-08-2017","15:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("578","NISHANG","03-08-2017","15:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("579","NISHANG","03-08-2017","15:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("580","NISHANG","03-08-2017","15:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("581","NISHANG","03-08-2017","15:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("582","NISHANG","03-08-2017","15:43","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("583","NISHANG","03-08-2017","15:43","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("584","NISHANG","03-08-2017","15:43","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("585","NISHANG","03-08-2017","15:43","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("586","NISHANG","03-08-2017","15:44","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("587","NISHANG","03-08-2017","15:44","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("588","NISHANG","03-08-2017","15:44","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("589","NISHANG","03-08-2017","15:45","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("590","NISHANG","03-08-2017","15:45","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("591","NISHANG","03-08-2017","15:45","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("592","NISHANG","03-08-2017","15:45","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("593","NISHANG","03-08-2017","15:46","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("594","NISHANG","03-08-2017","15:46","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("595","NISHANG","03-08-2017","15:46","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("596","NISHANG","03-08-2017","15:46","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("597","NISHANG","03-08-2017","15:47","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("598","NISHANG","03-08-2017","15:47","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("599","NISHANG","03-08-2017","15:47","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("600","NISHANG","03-08-2017","15:48","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("601","NISHANG","03-08-2017","15:48","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("602","NISHANG","03-08-2017","15:48","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("603","NISHANG","03-08-2017","15:48","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("604","NISHANG","03-08-2017","15:49","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("605","NISHANG","03-08-2017","15:49","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("606","NISHANG","03-08-2017","15:49","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("607","NISHANG","03-08-2017","15:49","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("608","NISHANG","03-08-2017","15:50","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("609","NISHANG","03-08-2017","15:50","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("610","NISHANG","03-08-2017","15:50","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("611","NISHANG","03-08-2017","15:51","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("612","NISHANG","03-08-2017","15:51","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("613","NISHANG","03-08-2017","15:51","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("614","NISHANG","03-08-2017","15:51","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("615","NISHANG","03-08-2017","15:52","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("616","NISHANG","03-08-2017","15:52","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("617","NISHANG","03-08-2017","15:52","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("618","NISHANG","03-08-2017","15:53","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("619","NISHANG","03-08-2017","15:53","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("620","NISHANG","03-08-2017","15:53","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("621","NISHANG","03-08-2017","15:53","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("622","NISHANG","03-08-2017","15:54","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("623","NISHANG","03-08-2017","15:54","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("624","NISHANG","03-08-2017","15:54","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("625","NISHANG","03-08-2017","15:54","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("626","NISHANG","03-08-2017","15:55","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("627","NISHANG","03-08-2017","15:55","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("628","NISHANG","03-08-2017","15:55","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("629","NISHANG","03-08-2017","15:56","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("630","NISHANG","03-08-2017","15:56","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("631","NISHANG","03-08-2017","15:56","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("632","NISHANG","03-08-2017","15:56","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("633","NISHANG","03-08-2017","15:57","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("634","NISHANG","03-08-2017","15:57","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("635","NISHANG","03-08-2017","15:57","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("636","NISHANG","03-08-2017","15:57","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("637","NISHANG","03-08-2017","15:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("638","NISHANG","03-08-2017","15:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("639","NISHANG","03-08-2017","15:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("640","NISHANG","03-08-2017","15:59","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("641","NISHANG","03-08-2017","15:59","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("642","NISHANG","03-08-2017","15:59","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("643","NISHANG","03-08-2017","15:59","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("644","NISHANG","03-08-2017","16:00","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("645","NISHANG","03-08-2017","16:00","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("646","NISHANG","03-08-2017","16:00","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("647","NISHANG","03-08-2017","16:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("648","NISHANG","03-08-2017","16:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("649","NISHANG","03-08-2017","16:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("650","NISHANG","03-08-2017","16:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("651","NISHANG","03-08-2017","16:02","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("652","NISHANG","03-08-2017","16:02","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("653","NISHANG","03-08-2017","16:02","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("654","NISHANG","03-08-2017","16:02","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("655","NISHANG","03-08-2017","16:03","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("656","NISHANG","03-08-2017","16:03","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("657","NISHANG","03-08-2017","16:03","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("658","NISHANG","03-08-2017","16:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("659","NISHANG","03-08-2017","16:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("660","NISHANG","03-08-2017","16:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("661","NISHANG","03-08-2017","16:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("662","NISHANG","03-08-2017","16:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("663","NISHANG","03-08-2017","16:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("664","NISHANG","03-08-2017","16:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("665","NISHANG","03-08-2017","16:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("666","NISHANG","03-08-2017","16:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("667","NISHANG","03-08-2017","16:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("668","NISHANG","03-08-2017","16:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("669","NISHANG","03-08-2017","16:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("670","NISHANG","03-08-2017","16:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("671","NISHANG","03-08-2017","16:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("672","NISHANG","03-08-2017","16:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("673","NISHANG","03-08-2017","16:08","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("674","NISHANG","03-08-2017","16:08","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("675","NISHANG","03-08-2017","16:08","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("676","NISHANG","03-08-2017","16:09","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("677","NISHANG","03-08-2017","16:09","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("678","NISHANG","03-08-2017","16:09","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("679","NISHANG","03-08-2017","16:09","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("680","NISHANG","03-08-2017","16:10","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("681","NISHANG","03-08-2017","16:10","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("682","NISHANG","03-08-2017","16:10","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("683","NISHANG","03-08-2017","16:11","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("684","NISHANG","03-08-2017","16:11","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("685","NISHANG","03-08-2017","16:11","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("686","NISHANG","03-08-2017","16:11","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("687","NISHANG","03-08-2017","16:12","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("688","NISHANG","03-08-2017","16:12","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("689","NISHANG","03-08-2017","16:12","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("690","NISHANG","03-08-2017","16:12","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("691","NISHANG","03-08-2017","16:13","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("692","NISHANG","03-08-2017","16:13","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("693","NISHANG","03-08-2017","16:13","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("694","NISHANG","03-08-2017","16:14","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("695","NISHANG","03-08-2017","16:14","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("696","NISHANG","03-08-2017","16:14","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("697","NISHANG","03-08-2017","16:14","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("698","NISHANG","03-08-2017","16:15","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("699","NISHANG","03-08-2017","16:15","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("700","NISHANG","03-08-2017","16:15","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("701","NISHANG","03-08-2017","16:16","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("702","NISHANG","03-08-2017","16:16","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("703","NISHANG","03-08-2017","16:16","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("704","NISHANG","03-08-2017","16:16","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("705","NISHANG","03-08-2017","16:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("706","NISHANG","03-08-2017","16:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("707","NISHANG","03-08-2017","16:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("708","NISHANG","03-08-2017","16:18","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("709","NISHANG","03-08-2017","16:18","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("710","NISHANG","03-08-2017","16:18","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("711","NISHANG","03-08-2017","16:18","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("712","NISHANG","03-08-2017","16:19","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("713","NISHANG","03-08-2017","16:19","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("714","NISHANG","03-08-2017","16:19","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("715","NISHANG","03-08-2017","16:20","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("716","NISHANG","03-08-2017","16:20","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("717","NISHANG","03-08-2017","16:20","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("718","NISHANG","03-08-2017","16:20","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("719","NISHANG","03-08-2017","16:21","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("720","NISHANG","03-08-2017","16:21","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("721","NISHANG","03-08-2017","16:21","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("722","NISHANG","03-08-2017","16:21","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("723","NISHANG","03-08-2017","16:22","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("724","NISHANG","03-08-2017","16:22","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("725","NISHANG","03-08-2017","16:22","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("726","NISHANG","03-08-2017","16:23","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("727","NISHANG","03-08-2017","16:23","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("728","NISHANG","03-08-2017","16:23","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("729","NISHANG","03-08-2017","16:23","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("730","NISHANG","03-08-2017","16:24","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("731","NISHANG","03-08-2017","16:24","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("732","NISHANG","03-08-2017","16:24","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("733","NISHANG","03-08-2017","16:25","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("734","NISHANG","03-08-2017","16:25","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("735","NISHANG","03-08-2017","16:25","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("736","NISHANG","03-08-2017","16:25","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("737","NISHANG","03-08-2017","16:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("738","NISHANG","03-08-2017","16:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("739","NISHANG","03-08-2017","16:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("740","NISHANG","03-08-2017","16:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("741","NISHANG","03-08-2017","16:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("742","NISHANG","03-08-2017","16:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("743","NISHANG","03-08-2017","16:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("744","NISHANG","03-08-2017","16:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("745","NISHANG","03-08-2017","16:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("746","NISHANG","03-08-2017","16:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("747","NISHANG","03-08-2017","16:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("748","NISHANG","03-08-2017","16:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("749","NISHANG","03-08-2017","16:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("750","NISHANG","03-08-2017","16:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("751","NISHANG","03-08-2017","16:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("752","NISHANG","03-08-2017","16:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("753","NISHANG","03-08-2017","16:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("754","NISHANG","03-08-2017","16:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("755","NISHANG","03-08-2017","16:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("756","NISHANG","03-08-2017","16:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("757","NISHANG","03-08-2017","16:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("758","NISHANG","03-08-2017","16:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("759","NISHANG","03-08-2017","16:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("760","NISHANG","03-08-2017","16:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("761","NISHANG","03-08-2017","16:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("762","NISHANG","03-08-2017","16:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("763","NISHANG","03-08-2017","16:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("764","NISHANG","03-08-2017","16:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("765","NISHANG","03-08-2017","16:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("766","NISHANG","03-08-2017","16:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("767","NISHANG","03-08-2017","16:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("768","NISHANG","03-08-2017","16:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("769","NISHANG","03-08-2017","16:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("770","NISHANG","03-08-2017","16:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("771","NISHANG","03-08-2017","16:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("772","NISHANG","03-08-2017","16:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("773","NISHANG","03-08-2017","16:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("774","NISHANG","03-08-2017","16:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("775","NISHANG","03-08-2017","16:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("776","NISHANG","03-08-2017","16:37","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("777","NISHANG","03-08-2017","16:37","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("778","NISHANG","03-08-2017","16:37","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("779","NISHANG","03-08-2017","16:37","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("780","NISHANG","03-08-2017","16:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("781","NISHANG","03-08-2017","16:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("782","NISHANG","03-08-2017","16:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("783","NISHANG","03-08-2017","16:39","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("784","NISHANG","03-08-2017","16:39","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("785","NISHANG","03-08-2017","16:39","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("786","NISHANG","03-08-2017","16:39","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("787","NISHANG","03-08-2017","16:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("788","NISHANG","03-08-2017","16:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("789","NISHANG","03-08-2017","16:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("790","NISHANG","03-08-2017","16:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("791","NISHANG","03-08-2017","16:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("792","NISHANG","03-08-2017","16:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("793","NISHANG","03-08-2017","16:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("794","NISHANG","03-08-2017","16:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("795","NISHANG","03-08-2017","16:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("796","NISHANG","03-08-2017","16:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("797","NISHANG","03-08-2017","16:43","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("798","NISHANG","03-08-2017","16:43","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("799","NISHANG","03-08-2017","16:43","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("800","NISHANG","03-08-2017","16:43","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("801","NISHANG","03-08-2017","16:44","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("802","NISHANG","03-08-2017","16:44","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("803","NISHANG","03-08-2017","16:44","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("804","NISHANG","03-08-2017","16:44","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("805","NISHANG","03-08-2017","16:45","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("806","NISHANG","03-08-2017","16:45","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("807","NISHANG","03-08-2017","16:45","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("808","NISHANG","03-08-2017","16:46","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("809","NISHANG","03-08-2017","16:46","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("810","NISHANG","03-08-2017","16:46","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("811","NISHANG","03-08-2017","16:46","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("812","NISHANG","03-08-2017","16:47","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("813","NISHANG","03-08-2017","16:47","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("814","NISHANG","03-08-2017","16:47","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("815","NISHANG","03-08-2017","16:48","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("816","NISHANG","03-08-2017","16:48","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("817","NISHANG","03-08-2017","16:48","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("818","NISHANG","03-08-2017","16:48","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("819","NISHANG","03-08-2017","17:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("820","NISHANG","03-08-2017","17:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("821","NISHANG","03-08-2017","17:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("822","NISHANG","03-08-2017","17:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("823","NISHANG","03-08-2017","17:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("824","NISHANG","03-08-2017","17:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("825","NISHANG","03-08-2017","17:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("826","NISHANG","03-08-2017","17:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("827","NISHANG","03-08-2017","17:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("828","NISHANG","03-08-2017","17:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("829","NISHANG","03-08-2017","17:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("830","NISHANG","03-08-2017","17:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("831","NISHANG","03-08-2017","17:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("832","NISHANG","03-08-2017","17:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("833","NISHANG","03-08-2017","17:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("834","NISHANG","03-08-2017","17:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("835","NISHANG","03-08-2017","17:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("836","NISHANG","03-08-2017","17:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("837","NISHANG","03-08-2017","17:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("838","NISHANG","03-08-2017","17:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("839","NISHANG","03-08-2017","17:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("840","NISHANG","03-08-2017","17:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("841","NISHANG","03-08-2017","17:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("842","NISHANG","03-08-2017","17:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("843","NISHANG","03-08-2017","17:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("844","NISHANG","03-08-2017","17:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("845","NISHANG","03-08-2017","17:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("846","NISHANG","03-08-2017","17:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("847","NISHANG","03-08-2017","17:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("848","NISHANG","03-08-2017","17:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("849","NISHANG","03-08-2017","17:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("850","NISHANG","03-08-2017","17:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("851","NISHANG","03-08-2017","17:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("852","NISHANG","03-08-2017","17:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("853","NISHANG","03-08-2017","17:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("854","NISHANG","03-08-2017","17:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("855","NISHANG","03-08-2017","17:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("856","NISHANG","03-08-2017","17:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("857","NISHANG","03-08-2017","17:37","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("858","NISHANG","03-08-2017","17:37","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("859","NISHANG","03-08-2017","17:37","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("860","NISHANG","03-08-2017","17:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("861","NISHANG","03-08-2017","17:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("862","NISHANG","03-08-2017","17:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("863","NISHANG","03-08-2017","17:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("864","NISHANG","03-08-2017","17:39","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("865","NISHANG","03-08-2017","17:39","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("866","NISHANG","03-08-2017","17:39","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("867","NISHANG","03-08-2017","17:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("868","NISHANG","03-08-2017","17:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("869","NISHANG","03-08-2017","17:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("870","NISHANG","03-08-2017","17:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("871","NISHANG","03-08-2017","17:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("872","NISHANG","03-08-2017","17:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("873","NISHANG","03-08-2017","17:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("874","NISHANG","03-08-2017","18:18","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("875","NISHANG","03-08-2017","18:18","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("876","NISHANG","03-08-2017","18:19","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("877","NISHANG","03-08-2017","18:20","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("878","NISHANG","03-08-2017","18:20","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("879","NISHANG","03-08-2017","18:21","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("880","NISHANG","03-08-2017","18:21","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("881","NISHANG","03-08-2017","18:21","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("882","NISHANG","03-08-2017","18:22","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("883","NISHANG","03-08-2017","18:22","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("884","NISHANG","03-08-2017","18:23","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("885","NISHANG","03-08-2017","18:23","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("886","NISHANG","03-08-2017","18:24","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("887","NISHANG","03-08-2017","18:24","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("888","NISHANG","03-08-2017","18:24","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("889","NISHANG","03-08-2017","18:25","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("890","NISHANG","03-08-2017","18:25","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("891","NISHANG","03-08-2017","18:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("892","NISHANG","03-08-2017","18:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("893","NISHANG","03-08-2017","18:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("894","NISHANG","03-08-2017","18:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("895","NISHANG","03-08-2017","18:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("896","NISHANG","03-08-2017","18:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("897","NISHANG","03-08-2017","18:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("898","NISHANG","03-08-2017","18:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("899","NISHANG","03-08-2017","18:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("900","NISHANG","03-08-2017","18:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("901","NISHANG","03-08-2017","18:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("902","NISHANG","03-08-2017","18:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("903","NISHANG","03-08-2017","18:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("904","NISHANG","03-08-2017","18:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("905","NISHANG","03-08-2017","18:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("906","NISHANG","03-08-2017","18:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("907","NISHANG","03-08-2017","18:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("908","NISHANG","03-08-2017","18:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("909","NISHANG","03-08-2017","18:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("910","NISHANG","03-08-2017","18:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("911","NISHANG","03-08-2017","18:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("912","NISHANG","03-08-2017","18:32","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("913","NISHANG","03-08-2017","18:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("914","NISHANG","03-08-2017","18:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("915","NISHANG","03-08-2017","18:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("916","NISHANG","03-08-2017","18:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("917","NISHANG","03-08-2017","18:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("918","NISHANG","03-08-2017","18:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("919","NISHANG","03-08-2017","18:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("920","NISHANG","03-08-2017","18:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("921","NISHANG","03-08-2017","18:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("922","NISHANG","03-08-2017","18:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("923","NISHANG","03-08-2017","18:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("924","NISHANG","03-08-2017","18:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("925","NISHANG","03-08-2017","18:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("926","NISHANG","03-08-2017","18:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("927","NISHANG","04-08-2017","6:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("928","NISHANG","04-08-2017","6:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("929","NISHANG","04-08-2017","6:01","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("930","NISHANG","04-08-2017","6:02","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("931","NISHANG","04-08-2017","6:02","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("932","NISHANG","04-08-2017","6:02","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("933","NISHANG","04-08-2017","6:03","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("934","NISHANG","04-08-2017","6:03","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("935","NISHANG","04-08-2017","6:03","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("936","NISHANG","04-08-2017","6:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("937","NISHANG","04-08-2017","6:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("938","NISHANG","04-08-2017","6:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("939","NISHANG","04-08-2017","6:04","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("940","NISHANG","04-08-2017","6:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("941","NISHANG","04-08-2017","6:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("942","NISHANG","04-08-2017","6:05","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("943","NISHANG","04-08-2017","6:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("944","NISHANG","04-08-2017","6:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("945","NISHANG","04-08-2017","6:08","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("946","NISHANG","04-08-2017","6:08","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("947","NISHANG","04-08-2017","6:09","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("948","NISHANG","04-08-2017","6:09","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("949","NISHANG","04-08-2017","6:10","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("950","NISHANG","04-08-2017","6:10","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("951","NISHANG","04-08-2017","6:11","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("952","NISHANG","04-08-2017","6:12","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("953","NISHANG","04-08-2017","6:12","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("954","NISHANG","04-08-2017","6:13","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("955","NISHANG","04-08-2017","6:13","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("956","NISHANG","04-08-2017","6:14","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("957","NISHANG","04-08-2017","6:14","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("958","NISHANG","04-08-2017","6:15","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("959","NISHANG","04-08-2017","6:15","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("960","NISHANG","04-08-2017","6:16","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("961","NISHANG","04-08-2017","6:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("962","NISHANG","04-08-2017","6:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("963","NISHANG","04-08-2017","6:18","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("964","NISHANG","04-08-2017","6:18","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("965","NISHANG","04-08-2017","6:19","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("966","NISHANG","04-08-2017","6:20","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("967","NISHANG","04-08-2017","6:20","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("968","NISHANG","04-08-2017","6:21","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("969","NISHANG","04-08-2017","6:22","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("970","NISHANG","04-08-2017","6:25","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("971","NISHANG","04-08-2017","6:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("972","NISHANG","04-08-2017","6:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("973","NISHANG","04-08-2017","6:26","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("974","NISHANG","04-08-2017","6:27","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("975","NISHANG","04-08-2017","6:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("976","NISHANG","04-08-2017","6:28","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("977","NISHANG","04-08-2017","6:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("978","NISHANG","04-08-2017","6:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("979","NISHANG","04-08-2017","6:29","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("980","NISHANG","04-08-2017","6:30","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("981","NISHANG","04-08-2017","6:31","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("982","NISHANG","04-08-2017","6:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("983","NISHANG","04-08-2017","6:33","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("984","NISHANG","04-08-2017","6:34","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("985","NISHANG","04-08-2017","6:35","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("986","NISHANG","04-08-2017","6:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("987","NISHANG","04-08-2017","6:36","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("988","NISHANG","04-08-2017","6:37","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("989","NISHANG","04-08-2017","6:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("990","NISHANG","04-08-2017","6:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("991","NISHANG","04-08-2017","6:38","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("992","NISHANG","04-08-2017","6:39","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("993","NISHANG","04-08-2017","6:40","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("994","NISHANG","04-08-2017","6:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("995","NISHANG","04-08-2017","6:41","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("996","NISHANG","04-08-2017","6:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("997","NISHANG","04-08-2017","6:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("998","NISHANG","04-08-2017","6:42","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("999","NISHANG","04-08-2017","6:43","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1000","admin12","07-08-2017","17:41","login","/musango/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1001","admin12","07-08-2017","17:41","login","/musango/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1002","admin12","28-07-2017","18:03","logout","","","");
INSERT INTO tracker VALUES("1003","NISHANG","28-07-2017","18:06","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1004","NISHANG","28-07-2017","18:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1005","NISHANG","28-07-2017","18:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1006","NISHANG","28-07-2017","18:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1007","NISHANG","28-07-2017","18:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1008","NISHANG","28-07-2017","18:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1009","NISHANG","28-07-2017","18:07","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1010","NISHANG","28-07-2017","18:10","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1011","NISHANG","28-07-2017","18:10","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1012","NISHANG","03-08-2017","18:57","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1013","NISHANG","03-08-2017","18:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1014","NISHANG","03-08-2017","18:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1015","NISHANG","03-08-2017","18:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1016","NISHANG","03-08-2017","18:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1017","NISHANG","03-08-2017","18:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1018","NISHANG","03-08-2017","18:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1019","NISHANG","03-08-2017","18:58","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1020","admin12","03-08-2017","19:01","login","/musango/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1021","admin12","03-08-2017","19:01","login","/musango/Bar/restaupage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1022","admin12","05-08-2017","19:04","login","/musango/Restau/restaupage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1023","admin12","05-08-2017","19:04","login","/musango/Restau/restaupage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1024","admin12","05-08-2017","19:04","login","/musango/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1025","admin12","05-08-2017","19:04","login","/musango/restau/restaupage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1026","admin12","05-08-2017","19:06","login","/musango/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1027","admin12","05-08-2017","19:07","login","/musango/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1028","admin12","05-08-2017","19:08","login","/musango/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1029","admin12","08-08-2017","19:15","login","/musango/Rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1030","admin12","08-08-2017","19:15","login","/musango/Rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1031","admin12","08-08-2017","19:15","login","/musango/Rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1032","admin12","08-08-2017","19:16","login","/musango/Rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1033","admin12","08-08-2017","19:16","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1034","admin12","08-08-2017","19:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1035","admin12","08-08-2017","19:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1036","admin12","08-08-2017","19:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1037","admin12","08-08-2017","19:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1038","admin12","08-08-2017","19:17","login","/musango/rental/rentalpage.php","Mozilla/5.0 (Windows NT 6.2; rv:18.0) Gecko/20100101 Firefox","::1");
INSERT INTO tracker VALUES("1039","admin12","03-09-2017","0:27","login","/SIMPLE/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1040","admin12","03-09-2017","0:27","login","/SIMPLE/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1041","admin12","03-09-2017","0:27","login","/SIMPLE/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1042","admin12","03-09-2017","0:27","logout","","","");
INSERT INTO tracker VALUES("1043","admin12","16-09-2017","6:37","login","/musango/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1044","admin12","16-09-2017","6:39","login","/musango/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1045","admin12","16-09-2017","6:42","login","/musango/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1046","admin12","16-09-2017","6:43","login","/musango/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1047","admin12","16-09-2017","6:54","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1048","admin12","16-09-2017","6:54","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1049","admin12","16-09-2017","6:54","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1050","admin12","16-09-2017","6:54","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1051","admin12","16-09-2017","6:54","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1052","admin12","16-09-2017","6:54","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1053","admin12","16-09-2017","6:58","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1054","admin12","16-09-2017","6:58","login","/musango/Bar/restaupage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1055","admin12","16-09-2017","6:58","login","/musango/Bar/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1056","admin12","16-09-2017","7:02","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1057","admin12","17-09-2017","6:28","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1058","admin12","17-09-2017","6:28","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1059","admin12","17-09-2017","6:29","login","/bar/Chiefs/dashboard.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1060","admin12","23-09-2017","12:43","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1061","admin12","23-09-2017","12:44","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1062","admin12","23-09-2017","12:44","login","/simple/Bar/restaupage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1063","admin12","23-09-2017","12:44","login","/simple/Bar/restaupage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1064","admin12","23-09-2017","12:44","login","/simple/bar/restaupage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1065","admin12","23-09-2017","12:44","login","/simple/bar/restaupage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1066","admin12","23-09-2017","12:44","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1067","admin12","23-09-2017","12:44","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1068","admin12","23-09-2017","12:44","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1069","admin12","23-09-2017","12:44","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1070","admin12","23-09-2017","12:44","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1071","admin12","23-09-2017","12:45","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1072","admin12","23-09-2017","12:45","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1073","admin12","23-09-2017","12:45","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1074","admin12","23-09-2017","12:45","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1075","admin12","23-09-2017","12:45","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1076","admin12","23-09-2017","12:46","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1077","admin12","23-09-2017","12:46","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1078","admin12","23-09-2017","12:46","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1079","admin12","23-09-2017","12:46","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1080","admin12","23-09-2017","12:46","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1081","admin12","23-09-2017","12:46","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1082","admin12","23-09-2017","12:47","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1083","admin12","23-09-2017","12:47","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1084","admin12","23-09-2017","12:47","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1085","admin12","23-09-2017","12:47","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1086","admin12","23-09-2017","12:47","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1087","admin12","23-09-2017","12:47","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1088","admin12","23-09-2017","12:48","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1089","admin12","23-09-2017","12:48","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1090","admin12","23-09-2017","12:48","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1091","admin12","23-09-2017","12:48","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1092","admin12","23-09-2017","12:48","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1093","admin12","23-09-2017","12:49","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1094","admin12","23-09-2017","12:49","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1095","admin12","23-09-2017","12:49","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1096","admin12","23-09-2017","12:49","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1097","admin12","23-09-2017","12:49","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1098","admin12","23-09-2017","12:49","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1099","admin12","23-09-2017","12:50","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1100","admin12","23-09-2017","12:50","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1101","admin12","23-09-2017","12:50","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1102","admin12","23-09-2017","12:50","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1103","admin12","23-09-2017","12:50","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1104","admin12","23-09-2017","12:50","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1105","admin12","23-09-2017","12:51","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1106","admin12","23-09-2017","12:51","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1107","admin12","23-09-2017","12:51","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1108","admin12","23-09-2017","12:51","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1109","admin12","23-09-2017","12:51","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1110","admin12","23-09-2017","12:51","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1111","admin12","23-09-2017","12:52","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1112","admin12","23-09-2017","12:52","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1113","admin12","23-09-2017","12:52","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1114","admin12","23-09-2017","12:52","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1115","admin12","23-09-2017","12:52","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1116","admin12","23-09-2017","12:53","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1117","admin12","23-09-2017","12:53","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1118","admin12","23-09-2017","12:53","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1119","admin12","23-09-2017","12:53","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1120","admin12","23-09-2017","12:53","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1121","admin12","23-09-2017","12:53","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1122","admin12","23-09-2017","12:54","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1123","admin12","23-09-2017","12:54","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1124","admin12","23-09-2017","12:54","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1125","admin12","23-09-2017","12:54","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1126","admin12","23-09-2017","12:54","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1127","admin12","23-09-2017","12:54","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1128","admin12","23-09-2017","12:55","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1129","admin12","23-09-2017","12:55","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1130","admin12","23-09-2017","12:55","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1131","admin12","23-09-2017","12:55","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1132","admin12","23-09-2017","12:55","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1133","admin12","23-09-2017","12:56","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1134","admin12","23-09-2017","12:56","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1135","admin12","24-09-2017","2:12","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");
INSERT INTO tracker VALUES("1136","admin12","24-09-2017","2:12","login","/simple/admin/adminpage.php","Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, lik","::1");





CREATE TABLE `truck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentby` varchar(50) NOT NULL,
  `item` varchar(50) NOT NULL,
  `price` varchar(30) NOT NULL,
  `qty` int(11) NOT NULL,
  `sentto` varchar(40) NOT NULL,
  `date` varchar(18) NOT NULL,
  `status` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `sprice` varchar(11) NOT NULL,
  `olds` varchar(11) NOT NULL,
  `neww` varchar(11) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO truck VALUES("1","admin12","Top A","1000.00","24","Bar Le Dja","26-07-2017","2","","","","","0");
INSERT INTO truck VALUES("2","admin12","TOP C","1000.00","22","Bar Le Dja","26-07-2017","2","","","","","0");
INSERT INTO truck VALUES("3","admin12","GUINESS SM","1500.00","24","Bar Le Dja","26-07-2017","2","","","","","0");
INSERT INTO truck VALUES("4","admin12","AMSTEL","1500.00","12","Bar Le Dja","26-07-2017","2","","","","","0");





CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `md5_id` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `full_name` tinytext COLLATE latin1_general_ci NOT NULL,
  `user_name` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `user_email` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `user_level` tinyint(4) NOT NULL DEFAULT '1',
  `pwd` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `address` text COLLATE latin1_general_ci NOT NULL,
  `country` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tel` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `fax` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `website` text COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `users_ip` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `approved` int(1) NOT NULL DEFAULT '0',
  `activation_code` int(10) NOT NULL DEFAULT '0',
  `banned` int(1) NOT NULL DEFAULT '0',
  `ckey` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `ctime` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email` (`user_email`),
  FULLTEXT KEY `idx_search` (`full_name`,`address`,`user_email`,`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO users VALUES("1","c4ca4238a0b923820dcc509a6f75849b","SUPER ADMIN","admin12","admin12@mysoftware.com","1","b59cb76aaf2a872cbfde8a9786afef50c614afc256677bb48","","","","2","","2016-08-27","::1","2","8759","20","","");
INSERT INTO users VALUES("34","e369853df766fa44e1ed0ff613f563bd","Nishang Reception","NISHANG","NISHANG@mysoftware.com","1","3d2baa937f3461b0edab379dcd90f527fec63d9e4b6e7e406","12345","","","","","2017-05-22","::1","2","9591","0","","");
INSERT INTO users VALUES("35","1c383cd30b7c298ab50293adfecb7b18","etonde mulema ann-j","etonde","etonde@mysoftware.com","1","4d2e278c40dedad905b232942315609d69a36f0cb0d559c24","willalove","","","","","2017-05-26","::1","2","9711","0","","");
INSERT INTO users VALUES("36","19ca14e7ea6328a42e0eb13d585e4c22","gideon itoe","itoe_gideon","itoe_gideon@mysoftware.com","1","444b55c288cd00c07e0172aaeb5c17abdaebe8e3648a6b135","gideon76382160","","","","","2017-05-30","::1","2","7822","0","","");
INSERT INTO users VALUES("45","6c8349cc7260ae62e3b1396831a8398f","ann louis awah achu","annlouis","annlouis@mysoftware.com","1","df57584164c9e076bee15f61aaefc40be5c8661998548c9c3","louis","","","","","2017-07-26","fe80::45d2:6d1b:cd64:1883","2","6419","2","","");
INSERT INTO users VALUES("38","a5771bce93e200c36f7cd9dfd0e5deaa","Mbah Isaac","mybar","mybar@mysoftware.com","1","9450122f1e1ec114c09b551adb6d1850380dd7b35cb26617d","12345","","","","","2017-06-26","::1","2","9708","15","","");
INSERT INTO users VALUES("39","d67d8ab4f4c10bf22aa353e27879133c","Mbah Isaac","myrestau","myrestau@mysoftware.com","1","95448a858ed23cca567424e222b9ac107a208ca55d33c086a","12345","","","","","2017-06-26","::1","2","4739","10","","");
INSERT INTO users VALUES("40","d645920e395fedad7bbbed0eca3fe2e0","Mbah Isaac","myfixed","myfixed@mysoftware.com","1","f838b6257bfa541bdb9995133fa8aa2d1043a7a8553959c85","12345","","","","","2017-06-26","::1","2","3828","16","","");
INSERT INTO users VALUES("41","3416a75f4cea9109507cacd8e2f2aefc","Mbah Isaac","myrental","myrental@mysoftware.com","1","32a77a592996fb87b86c23702786e75169463e8291b1fecee","12345","","","","","2017-06-26","::1","2","6838","17","","");
INSERT INTO users VALUES("42","a1d0c6e83f027327d8461063f4ac58a6","Mbah Isaac","myterrace","myterrace@mysoftware.com","1","1d96bcaef8132f4c892ec01e8b0e5ac43b192e624d62ab73d","12345","","","","","2017-06-26","::1","2","1319","3","","");
INSERT INTO users VALUES("44","f7177163c833dff4b38fc8d2872f1ec6","Enanga Veronique","mevybrown","mevybrown@mysoftware.com","1","4faeb2adc68bc81cb9ce22fa8d50b171c87b0a77c39ee952f","Donmev","","","","","2017-07-24","::1","2","2322","0","","");
INSERT INTO users VALUES("46","d9d4f495e875a2e075a1a4a6e1b9770f","ngo bayemi pauline","bayemi","bayemi@mysoftware.com","1","7d3ca8b34a97d6a0f90cbeddb5596d89b37335c9f9db37dc7","centre","","","","","2017-07-26","fe80::45d2:6d1b:cd64:1883","2","9890","2","","");
INSERT INTO users VALUES("47","67c6a1e7ce56d3d6fa748ab6d9af3fd7","sapam halidou","halidou","halidou@mysoftware.com","1","d373005525059b36d01729505659b6e5f09cad34bcec71aa0","691081919","","","","","2017-07-26","::1","2","6890","150","","");
INSERT INTO users VALUES("48","642e92efb79421734881b53e1e1b18b6","Nishang Systems","waitress","waitress@mysoftware.com","1","95b5a37cd98065d7859adec609acff5f7e089e400ba030b9f","12345","","","","","2017-09-02","::1","2","8181","9","","");





CREATE TABLE `visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `tel` varchar(19) NOT NULL,
  `day` int(11) NOT NULL,
  `today` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `why` text NOT NULL,
  `nom` varchar(40) NOT NULL,
  `purpose` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO visitors VALUES("1","bungo louisa","678514459","30","11:08:52","30-03-2016","3","2016","brought food to joe agendia nkeng in room 1203","114477267","visit a friend");



