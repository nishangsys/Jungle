

CREATE TABLE `active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(90) NOT NULL,
  `yid` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO active VALUES("1","","49","");
INSERT INTO active VALUES("2","","49","24-10-2017");





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
  `yid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

INSERT INTO basket VALUES("1","Jerof Rice","restau","2000.00","1","2","2000","1201","2","10","2","Restau","1","","","22-11-2017","22","11","2017","0","15:25","","Ni John Fru","","","","56");
INSERT INTO basket VALUES("2","1/2 Chicken","restau","8000.00","1","2","8000","1201","2","10","2","Restau","1","","","22-11-2017","22","11","2017","0","15:25","","Ni John Fru","","","","56");
INSERT INTO basket VALUES("3","1/4 Chicken","restau","6000.00","1","2","6000","1201","2","10","2","Restau","1","","","22-11-2017","22","11","2017","0","15:25","","Ni John Fru","","","","56");
INSERT INTO basket VALUES("4","Black Label","hot","50000.00","1","2","50000","1201","3","15","2","Bar","23","21","33000","22-11-2017","22","11","2017","17000","15:26","","Ni John Fru","","","","56");
INSERT INTO basket VALUES("8","EXPORT","hot","1500.00","4","2","6000","1201","4","6","2","","1","-4","940","22-11-2017","22","11","2017","560","15:26","","Ni John Fru","","","","56");
INSERT INTO basket VALUES("9","EXPORT","hot","1500.00","1","2","1500","1100","3","15","2","Bar","25","23","940","25-11-2017","25","11","2017","560","21:02","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("10","AMSTEL","hot","1500.00","1","2","1500","1100","3","15","2","Bar","35","33","945","25-11-2017","25","11","2017","555","21:02","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("11","GUINESS SM","hot","1500.00","1","2","1500","1100","3","15","2","Bar","19","17","910","25-11-2017","25","11","2017","590","21:02","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("12","Manyang","hot","600.00","1","2","600","1100","3","15","2","Bar","19","17","145","25-11-2017","25","11","2017","455","21:02","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("13","Guiness Smooth","hot","2000.00","1","2","2000","1100","3","15","2","Bar","19","17","1400","25-11-2017","25","11","2017","600","21:02","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("17","Mutzig","hot","1000.00","4","2","4000","1100","3","15","2","Bar","22","17","500","25-11-2017","25","11","2017","500","21:03","","Ntum Clovis Mk","1500","","","54");
INSERT INTO basket VALUES("18","Black Label","hot","50000.00","1","2","50000","MTN","3","15","2","Bar","22","20","33000","25-11-2017","25","11","2017","17000","21:07","","Mr. Forbe Mike","","","","0");
INSERT INTO basket VALUES("19","Top P","hot","1000.00","1","2","1000","1202","3","15","2","Bar","30","28","555","25-11-2017","25","11","2017","445","21:08","","Mr.Bakari James","","","","61");
INSERT INTO basket VALUES("23","Guiness Smooth","hot","2000.00","4","2","8000","1202","3","15","2","Bar","18","13","1400","27-11-2017","27","11","2017","600","4:02","","Mr.Bakari James","","","","61");
INSERT INTO basket VALUES("26","Heindeken Small","hot","800.00","3","2","2400","1100","4","6","2","","5","1","400","27-11-2017","27","11","2017","400","4:05","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("28","Heindeken Big","hot","1000.00","2","2","2000","1100","4","6","2","","2","-1","300","27-11-2017","27","11","2017","700","4:05","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("29","Black Label","hot","50000.00","1","2","50000","OFM","3","15","2","Bar","21","19","33000","27-11-2017","27","11","2017","17000","4:07","","Ntum mk of R101","","","","0");
INSERT INTO basket VALUES("30","GUINESS SM","hot","1500.00","1","2","1500","OFM","3","15","2","Bar","18","16","910","27-11-2017","27","11","2017","590","4:09","","Ntum mk of R101","","","","0");
INSERT INTO basket VALUES("31","Manyang","hot","600.00","1","2","600","OFM","3","15","2","Bar","18","16","145","27-11-2017","27","11","2017","455","4:09","","Ntum mk of R101","","","","0");
INSERT INTO basket VALUES("32","Mutzig","hot","1000.00","1","2","1000","OFM","3","15","2","Bar","18","16","500","27-11-2017","27","11","2017","500","4:09","","Ntum mk of R101","","","","0");
INSERT INTO basket VALUES("33","Black Label","hot","50000.00","1","2","50000","OFM","3","15","2","Bar","20","18","33000","27-11-2017","27","11","2017","17000","4:16","","apostle john of 1101","","","","0");
INSERT INTO basket VALUES("34","Blue Label","hot","45000.00","1","2","45000","OFM","3","15","2","Bar","29","27","30000","27-11-2017","27","11","2017","15000","4:16","","apostle john of 1101","","","","0");
INSERT INTO basket VALUES("35","TOP C","hot","1000.00","1","2","1000","1200","3","15","2","Bar","41","39","555","27-11-2017","27","11","2017","445","4:17","","OMEGA FIRE MINISTRY","","","","62");
INSERT INTO basket VALUES("36","Top P","hot","1000.00","1","2","1000","1200","3","15","2","Bar","30","28","555","27-11-2017","27","11","2017","445","4:17","","OMEGA FIRE MINISTRY","","","","62");
INSERT INTO basket VALUES("37","Top G","hot","1000.00","1","2","1000","1200","3","15","2","Bar","33","31","555","27-11-2017","27","11","2017","445","4:17","","OMEGA FIRE MINISTRY","","","","62");
INSERT INTO basket VALUES("39","Top G","hot","1000.00","2","2","2000","MTN","3","15","2","Bar","32","29","555","27-11-2017","27","11","2017","445","4:34","","mbah isaac","","","","0");
INSERT INTO basket VALUES("40","Top A","hot","1000.00","1","2","1000","MTN","3","15","2","Bar","29","27","555","27-11-2017","27","11","2017","445","4:34","","mbah isaac","","","","0");
INSERT INTO basket VALUES("45","Top P","hot","1000.00","1","2","1000","1200","1","5","2","","9","7","555","27-11-2017","27","11","2017","445","4:56","","Ni John","","","","64");
INSERT INTO basket VALUES("46","Top G","hot","1000.00","1","2","1000","1200","1","5","2","","5","3","555","27-11-2017","27","11","2017","445","4:56","","Ni John","","","","64");
INSERT INTO basket VALUES("47","TOP C","hot","1000.00","1","2","1000","1200","1","5","2","","7","5","555","27-11-2017","27","11","2017","445","4:57","","Ni John","","","","64");
INSERT INTO basket VALUES("48","Top A","hot","1000.00","1","2","1000","1200","1","5","2","","5","3","555","27-11-2017","27","11","2017","445","4:57","","Ni John","","","","64");
INSERT INTO basket VALUES("49","Ntum Clovis Mk","hot","1000.00","1","2","1000","cash","2","55","2","","9","7","555","27-11-2017","27","11","2017","445","5:01","","Ntum Clovis Mk","","","","0");
INSERT INTO basket VALUES("50","Ntum Clovis Mk","hot","1000.00","1","2","1000","cash","2","55","2","","6","4","555","27-11-2017","27","11","2017","445","5:01","","Ntum Clovis Mk","","","","0");
INSERT INTO basket VALUES("51","Ntum Clovis Mk","hot","1000.00","1","2","1000","cash","2","55","2","","9","7","555","27-11-2017","27","11","2017","445","5:01","","Ntum Clovis Mk","","","","0");
INSERT INTO basket VALUES("52","Ntum Clovis Mk","hot","1000.00","1","2","1000","cash","2","55","2","","9","7","555","27-11-2017","27","11","2017","445","5:01","","Ntum Clovis Mk","","","","0");
INSERT INTO basket VALUES("53","Ntum Clovis Mk","hot","1000.00","1","2","1000","1100","2","55","2","","8","6","555","27-11-2017","27","11","2017","445","5:02","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("54","Ntum Clovis Mk","hot","1000.00","1","2","1000","1100","2","55","2","","8","6","555","27-11-2017","27","11","2017","445","5:02","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("55","Ntum Clovis Mk","hot","1000.00","1","2","1000","1100","2","55","2","","5","3","555","27-11-2017","27","11","2017","445","5:02","","Ntum Clovis Mk","","","","54");
INSERT INTO basket VALUES("56","Top A","hot","1000.00","1","2","1000","1200","2","55","2","","7","5","555","27-11-2017","27","11","2017","445","5:08","","OMEGA FIRE MINISTRY","","","","64");
INSERT INTO basket VALUES("57","TOP C","hot","1000.00","1","2","1000","1200","2","55","2","","7","5","555","27-11-2017","27","11","2017","445","5:08","","OMEGA FIRE MINISTRY","","","","64");
INSERT INTO basket VALUES("58","Top P","hot","1000.00","1","2","1000","1200","2","55","2","","4","2","555","27-11-2017","27","11","2017","445","5:08","","OMEGA FIRE MINISTRY","","","","64");
INSERT INTO basket VALUES("59","Top G","hot","1000.00","1","2","1000","1200","2","55","2","","8","6","555","27-11-2017","27","11","2017","445","5:08","","OMEGA FIRE MINISTRY","","","","64");
INSERT INTO basket VALUES("62","Top P","hot","1000.00","3","2","3000","1202","2","55","2","","3","-1","555","27-11-2017","27","11","2017","445","5:14","","Mbah Nishang Is","","","","65");
INSERT INTO basket VALUES("63","Top A","hot","1000.00","1","2","1000","1202","2","55","2","","6","4","555","27-11-2017","27","11","2017","445","5:14","","Mbah Nishang Is","","","","65");
INSERT INTO basket VALUES("64","Top G","hot","1000.00","1","2","1000","1202","2","55","2","","7","5","555","27-11-2017","27","11","2017","445","5:14","","Mbah Nishang Is","","","","65");
INSERT INTO basket VALUES("66","Top A","hot","1000.00","2","3","2000","","2","55","0","","5","2","555","27-11-2017","27","11","2017","445","11:35","","bar","","","","0");
INSERT INTO basket VALUES("70","EXPORT","hot","1500.00","1","2","1500","cash","1","15","2","Bar","24","19","940","04-12-2017","04","12","2017","560","9:08","","m ","","","","0");
INSERT INTO basket VALUES("71","Manyang","hot","600.00","11","2","6600","cash","1","15","2","Bar","17","15","145","04-12-2017","04","12","2017","455","9:10","","m ","","","","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO calendar VALUES("1","Atem mathias","2017-08-17T10:00:00+05:30","2017-08-17T17:00:00+05:30","false","1","Conference Hall");
INSERT INTO calendar VALUES("2","Omega Fire Ministries Int","2017-08-08T07:00:00+05:30","2017-08-08T18:00:00+05:30","false","6","Conference Hall");
INSERT INTO calendar VALUES("3","mmmmmm","2017-10-09T01:00:00+05:30","2017-10-09T08:00:00+05:30","false","8","Car Rental Service");
INSERT INTO calendar VALUES("4","guiness pm","2017-01-17T14:00:00+05:30","2017-01-17T19:00:00+05:30","false","11","Car Rental Service");





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
INSERT INTO categories VALUES("3","35000","Living Room\nBdroom\n Bed\nFlatscreen TV\nHot/cold Water\nAir Condition\nFridge\n                                                                                     \n                                  \n                                  \n                                  \n                                  \n                 ","0","PRESIDENTIAL suites","15000");
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO chat VALUES("1","","Hello","2017-10-24 02:58:10","1","admin12","39","2017102425810");
INSERT INTO chat VALUES("2","marks.xlsx","Hello My Reports","2017-10-24 03:24:46","1","admin12","49","2017102432446");





CREATE TABLE `client` (
  `clien_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `address` text,
  `as1` varchar(60) DEFAULT NULL,
  `as2` varchar(120) DEFAULT NULL,
  `as3` varchar(120) DEFAULT NULL,
  `abs` varchar(20) NOT NULL,
  PRIMARY KEY (`clien_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO client VALUES("2","Mountain Hotel-Buea","Email:info@mountainhotel.com/ Website: www.mountainhotel.cm",":(237) 674 488 855 / 696 493 193 /233 332 299/ 233 332 430","","V-2515","HSC");





CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `contact` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO companies VALUES("1","BASIC EDUCATION","BAE");
INSERT INTO companies VALUES("2","Mtn","MTN");
INSERT INTO companies VALUES("3","Perinko","PER");
INSERT INTO companies VALUES("4","OMEGA FIRE MINISTRY","OFM");





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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

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
INSERT INTO company_debts VALUES("17","34","BASIC EDUCATION","Mbasv Ffrrr","1100(Standard)","22000","1","Mmm","22000","30-10-2017","10/31/2017","admin12");
INSERT INTO company_debts VALUES("18","35","Mtn","Mbasv Ffrrr","1101(Standard)","23000","1","Mmm","23000","30-10-2017","10/31/2017","admin12");
INSERT INTO company_debts VALUES("19","58","OMEGA FIRE MINISTRY","Mbah Nishang Isaac","1200(Presidenti","15000","1","0","15000","27-11-2017","11/28/2017","admin12");
INSERT INTO company_debts VALUES("20","62","OMEGA FIRE MINISTRY","Apostle John","1200(Presidenti","35000","1","0","35000","27-11-2017","11/28/2017","admin12");
INSERT INTO company_debts VALUES("21","64","OMEGA FIRE MINISTRY","Apostle John","1200(Presidenti","35000","1","0","35000","27-11-2017","11/28/2017","admin12");
INSERT INTO company_debts VALUES("22","65","Mtn","Mbah Nishang Is","1202(Standard)","10000","1","0","10000","27-11-2017","11/28/2017","admin12");





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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

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
INSERT INTO customers VALUES("25","Guy Daneil Kamga","","","13-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("26","Mbh Hhhjj","","","19-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("27","Gimi Lama Palois","","","30-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("28","Gimi Lama Palois","","","30-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("29","Gimi Lama Palois","","","29-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("30","Gimi Lama Palois","","","30-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("31","Gimi Lama Palois","","","30-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("32","Gimi Lama Palois","","","30-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("33","Gimi Lama Palois","","","30-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("34","BASIC EDUCATION(Mbasv Ffrrr)","","","30-10-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("35","Mtn(Mbasv Ffrrr)","","","30-10-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("36","Mbah U Isaac","","","30-10-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("37","Ntum Clovis","","","04-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("38","Mua Joseph","","","04-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("39","Mua Joseph","","","04-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("40","Ntum Clovis","","","04-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("41","Nishang Isaac","","","04-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("42","Nishang Isaac","","11-12-2000","04-11-2017","","","2","0","","","male","BUEA","6363633737","iishang@yahoo.com","cameroon","2017","2","doual","7474774747","SW22","12/12/1990","","","");
INSERT INTO customers VALUES("43","Kappal Mu","","","05-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("44","Utuuihj V Lgighi","","","07-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("45","Mr.Bakari","","","07-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("46","Me anfd Yii","","","","","","","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("47","Nishang Isaac","","","20-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("48","Nishang Isaac","","","20-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("49","Ntum Clovis","","","22-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("50","Nishang Isaac","","","23-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("51","Mua Joseph","","","23-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("52","Kappal Mu","","","20-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("53","Mr.Bakari","","","20-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("54","Ntum Clovis Mk","","","22-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("55","Ni John Fru","","","22-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("56","Ni John Fru","","","22-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("57","Tamukum Moses","","","23-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("58","OMEGA FIRE MINISTRY(Mbah Nisha","","","27-11-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("59","Ni John Fru Muo","","","27-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("60","Apostle Paul Krum","","","27-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("61","Mr.Bakari James","","","27-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("62","OMEGA FIRE MINISTRY(Apostle Jo","","","27-11-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("63","Apostle Paul Krum","","","27-11-2017","","","2","0","","","","","","","","","","","","","","","","");
INSERT INTO customers VALUES("64","OMEGA FIRE MINISTRY(Apostle Jo","","","27-11-2017","","","2","0","","","","","","","","2017","","","","","","","","");
INSERT INTO customers VALUES("65","Mtn(Mbah Nishang Is)","","","27-11-2017","","","2","0","","","","","","","","2017","","","","","","","","");





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
  `reason` text NOT NULL,
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
  `yname` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

INSERT INTO daily VALUES("1","50","1207","23-11-2017","10000","","11","2017","0","","Lodging","1","15000","","5000","admin12","","","0","","2017-11-23","Reception","","");
INSERT INTO daily VALUES("2","50","1207","23-11-2017","10000","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Nishang Isaac","2017-11-23","","","");
INSERT INTO daily VALUES("3","51","2104","23-11-2017","10000","","11","2017","0","","Lodging","1","15000","","5000","admin12","","","0","","2017-11-23","Reception","","");
INSERT INTO daily VALUES("4","51","2104","23-11-2017","10000","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Mua Joseph","2017-11-23","","","");
INSERT INTO daily VALUES("5","52","1101","20-11-2017","10000","","11","2017","0","","Lodging","1","15000","","5000","admin12","","","0","","2017-11-20","Reception","","");
INSERT INTO daily VALUES("6","53","1200","20-11-2017","0","","11","2017","0","","Lodging","1","35000","","35000","admin12","","","0","","2017-11-20","Reception","","");
INSERT INTO daily VALUES("7","53","1200","22-11-2017","5000","","11","2017","15","09:35:02"," bills","1","50000","50000","45000","admin12","","33000","0"," Mr.Bakari","2017-11-22","posted bills"," 0","");
INSERT INTO daily VALUES("8","53","Mr.Bakari","22-11-2017","0","","11","2017","17","13","Car Rental Service Rentage","1","30000","30000","30000","admin12","","","0","","2017-11-22","Car Rental Service","","");
INSERT INTO daily VALUES("9","54","1100","22-11-2017","0","","11","2017","0","","Lodging","1","15000","","15000","admin12","","","0","","2017-11-22","Reception","","");
INSERT INTO daily VALUES("10","53","1200","22-11-2017","0","","11","2017","10","12:24:29"," bills","1","14000","14000","14000","admin12","","0","0"," Mr.Bakari","2017-11-22","posted bills"," 0","");
INSERT INTO daily VALUES("11","53","1200","22-11-2017","100000","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Mr.Bakari","2017-11-22","","","");
INSERT INTO daily VALUES("12","55","1201","22-11-2017","0","","11","2017","0","","Lodging","1","15000","","15000","admin12","","","0","","2017-11-22","Reception","","");
INSERT INTO daily VALUES("13","55","1201","22-11-2017","0","","11","2017","10","03:16:42"," bills","1","6000","6000","6000","admin12","","0","0"," Ni John Fru","2017-11-22","posted bills"," 0","");
INSERT INTO daily VALUES("14","54","1100","22-11-2017","0","","11","2017","10","03:18:13"," bills","1","6000","6000","6000","admin12","","0","0"," Ntum Clovis Mk","2017-11-22","posted bills"," 0","");
INSERT INTO daily VALUES("15","54","1100","22-11-2017","0","","11","2017","10","03:18:27"," bills","1","6000","6000","6000","admin12","","0","0"," Ntum Clovis Mk","2017-11-22","posted bills"," 0","");
INSERT INTO daily VALUES("16","54","1100","22-11-2017","0","","11","2017","10","03:19:20"," bills","1","6000","6000","6000","admin12","","0","0"," Ntum Clovis Mk","2017-11-22","posted bills"," 0","");
INSERT INTO daily VALUES("17","55","1201","22-11-2017","15000","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Ni John Fru","2017-11-22","","","");
INSERT INTO daily VALUES("18","56","1201","22-11-2017","0","","11","2017","0","","Lodging","1","15000","","15000","admin12","","","0","","2017-11-22","Reception","","");
INSERT INTO daily VALUES("19","56","1201","22-11-2017","0","","11","2017","10","03:25:14","Restaurant bills","1","16000","16000","16000","admin12","","0","0"," Ni John Fru","2017-11-22","posted bills"," 0","");
INSERT INTO daily VALUES("20","56","1201","22-11-2017","500","","11","2017","15","03:26:18","Bar Le Dja bills","1","50000","50000","49500","admin12","","33000","0"," Ni John Fru","2017-11-22","posted bills"," 0","");
INSERT INTO daily VALUES("21","56","1201","22-11-2017","0","","11","2017","6","03:26:52","Bar two bills","1","6000","6000","6000","admin12","","940","0"," Ni John Fru","2017-11-22","posted bills"," 0","");
INSERT INTO daily VALUES("22","56","1201","23-11-2017","129135","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Ni John Fru","2017-11-23","","","");
INSERT INTO daily VALUES("23","57","2104","23-11-2017","22000","","11","2017","0","","Lodging","1","22000","","0","admin12","","","0","","2017-11-23","Reception","","");
INSERT INTO daily VALUES("24","57","2104","23-11-2017","0","","11","2017","16","","Laudry","1","5000","5000","5000","admin12","","","11","","2017-11/23","Laudry","","");
INSERT INTO daily VALUES("25","57","2104","25-11-2017","74668","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Tamukum Moses","2017-11-25","","","");
INSERT INTO daily VALUES("26","54","1100","25-11-2017","0","","11","2017","15","09:07:24","Bar Le Dja bills","1","11100","11100","9600","admin12","","4840","0"," Ntum Clovis Mk","2017-11-25","posted bills"," 1500","");
INSERT INTO daily VALUES("27","","MTN","25-11-2017","0","","11","2017","15","09:08:23","Bar Le Dja bills","1","50000","50000","50000","admin12","","33000","0"," Mr. Forbe Mike","2017-11-25","posted bills"," 0","");
INSERT INTO daily VALUES("28","58","1200","27-11-2017","0","","11","2017","5","","Mbah Nishang Isaac","1","15000","10000","10000","admin12","","","0","OMEGA FIRE MINISTRY","2017-11-27","Reception","","OMEGA FIRE MINISTRY");
INSERT INTO daily VALUES("29","59","2302","27-11-2017","10000","","11","2017","5","","Lodging","1","10000","","5000","admin12","","","0","","2017-11-27","Reception","","");
INSERT INTO daily VALUES("30","58","1200","27-11-2017","","","11","2017","0","","Old room Used","0","15000","0","","","","","0","","2017-11-27","","","");
INSERT INTO daily VALUES("31","58","1204","19-11-2017","0","","11","2017","16","","Ironing","1","5000","5000","5000","admin12","","","11","OMEGA FIRE MINISTRY","2017-11/19","Ironing","","");
INSERT INTO daily VALUES("32","60","1200","27-11-2017","0","","11","2017","5","","Lodging","1","10000","","15000","admin12","","","0","","2017-11-27","Reception","","");
INSERT INTO daily VALUES("33","61","1202","27-11-2017","0","","11","2017","5","","Lodging","2","10000","","30000","admin12","","","0","","2017-11-27","Reception","5000","");
INSERT INTO daily VALUES("34","61","1202","27-11-2017","0","","11","2017","15","04:05:04","Bar Le Dja bills","1","9000","9000","9000","admin12","","1400","0"," Mr.Bakari James","2017-11-27","posted bills"," 0","Mr.Bakari James");
INSERT INTO daily VALUES("35","54","1100","27-11-2017","0","","11","2017","6","04:06:00","Bar two bills","1","4400","4400","4400","admin12","","700","0"," Ntum Clovis Mk","2017-11-27","posted bills"," 0","Ntum Clovis Mk");
INSERT INTO daily VALUES("36","","OFM","27-11-2017","0","","11","2017","15","04:07:54","Bar Le Dja bills","1","50000","50000","50000","admin12","","33000","0"," Ntum mk of R101","2017-11-27","posted bills"," 0","OMEGA FIRE MINISTRY");
INSERT INTO daily VALUES("37","","OFM","27-11-2017","0","","11","2017","15","04:09:47","Bar Le Dja bills","1","3100","3100","3100","admin12","","1555","0"," Ntum mk of R101","2017-11-27","posted bills"," 0","OMEGA FIRE MINISTRY");
INSERT INTO daily VALUES("38","60","1200","27-11-2017","15925","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Apostle Paul Krum","2017-11-27","","","");
INSERT INTO daily VALUES("39","58","1204","27-11-2017","0","","11","2017","0","","Lodging","0","","0","","admin12","","","0","OMEGA FIRE MINISTRY","2017-11-27","","","");
INSERT INTO daily VALUES("40","61","1202","27-11-2017","26658","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Mr.Bakari James","2017-11-27","","","");
INSERT INTO daily VALUES("41","62","1200","27-11-2017","0","","11","2017","5","","Apostle John","1","35000","35000","35000","admin12","","","0","OMEGA FIRE MINISTRY","2017-11-27","Reception","","OMEGA FIRE MINISTRY");
INSERT INTO daily VALUES("42","","OFM","27-11-2017","0","","11","2017","15","04:16:27","Bar Le Dja bills","1","95000","95000","95000","admin12","","63000","0"," apostle john of 1101","2017-11-27","posted bills"," 0","OMEGA FIRE MINISTRY");
INSERT INTO daily VALUES("43","62","1200","27-11-2017","0","","11","2017","15","04:17:54","Bar Le Dja bills","1","3000","3000","3000","admin12","","1665","0"," OMEGA FIRE MINISTRY","2017-11-27","posted bills"," 0","");
INSERT INTO daily VALUES("44","62","1200","27-11-2017","3000","","11","2017","0","","Lodging","0","","0","","admin12","","","0","OMEGA FIRE MINISTRY","2017-11-27","","","");
INSERT INTO daily VALUES("45","63","1200","27-11-2017","0","","11","2017","5","","Lodging","1","35000","","35000","admin12","","","0","","2017-11-27","Reception","0","");
INSERT INTO daily VALUES("46","63","1200","27-11-2017","45738","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Apostle Paul Krum","2017-11-27","","","");
INSERT INTO daily VALUES("47","64","1200","27-11-2017","0","","11","2017","5","","Apostle John","1","35000","35000","35000","admin12","","","0","OMEGA FIRE MINISTRY","2017-11-27","Reception","","OMEGA FIRE MINISTRY");
INSERT INTO daily VALUES("48","","MTN","27-11-2017","0","","11","2017","15","04:40:52","Bar Le Dja bills","1","3000","3000","3000","admin12","","1110","0"," mbah isaac","2017-11-27","posted bills"," 0","Mtn");
INSERT INTO daily VALUES("49","64","1200","27-11-2017","0","","11","2017","5","04:57:32","Reception bills","1","4000","4000","4000","admin12","","2220","0"," Ni John","2017-11-27","posted bills"," 0","");
INSERT INTO daily VALUES("50","","cash","27-11-2017","4000","","11","2017","55","05:01:33","Reception Bar bills","1","4000","4000","0","admin12","","2220","0"," .","2017-11-27","posted bills"," 0","");
INSERT INTO daily VALUES("51","54","1100","27-11-2017","0","","11","2017","55","05:02:27","Reception Bar bills","1","3000","3000","3000","admin12","","1665","0"," .","2017-11-27","posted bills"," 0","");
INSERT INTO daily VALUES("52","54","1100","27-11-2017","174851","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Ntum Clovis Mk","2017-11-27","","","");
INSERT INTO daily VALUES("53","64","1200","27-11-2017","0","","11","2017","55","05:08:38","Reception Bar bills","1","4000","4000","4000","admin12","","2220","0"," OMEGA FIRE MINISTRY","2017-11-27","posted bills"," 0","");
INSERT INTO daily VALUES("54","64","1200","27-11-2017","0","","11","2017","0","","Lodging","0","","0","","admin12","","","0","OMEGA FIRE MINISTRY","2017-11-27","","","");
INSERT INTO daily VALUES("55","65","1202","27-11-2017","0","","11","2017","5","","Mbah Nishang Is","1","10000","10000","10000","admin12","","","0","Mtn","2017-11-27","Reception","","Mtn");
INSERT INTO daily VALUES("56","65","1202","27-11-2017","0","","11","2017","55","05:14:37","Reception Bar bills","1","5000","5000","5000","admin12","","1665","0"," Mbah Nishang Is","2017-11-27","posted bills"," 0","");
INSERT INTO daily VALUES("57","65","1202","27-11-2017","0","","11","2017","0","","Lodging","0","","0","","admin12","","","0","Mbah Nishang Is","2017-11-27","","","");
INSERT INTO daily VALUES("58","","","16-11-2017","","1200","11","2017","15","","Bar Le Dja drinks","22","1200","1200","","admin12","","","0","","","GUINESS SM","","");
INSERT INTO daily VALUES("59","","cash","04-12-2017","10000","","12","2017","15","09:15:20","Bar Le Dja bills","1","8100","8100","-1900","admin12","","1085","0"," m ","2017-12-04","posted bills"," 0","");





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
  `units` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO disburse VALUES("1"," general","","18","Top A","2","12","30.00","1000.00","04-12","12","2017","","");
INSERT INTO disburse VALUES("2"," general","","14","TOP C","2","16","30.00","1000.00","04-12","12","2017","","");
INSERT INTO disburse VALUES("3"," general","","40","EXPORT","2","10","50.00","1500.00","04-12","12","2017","","");
INSERT INTO disburse VALUES("4"," general","","26","Top P","2","4","30.00","1000.00","04-12","12","2017","","");
INSERT INTO disburse VALUES("6"," general","","0","Natural","2","90","90.00","1000.00","04-12","12","2017","","");
INSERT INTO disburse VALUES("7"," general","","21","Top G","2","14","35.00","1000.00","04-12","12","2017","","");





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
  `vat` varchar(15) NOT NULL,
  `htax` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO finances VALUES("1","50","Nishang Isaac","Deluxe","1207","15000","1","10000","0","5000","11/24/2017","","2","23-11-2017","11","2017","","23-11-2017","9:20","0","","0","0","0","23-11-2017","0","0.1925","4000");
INSERT INTO finances VALUES("2","51","Mua Joseph","Standard","2104","15000","1","10000","0","5000","11/24/2017","","2","23-11-2017","11","2017","","23-11-2017","9:22","0","","0","0","0","23-11-2017","0","0.1925","4000");
INSERT INTO finances VALUES("3","52","Kappal Mu","Standard","1101","15000","1","10000","0","5000","11/21/2017","","1","20-11-2017","11","2017","","","9:22","0","","","","0","","0","0.1925","4000");
INSERT INTO finances VALUES("4","53","Mr.Bakari","Presidential Suites","1200","35000","3","0","0","35000","11/21/2017","1","2","20-11-2017","11","2017","","22-11-2017","9:34","0","","0","0","0","22-11-2017","0","0.1925","4000");
INSERT INTO finances VALUES("5","54","Ntum Clovis Mk","Standard","1100","15000","6","0","0","15000","11/23/2017","4","2","22-11-2017","11","2017","","27-11-2017","11:45","5","","0","0","0","27-11-2017","0","24351","24000");
INSERT INTO finances VALUES("6","55","Ni John Fru","Standard","1201","15000","1","0","0","15000","11/23/2017","0","2","22-11-2017","11","2017","","22-11-2017","15:11","5","","0","0","0","22-11-2017","0","0.1925","4000");
INSERT INTO finances VALUES("7","56","Ni John Fru","Standard","1201","15000","2","0","0","15000","11/23/2017","0","2","22-11-2017","11","2017","","23-11-2017","15:22","5","","0","0","0","23-11-2017","0","19635","8000");
INSERT INTO finances VALUES("8","57","Tamukum Moses","Standard","2104","22000","3","22000","0","0","11/24/2017","1","2","23-11-2017","11","2017","","25-11-2017","20:41","5","","0","0","0","25-11-2017","0","13668","12000");
INSERT INTO finances VALUES("9","58","OMEGA FIRE MINISTRY","Presidential Suites","1204","15000","1","0","","15000","11/28/2017","","2","27-11-2017","11","2017","","27-11-2017","3:44","5","","27850","27850","2","27-11-2017","0","3850","4000");
INSERT INTO finances VALUES("10","59","Ni John Fru Muo","Standard","2302","10000","1","10000","0","5000","11/28/2017","","1","27-11-2017","11","2017","","","3:47","5","","","","0","","0","0.1925","4000");
INSERT INTO finances VALUES("11","60","Apostle Paul Krum","Presidential Suites","1200","10000","1","0","0","15000","11/28/2017","","2","27-11-2017","11","2017","","27-11-2017","3:53","5","","0","0","0","27-11-2017","0","1925","4000");
INSERT INTO finances VALUES("12","61","Mr.Bakari James","Standard","1202","10000","1","0","0","30000","11/29/2017","","2","27-11-2017","11","2017","","27-11-2017","3:57","5","","0","0","0","27-11-2017","0","3658","4000");
INSERT INTO finances VALUES("13","62","OMEGA FIRE MINISTRY","Presidential Suites","1200","35000","1","0","","35000","11/28/2017","0","2","27-11-2017","11","2017","","27-11-2017","4:15","5","","46315","46315","2","27-11-2017","0","7315","4000");
INSERT INTO finances VALUES("14","63","Apostle Paul Krum","Presidential Suites","1200","35000","1","0","0","35000","11/28/2017","","2","27-11-2017","11","2017","","27-11-2017","4:32","5","","0","0","0","27-11-2017","0","6738","4000");
INSERT INTO finances VALUES("15","64","OMEGA FIRE MINISTRY","Presidential Suites","1200","35000","1","0","","35000","11/28/2017","","2","27-11-2017","11","2017","","27-11-2017","4:33","5","","50508","50508","2","27-11-2017","0","7508","4000");
INSERT INTO finances VALUES("16","65","Mbah Nishang Is","Standard","1202","10000","1","0","","10000","11/28/2017","0","2","27-11-2017","11","2017","","27-11-2017","5:13","5","","21888","21888","2","27-11-2017","0","2888","4000");





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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO foods VALUES("1","BAR  FISH","","5500.00","","PLAT CHAUD","15","15");
INSERT INTO foods VALUES("2","CHIEFS SALAD","","3000.00","","STARTER","15","15");
INSERT INTO foods VALUES("3","FRUITS SALAD","","2500.00","","DESERT","15","15");
INSERT INTO foods VALUES("4","Bar Fish","","4500.00","","Fish","2","Reception");
INSERT INTO foods VALUES("5","Babicue","","5000.00","","General","2","Reception");
INSERT INTO foods VALUES("6","1/4 Chicken","","6000.00","","Chicken","2","Reception");
INSERT INTO foods VALUES("7","1/2 Chicken","","8000.00","","Chicken","2","Reception");
INSERT INTO foods VALUES("8","Rice And Beans","","4000.00","","Main Course","10","Restaurant");
INSERT INTO foods VALUES("9","Jerof Rice","","2000.00","","Mian Course","10","Restaurant");
INSERT INTO foods VALUES("10","1/4 Chicken","","8000.00","","Chicken","10","Restaurant");





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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO hall_paymts VALUES("1","Mbah Isaac","","2017-08-03","13","03-08-2017","2017","50000","150000","200000","1","08","2","19","Conference Hall");
INSERT INTO hall_paymts VALUES("2","Mbah Isaac","","2017-08-03","7","03-08-2017","2017","20000","30000","50000","1","08","3","15","Pool");
INSERT INTO hall_paymts VALUES("3","OMEGA FIRE MINISTRY","","2017-07-28","10","28-07-2017","2017","0","5000","5000","1","07","4","15","Car Rental Service");
INSERT INTO hall_paymts VALUES("4","OMEGA FIRE MINISTRY","","2017-08-03","10","03-08-2017","2017","0","5000","5000","1","08","5","18","Car Rental Service");
INSERT INTO hall_paymts VALUES("5","Omega Fire Ministries Int","","08/08/2017","7","08-08-2017","2017","0","230000","230000","1","08","6","18","Conference Hall");
INSERT INTO hall_paymts VALUES("6","Gimi Lama Palois","","2017-10-30","14","30-10-2017","2017","-50000","950000","900000","1","10","7","18","Conference Hall");
INSERT INTO hall_paymts VALUES("7","Mbah U Isaac","","2017-11-04","16","04-11-2017","2017","100000","100000","200000","1","11","9","18","Conference Hall");
INSERT INTO hall_paymts VALUES("8","Mbah U Isaac","","2017-11-04","2","04-11-2017","2017","0","20000","20000","1","11","10","11","Car Rental Service");
INSERT INTO hall_paymts VALUES("9","guiness pm","","01/17/2017","14","16-11-2017","2017","5000","25000","30000","1","11","11","19","Car Rental Service");
INSERT INTO hall_paymts VALUES("10","Ntum Clovis","","2017-11-23","9","23-11-2017","2017","50000","150000","200000","1","11","12","15","Conference Hall");
INSERT INTO hall_paymts VALUES("11","Mr.Bakari","","2017-11-22","6","22-11-2017","2017","0","30000","30000","1","11","13","8","Car Rental Service");





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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;

INSERT INTO historique VALUES("1","19","Standard","S101","25000","2","232000","","0","07/28/2017","26-07-2017","07","2017","26","0");
INSERT INTO historique VALUES("2","20","SUITES","1","40000","1","125500","","0","08/04/2017","03-08-2017","08","2017","2017","0");
INSERT INTO historique VALUES("3","21","Executive","D204","15000","2","0","","68000","08/07/2017","05-08-2017","08","2017","2017","0");
INSERT INTO historique VALUES("4","22","Standard","S105","25000","1","0","","25000","08/09/2017","08-08-2017","08","2017","2017","0");
INSERT INTO historique VALUES("5","23","Standard","S205","25000","1","0","","25000","08/09/2017","08-08-2017","08","2017","2017","0");
INSERT INTO historique VALUES("6","24","Standard","S101","24000","2","0","0","48000","08/16/2017","14-08-2017","08","2017","2017","0");
INSERT INTO historique VALUES("7","25","Standard","1100","25000","2","290000","0","0","10/15/2017","13-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("8","26","Standard","2301","22445","2","2445","0","0","10/21/2017","19-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("9","27","Standard","1100","22000","2","44000","0","0","11/01/2017","30-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("10","28","Standard","1100","22000","1","44000","0","0","10/31/2017","30-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("11","29","Standard","1100","22000","1","994000","0","0","10/30/2017","29-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("12","30","Standard","1101","22000","1","22000","0","0","10/31/2017","30-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("13","31","Standard","1101","22000","1","22000","0","0","10/31/2017","30-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("14","32","Standard","1101","23000","1","23000","0","0","10/31/2017","30-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("15","33","Standard","1101","23000","1","23000","0","0","10/31/2017","30-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("16","34","Standard","1100","22000","1","132000","","0","10/31/2017","30-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("17","35","Standard","1101","23000","1","0","","23000","10/31/2017","30-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("18","36","Standard","1101","28000","1","330500","0","0","10/31/2017","30-10-2017","10","2017","2017","0");
INSERT INTO historique VALUES("19","restau","Hot","","1000.00","3","3000","","","","03-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("20","restau","Hot","","1500.00","1","1500","","","","03-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("21","restau","Hot","","1000.00","4","4000","","","","03-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("22","restau","Hot","","1500.00","1","1500","","","","03-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("23","restau","Hot","","1500.00","3","4500","","","","03-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("24","restau","Hot","","600.00","3","1800","","","","03-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("25","restau","Hot","","1500.00","1","1500","","","","03-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("26","restau","Hot","","1000.00","1","1000","","","","03-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("27","restau","Hot","","45000.00","1","45000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("28","restau","Hot","","50000.00","1","50000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("29","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("30","restau","Hot","","2000.00","2","4000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("31","restau","Hot","","5000.00","1","5000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("32","restau","Hot","","1500.00","5","7500","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("33","restau","Hot","","1500.00","4","6000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("34","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("35","restau","Hot","","2000.00","1","2000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("36","restau","Hot","","1500.00","1","1500","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("37","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("38","restau","Hot","","1000.00","1","1000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("39","restau","Hot","","1000.00","1","1000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("40","restau","Hot","","2000.00","3","6000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("41","restau","Hot","","600.00","4","2400","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("42","restau","Hot","","1500.00","5","7500","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("43","restau","Hot","","1000.00","4","4000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("44","restau","Hot","","1000.00","4","4000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("45","restau","Hot","","1000.00","4","4000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("46","restau","Hot","","1000.00","5","5000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("47","restau","Hot","","2000.00","1","2000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("48","restau","Hot","","1000.00","2","2000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("49","restau","Hot","","600.00","2","1200","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("50","restau","Hot","","1500.00","2","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("51","restau","Hot","","1500.00","2","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("52","restau","Hot","","1500.00","3","4500","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("53","restau","Hot","","45000.00","2","90000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("54","restau","Hot","","50000.00","3","150000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("55","restau","Hot","","1000.00","2","2000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("56","restau","Hot","","1000.00","2","2000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("57","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("58","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("59","restau","Hot","","1000.00","2","2000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("60","restau","Hot","","2000.00","4","8000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("61","restau","Hot","","600.00","3","1800","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("62","restau","Hot","","1500.00","5","7500","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("63","restau","Hot","","1500.00","7","10500","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("64","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("65","restau","Hot","","45000.00","1","45000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("66","restau","Hot","","50000.00","1","50000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("67","restau","Hot","","5000.00","1","5000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("68","restau","Hot","","2000.00","2","4000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("69","restau","Hot","","800.00","5","4000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("70","restau","Hot","","1000.00","4","4000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("71","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("72","restau","Hot","","1000.00","1","1000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("73","restau","Hot","","1000.00","2","2000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("74","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("75","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("76","restau","Hot","","2000.00","2","4000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("77","restau","Hot","","600.00","2","1200","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("78","restau","Hot","","1500.00","2","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("79","restau","Hot","","1500.00","2","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("80","restau","Hot","","1500.00","2","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("81","restau","Hot","","1000.00","2","2000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("82","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("83","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("84","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("85","restau","Hot","","1500.00","3","4500","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("86","restau","Hot","","1000.00","3","3000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("87","restau","Hot","","1500.00","6","9000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("88","37","Standard","1308","15000","1","0","0","15000","11/05/2017","04-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("89","38","Standard","1100","15000","1","51000","0","0","11/05/2017","04-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("90","restau","Hot","","50000.00","1","50000","","","","04-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("91","39","Standard","1100","15000","1","114000","0","0","11/05/2017","04-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("92","40","Standard","1100","15000","2","54500","0","0","11/06/2017","04-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("93","41","Standard","1100","15000","1","10000","0","0","11/05/2017","04-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("94","42","Standard","1100","15000","1","25000","0","0","11/05/2017","04-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("95","43","Standard","1101","15000","1","44500","0","0","11/06/2017","05-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("96","restau","Hot","","45000.00","1","45000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("97","restau","Hot","","50000.00","1","50000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("98","restau","Hot","","1500.00","2","3000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("99","restau","Hot","","600.00","3","1800","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("100","restau","Hot","","1500.00","5","7500","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("101","restau","Hot","","45000.00","2","90000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("102","restau","Hot","","50000.00","2","100000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("103","restau","Hot","","5000.00","3","15000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("104","restau","Hot","","2000.00","3","6000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("105","restau","Hot","","2000.00","12","24000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("106","restau","Hot","","1500.00","6","9000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("107","restau","Hot","","1500.00","7","10500","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("108","restau","Hot","","1000.00","11","11000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("109","restau","Hot","","1000.00","12","12000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("110","restau","Hot","","1000.00","9","9000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("111","restau","Hot","","1000.00","6","6000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("112","restau","Hot","","600.00","7","4200","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("113","restau","Hot","","2000.00","8","16000","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("114","restau","Hot","","1500.00","7","10500","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("115","restau","Hot","","1500.00","9","13500","","","","06-11-2017","11","2017","0","0");
INSERT INTO historique VALUES("116","44","Standard","1100","15000","1","0","0","15000","11/08/2017","07-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("117","45","Standard","1101","25000","3","0","0","122000","11/10/2017","07-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("118","45","","1101","","0","0","1","122000","","07-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("119","47","Standard","1100","15000","1","10000","0","5000","11/21/2017","20-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("120","48","Standard","1100","15000","1","25000","0","0","11/21/2017","20-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("121","49","Standard","1100","15000","1","155000","0","0","11/23/2017","22-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("122","50","Deluxe","1207","15000","1","10000","0","0","11/24/2017","23-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("123","51","Standard","2104","15000","1","10000","0","0","11/24/2017","23-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("124","52","Standard","1101","15000","1","10000","0","5000","11/21/2017","20-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("125","53","Presidential Suites","1200","35000","1","100000","0","0","11/21/2017","20-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("126","54","Standard","1100","15000","1","0","0","15000","11/23/2017","22-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("127","55","Standard","1201","15000","1","15000","0","0","11/23/2017","22-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("128","56","Standard","1201","15000","1","0","0","15000","11/23/2017","22-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("129","57","Standard","2104","22000","1","22000","0","0","11/24/2017","23-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("130","58","Presidential Suites","1200","15000","1","0","","15000","11/28/2017","27-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("131","59","Standard","2302","15000","1","10000","0","5000","11/28/2017","27-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("132","60","Presidential Suites","1200","15000","1","0","0","15000","11/28/2017","27-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("133","61","Standard","1202","15000","2","0","0","30000","11/29/2017","27-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("134","62","Presidential Suites","1200","35000","1","0","","35000","11/28/2017","27-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("135","63","Presidential Suites","1200","35000","1","0","0","35000","11/28/2017","27-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("136","64","Presidential Suites","1200","35000","1","0","","35000","11/28/2017","27-11-2017","11","2017","2017","0");
INSERT INTO historique VALUES("137","65","Standard","1202","10000","1","0","","10000","11/28/2017","27-11-2017","11","2017","2017","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO invoice VALUES("1","Guy Kamga Daneil","18-01-2017","","","","","","","0");
INSERT INTO invoice VALUES("2","Nishang Group of Companies","11-12-2015","","","","","","","0");





CREATE TABLE `lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(6) NOT NULL,
  `fr` varchar(30) NOT NULL,
  `en` varchar(30) NOT NULL,
  `main` int(11) NOT NULL,
  `sub` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO lang VALUES("1","5","Tout chambre","All Rooms","1","0");
INSERT INTO lang VALUES("2","5","Reapport Financiere","Financil Report","1","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO myinvoice VALUES("1","Nishang Group of Companies","11-12-2015","Room 401 Lodging","5000","1","2","1","10000","2");





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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO ostocks VALUES("1","Top A","1000.00","40","06-11-2017","11","2017","admin12","10","15");
INSERT INTO ostocks VALUES("2","TOP C","1000.00","40","06-11-2017","11","2017","admin12","11","15");
INSERT INTO ostocks VALUES("3","EXPORT","1500.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("4","AMSTEL","1500.00","40","06-11-2017","11","2017","admin12","13","15");
INSERT INTO ostocks VALUES("5","GUINESS SM","1500.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("6","Heindeken Big","1000.00","40","06-11-2017","11","2017","admin12","7","15");
INSERT INTO ostocks VALUES("7","Heindeken Small","800.00","40","06-11-2017","11","2017","admin12","8","15");
INSERT INTO ostocks VALUES("8","Manyang","600.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("9","Top P","1000.00","40","06-11-2017","11","2017","admin12","9","15");
INSERT INTO ostocks VALUES("10","Mutzig","1000.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("11","Blue Label","45000.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("12","Black Label","50000.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("13","Blue Heaven","5000.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("14","Top G","1000.00","40","06-11-2017","11","2017","admin12","15","15");
INSERT INTO ostocks VALUES("15","Supermonth 1l","1000.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("16","Baron De Roi","2000.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("17","Natural Fruit Juice","1000.00","40","06-11-2017","11","2017","admin12","bar","15");
INSERT INTO ostocks VALUES("18","Guiness Smooth","2000.00","40","06-11-2017","11","2017","admin12","bar","15");





CREATE TABLE `other_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amt` varchar(50) NOT NULL,
  `facilities` text NOT NULL,
  `floor` int(11) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `lastprice` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO other_services VALUES("1","WATER 1.5 L","","0","","0");
INSERT INTO other_services VALUES("2","Mini Bar Bills","","0","","0");





CREATE TABLE `our_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `sector` varchar(90) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO our_tables VALUES("1","1","1","Restaurant","10");
INSERT INTO our_tables VALUES("2","2","1","Restaurant","10");
INSERT INTO our_tables VALUES("3","1","1","Bar Le Dja","15");
INSERT INTO our_tables VALUES("4","2","1","Bar Le Dja","15");
INSERT INTO our_tables VALUES("5","3","1","Bar Le Dja","15");
INSERT INTO our_tables VALUES("6","1","1","Bar Two","6");
INSERT INTO our_tables VALUES("7","2","1","Bar Two","6");
INSERT INTO our_tables VALUES("8","3","1","Bar Two","6");
INSERT INTO our_tables VALUES("9","4","1","Bar Two","6");
INSERT INTO our_tables VALUES("10","1","1","Reception Bar","55");
INSERT INTO our_tables VALUES("11","2","1","Reception Bar","55");
INSERT INTO our_tables VALUES("12","1","1","Reception","5");
INSERT INTO our_tables VALUES("13","2","1","Reception","5");





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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

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
INSERT INTO ourclients VALUES("22","25","Standard","1100","25000","2","290000","0","0","10/15/2017","13-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("23","26","Standard","2301","22445","2","2445","0","0","10/21/2017","19-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("24","27","Standard","1100","22000","2","44000","0","0","11/01/2017","30-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("25","28","Standard","1100","22000","1","44000","0","0","10/31/2017","30-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("26","29","Standard","1100","22000","1","994000","0","0","10/30/2017","29-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("27","30","Standard","1101","22000","1","22000","0","0","10/31/2017","30-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("28","31","Standard","1101","22000","1","22000","0","0","10/31/2017","30-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("29","32","Standard","1101","23000","1","23000","0","0","10/31/2017","30-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("30","33","Standard","1101","23000","1","23000","0","0","10/31/2017","30-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("31","34","Standard","1100","22000","1","132000","","0","10/31/2017","30-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("32","35","Standard","1101","23000","1","0","","23000","10/31/2017","30-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("33","36","Standard","1101","28000","1","330500","0","0","10/31/2017","30-10-2017","10","2017","","");
INSERT INTO ourclients VALUES("34","37","Standard","1308","15000","1","0","0","15000","11/05/2017","04-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("35","38","Standard","1100","15000","1","51000","0","0","11/05/2017","04-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("36","39","Standard","1100","15000","1","114000","0","0","11/05/2017","04-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("37","40","Standard","1100","15000","2","54500","0","0","11/06/2017","04-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("38","41","Standard","1100","15000","1","10000","0","0","11/05/2017","04-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("39","42","Standard","1100","15000","1","25000","0","0","11/05/2017","04-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("40","43","Standard","1101","15000","1","44500","0","0","11/06/2017","05-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("41","44","Standard","1100","15000","1","0","0","15000","11/08/2017","07-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("42","45","Standard","1101","25000","3","0","0","122000","11/10/2017","07-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("43","58","Executive Suites","","15000","1","0","","15000","11/28/2017","27-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("44","62","Presidential Suites","1200","35000","1","0","","35000","11/28/2017","27-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("45","64","Presidential Suites","1200","35000","1","0","","35000","11/28/2017","27-11-2017","11","2017","","");
INSERT INTO ourclients VALUES("46","65","Standard","1202","10000","1","0","","10000","11/28/2017","27-11-2017","11","2017","","");





CREATE TABLE `overtime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `payment_modes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `code` varchar(20) NOT NULL,
  `pmt` int(11) NOT NULL,
  `cid` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO payment_modes VALUES("1","CASH","C","1","");
INSERT INTO payment_modes VALUES("2","COMPANY","COM","0","COM");
INSERT INTO payment_modes VALUES("3","FREE","FREE","1","FREE");
INSERT INTO payment_modes VALUES("4","ROOMS","R","0","");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO problems VALUES("1","24-07-2017 20:45:39","<p>bad door lock</p>","mevybrown","S","S202","2");
INSERT INTO problems VALUES("2","13-10-2017 23:00:22","bnnnn","admin12","1","1200","0");





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
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

INSERT INTO products VALUES("1","Top A","TOP","1000.00","28","","06-11-2017","0","445","","","","Bar","15");
INSERT INTO products VALUES("2","TOP C","TOP","1000.00","40","","04-11-2017","0","445","","","","Bar Le Dja","15");
INSERT INTO products VALUES("3","EXPORT","BEER","1500.00","23","","06-11-2017","0","560","","","","Bar","15");
INSERT INTO products VALUES("4","AMSTEL","BEER","1500.00","34","","06-11-2017","0","555","","","","Bar","15");
INSERT INTO products VALUES("5","GUINESS SM","BEER","1500.00","17","","06-11-2017","0","590","","","","Bar","15");
INSERT INTO products VALUES("6","Heindeken Big","Can","1000.00","36","","04-11-2017","0","700","","","","Bar Le Dja","15");
INSERT INTO products VALUES("7","Heindeken Small","Can","800.00","37","","04-11-2017","0","400","","","","Bar Le Dja","15");
INSERT INTO products VALUES("8","Manyang","Beer","600.00","6","","04-11-2017","0","455","","","","Bar Le Dja","15");
INSERT INTO products VALUES("9","Top A","TOP","1000.00","30","","03-11-2017","0","445","","","","Restau","10");
INSERT INTO products VALUES("10","TOP C","TOP","1000.00","30","","03-11-2017","0","445","","","","Restau","10");
INSERT INTO products VALUES("11","EXPORT","BEER","1500.00","31","","03-11-2017","0","560","","","","Restau","10");
INSERT INTO products VALUES("12","AMSTEL","BEER","1500.00","31","","03-11-2017","0","555","","","","Restau","10");
INSERT INTO products VALUES("13","GUINESS SM","BEER","1500.00","31","","","0","590","","","","Restau","10");
INSERT INTO products VALUES("14","Heindeken Big","Can","1000.00","30","","03-11-2017","0","700","","","","Restau","10");
INSERT INTO products VALUES("15","Heindeken Small","Can","800.00","30","","03-11-2017","0","400","","","","Restau","10");
INSERT INTO products VALUES("16","Manyang","Beer","600.00","31","","03-11-2017","0","455","","","","Restau","10");
INSERT INTO products VALUES("18","Heindeken Big","","1000.00","30","","03-11-2017","0","","2017","","","Bar","0");
INSERT INTO products VALUES("19","TOP C","","1000.00","30","","03-11-2017","0","","2017","","","Bar","0");
INSERT INTO products VALUES("20","Top P","Top","1000.00","29","","04-11-2017","0","445","","","","Bar Le Dja","15");
INSERT INTO products VALUES("21","Mutzig","Beer","1000.00","17","","04-11-2017","0","500","","","","Bar","15");
INSERT INTO products VALUES("22","Blue Label","Wisky","45000.00","28","","04-11-2017","0","15000","","","","Bar Le Dja","15");
INSERT INTO products VALUES("23","Black Label","Wisky","50000.00","19","","06-11-2017","0","17000","","","","Bar","15");
INSERT INTO products VALUES("24","Blue Heaven","Wine","5000.00","29","","06-11-2017","0","1500","","","","Bar","15");
INSERT INTO products VALUES("25","Top G","Top","1000.00","30","","04-11-2017","0","445","","","","Bar","15");
INSERT INTO products VALUES("26","Supermonth 1l","Water","1000.00","29","","06-11-2017","0","250","","","","Bar","15");
INSERT INTO products VALUES("27","Baron De Roi","Wine","2000.00","30","","06-11-2017","0","900","","","","Bar","15");
INSERT INTO products VALUES("28","Natural Fruit Juice","Juice","1000.00","24","","04-11-2017","0","300","","","","Bar Le Dja","15");
INSERT INTO products VALUES("29","Guiness Smooth","Beer","2000.00","14","","04-11-2017","0","600","","","","Bar","15");
INSERT INTO products VALUES("34","Top A","TOP","1000.00","8","","19-11-2017","0","445","","","","Bar two","6");
INSERT INTO products VALUES("31","Guiness Smooth","","2000.00","30","","04-11-2017","0","","2017","","","Bar","0");
INSERT INTO products VALUES("32","Top G","","1000.00","30","","04-11-2017","0","","2017","","","Bar","0");
INSERT INTO products VALUES("33","Supermonth 1l","","1000.00","30","","04-11-2017","0","","2017","","","Bar","0");
INSERT INTO products VALUES("35","TOP C","TOP","1000.00","9","","19-11-2017","0","445","","","","Bar two","6");
INSERT INTO products VALUES("36","EXPORT","BEER","1500.00","-3","","19-11-2017","0","560","","","","Bar two","6");
INSERT INTO products VALUES("37","AMSTEL","BEER","1500.00","-1","","19-11-2017","0","555","","","","Bar two","6");
INSERT INTO products VALUES("38","GUINESS SM","BEER","1500.00","0","","19-11-2017","0","590","","","","Bar two","6");
INSERT INTO products VALUES("39","Heindeken Big","Can","1000.00","0","","19-11-2017","0","700","","","","Bar two","6");
INSERT INTO products VALUES("40","Heindeken Small","Can","800.00","2","","19-11-2017","0","400","","","","Bar two","6");
INSERT INTO products VALUES("41","Manyang","Beer","600.00","0","","","0","455","","","","Bar two","6");
INSERT INTO products VALUES("42","Top P","Top","1000.00","0","","","0","445","","","","Bar two","6");
INSERT INTO products VALUES("43","Mutzig","Beer","1000.00","0","","","0","500","","","","Bar two","6");
INSERT INTO products VALUES("44","Blue Label","Wisky","45000.00","0","","","0","15000","","","","Bar two","6");
INSERT INTO products VALUES("45","Black Label","Wisky","50000.00","0","","","0","17000","","","","Bar two","6");
INSERT INTO products VALUES("46","Blue Heaven","Wine","5000.00","0","","","0","1500","","","","Bar two","6");
INSERT INTO products VALUES("47","Top G","Top","1000.00","0","","","0","445","","","","Bar two","6");
INSERT INTO products VALUES("48","Supermonth 1l","Water","1000.00","0","","","0","250","","","","Bar two","6");
INSERT INTO products VALUES("49","Baron De Roi","Wine","2000.00","0","","","0","900","","","","Bar two","6");
INSERT INTO products VALUES("50","Natural Fruit Juice","Juice","1000.00","0","","","0","300","","","","Bar two","6");
INSERT INTO products VALUES("51","Guiness Smooth","Beer","2000.00","0","","","0","600","","","","Bar two","6");
INSERT INTO products VALUES("106","Top A","TOP","1000.00","0","","","0","445","","","","","0");
INSERT INTO products VALUES("54","EXPORT","BEER","1500.00","0","","","0","560","","","","Reception Bar","5");
INSERT INTO products VALUES("55","AMSTEL","BEER","1500.00","0","","","0","555","","","","Reception Bar","5");
INSERT INTO products VALUES("56","GUINESS SM","BEER","1500.00","0","","","0","590","","","","Reception Bar","5");
INSERT INTO products VALUES("57","Heindeken Big","Can","1000.00","0","","","0","700","","","","Reception Bar","5");
INSERT INTO products VALUES("58","Heindeken Small","Can","800.00","0","","","0","400","","","","Reception Bar","5");
INSERT INTO products VALUES("59","Manyang","Beer","600.00","0","","","0","455","","","","Reception Bar","5");
INSERT INTO products VALUES("61","Mutzig","Beer","1000.00","0","","","0","500","","","","Reception Bar","5");
INSERT INTO products VALUES("62","Blue Label","Wisky","45000.00","0","","","0","15000","","","","Reception Bar","5");
INSERT INTO products VALUES("63","Black Label","Wisky","50000.00","0","","","0","17000","","","","Reception Bar","5");
INSERT INTO products VALUES("105","Guiness Smooth","Beer","2000.00","0","","","0","600","","","","Reception Bar","55");
INSERT INTO products VALUES("66","Supermonth 1l","Water","1000.00","0","","","0","250","","","","Reception Bar","5");
INSERT INTO products VALUES("103","Baron De Roi","Wine","2000.00","0","","","0","900","","","","Reception Bar","55");
INSERT INTO products VALUES("68","Natural Fruit Juice","Juice","1000.00","0","","","0","300","","","","Reception Bar","5");
INSERT INTO products VALUES("69","Guiness Smooth","Beer","2000.00","0","","","0","600","","","","Reception Bar","5");
INSERT INTO products VALUES("107","TOP C","TOP","1000.00","0","","","0","445","","","","","0");
INSERT INTO products VALUES("104","Natural Fruit Juice","Juice","1000.00","10","","27-11-2017","0","300","","","","Reception Bar","55");
INSERT INTO products VALUES("102","Supermonth 1l","Water","1000.00","0","","","0","250","","","","Reception Bar","55");
INSERT INTO products VALUES("101","Top G","Top","1000.00","6","","27-11-2017","0","445","","","","Reception Bar","55");
INSERT INTO products VALUES("100","Blue Heaven","Wine","5000.00","0","","","0","1500","","","","Reception Bar","55");
INSERT INTO products VALUES("99","Black Label","Wisky","50000.00","0","","","0","17000","","","","Reception Bar","55");
INSERT INTO products VALUES("98","Blue Label","Wisky","45000.00","0","","","0","15000","","","","Reception Bar","55");
INSERT INTO products VALUES("97","Mutzig","Beer","1000.00","0","","","0","500","","","","Reception Bar","55");
INSERT INTO products VALUES("96","Top P","Top","1000.00","0","","27-11-2017","0","445","","","","Reception Bar","55");
INSERT INTO products VALUES("95","Manyang","Beer","600.00","0","","","0","455","","","","Reception Bar","55");
INSERT INTO products VALUES("94","Heindeken Small","Can","800.00","0","","","0","400","","","","Reception Bar","55");
INSERT INTO products VALUES("93","Heindeken Big","Can","1000.00","0","","","0","700","","","","Reception Bar","55");
INSERT INTO products VALUES("92","GUINESS SM","BEER","1500.00","0","","","0","590","","","","Reception Bar","55");
INSERT INTO products VALUES("91","AMSTEL","BEER","1500.00","0","","","0","555","","","","Reception Bar","55");
INSERT INTO products VALUES("89","TOP C","TOP","1000.00","6","","27-11-2017","0","445","","","","Reception Bar","55");
INSERT INTO products VALUES("90","EXPORT","BEER","1500.00","0","","","0","560","","","","Reception Bar","55");
INSERT INTO products VALUES("88","Top A","TOP","1000.00","5","","27-11-2017","0","445","","","","Reception Bar","55");
INSERT INTO products VALUES("108","EXPORT","BEER","1500.00","0","","","0","560","","","","","0");
INSERT INTO products VALUES("109","AMSTEL","BEER","1500.00","0","","","0","555","","","","","0");
INSERT INTO products VALUES("110","GUINESS SM","BEER","1500.00","0","","","0","590","","","","","0");
INSERT INTO products VALUES("111","Heindeken Big","Can","1000.00","0","","","0","700","","","","","0");
INSERT INTO products VALUES("112","Heindeken Small","Can","800.00","0","","","0","400","","","","","0");
INSERT INTO products VALUES("113","Manyang","Beer","600.00","0","","","0","455","","","","","0");
INSERT INTO products VALUES("114","Top P","Top","1000.00","0","","","0","445","","","","","0");
INSERT INTO products VALUES("115","Mutzig","Beer","1000.00","0","","","0","500","","","","","0");
INSERT INTO products VALUES("116","Blue Label","Wisky","45000.00","0","","","0","15000","","","","","0");
INSERT INTO products VALUES("117","Black Label","Wisky","50000.00","0","","","0","17000","","","","","0");
INSERT INTO products VALUES("118","Blue Heaven","Wine","5000.00","0","","","0","1500","","","","","0");
INSERT INTO products VALUES("119","Top G","Top","1000.00","0","","","0","445","","","","","0");
INSERT INTO products VALUES("120","Supermonth 1l","Water","1000.00","0","","","0","250","","","","","0");
INSERT INTO products VALUES("121","Baron De Roi","Wine","2000.00","0","","","0","900","","","","","0");
INSERT INTO products VALUES("122","Natural Fruit Juice","Juice","1000.00","0","","","0","300","","","","","0");
INSERT INTO products VALUES("123","Guiness Smooth","Beer","2000.00","0","","","0","600","","","","","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

INSERT INTO reports VALUES("1","19","26-07-2017","03-08-2017","08","2017","03-08-2017","9","OMEGA FIRE MINISTRY","S101","0","232000","0","","","checkout");
INSERT INTO reports VALUES("2","20","03-08-2017","05-08-2017","08","2017","05-08-2017","3","OMEGA FIRE MINISTRY","1","0","125500","0","","","checkout");
INSERT INTO reports VALUES("3","21","05-08-2017","08-08-2017","08","2017","08-08-2017","4","OMEGA FIRE MINISTRY","D204","68000","0","0","","","checkout");
INSERT INTO reports VALUES("4","22","08-08-2017","08-08-2017","08","2017","08-08-2017","1","OMEGA FIRE MINISTRY","S105","25000","0","0","","","checkout");
INSERT INTO reports VALUES("5","23","08-08-2017","08-08-2017","08","2017","08-08-2017","1","OMEGA FIRE MINISTRY","S205","25000","0","0","","","checkout");
INSERT INTO reports VALUES("6","26","19-10-2017","19-10-2017","10","2017","19-10-2017","1","Mbh Hhhjj","2301","0","2445","0","","","checkout");
INSERT INTO reports VALUES("7","25","13-10-2017","24-10-2017","10","2017","24-10-2017","12","Guy Daneil Kamga","1100","0","290000","0","","","checkout");
INSERT INTO reports VALUES("8","0","","24-10-2017","","","","0","admin12","","","280000","","","290000","edited");
INSERT INTO reports VALUES("9","0","","24-10-2017","","","","0","admin12","","","10000","","","5000","edited expense");
INSERT INTO reports VALUES("10","0","","24-10-2017","","","","0","admin12","","","12000","","","10000","edited expense");
INSERT INTO reports VALUES("11","27","30-10-2017","30-10-2017","10","2017","30-10-2017","2","Gimi Lama Palois","1100","0","44000","0","","","checkout");
INSERT INTO reports VALUES("12","28","30-10-2017","30-10-2017","10","2017","30-10-2017","2","Gimi Lama Palois","1100","0","44000","0","","","checkout");
INSERT INTO reports VALUES("13","30","30-10-2017","30-10-2017","10","2017","30-10-2017","1","Gimi Lama Palois","1101","0","22000","0","","","checkout");
INSERT INTO reports VALUES("14","31","30-10-2017","30-10-2017","10","2017","30-10-2017","1","Gimi Lama Palois","1101","0","22000","0","","","checkout");
INSERT INTO reports VALUES("15","32","30-10-2017","30-10-2017","10","2017","30-10-2017","1","Gimi Lama Palois","1101","0","23000","0","","","checkout");
INSERT INTO reports VALUES("16","29","29-10-2017","30-10-2017","10","2017","30-10-2017","2","Gimi Lama Palois","1100","0","994000","0","","","checkout");
INSERT INTO reports VALUES("17","33","30-10-2017","30-10-2017","10","2017","30-10-2017","1","Gimi Lama Palois","1101","0","23000","0","","","checkout");
INSERT INTO reports VALUES("18","35","30-10-2017","30-10-2017","10","2017","30-10-2017","1","Mtn","1101","23000","0","0","","","checkout");
INSERT INTO reports VALUES("19","34","30-10-2017","04-11-2017","11","2017","04-11-2017","6","BASIC EDUCATION","1100","0","132000","0","","","checkout");
INSERT INTO reports VALUES("20","0","","04-11-2017 08:49:28","11","2017","","0","admin12","Bar Le Dja","","","","","5000","discount");
INSERT INTO reports VALUES("21","36","30-10-2017","04-11-2017","11","2017","04-11-2017","6","Mbah U Isaac","1101","0","330500","0","","","checkout");
INSERT INTO reports VALUES("22","0","","04-11-2017 09:48:57","11","2017","","0","admin12","Bar Le Dja","","","","","2500","discount");
INSERT INTO reports VALUES("23","0","","04-11-2017 09:49:47","11","2017","","0","admin12","Bar Le Dja","","","","","5000","discount");
INSERT INTO reports VALUES("24","38","04-11-2017","04-11-2017","11","2017","04-11-2017","1","Mua Joseph","1100","0","51000","0","","","checkout");
INSERT INTO reports VALUES("25","0","","04-11-2017 10:04:10","11","2017","","0","admin12","Bar Le Dja","","","","","4000","discount");
INSERT INTO reports VALUES("26","0","","04-11-2017 10:10:54","11","2017","","0","admin12","Bar Le Dja","","","","","5000","discount");
INSERT INTO reports VALUES("27","39","04-11-2017","04-11-2017","11","2017","04-11-2017","1","Mua Joseph","1100","0","114000","0","","","checkout");
INSERT INTO reports VALUES("28","0","","04-11-2017 10:21:34","11","2017","","0","admin12","Bar Le Dja","","","","","4000","discount");
INSERT INTO reports VALUES("29","0","","04-11-2017 10:22:24","11","2017","","0","admin12","Restau\n","","","","","2500","discount");
INSERT INTO reports VALUES("30","40","04-11-2017","04-11-2017","11","2017","04-11-2017","1","Ntum Clovis","1100","0","54500","0","","","checkout");
INSERT INTO reports VALUES("31","0","","04-11-2017 10:33:52","11","2017","","0","admin12","Bar Le Dja","","","","","2000","discount");
INSERT INTO reports VALUES("32","0","","04-11-2017 10:41:18","11","2017","","0","admin12","Restau\n","","","","","2800","discount");
INSERT INTO reports VALUES("33","41","04-11-2017","04-11-2017","11","2017","04-11-2017","1","Nishang Isaac","1100","0","10000","0","","","checkout");
INSERT INTO reports VALUES("34","42","04-11-2017","05-11-2017","11","2017","05-11-2017","1","Nishang Isaac","1100","0","25000","0","","","checkout");
INSERT INTO reports VALUES("35","43","05-11-2017","07-11-2017","11","2017","07-11-2017","3","Kappal Mu","1101","0","44500","0","","","checkout");
INSERT INTO reports VALUES("36","0","","07-11-2017 01:47:20","11","2017","","0","admin12","Bar Le Dja","","","","","5000","discount");
INSERT INTO reports VALUES("37","45","07-11-2017","10-11-2017","11","2017","10-11-2017","4","Mr.Bakari","1101","122000","0","0","","","checkout");
INSERT INTO reports VALUES("38","0","","16-11-2017 04:37:57","11","2017","","0","admin12","Restaurant","","","","","1500","discount");
INSERT INTO reports VALUES("39","0","","16-11-2017 04:38:48","11","2017","","0","admin12","Restaurant","","","","","0","discount");
INSERT INTO reports VALUES("40","0","","20-11-2017 10:09:46","11","2017","","0","admin12","Bar two","","","","","1500","discount");
INSERT INTO reports VALUES("41","0","","20-11-2017 10:21:24","11","2017","","0","admin12","Bar two","","","","","800","discount");
INSERT INTO reports VALUES("42","0","","20-11-2017 10:59:45","11","2017","","0","admin12","Bar Le Dja","","","","","2500","discount");
INSERT INTO reports VALUES("43","0","","20-11-2017 11:05:25","11","2017","","0","admin12","Bar Le Dja","","","","","5","discount");
INSERT INTO reports VALUES("44","0","","20-11-2017 11:05:34","11","2017","","0","admin12","Bar Le Dja","","","","","1500","discount");
INSERT INTO reports VALUES("45","0","","20-11-2017 11:07:45","11","2017","","0","admin12","Bar Le Dja","","","","","150","discount");
INSERT INTO reports VALUES("46","0","","20-11-2017 11:09:09","11","2017","","0","admin12","Bar Le Dja","","","","","500","discount");
INSERT INTO reports VALUES("47","0","","20-11-2017 11:10:20","11","2017","","0","admin12","Bar Le Dja","","","","","500","discount");
INSERT INTO reports VALUES("48","48","20-11-2017","22-11-2017","11","2017","22-11-2017","3","Nishang Isaac","1100","0","25000","0","","","checkout");
INSERT INTO reports VALUES("49","49","22-11-2017","23-11-2017","11","2017","23-11-2017","2","Ntum Clovis","1100","0","155000","0","","","checkout");
INSERT INTO reports VALUES("50","50","23-11-2017","23-11-2017","11","2017","23-11-2017","1","Nishang Isaac","1207","0","10000","0","","","checkout");
INSERT INTO reports VALUES("51","51","23-11-2017","23-11-2017","11","2017","23-11-2017","1","Mua Joseph","2104","0","10000","0","","","checkout");
INSERT INTO reports VALUES("52","53","20-11-2017","22-11-2017","11","2017","22-11-2017","3","Mr.Bakari","1200","0","100000","0","","","checkout");
INSERT INTO reports VALUES("53","55","22-11-2017","22-11-2017","11","2017","22-11-2017","1","Ni John Fru","1201","0","15000","0","","","checkout");
INSERT INTO reports VALUES("54","56","22-11-2017","23-11-2017","11","2017","23-11-2017","2","Ni John Fru","1201","0","129135","0","","","checkout");
INSERT INTO reports VALUES("55","57","23-11-2017","25-11-2017","11","2017","25-11-2017","3","Tamukum Moses","2104","0","74668","17000","","","checkout");
INSERT INTO reports VALUES("56","0","","25-11-2017 09:03:28","11","2017","","0","admin12","Bar Le Dja","","","","","1500","discount");
INSERT INTO reports VALUES("57","60","27-11-2017","27-11-2017","11","2017","27-11-2017","1","Apostle Paul Krum","1200","0","15925","0","","","checkout");
INSERT INTO reports VALUES("58","58","27-11-2017","27-11-2017","11","2017","27-11-2017","1","OMEGA FIRE MINISTRY","1204","27850","0","0","","","checkout");
INSERT INTO reports VALUES("59","61","27-11-2017","27-11-2017","11","2017","27-11-2017","1","Mr.Bakari James","1202","0","26658","0","","","checkout");
INSERT INTO reports VALUES("60","62","27-11-2017","27-11-2017","11","2017","27-11-2017","1","OMEGA FIRE MINISTRY","1200","46315","3000","0","","","checkout");
INSERT INTO reports VALUES("61","63","27-11-2017","27-11-2017","11","2017","27-11-2017","1","Apostle Paul Krum","1200","0","45738","0","","","checkout");
INSERT INTO reports VALUES("62","54","22-11-2017","27-11-2017","11","2017","27-11-2017","6","Ntum Clovis Mk","1100","0","174851","0","","","checkout");
INSERT INTO reports VALUES("63","64","27-11-2017","27-11-2017","11","2017","27-11-2017","1","OMEGA FIRE MINISTRY","1200","50508","0","0","","","checkout");
INSERT INTO reports VALUES("64","65","27-11-2017","27-11-2017","11","2017","27-11-2017","1","Mbah Nishang Is","1202","21888","0","0","","","checkout");





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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO reserves VALUES("1","Me anfd Yii","2101","13","11","2017","46","0","11/13/2017","","2026","01","32","01/2026/32","80000");





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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO rooinventory VALUES("1","Atem mathias","","08/17/2017","10","active","yes","","07","2017","17","17","Conference Hall","","0");
INSERT INTO rooinventory VALUES("2","Mbah Isaac","","2017-08-03","13","active","yes","16","08","2017","03/08/2017","19","Conference Hall","","18");
INSERT INTO rooinventory VALUES("3","Mbah Isaac","","2017-08-03","7","active","yes","18","08","2017","03/08/2017","15","Pool","","18");
INSERT INTO rooinventory VALUES("4","OMEGA FIRE MINISTRY","","2017-07-28","10","active","yes","18","07","2017","28/07/2017","15","Car Rental Service","","19");
INSERT INTO rooinventory VALUES("5","OMEGA FIRE MINISTRY","","2017-08-03","10","active","yes","08","08","2017","03/08/2017","18","Car Rental Service","","19");
INSERT INTO rooinventory VALUES("6","Omega Fire Ministries Int","","08/08/2017","7","active","yes","","08","2017","08","18","Conference Hall","","0");
INSERT INTO rooinventory VALUES("7","Gimi Lama Palois","","2017-10-30","14","active","yes","09","10","2017","30/10/2017","18","Conference Hall","","29");
INSERT INTO rooinventory VALUES("8","mmmmmm","","10/09/2017","1","active","","","10","2017","09","8","Car Rental Service","","0");
INSERT INTO rooinventory VALUES("9","Mbah U Isaac","","2017-11-04","16","active","yes","09","11","2017","04/11/2017","18","Conference Hall","","36");
INSERT INTO rooinventory VALUES("10","Mbah U Isaac","","2017-11-04","2","active","yes","13","11","2017","04/11/2017","11","Car Rental Service","","36");
INSERT INTO rooinventory VALUES("11","guiness pm","","01/17/2017","14","active","yes","","11","2017","17","19","Car Rental Service","","0");
INSERT INTO rooinventory VALUES("12","Ntum Clovis","","2017-11-23","9","active","yes","12","11","2017","23/11/2017","15","Conference Hall","","49");
INSERT INTO rooinventory VALUES("13","Mr.Bakari","","2017-11-22","6","active","yes","01","11","2017","22/11/2017","8","Car Rental Service","","53");





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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO roomproduct_records VALUES("1","Top A","555","1000.00","1","","42","05-11-2017","1000.00","2","1100");
INSERT INTO roomproduct_records VALUES("2","TOP C","555","1000.00","1","","42","05-11-2017","1000.00","2","1100");
INSERT INTO roomproduct_records VALUES("3","EXPORT","940","1500.00","1","","42","05-11-2017","1500.00","2","1100");
INSERT INTO roomproduct_records VALUES("4","AMSTEL","945","1500.00","1","","42","05-11-2017","1500.00","2","1100");
INSERT INTO roomproduct_records VALUES("5","AMSTEL","945","1500.00","1","","43","05-11-2017","1500.00","2","1101");
INSERT INTO roomproduct_records VALUES("6","AMSTEL","945","1500.00","1","","43","05-11-2017","1500.00","2","1101");
INSERT INTO roomproduct_records VALUES("7","GUINESS SM","910","1500.00","1","","43","05-11-2017","1500.00","2","1101");





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
INSERT INTO rooms VALUES("2","1102","Standard","1","1","2441","0");
INSERT INTO rooms VALUES("3","1200","Presidential Suites","1","1","1252","0");
INSERT INTO rooms VALUES("4","1201","Standard","1","1","2081","0");
INSERT INTO rooms VALUES("5","1202","Standard","1","1","0","0");
INSERT INTO rooms VALUES("6","1203","Executive Suites","1","1","0","0");
INSERT INTO rooms VALUES("7","1204","Executive Suites","1","1","2390","0");
INSERT INTO rooms VALUES("8","1205","Deluxe","1","1","2384","0");
INSERT INTO rooms VALUES("9","1206","Standard","1","1","2437","0");
INSERT INTO rooms VALUES("10","1207","Deluxe","1","1","0","0");
INSERT INTO rooms VALUES("11","1300","Executive Suites","1","1","2391","0");
INSERT INTO rooms VALUES("12","1302","Deluxe","1","1","2439","0");
INSERT INTO rooms VALUES("13","1303","Standard","1","1","2440","0");
INSERT INTO rooms VALUES("14","1304","Executive Suites","1","1","2392","0");
INSERT INTO rooms VALUES("15","1305","Executive Suites","1","1","2394","0");
INSERT INTO rooms VALUES("16","1306","Deluxe","1","1","0","0");
INSERT INTO rooms VALUES("17","1307","Standard","1","1","0","0");
INSERT INTO rooms VALUES("18","1308","Standard","1","1","0","5000");
INSERT INTO rooms VALUES("19","1101","Standard","2","1","0","0");
INSERT INTO rooms VALUES("20","1301","Standard","1","1","0","0");
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
INSERT INTO rooms VALUES("34","2300","Deluxe","1","2","1133","0");
INSERT INTO rooms VALUES("35","2301","Standard","1","2","1860","0");
INSERT INTO rooms VALUES("36","2302","Standard","2","2","0","0");
INSERT INTO rooms VALUES("37","2303","Standard","1","2","0","0");
INSERT INTO rooms VALUES("38","2304","Standard","1","2","0","0");
INSERT INTO rooms VALUES("39","2305","Standard","1","2","1819","0");
INSERT INTO rooms VALUES("40","2306","Standard","1","2","1813","0");
INSERT INTO rooms VALUES("41","2101","Standard","1","2","46","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO rooms_products VALUES("1","Top A","TOP","1000.00","0","","30-10-2017","0","","","","","1100","","445");
INSERT INTO rooms_products VALUES("2","TOP C","TOP","1000.00","1","","30-10-2017","0","","","","","1100","","445");
INSERT INTO rooms_products VALUES("3","EXPORT","BEER","1500.00","2","","30-10-2017","0","","","","","1100","","560");
INSERT INTO rooms_products VALUES("4","AMSTEL","BEER","1500.00","3","","30-10-2017","0","","","","","1100","","555");
INSERT INTO rooms_products VALUES("5","Top A","TOP","1000.00","1","","30-10-2017","0","","","","","1101","","445");
INSERT INTO rooms_products VALUES("6","TOP C","TOP","1000.00","2","","30-10-2017","0","","","","","1101","","445");
INSERT INTO rooms_products VALUES("7","EXPORT","BEER","1500.00","3","","30-10-2017","0","","","","","1101","","560");
INSERT INTO rooms_products VALUES("8","AMSTEL","BEER","1500.00","2","","30-10-2017","0","","","","","1101","","555");
INSERT INTO rooms_products VALUES("9","GUINESS SM","BEER","1500.00","0","","30-10-2017","0","","","","","1101","","590");





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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO roomstockl_records VALUES("1","Top A","TOP","1000.00","2","Mua Joseph","42","04-11-2017","","0","1100","0","");
INSERT INTO roomstockl_records VALUES("2","TOP C","TOP","1000.00","2","Mua Joseph","42","04-11-2017","","0","1100","0","");
INSERT INTO roomstockl_records VALUES("3","EXPORT","BEER","1500.00","2","Mua Joseph","42","04-11-2017","","0","1100","0","");
INSERT INTO roomstockl_records VALUES("4","AMSTEL","BEER","1500.00","2","Mua Joseph","42","04-11-2017","","0","1100","0","");
INSERT INTO roomstockl_records VALUES("9","Top A","TOP","1000.00","1","Kappal Mu","43","05-11-2017","","0","1101","0","");
INSERT INTO roomstockl_records VALUES("10","TOP C","TOP","1000.00","2","Kappal Mu","43","05-11-2017","","0","1101","0","");
INSERT INTO roomstockl_records VALUES("11","EXPORT","BEER","1500.00","3","Kappal Mu","43","05-11-2017","","0","1101","0","");
INSERT INTO roomstockl_records VALUES("12","AMSTEL","BEER","1500.00","2","Kappal Mu","43","05-11-2017","","0","1101","0","");
INSERT INTO roomstockl_records VALUES("13","GUINESS SM","BEER","1500.00","0","Kappal Mu","43","05-11-2017","","0","1101","0","");





CREATE TABLE `sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `area` int(11) NOT NULL,
  `link` varchar(98) NOT NULL,
  `does` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO sectors VALUES("18","Admin","20","Admin/adminpage,php?sector=Admin","0");
INSERT INTO sectors VALUES("19","Reception","5","Reception/frontpage.php?sector=Reception","0");
INSERT INTO sectors VALUES("21","Bar Le Dja","15","Bar/restaupage.php?area=15&name=Bar Le Dja","2");
INSERT INTO sectors VALUES("22","Restaurant","10","Bar/restaupage.php?area=10&name=Restaurant","2");
INSERT INTO sectors VALUES("23","Rental Services","17","Rental/rentalpage.php?sector=Rental Services","0");
INSERT INTO sectors VALUES("25","Terrace Bar And Grill","2","Bauca/restaupage.php?area=2","0");
INSERT INTO sectors VALUES("26","Drinks Control Admin","150","Chiefs/dashboard.php?sector=Drinks Control Admin","0");
INSERT INTO sectors VALUES("27","House Keeping Deparment","16","Store/stockpage.php?sector=Fixed Stock Supply Admin","0");
INSERT INTO sectors VALUES("28","Swimming Pool Guard","3","Swimming/frontpage.php?area=3","0");
INSERT INTO sectors VALUES("29","Accountant","100","Acc/accpage.php?area=100","0");
INSERT INTO sectors VALUES("30","Waitress/Waiters","9","resp/casheir/index.php?area=15","0");
INSERT INTO sectors VALUES("31","Bar two","6","Bar/restaupage.php?area=6&name=Bar two","2");
INSERT INTO sectors VALUES("32","Reception Bar","55","Bar/restaupage.php?area=55&name=Reception Bar","2");





CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `ids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO services VALUES("1","Bar Bills","0");
INSERT INTO services VALUES("2","Restau Bills","0");
INSERT INTO services VALUES("3","ROOM SERVICE","0");
INSERT INTO services VALUES("4","Ironing","0");
INSERT INTO services VALUES("6","Laudry","0");
INSERT INTO services VALUES("7","1.5 L WATER","0");
INSERT INTO services VALUES("8","Ironing From House Keeping","0");





CREATE TABLE `spendingcats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(90) NOT NULL,
  `ids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO spendingcats VALUES("1","Transport","0");
INSERT INTO spendingcats VALUES("2","Credit","0");
INSERT INTO spendingcats VALUES("3","Fuel","0");





CREATE TABLE `splits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sp` varchar(11) NOT NULL,
  `area` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO splits VALUES("1","2","2","2B","15");
INSERT INTO splits VALUES("2","2","1","2C","15");





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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO stockreports VALUES("1","Top A","","10","admin12","15","","40","06-11-2017","11","2017","");
INSERT INTO stockreports VALUES("2","TOP C","","11","admin12","15","","41","06-11-2017","11","2017","");
INSERT INTO stockreports VALUES("3","Top G","","15","admin12","15","","45","06-11-2017","11","2017","");
INSERT INTO stockreports VALUES("4","Top P","","9","admin12","15","","39","06-11-2017","11","2017","");
INSERT INTO stockreports VALUES("5","AMSTEL","","13","admin12","15","","43","06-11-2017","11","2017","");
INSERT INTO stockreports VALUES("6","Heindeken Big","","7","admin12","15","","37","06-11-2017","11","2017","");
INSERT INTO stockreports VALUES("7","Heindeken Small","","8","admin12","15","","38","06-11-2017","11","2017","");
INSERT INTO stockreports VALUES("8","Top A","1000.00","8","admin12","Bar two","0","8","19-11-2017","11","2017","");
INSERT INTO stockreports VALUES("9","Top A","1000.00","5","admin12","Reception Bar","0","5","27-11-2017","11","2017","");
INSERT INTO stockreports VALUES("10","Natural Fruit Juice","1000.00","40","admin12","Reception Bar","00","40","27-11-2017","11","2017","");
INSERT INTO stockreports VALUES("11","Top A","1000.00","9","admin12","Reception Bar","0","9","27-11-2017","11","2017","");





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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO stocks VALUES("1","Top A","TOP","1000.00","42","445","","TOP");
INSERT INTO stocks VALUES("2","TOP C","TOP","1000.00","30","445","","TOP");
INSERT INTO stocks VALUES("3","EXPORT","BEER","1500.00","50","560","","BEER");
INSERT INTO stocks VALUES("4","AMSTEL","BEER","1500.00","30","555","","BEER");
INSERT INTO stocks VALUES("5","GUINESS SM","BEER","1500.00","40","590","","BEER");
INSERT INTO stocks VALUES("6","Heindeken Big","Can","1000.00","35","700","","Can");
INSERT INTO stocks VALUES("7","Heindeken Small","Can","800.00","33","400","","Can");
INSERT INTO stocks VALUES("8","Manyang","Beer","600.00","50","455","","Beer");
INSERT INTO stocks VALUES("9","Top P","Top","1000.00","30","445","","Top");
INSERT INTO stocks VALUES("10","Mutzig","Beer","1000.00","50","500","","Beer");
INSERT INTO stocks VALUES("11","Blue Label","Wisky","45000.00","50","15000","","Wisky");
INSERT INTO stocks VALUES("12","Black Label","Wisky","50000.00","50","17000","","Wisky");
INSERT INTO stocks VALUES("13","Blue Heaven","Wine","5000.00","41","1500","","Wine");
INSERT INTO stocks VALUES("14","Top G","Top","1000.00","35","445","","Top");
INSERT INTO stocks VALUES("15","Supermonth 1l","Water","1000.00","50","250","","Water");
INSERT INTO stocks VALUES("16","Baron De Roi","Wine","2000.00","41","900","","Wine");
INSERT INTO stocks VALUES("18","Guiness Smooth","Beer","2000.00","50","600","","Beer");





CREATE TABLE `taxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vat` varchar(8) NOT NULL,
  `htax` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO taxes VALUES("1","19.25","4000");





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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;

INSERT INTO truck VALUES("1","admin12","Top A","1000.00","24","Bar Le Dja","26-07-2017","2","","","","","0");
INSERT INTO truck VALUES("2","admin12","TOP C","1000.00","22","Bar Le Dja","26-07-2017","2","","","","","0");
INSERT INTO truck VALUES("3","admin12","GUINESS SM","1500.00","24","Bar Le Dja","26-07-2017","2","","","","","0");
INSERT INTO truck VALUES("4","admin12","AMSTEL","1500.00","12","Bar Le Dja","26-07-2017","2","","","","","0");
INSERT INTO truck VALUES("5","admin12","Top A","1000.00","9","Bar Le Dja","29-10-2017","2","","","","","0");
INSERT INTO truck VALUES("6","admin12","TOP C","1000.00","9","Bar Le Dja","29-10-2017","2","","","","","0");
INSERT INTO truck VALUES("7","admin12","EXPORT","1500.00","4","Bar Le Dja","29-10-2017","2","","","","","0");
INSERT INTO truck VALUES("8","admin12","AMSTEL","1500.00","6","Bar Le Dja","29-10-2017","2","","","","","0");
INSERT INTO truck VALUES("9","admin12","GUINESS SM","1500.00","6","Bar Le Dja","29-10-2017","2","","","","","0");
INSERT INTO truck VALUES("10","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("11","admin12","TOP C","1000.00","3","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("12","admin12","EXPORT","1500.00","4","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("13","admin12","AMSTEL","1500.00","3","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("14","admin12","GUINESS SM","1500.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("15","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("16","admin12","TOP C","1000.00","2","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("17","admin12","EXPORT","1500.00","2","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("18","admin12","AMSTEL","1500.00","2","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("19","admin12","GUINESS SM","1500.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("20","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("21","admin12","TOP C","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("22","admin12","EXPORT","1500.00","2","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("23","admin12","AMSTEL","1500.00","2","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("24","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("25","admin12","TOP C","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("26","admin12","EXPORT","1500.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("27","admin12","AMSTEL","1500.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("28","admin12","GUINESS SM","1500.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("29","admin12","Top A","1000.00","10","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("30","admin12","TOP C","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("31","admin12","EXPORT","1500.00","2","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("32","admin12","AMSTEL","1500.00","8","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("33","admin12","GUINESS SM","1500.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("34","admin12","Top A","1000.00","10","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("35","admin12","TOP C","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("36","admin12","EXPORT","1500.00","2","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("37","admin12","AMSTEL","1500.00","3","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("38","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("39","admin12","TOP C","1000.00","3","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("40","admin12","EXPORT","1500.00","4","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("41","admin12","AMSTEL","1500.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("42","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("43","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("44","admin12","EXPORT","1500.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("45","admin12","AMSTEL","1500.00","6","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("46","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("47","admin12","TOP C","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("48","admin12","EXPORT","1500.00","10","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("49","admin12","AMSTEL","1500.00","3","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("50","admin12","GUINESS SM","1500.00","6","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("51","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("52","admin12","TOP C","1000.00","8","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("53","admin12","EXPORT","1500.00","7","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("54","admin12","AMSTEL","1500.00","6","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("55","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("56","admin12","TOP C","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("57","admin12","EXPORT","1500.00","10","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("58","admin12","AMSTEL","1500.00","3","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("59","admin12","GUINESS SM","1500.00","6","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("60","admin12","Top A","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("61","admin12","TOP C","1000.00","10","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("62","admin12","EXPORT","1500.00","6","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("63","admin12","AMSTEL","1500.00","7","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("64","admin12","Top A","1000.00","10","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("65","admin12","TOP C","1000.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("66","admin12","EXPORT","1500.00","9","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("67","admin12","AMSTEL","1500.00","8","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("68","admin12","GUINESS SM","1500.00","5","Bar Le Dja","30-10-2017","2","","","","","0");
INSERT INTO truck VALUES("69","admin12","Top A","1000.00","3","1100","30-10-2017","2","room 1100","","","","0");
INSERT INTO truck VALUES("70","admin12","TOP C","1000.00","3","1100","30-10-2017","2","room 1100","","","","0");
INSERT INTO truck VALUES("71","admin12","EXPORT","1500.00","3","1100","30-10-2017","2","room 1100","","","","0");
INSERT INTO truck VALUES("72","admin12","AMSTEL","1500.00","3","1100","30-10-2017","2","room 1100","","","","0");
INSERT INTO truck VALUES("73","admin12","Top A","1000.00","1","1101","30-10-2017","2","room 1101","","","","0");
INSERT INTO truck VALUES("74","admin12","TOP C","1000.00","2","1101","30-10-2017","2","room 1101","","","","0");
INSERT INTO truck VALUES("75","admin12","EXPORT","1500.00","3","1101","30-10-2017","2","room 1101","","","","0");
INSERT INTO truck VALUES("76","admin12","AMSTEL","1500.00","4","1101","30-10-2017","2","room 1101","","","","0");
INSERT INTO truck VALUES("77","admin12","GUINESS SM","1500.00","1","1101","30-10-2017","2","room 1101","","","","0");
INSERT INTO truck VALUES("78","admin12","Top A","1000.00","5","Bar Le Dja","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("79","admin12","TOP C","1000.00","5","Bar Le Dja","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("80","admin12","EXPORT","1500.00","5","Bar Le Dja","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("81","admin12","AMSTEL","1500.00","6","Bar Le Dja","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("82","admin12","GUINESS SM","1500.00","7","Bar Le Dja","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("83","admin12","Heindeken Big","1000.00","7","Bar Le Dja","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("84","admin12","Heindeken Small","800.00","8","Bar Le Dja","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("85","admin12","Manyang","600.00","12","Bar Le Dja","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("86","admin12","Top A","1000.00","3","Restau","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("87","admin12","TOP C","1000.00","3","Restau","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("88","admin12","EXPORT","1500.00","3","Restau","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("89","admin12","AMSTEL","1500.00","3","Restau","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("90","admin12","Heindeken Big","1000.00","3","Restau","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("91","admin12","Heindeken Small","800.00","4","Restau","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("92","admin12","Manyang","600.00","8","Restau","03-11-2017","2","","","","","0");
INSERT INTO truck VALUES("93","admin12","EXPORT","1500.00","1","Bar","03-11-2017","2","","","","","15");
INSERT INTO truck VALUES("94","admin12","Heindeken Big","1000.00","1","Bar","03-11-2017","2","","","","","15");
INSERT INTO truck VALUES("95","admin12","TOP C","1000.00","1","Bar","03-11-2017","2","","","","","15");
INSERT INTO truck VALUES("96","admin12","Top A","1000.00","1","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("97","admin12","TOP C","1000.00","1","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("98","admin12","EXPORT","1500.00","1","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("99","admin12","AMSTEL","1500.00","1","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("100","admin12","GUINESS SM","1500.00","3","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("101","admin12","Heindeken Big","1000.00","1","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("102","admin12","Top P","1000.00","5","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("103","admin12","Mutzig","1000.00","10","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("104","admin12","Blue Label","45000.00","5","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("105","admin12","Black Label","50000.00","5","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("106","admin12","Blue Heaven","5000.00","5","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("107","admin12","Baron De Roi","2000.00","6","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("108","admin12","Guiness Smooth","2000.00","9","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("109","admin12","Natural Fruit Juice","1000.00","9","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("110","admin12","Top A","1000.00","15","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("111","admin12","TOP C","1000.00","10","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("112","admin12","EXPORT","1500.00","15","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("113","admin12","GUINESS SM","1500.00","18","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("114","admin12","Heindeken Big","1000.00","15","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("115","admin12","Heindeken Small","800.00","15","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("116","admin12","Manyang","600.00","10","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("117","admin12","Top P","1000.00","14","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("118","admin12","Mutzig","1000.00","20","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("119","admin12","Blue Label","45000.00","10","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("120","admin12","Black Label","50000.00","10","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("121","admin12","Baron De Roi","2000.00","10","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("122","admin12","Blue Heaven","5000.00","12","Bar Le Dja","04-11-2017","2","","","","","0");
INSERT INTO truck VALUES("123","mybar","AMSTEL","1500.00","7","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("124","mybar","Guiness Smooth","2000.00","6","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("125","mybar","Top G","1000.00","9","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("126","mybar","Supermonth 1l","1000.00","10","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("127","mybar","AMSTEL","1500.00","7","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("128","mybar","Guiness Smooth","2000.00","6","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("129","mybar","Supermonth 1l","1000.00","10","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("130","mybar","Top G","1000.00","9","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("131","mybar","EXPORT","1500.00","10","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("132","mybar","Top A","1000.00","12","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("133","mybar","Top G","1000.00","13","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("134","mybar","Guiness Smooth","2000.00","15","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("135","mybar","Mutzig","1000.00","16","Bar","04-11-2017","2","","","","","15");
INSERT INTO truck VALUES("136","admin12","Top A","1000.00","1","Bar","06-11-2017","1","","","","","15");
INSERT INTO truck VALUES("137","admin12","Blue Heaven","5000.00","5","Bar","06-11-2017","1","","","","","15");
INSERT INTO truck VALUES("138","admin12","Baron De Roi","2000.00","5","Bar","06-11-2017","1","","","","","15");
INSERT INTO truck VALUES("139","admin12","Supermonth 1l","1000.00","5","Bar","06-11-2017","1","","","","","15");
INSERT INTO truck VALUES("140","admin12","Black Label","50000.00","5","Bar","06-11-2017","1","","","","","15");
INSERT INTO truck VALUES("141","admin12","AMSTEL","1500.00","10","Bar","06-11-2017","1","","","","","15");
INSERT INTO truck VALUES("142","admin12","EXPORT","1500.00","4","Bar","06-11-2017","1","","","","","15");
INSERT INTO truck VALUES("143","admin12","GUINESS SM","1500.00","20","Bar","06-11-2017","1","","","","","15");
INSERT INTO truck VALUES("144","admin12","Top A","1000.00","8","Bar two","19-11-2017","2","","","","","0");
INSERT INTO truck VALUES("145","admin12","TOP C","1000.00","9","Bar two","19-11-2017","2","","","","","0");
INSERT INTO truck VALUES("146","admin12","EXPORT","1500.00","10","Bar two","19-11-2017","2","","","","","0");
INSERT INTO truck VALUES("147","admin12","AMSTEL","1500.00","7","Bar two","19-11-2017","2","","","","","0");
INSERT INTO truck VALUES("148","admin12","GUINESS SM","1500.00","10","Bar two","19-11-2017","2","","","","","0");
INSERT INTO truck VALUES("149","admin12","Heindeken Big","1000.00","8","Bar two","19-11-2017","2","","","","","0");
INSERT INTO truck VALUES("150","admin12","Heindeken Small","800.00","9","Bar two","19-11-2017","2","","","","","0");
INSERT INTO truck VALUES("151","admin12","Top A","1000.00","5","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("152","admin12","TOP C","1000.00","7","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("153","admin12","Top P","1000.00","9","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("154","admin12","Top G","1000.00","5","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("155","admin12","Blue Heaven","5000.00","9","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("156","admin12","Baron De Roi","2000.00","9","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("157","admin12","Natural Fruit Juice","1000.00","40","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("158","admin12","Top A","1000.00","9","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("159","admin12","TOP C","1000.00","9","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("160","admin12","Top P","1000.00","6","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("161","admin12","Top G","1000.00","9","Reception Bar","27-11-2017","2","","","","","0");
INSERT INTO truck VALUES("162","admin12","Natural Fruit Juice","1000.00","10","Reception Bar","27-11-2017","2","","","","","0");





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
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO users VALUES("1","c4ca4238a0b923820dcc509a6f75849b","SUPER ADMIN","admin12","admin12@mysoftware.com","1","b59cb76aaf2a872cbfde8a9786afef50c614afc256677bb48","","","","2","","2016-08-27","::1","2","8759","20","","");
INSERT INTO users VALUES("49","f457c545a9ded88f18ecee47145a72c0","Nishang Systems","mybar","mybar@mysoftware.com","1","51450d5dd4f616f9a5d859f9e5a05106026490a5f710daadc","12345","","","","fr","2017-10-24","::1","2","2134","15","","");



