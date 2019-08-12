

CREATE TABLE `ass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ls` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO ass VALUES("1","8");





CREATE TABLE `bar_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `sector` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO bar_tables VALUES("2","2","1","2");
INSERT INTO bar_tables VALUES("13","11","0","6");
INSERT INTO bar_tables VALUES("14","12","0","6");
INSERT INTO bar_tables VALUES("15","1","0","4");
INSERT INTO bar_tables VALUES("17","LAS VAGAS","0","3");
INSERT INTO bar_tables VALUES("18","CHICAGO","0","3");
INSERT INTO bar_tables VALUES("19","CHELSEA","0","3");
INSERT INTO bar_tables VALUES("20","BARCA","0","3");
INSERT INTO bar_tables VALUES("21","NEW YORK","0","4");
INSERT INTO bar_tables VALUES("22","NGOLA","0","4");
INSERT INTO bar_tables VALUES("23","BAMENDA","0","6");
INSERT INTO bar_tables VALUES("24","ARSENAL","0","3");





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
  `froms` varchar(60) NOT NULL,
  `agent` varchar(80) NOT NULL,
  `discount` varchar(1) NOT NULL,
  `main_category` varchar(30) NOT NULL,
  `note` varchar(199) NOT NULL,
  `dib` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

INSERT INTO basket VALUES("1","EXPORT","BEER","1500","2","5","1500","2","24","3","2","","","","","2018-06-12 23:39:23","12","06","12","","","0207","","","hot","","");
INSERT INTO basket VALUES("4","Top G","Top","1000","4","5","4000","14","24","3","2","","","","","2018-06-12 23:41:26","12","06","12","","","0207","","","cold","","");
INSERT INTO basket VALUES("5","Supermonth 1l","Water","1000","2","5","1000","15","24","3","2","","","","","2018-06-12 23:43:55","12","06","12","","","0207","","","hot","","");
INSERT INTO basket VALUES("6","Blue Label","Wisky","45000","1","5","45000","11","24","3","2","","","","","2018-06-12 23:44:04","12","06","12","","","0207","","","hot","","");
INSERT INTO basket VALUES("7","Black Label","Wisky","50000","1","5","50000","12","24","3","2","","","","","2018-06-12 23:44:08","12","06","12","","","0207","","","hot","","");
INSERT INTO basket VALUES("8","EXPORT","BEER","1500","3","5","1500","2","18","3","2","","","","","2018-06-12 23:46:17","12","06","12","","","0207","","","cold","","");
INSERT INTO basket VALUES("9","TOP C","TOP","1000","2","5","1000","1","18","3","2","","","","","2018-06-12 23:46:31","12","06","12","","","0207","","","hot","","");
INSERT INTO basket VALUES("10","Top A","TOP","1000","1","5","1000","8","18","3","2","","","","","2018-06-12 23:46:40","12","06","12","","","0207","","","hot","","");
INSERT INTO basket VALUES("11","Natural Fruit Juice","Juice","1000","2","5","1000","17","18","3","2","","","","","2018-06-12 23:47:20","12","06","12","","","0207","","","hot","","");
INSERT INTO basket VALUES("12","EXPORT","BEER","1500","2","5","1500","2","18","3","2","","","","","2018-06-12 23:47:37","12","06","12","","","0207","","","hot","","");
INSERT INTO basket VALUES("13","Guiness Smooth","Beer","2000","5","5","2000","18","18","3","2","","","","","2018-06-12 23:47:47","12","06","12","","","0207","","","hot","","");
INSERT INTO basket VALUES("14","1/2 Chicken","Chicken","8000.00","1","5","8000.00","7","18","3","2","","","","","2018-06-12 23:48:01","12","06","12","","","0207","","","food","","");
INSERT INTO basket VALUES("24","Maltinal 200MG","","2400","2","2","2400","3","SUP","2","2","","17","16","2400","14-06-2018","14","06","2018","2400","07:19:04","0207","","","","","");
INSERT INTO basket VALUES("25","Maltinal 100mg","","1800","3","2","1800","4","SUP","2","2","","17","16","1800","14-06-2018","14","06","2018","1800","07:19:09","0207","","","","","");
INSERT INTO basket VALUES("26","Ovaltine 500mg","","2500","1","2","2500","1","SUP","2","2","","17","16","2500","14-06-2018","14","06","2018","2500","07:19:14","0207","","","","","");
INSERT INTO basket VALUES("27","ovaltine 200mg","","1800","1","2","1800","2","SUP","2","2","","17","16","1800","14-06-2018","14","06","2018","1800","07:19:19","0207","","","","","");
INSERT INTO basket VALUES("28","RICE","BAGS","19000","1","2","19000","10","GROSS","2","2","","29","26","3000","14-06-2018","14","06","2018","19000","07:51:00","0208","super@123","","","","");
INSERT INTO basket VALUES("29","TANGUI 1L","PALLETS","2300","3","2","2300","8","GROSS","2","2","","29","26","800","14-06-2018","14","06","2018","2300","07:51:33","0208","super@123","","","","");
INSERT INTO basket VALUES("33","Ovaltine 200mg","","1800","1","2","1800","2","SUP","2","2","","80","76","1800","14-06-2018","14","06","2018","1800","07:53:45","0209","","","","","");
INSERT INTO basket VALUES("34","Ovaltine 500mg","","2500","4","2","2500","1","SUP","2","2","","80","76","2500","14-06-2018","14","06","2018","2500","07:53:48","0209","","","","","");
INSERT INTO basket VALUES("35","AMSTEL","BEER","1500","1","5","0","3","20","3","2","","16","14","945","14-06-2018","14","06","2018","1500","10:43:31","0210","","","","","");
INSERT INTO basket VALUES("37","EXPORT","BEER","1500","5","2","1500","2","","3","2","","","","940","15-06-2018","15","06","2018","1500","08:35:26","0210","","","","","");





CREATE TABLE `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO categories VALUES("11","Wine");
INSERT INTO categories VALUES("12","Wisky");
INSERT INTO categories VALUES("14","TOP");
INSERT INTO categories VALUES("15","Beer");
INSERT INTO categories VALUES("16","Drinks");
INSERT INTO categories VALUES("17","Soft");
INSERT INTO categories VALUES("18","JUICE");





CREATE TABLE `client` (
  `clien_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `address` text,
  `as1` varchar(60) DEFAULT NULL,
  `as2` varchar(60) DEFAULT NULL,
  `as3` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`clien_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO client VALUES("2","DAJUNGLE GROUP OF COMPANIES<BR>Burjkhalifa Snack","Check Point- Buea","Tel:(237) 677 848 513/676 423 659","","V-2515");





CREATE TABLE `clothes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `code` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO clothes VALUES("2","Skirt","Skt");
INSERT INTO clothes VALUES("3","Jeans","Jns");
INSERT INTO clothes VALUES("5","T Shirts","Ts");
INSERT INTO clothes VALUES("6","Graduation Robbs","Gr");
INSERT INTO clothes VALUES("8","Pants","Pants");
INSERT INTO clothes VALUES("9","Boxers","Boxers");
INSERT INTO clothes VALUES("10","Men Suites","Ms");
INSERT INTO clothes VALUES("11","Ladies Suites","Ls");
INSERT INTO clothes VALUES("12","Children Suite","Cs");
INSERT INTO clothes VALUES("13","Shirts","Shirts");
INSERT INTO clothes VALUES("16","Wedding Gown","Wg");
INSERT INTO clothes VALUES("18","Diling And Washing","");
INSERT INTO clothes VALUES("19","Robe","Rb");





CREATE TABLE `codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO codes VALUES("1","12");





CREATE TABLE `commands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `month` varchar(8) NOT NULL,
  `year` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `creditors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `owed` varchar(22) NOT NULL,
  `date` varchar(22) NOT NULL,
  `day` int(11) NOT NULL,
  `month` varchar(7) NOT NULL,
  `year` varchar(7) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `tel` varchar(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO creditors VALUES("1","Guy Kamga Daneil","100000","--","0","","","","6789778");
INSERT INTO creditors VALUES("2","MAX","57000","--","0","","","","67677676");
INSERT INTO creditors VALUES("3","BLAISE","130000","--","0","","","","5566666");





CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `year` varchar(30) DEFAULT NULL,
  `yid` int(30) DEFAULT NULL,
  `reg_date` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `status` varchar(6) NOT NULL,
  `time` varchar(40) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `code` varchar(50) NOT NULL,
  `month` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO customers VALUES("1","Ni John","2017","25","28-12-2017","Boduma","78686866868","","8:35:38","677886869","","NIS22017","12");
INSERT INTO customers VALUES("2","Mbah Isaac","2017","7","28-12-2017","BUEA","88999999999","","8:35:59","677888899","","NIS32017","12");
INSERT INTO customers VALUES("3","Mayi Palle Edwin","2017","26","29-12-2017","Mile 17","","","21:50:12","677282828","","NIS42017","12");
INSERT INTO customers VALUES("4","Mbah Isaac","2017","7","30-12-2017","BUEA","88999999999","2","14:55:18","677888899","","NIS52017","12");
INSERT INTO customers VALUES("5","Chu Nelly","2018","27","01-01-2018","Mile 17","","2","18:43:26","6778889999","","NIS62018","01");
INSERT INTO customers VALUES("6","Ni John","2017","25","01-11-2017","Boduma","78686866868","2","19:22:20","677886869","","NIS72017","11");
INSERT INTO customers VALUES("7","Mayi Palle Edwin","2018","26","02-01-2018","Mile 17","","2","8:10:09","677282828","","NIS82018","01");
INSERT INTO customers VALUES("8","Mbah Isaac","2018","7","22-03-2018","BUEA","88999999999","2","21:45:26","677888899","","NIS92018","03");
INSERT INTO customers VALUES("9","Nishang BOY","2018","28","05-04-2018","","","2","6:06:22","677778889","","NIS102018","04");
INSERT INTO customers VALUES("10","Mayi Palle Edwin","2018","26","05-04-2018","Mile 17","","","6:11:53","677282828","","NIS112018","04");
INSERT INTO customers VALUES("11","Mbah Isaac","2018","7","10-04-2018","BUEA","88999999999","2","16:48:47","677888899","","NIS122018","04");





CREATE TABLE `d_gross` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentby` varchar(30) NOT NULL,
  `sentto` varchar(40) NOT NULL,
  `item` varchar(80) NOT NULL,
  `stock` varchar(90) NOT NULL,
  `taken` varchar(15) NOT NULL,
  `current` varchar(15) NOT NULL,
  `discribe` varchar(50) NOT NULL,
  `date` varchar(17) NOT NULL,
  `month` varchar(22) NOT NULL,
  `year` text NOT NULL,
  `status` int(11) NOT NULL,
  `receiver` varchar(80) NOT NULL,
  `units` varchar(90) NOT NULL,
  `day` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO d_gross VALUES("1"," general","","10","COLGATE","2","16","26.00","5000","14-06-2018","06","2018","","","");
INSERT INTO d_gross VALUES("2"," general","","4","TANGUI 1L","2","25","29.00","2300","14-06-2018","06","2018","","","");
INSERT INTO d_gross VALUES("3"," general","","10","RICE","2","11","21.00","19000","14-06-2018","06","2018","","","");





CREATE TABLE `daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(20) NOT NULL,
  `room` varchar(20) NOT NULL,
  `date` varchar(17) NOT NULL,
  `rec` varchar(17) NOT NULL,
  `exp` varchar(20) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `area` varchar(15) NOT NULL,
  `time` text NOT NULL,
  `reason` varchar(40) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL,
  `owed` varchar(20) NOT NULL,
  `paidto` varchar(90) NOT NULL,
  `paidtou` varchar(60) NOT NULL,
  `amt` varchar(20) NOT NULL,
  `idds` varchar(11) NOT NULL,
  `staffname` varchar(50) NOT NULL,
  `day` varchar(11) NOT NULL,
  `purpose` varchar(120) NOT NULL,
  `discount` varchar(11) NOT NULL,
  `company` varchar(90) NOT NULL,
  `dib` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO daily VALUES("1","SUP","","02-05-2018","","","05","2018","2","05:07:53"," Bill","1","","","","superadmin","0","","0194","","","Bills","","","");
INSERT INTO daily VALUES("2","SUP","","11-05-2018","8800","","05","2018","2","08:00:22"," Bill","1","8800","8800","","super@123","0","","0195","","","Bills","","","");
INSERT INTO daily VALUES("3","","","11-05-2018","1500","","05","2018","3","08:03:25"," Bill","1","1500","1500","","super@123","-500","","0196","","","Bills","","","");
INSERT INTO daily VALUES("4","SUP","","20-05-2018","2000","","05","2018","2","09:42:32"," Bill","1","2000","2000","","super@123","0","","0197","","","Bills","","","");
INSERT INTO daily VALUES("5","","","31-05-2018","1500","","05","2018","4","11:11:49"," Bill","1","1500","1500","","super@123","-500","","0198","","","Bills","","","");
INSERT INTO daily VALUES("6","SUP","","01-06-2018","6000","","06","2018","2","02:16:45"," Bill","1","6000","6000","","super@123","-4000","","0199","","","Bills","","","");
INSERT INTO daily VALUES("7","SUP","","04-06-2018","6000","","06","2018","2","08:25:04"," Bill","1","6000","6000","","super@123","-4000","","0200","","","Bills","","","");
INSERT INTO daily VALUES("8","","","06-06-2018","29500","","06","2018","3","11:56:31"," Bill","1","29500","29500","","super@123","-500","","0201","","","Bills","","","");
INSERT INTO daily VALUES("9","","","06-06-2018","","","06","2018","3","10:04:44"," Bill","1","","","","super@123","-30000","","0202","","","Bills","","","");
INSERT INTO daily VALUES("10","","","11-06-2018","1000","","06","2018","3","06:07:28"," Bill","1","1000","1000","","super@123","0","","0203","","","Bills","","","");
INSERT INTO daily VALUES("11","","","11-06-2018","4500","","06","2018","3","06:15:32"," Bill","1","4500","4500","","super@123","-500","","0204","","","Bills","","","");
INSERT INTO daily VALUES("12","","","11-06-2018","1500","","06","2018","3","06:16:45"," Bill","1","1500","1500","","super@123","-500","","0205","","","Bills","","","");
INSERT INTO daily VALUES("13","","","11-06-2018","2000","","06","2018","3","06:17:45"," Bill","1","2000","2000","","super@123","0","","0206","","","Bills","","","");
INSERT INTO daily VALUES("14","","","--","","","","","","","BLAISE","0","","","","","","","","","","BLAISE","","","");
INSERT INTO daily VALUES("15","","","8-06-2018","","50000","06","2018","","","BLAISE","0","","","","","","","","","8","payment of BLAISE debts ","","","");
INSERT INTO daily VALUES("16","SUP","","14-06-2018","14500","","06","2018","2","07:20:26"," Bill","1","14500","14500","","super@123","-500","","0207","","","Bills","","","");
INSERT INTO daily VALUES("17","GROSS","","14-06-2018","30000","","06","2018","2","07:51:42"," Bill","1","25900","25900","","super@123","-4100","","0208","","","Bills","0","","");
INSERT INTO daily VALUES("18","SUP","","14-06-2018","11800","","06","2018","2","07:53:59"," Bill","1","11800","11800","","super@123","-3200","","0209","","","Bills","","","");
INSERT INTO daily VALUES("19","","","15-06-2018","7500","","06","2018","3","08:45:48"," Bill","1","7500","7500","","super@123","-2500","","0210","","","Bills","","","");





CREATE TABLE `debtors` (
  `name` varchar(90) NOT NULL,
  `date` varchar(20) NOT NULL,
  `amt` varchar(12) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(23) NOT NULL,
  `owed` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO debtors VALUES("Musango Beach Hotel","15-09-2017","1000","3","","7000");
INSERT INTO debtors VALUES("Marga Motanga","17-08-2017","6555","5","","11500");
INSERT INTO debtors VALUES("Pa Tambi David","","","7","675757575","9500");
INSERT INTO debtors VALUES("Guy Daneil","","","8",".","24000");





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
  `qty` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `disburse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentby` varchar(30) NOT NULL,
  `sentto` varchar(40) NOT NULL,
  `item` varchar(80) NOT NULL,
  `stock` varchar(90) NOT NULL,
  `taken` varchar(15) NOT NULL,
  `current` varchar(15) NOT NULL,
  `discribe` varchar(50) NOT NULL,
  `date` varchar(17) NOT NULL,
  `month` varchar(22) NOT NULL,
  `year` text NOT NULL,
  `status` int(11) NOT NULL,
  `receiver` varchar(80) NOT NULL,
  `units` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

INSERT INTO disburse VALUES("14"," general","","25.00","TOP A","2","25","50.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("15"," general","","30.00","TOP P","2","20","50.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("16"," general","","35.00","TOP G","2","15","50.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("17"," general","","39.00","AMSTEL","2","1","40.00","1500","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("18"," general","","50.00","VIMTO","2","5","55.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("19"," general","","44.00","MALTA","2","16","60.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("20"," general","","35.00","SMALL GUINESS","2","10","45.00","1500","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("21"," general","","70.00","HEINDEKEN S","2","3","73.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("22"," general","","54.00","HEINDEKEN B","2","11","65.00","2000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("23"," general","","60.00","MALTA","2","40","100.00","1000","11-06-2018","06","2018","","");
INSERT INTO disburse VALUES("24"," general","","14.00","SMALL SPRITE","2","16","30.00","1000","11-06-2018","06","2018","","");
INSERT INTO disburse VALUES("25"," general","","50.00","HEINDEKEN S","2","15","65.00","1000","11-06-2018","06","2018","","");
INSERT INTO disburse VALUES("26"," general","","30.00","HEINDEKEN B","2","24","54.00","2000","11-06-2018","06","2018","","");
INSERT INTO disburse VALUES("27"," general","","50.00","Ovaltine 500mg","2","30","80.00","2500","14-06-2018","06","2018","","");
INSERT INTO disburse VALUES("28"," general","","50.00","ovaltine 200mg","2","30","80.00","1800","14-06-2018","06","2018","","");
INSERT INTO disburse VALUES("29"," general","","40.00","Maltinal 200MG","2","30","70.00","2400","14-06-2018","06","2018","","");
INSERT INTO disburse VALUES("30"," general","","67","coco butter","2","13","80.00","2200","14-06-2018","06","2018","","");





CREATE TABLE `expiry` (
  `exp_id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `duedate` varchar(13) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `qty` varchar(13) DEFAULT NULL,
  `cate` varchar(35) NOT NULL,
  `stat` int(2) NOT NULL,
  `agent` varchar(25) NOT NULL,
  PRIMARY KEY (`exp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO expiry VALUES("1","825 Calve Mayonnaise","General","5/25/2017","20-05-2017","5","","2","");
INSERT INTO expiry VALUES("2","42 Hours","Cosmertics","6/30/2017","20-05-2017","3","","2","");
INSERT INTO expiry VALUES("3","Acrorsa Big","General","5/17/2017","20-05-2017","3","","1","");
INSERT INTO expiry VALUES("4","72 Hours Lait  500ml","Cosmertics","4/29/2017","20-05-2017","1","","1","admin12");





CREATE TABLE `finals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `cost` varchar(12) NOT NULL,
  `disc` varchar(222) NOT NULL,
  `branch` varchar(90) NOT NULL,
  `qty` varchar(12) NOT NULL,
  `sp` varchar(12) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  `sector` varchar(60) NOT NULL,
  `area` int(11) NOT NULL COMMENT 'from sectors',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

INSERT INTO finals VALUES("1","TOP C","445","TOP","","32","1000","","","3");
INSERT INTO finals VALUES("2","EXPORT","560","BEER","","13","1500","","","3");
INSERT INTO finals VALUES("3","AMSTEL","555","BEER","","16","1500","","","3");
INSERT INTO finals VALUES("4","GUINESS SM","590","BEER","","43","1500","","","3");
INSERT INTO finals VALUES("5","Heindeken Big","700","Can","","49","1000","","","3");
INSERT INTO finals VALUES("6","Heindeken Small","400","Can","","49","800","","","3");
INSERT INTO finals VALUES("7","Manyang","455","Beer","","47","600","","","3");
INSERT INTO finals VALUES("8","Top A","445","TOP","","47","1000","","","3");
INSERT INTO finals VALUES("9","Top P","445","Top","","27","1000","","","3");
INSERT INTO finals VALUES("10","Mutzig","500","Beer","","46","1000","","","3");
INSERT INTO finals VALUES("11","Blue Label","15000","Wisky","","45","45000","","","3");
INSERT INTO finals VALUES("12","Black Label","17000","Wisky","","49","50000","","","3");
INSERT INTO finals VALUES("13","Blue Heaven","1500","Wine","","49","5000","","","3");
INSERT INTO finals VALUES("14","Top G","445","Top","","43","1000","","","3");
INSERT INTO finals VALUES("15","Supermonth 1l","250","Water","","44","1000","","","3");
INSERT INTO finals VALUES("16","Baron De Roi","900","Wine","","45","2000","","","3");
INSERT INTO finals VALUES("17","Natural Fruit Juice","300","Juice","","49","1000","","","3");
INSERT INTO finals VALUES("18","Guiness Smooth","600","Beer","","46","2000","","","3");
INSERT INTO finals VALUES("19","Top A","445","TOP","","46","1000","","","4");
INSERT INTO finals VALUES("20","TOP C","445","TOP","","49","1000","","","4");
INSERT INTO finals VALUES("21","EXPORT","560","BEER","","49","1500","","","4");
INSERT INTO finals VALUES("22","AMSTEL","555","BEER","","36","1500","","","4");
INSERT INTO finals VALUES("23","GUINESS SM","590","BEER","","49","1500","","","4");
INSERT INTO finals VALUES("24","Heindeken Big","700","Can","","49","1000","","","4");
INSERT INTO finals VALUES("25","Heindeken Small","400","Can","","49","800","","","4");
INSERT INTO finals VALUES("26","Manyang","455","Beer","","49","600","","","4");
INSERT INTO finals VALUES("27","Top P","445","Top","","40","1000","","","4");
INSERT INTO finals VALUES("28","Mutzig","500","Beer","","49","1000","","","4");
INSERT INTO finals VALUES("29","Blue Label","15000","Wisky","","49","45000","","","4");
INSERT INTO finals VALUES("30","Black Label","17000","Wisky","","48","50000","","","4");
INSERT INTO finals VALUES("31","Blue Heaven","1500","Wine","","49","5000","","","4");
INSERT INTO finals VALUES("32","Top G","445","Top","","49","1000","","","4");
INSERT INTO finals VALUES("33","Supermonth 1l","250","Water","","49","1000","","","4");
INSERT INTO finals VALUES("34","Baron De Roi","900","Wine","","49","2000","","","4");
INSERT INTO finals VALUES("35","Natural Fruit Juice","300","Juice","","49","1000","","","4");
INSERT INTO finals VALUES("36","Guiness Smooth","600","Beer","","49","2000","","","4");
INSERT INTO finals VALUES("37","33 EXPORT","455","BEER","","31","1500","","","6");
INSERT INTO finals VALUES("38","AMSTEL","455","BEER","","26","1500","","","6");
INSERT INTO finals VALUES("39","BIG GUINESS","455","BEER","","23","2000","","","6");
INSERT INTO finals VALUES("40","TOP A","400","TOP","","5","1000","","","6");
INSERT INTO finals VALUES("41","TOP P","400","TOP","","5","1000","","","6");
INSERT INTO finals VALUES("42","TOP G","400","TOP ","","8","1000","","","6");
INSERT INTO finals VALUES("43","SMALL GUINESS","455","BEER","","12","1500","","","6");
INSERT INTO finals VALUES("44","MALTA","340","CAN","","23","1000","","","6");
INSERT INTO finals VALUES("45","33 EXPORT","455","BEER","","4","1500","","","2");
INSERT INTO finals VALUES("46","AMSTEL","455","BEER","","1","1500","","","2");
INSERT INTO finals VALUES("47","TOP G","400","TOP ","","5","1000","","","2");
INSERT INTO finals VALUES("48","33 EXPORT","455","BEER","","20","1500","","","7");
INSERT INTO finals VALUES("49","AMSTEL","455","BEER","","15","1500","","","7");
INSERT INTO finals VALUES("50","BIG GUINESS","455","BEER","","16","2000","","","7");
INSERT INTO finals VALUES("51","SMALL GUINESS","455","BEER","","15","1500","","","7");
INSERT INTO finals VALUES("52","TOP A","400","TOP","","15","1000","","","7");
INSERT INTO finals VALUES("53","TOP P","400","TOP","","15","1000","","","7");
INSERT INTO finals VALUES("54","SMALL SPRITE","","TOP","","10","1000","","","7");
INSERT INTO finals VALUES("55","HEINDEKEN S","400","CAN","","23","1000","","","7");
INSERT INTO finals VALUES("56","HEINDEKEN B","800","CAN","","35","2000","","","7");
INSERT INTO finals VALUES("57","Oraginal","","","","55","700","","","0");
INSERT INTO finals VALUES("58","Sita Toilet Roll","",""," ","15","250","","","0");
INSERT INTO finals VALUES("59","Elena Tomata","",""," ","8","100","","","0");





CREATE TABLE `food_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO food_cat VALUES("1","MAIN COURSE");
INSERT INTO food_cat VALUES("2","COMPLIMENT");
INSERT INTO food_cat VALUES("3","STARTER");
INSERT INTO food_cat VALUES("4","BREAK FAST");
INSERT INTO food_cat VALUES("5","OTHERS");





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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO foods VALUES("2","CHIEFS SALAD","","3000.00","","STARTER","15","15");
INSERT INTO foods VALUES("6","1/4 Chicken","","6000.00","","Chicken","2","Reception");
INSERT INTO foods VALUES("7","1/2 Chicken","","8000.00","","Chicken","2","Reception");
INSERT INTO foods VALUES("8","Rice And Beans","","4000.00","","Main Course","10","Restaurant");
INSERT INTO foods VALUES("9","Jerof Rice","","2000.00","","Mian Course","10","Restaurant");
INSERT INTO foods VALUES("11","Okongobong , Ripe Plantain And Dry Fish","","4000","","MAIN COURSE","0","RESTAURANT");
INSERT INTO foods VALUES("12","Okongobong , Ripe Plantain And Meat","","5000","","MAIN COURSE","0","RESTAURANT");
INSERT INTO foods VALUES("13","Chicken Plantain Chips","","5000","","MAIN COURSE","0","RESTAURANT");





CREATE TABLE `hair_style` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `min` varchar(15) NOT NULL,
  `max` varchar(15) NOT NULL,
  `photo` varchar(90) NOT NULL,
  `sector` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO hair_style VALUES("1"," cork","2000","3000","th.jpg","Barbing");
INSERT INTO hair_style VALUES("2"," bull zero","1000","2000","mm.png","Barbing");
INSERT INTO hair_style VALUES("3"," simple nails","3000","5000","","Manicure");





CREATE TABLE `hair_stylists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `sector` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO hair_stylists VALUES("1"," Ngu Peter","6778888999","1479797822111.jpg","Barbing");





CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(20) NOT NULL,
  `num` varchar(11) NOT NULL,
  `amt` varchar(12) NOT NULL,
  `agent` varchar(50) NOT NULL,
  `sector` varchar(60) NOT NULL,
  `owed` varchar(90) NOT NULL,
  `name` varchar(90) NOT NULL,
  `disc` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;

INSERT INTO history VALUES("1","","01","","","","\n","","");
INSERT INTO history VALUES("2","","02","","","","\n","","");
INSERT INTO history VALUES("3","","03","3500","","","\n","","");
INSERT INTO history VALUES("4","28-01-2018","04","2500","admin12","","\n","","");
INSERT INTO history VALUES("5","28-01-2018","05","1500","admin12","","\n","","500");
INSERT INTO history VALUES("6","02-02-2018","06","10000","admin12","","\n","","0");
INSERT INTO history VALUES("7","02-02-2018","07","12500","admin12","","\n","","0");
INSERT INTO history VALUES("8","06-02-2018","08","15000","admin12","","","","");
INSERT INTO history VALUES("9","06-02-2018","09","5000","admin12","","","","");
INSERT INTO history VALUES("10","06-02-2018","010","20000","admin12","","","","0");
INSERT INTO history VALUES("11","06-02-2018","011","4000","admin12","","","","0");
INSERT INTO history VALUES("12","11-02-2018","012","15500","admin12","","","","");
INSERT INTO history VALUES("13","11-02-2018","013","15500","admin12","","","","");
INSERT INTO history VALUES("14","11-02-2018","014","10000","admin12","","","","");
INSERT INTO history VALUES("15","11-02-2018","015","100000","admin12","","","","");
INSERT INTO history VALUES("16","11-02-2018","016","50000","admin12","","","","");
INSERT INTO history VALUES("17","11-02-2018","017","30000","admin12","","","","");
INSERT INTO history VALUES("18","11-02-2018","018","10000","admin12","","","","");
INSERT INTO history VALUES("19","11-02-2018","019","30000","admin12","","","","");
INSERT INTO history VALUES("20","11-02-2018","020","30000","admin12","","","","");
INSERT INTO history VALUES("21","11-02-2018","021","30000","admin12","","","","");
INSERT INTO history VALUES("22","11-02-2018","022","30000","admin12","","","","");
INSERT INTO history VALUES("23","11-02-2018","023","4000","admin12","","","","");
INSERT INTO history VALUES("24","11-02-2018","024","5000","admin12","","","","");
INSERT INTO history VALUES("25","11-02-2018","025","3000","admin12","","","","");
INSERT INTO history VALUES("26","11-02-2018","026","4500","admin12","","","","");
INSERT INTO history VALUES("27","11-02-2018","027","4500","admin12","","","","");
INSERT INTO history VALUES("28","11-02-2018","028","25000","admin12","","-4000","","");
INSERT INTO history VALUES("29","11-02-2018","029","25000","admin12","","-4000","","");
INSERT INTO history VALUES("30","11-02-2018","030","5000","admin12","","-1500","","");
INSERT INTO history VALUES("31","11-02-2018","031","5000","admin12","","-1500","","");
INSERT INTO history VALUES("32","11-02-2018","032","5000","admin12","","-1500","","");
INSERT INTO history VALUES("33","11-02-2018","033","5000","admin12","","-4000","","");
INSERT INTO history VALUES("34","11-02-2018","034","3000","admin12","","-2000","","");
INSERT INTO history VALUES("35","11-02-2018","035","3000","admin12","","-2000","","");
INSERT INTO history VALUES("36","11-02-2018","036","7500","admin12","","-500","","");
INSERT INTO history VALUES("37","11-02-2018","037","20000","admin12","","0","","");
INSERT INTO history VALUES("38","11-02-2018","038","","admin12","","","","");
INSERT INTO history VALUES("39","11-02-2018","039","12900","admin12","","-100","","");
INSERT INTO history VALUES("40","11-02-2018","040","21000","admin12","","0","","");
INSERT INTO history VALUES("41","11-02-2018","041","135000","admin12","","-5000","","");
INSERT INTO history VALUES("42","11-02-2018","042","27500","admin12","","-2500","","");
INSERT INTO history VALUES("43","13-02-2018","043","5000","admin12","","0","","");
INSERT INTO history VALUES("44","13-02-2018","044","7500","admin12","","-500","","");
INSERT INTO history VALUES("45","13-02-2018","045","1500","admin12","","-500","","");
INSERT INTO history VALUES("46","13-02-2018","046","10000","admin12","","-5000","","");
INSERT INTO history VALUES("47","13-02-2018","047","10000","admin12","","-5000","","");
INSERT INTO history VALUES("48","13-02-2018","048","10000","admin12","","-5000","","");
INSERT INTO history VALUES("49","","049","","admin12","","","","");
INSERT INTO history VALUES("50","","050","","admin12","","","","");
INSERT INTO history VALUES("51","","051","","admin12","","","","");
INSERT INTO history VALUES("52","","052","","admin12","","","","");
INSERT INTO history VALUES("53","","053","","admin12","","","","");
INSERT INTO history VALUES("54","","054","","admin12","","","","");
INSERT INTO history VALUES("55","","055","","admin12","","","","");
INSERT INTO history VALUES("56","","056","","admin12","","","","");
INSERT INTO history VALUES("57","","057","","admin12","","","","");
INSERT INTO history VALUES("58","","058","","admin12","","","","");
INSERT INTO history VALUES("59","","059","","admin12","","","","");
INSERT INTO history VALUES("60","","060","","admin12","","","","");
INSERT INTO history VALUES("61","","061","","admin12","","","","");
INSERT INTO history VALUES("62","","062","","admin12","","","","");
INSERT INTO history VALUES("63","","063","","","","","","");
INSERT INTO history VALUES("64","","064","","","","","","");
INSERT INTO history VALUES("65","","065","","","","","","");
INSERT INTO history VALUES("66","","066","","","","","","");
INSERT INTO history VALUES("67","","067","","ADMIN12","","","","");
INSERT INTO history VALUES("68","","068","","","","","","");
INSERT INTO history VALUES("69","","069","","","","","","");
INSERT INTO history VALUES("70","","070","","","","","","");
INSERT INTO history VALUES("71","","071","","","","","","");
INSERT INTO history VALUES("72","","072","","","","","","");
INSERT INTO history VALUES("73","","073","","","","","","");
INSERT INTO history VALUES("74","","074","","","","","","");
INSERT INTO history VALUES("75","","075","","","","","","");
INSERT INTO history VALUES("76","","076","","","","","","");
INSERT INTO history VALUES("77","","077","","","","","","");
INSERT INTO history VALUES("78","","078","","","","","","");
INSERT INTO history VALUES("79","","079","","","","","","");
INSERT INTO history VALUES("80","","080","","","","","","");
INSERT INTO history VALUES("81","20-03-2018","2018081","","","","\n","","");
INSERT INTO history VALUES("82","20-03-2018","2018082","","","","\n","","");
INSERT INTO history VALUES("83","20-03-2018","2018083","","","","\n","","");
INSERT INTO history VALUES("84","20-03-2018","2018084","","","","\n","","");
INSERT INTO history VALUES("85","20-03-2018","2018085","","","","\n","","");
INSERT INTO history VALUES("86","20-03-2018","2018086","","","","\n","","");
INSERT INTO history VALUES("87","20-03-2018","2018087","","","","\n","","");
INSERT INTO history VALUES("88","20-03-2018","2018088","","","","\n","","");
INSERT INTO history VALUES("89","20-03-2018","2018089","","","","\n","","");
INSERT INTO history VALUES("90","20-03-2018","2018090","","","","\n","","");
INSERT INTO history VALUES("91","21-03-2018","2018091","","","","\n","","");
INSERT INTO history VALUES("92","","092","","admin12","","","","");
INSERT INTO history VALUES("93","","093","","admin12","","","","");
INSERT INTO history VALUES("94","","094","","admin12","","","","");
INSERT INTO history VALUES("95","","095","","admin12","","","","");
INSERT INTO history VALUES("96","","096","","admin12","","","","");
INSERT INTO history VALUES("97","","097","","admin12","","","","");
INSERT INTO history VALUES("98","","098","","admin12","","","","");
INSERT INTO history VALUES("99","","099","","admin12","","","","");
INSERT INTO history VALUES("100","","0100","","admin12","","","","");
INSERT INTO history VALUES("101","","0101","","admin12","","","","");
INSERT INTO history VALUES("102","","0102","","admin12","","","","");
INSERT INTO history VALUES("103","","0103","","admin12","","","","");
INSERT INTO history VALUES("104","","0104","","admin12","","","","");
INSERT INTO history VALUES("105","","0105","","admin12","","","","");
INSERT INTO history VALUES("106","","0106","","admin12","","","","");
INSERT INTO history VALUES("107","","0107","","admin12","","","","");
INSERT INTO history VALUES("108","","0108","","admin12","","","","");
INSERT INTO history VALUES("109","","0109","","admin12","","","","");
INSERT INTO history VALUES("110","","0110","","admin12","","","","");
INSERT INTO history VALUES("111","","0111","","admin12","","","","");
INSERT INTO history VALUES("112","","0112","","","","","","");
INSERT INTO history VALUES("113","","0113","","","","","","");
INSERT INTO history VALUES("114","","0114","","","","","","");
INSERT INTO history VALUES("115","","0115","","","","","","");
INSERT INTO history VALUES("116","","0116","","","","","","");
INSERT INTO history VALUES("117","","0117","","","","","","");
INSERT INTO history VALUES("118","","0118","","","","","","");
INSERT INTO history VALUES("119","","0119","","","","","","");
INSERT INTO history VALUES("120","","0120","","","","","","");
INSERT INTO history VALUES("121","","0121","","","","","","");
INSERT INTO history VALUES("122","","0122","","","","","","");
INSERT INTO history VALUES("123","","0123","","","","","","");
INSERT INTO history VALUES("124","","0124","","","","","","");
INSERT INTO history VALUES("125","","0125","","","","","","");
INSERT INTO history VALUES("126","","0126","","","","","","");
INSERT INTO history VALUES("127","","0127","","","","","","");
INSERT INTO history VALUES("128","","0128","","","","","","");
INSERT INTO history VALUES("129","","0129","","super@123","","","","");
INSERT INTO history VALUES("130","","0130","","super@123","","","","");
INSERT INTO history VALUES("131","","0131","","super@123","","","","");
INSERT INTO history VALUES("132","","0132","","ADMIN12","","","","");
INSERT INTO history VALUES("133","","0133","","ADMIN12","","","","");
INSERT INTO history VALUES("134","","0134","","ADMIN12","","","","");
INSERT INTO history VALUES("135","","0135","","ADMIN12","","","","");
INSERT INTO history VALUES("136","","0136","","","","","","");
INSERT INTO history VALUES("137","","0137","","","","","","");
INSERT INTO history VALUES("138","","0138","","","","","","");
INSERT INTO history VALUES("139","","0139","","ADMIN12","","","","");
INSERT INTO history VALUES("140","","0140","","ADMIN12","","","","");
INSERT INTO history VALUES("141","","0141","","ADMIN12","","","","");
INSERT INTO history VALUES("142","22-03-2018","20180142","","","","\n","","");
INSERT INTO history VALUES("143","23-03-2018","20180143","","","","\n","","");
INSERT INTO history VALUES("144","23-03-2018","20180144","","","","\n","","");
INSERT INTO history VALUES("145","23-03-2018","20180145","","","","\n","","");
INSERT INTO history VALUES("146","23-03-2018","20180146","","","","\n","","");
INSERT INTO history VALUES("147","","0147","","","","","","");
INSERT INTO history VALUES("148","","0148","","","","","","");
INSERT INTO history VALUES("149","","0149","","","","","","");
INSERT INTO history VALUES("150","","0150","","","","","","");
INSERT INTO history VALUES("151","","0151","","","","","","");
INSERT INTO history VALUES("152","","0152","","super@123","","","","");
INSERT INTO history VALUES("153","","0153","","super@123","","","","");
INSERT INTO history VALUES("154","","0154","","super@123","","","","");
INSERT INTO history VALUES("155","","0155","","","","","","");
INSERT INTO history VALUES("156","","0156","","","","","","");
INSERT INTO history VALUES("157","","0157","","","","","","");
INSERT INTO history VALUES("158","","0158","","admin12","","","","");
INSERT INTO history VALUES("159","","0159","","admin12","","","","");
INSERT INTO history VALUES("160","","0160","","admin12","","","","");
INSERT INTO history VALUES("161","","0161","","admin12","","","","");
INSERT INTO history VALUES("162","04-04-2018","20180162","","","","\n","","");
INSERT INTO history VALUES("163","04-04-2018","20180163","","","","\n","","");
INSERT INTO history VALUES("164","","0164","","admin12","","","","");
INSERT INTO history VALUES("165","","0165","","admin12","","","","");
INSERT INTO history VALUES("166","05-04-2018","20180166","","","","\n","","");
INSERT INTO history VALUES("167","","0167","","admin12","","","","");
INSERT INTO history VALUES("168","","0168","","","","","","");
INSERT INTO history VALUES("169","","0169","","","","","","");
INSERT INTO history VALUES("170","","0170","","admin12","","","","");
INSERT INTO history VALUES("171","","0171","","admin12","","","","");
INSERT INTO history VALUES("172","","0172","","","","","","");
INSERT INTO history VALUES("173","","0173","","","","","","");
INSERT INTO history VALUES("174","","0174","","","","","","");
INSERT INTO history VALUES("175","","0175","","","","","","");
INSERT INTO history VALUES("176","","0176","","","","","","");
INSERT INTO history VALUES("177","","0177","","","","","","");
INSERT INTO history VALUES("178","","0178","","","","","","");
INSERT INTO history VALUES("179","10-04-2018","20180179","","","","\n","","");
INSERT INTO history VALUES("180","10-04-2018","20180180","","","","\n","","");
INSERT INTO history VALUES("181","10-04-2018","20180181","","","","\n","","");
INSERT INTO history VALUES("182","","0182","","","","","","");
INSERT INTO history VALUES("183","","0183","","","","","","");
INSERT INTO history VALUES("184","","0184","","admin12","","","","");
INSERT INTO history VALUES("185","","0185","","superadmin","","","","");
INSERT INTO history VALUES("186","","0186","","superadmin","","","","");
INSERT INTO history VALUES("187","","0187","","superadmin","","","","");
INSERT INTO history VALUES("188","","0188","","superadmin","","","","");
INSERT INTO history VALUES("189","","0189","","","","","","");
INSERT INTO history VALUES("190","","0190","","","","","","");
INSERT INTO history VALUES("191","","0191","","","","","","");
INSERT INTO history VALUES("192","","0192","","","","","","");
INSERT INTO history VALUES("193","","0193","","","","","","");
INSERT INTO history VALUES("194","","0194","","admin12","","","","");
INSERT INTO history VALUES("195","","0195","","admin12","","","","");
INSERT INTO history VALUES("196","","0196","","admin12","","","","");
INSERT INTO history VALUES("197","","0197","","","","","","");
INSERT INTO history VALUES("198","","0198","","","","","","");
INSERT INTO history VALUES("199","","0199","","admin12","","","","");
INSERT INTO history VALUES("200","","0200","","","","","","");
INSERT INTO history VALUES("201","","0201","","","","","","");
INSERT INTO history VALUES("202","","0202","","","","","","");
INSERT INTO history VALUES("203","","0203","","","","","","");
INSERT INTO history VALUES("204","","0204","","","","","","");
INSERT INTO history VALUES("205","","0205","","","","","","");
INSERT INTO history VALUES("206","","0206","","","","","","");
INSERT INTO history VALUES("207","","0207","","","","","","");
INSERT INTO history VALUES("208","","0208","","super@123","","","","");
INSERT INTO history VALUES("209","","0209","","","","","","");
INSERT INTO history VALUES("210","","0210","","","","","","");





CREATE TABLE `laundry` (
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
  `froms` varchar(60) NOT NULL,
  `agent` varchar(80) NOT NULL,
  `discount` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO laundry VALUES("1","Amstel","Beer","800","23","2","800","1","1","1","2","","25.00","24","350","18-09-2017","18","09","2017","450","07:57:34","","","0");
INSERT INTO laundry VALUES("2","33 Export","Beer","600","50","2","600","2","1","1","2","","24.00","23","156","18-09-2017","18","09","2017","444","07:57:37","","","0");
INSERT INTO laundry VALUES("3","Top A","Beer","600","27","2","600","3","1","1","2","","36.00","35","256","18-09-2017","18","09","2017","344","07:57:43","","","0");
INSERT INTO laundry VALUES("9","Top A","hot","1000","2","1","2000","","4","3","0","","55","54","0","","25","09","2017","","19:28","","Nishang Isaac","");
INSERT INTO laundry VALUES("10","Top C","hot","1000","1","1","1000","","4","3","0","","19","18","0","","25","09","2017","","19:32","","Nishang Isaac","");
INSERT INTO laundry VALUES("11","Top G","hot","1000","1","1","1000","","4","3","0","","66","65","0","","25","09","2017","","19:32","","Nishang Isaac","");
INSERT INTO laundry VALUES("12","Top P","hot","1000","1","1","1000","","4","3","0","","57","56","0","","25","09","2017","","19:32","","Nishang Isaac","");
INSERT INTO laundry VALUES("16","Amalfin","Custometics","2500","1","0","2500","9","1","2","0","","20","19","1500","25-09-2017","25","09","2017","1000","09:04:51","","","");
INSERT INTO laundry VALUES("17","Vaseline","Custometics","1500","1","0","1500","11","1","2","0","","13","12","1000","25-09-2017","25","09","2017","500","09:06:06","","","");
INSERT INTO laundry VALUES("18","Reactor","Drinks","400","1","0","400","14","1","2","0","","24","23","200","25-09-2017","25","09","2017","200","09:08:32","","","");
INSERT INTO laundry VALUES("21","Trousers","","3500","3","0","3500","inuse","6","8","0","","","","","28-09-2017","","09","2017","","2017-09-28 15:51:5","","Chucku Amaka","");





CREATE TABLE `names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `date` varchar(20) NOT NULL,
  `sector` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `dept` varchar(90) NOT NULL,
  `nic` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

INSERT INTO names VALUES("26","Mayi Palle Edwin","","677282828","0","Mile 17","");
INSERT INTO names VALUES("25","Ni John","","677886869","0","Boduma","78686866868");
INSERT INTO names VALUES("14","Coca Cola Zero","","67777888","0","BUEA","88999999999");
INSERT INTO names VALUES("7","Mbah Isaac","","677888899","0","BUEA","88999999999");
INSERT INTO names VALUES("27","Chu Nelly","","6778889999","0","Mile 17","");
INSERT INTO names VALUES("28","Nishang BOY","","677778889","0","","");





CREATE TABLE `other_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `cost` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO other_services VALUES("1","Washing","1500");





CREATE TABLE `our_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO our_service VALUES("2","Barbing");
INSERT INTO our_service VALUES("3","Manicure");
INSERT INTO our_service VALUES("4","Pedicure");





CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `item` varchar(40) NOT NULL,
  `action` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` varchar(14) NOT NULL,
  `year` varchar(13) NOT NULL,
  `time` varchar(13) NOT NULL,
  `tab` varchar(3) NOT NULL,
  `olds` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `prod` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO reports VALUES("1","Nishang","item Subtracted","","27-12-2017","12","2017","0:07:26","12","1","0","GORDONS SHOTS");
INSERT INTO reports VALUES("2","Nishang","item Subtracted","","11-03-2018","03","2018","22:02:09","16","3","2","33 EXPORT");
INSERT INTO reports VALUES("3","Nishang","item Subtracted","","17-03-2018","03","2018","14:02:21","22","3","2","33 EXPORT");
INSERT INTO reports VALUES("4","Nishang","item deleted","","20-03-2018","03","2018","15:15:27","3","1","0","AMSTEL");
INSERT INTO reports VALUES("5","Nishang","item Subtracted","","04-04-2018","04","2018","14:00:13","18","2","1","EXPORT");
INSERT INTO reports VALUES("6","Nishang","item deleted","","04-04-2018","04","2018","14:00:34","18","1","0","Mutzig");
INSERT INTO reports VALUES("7","Nishang","item deleted","","04-04-2018","04","2018","14:04:14","18","1","0","Top G");
INSERT INTO reports VALUES("8","Nishang","item Subtracted","","10-04-2018","04","2018","16:45:29","20","10","9","GUINESS SM");
INSERT INTO reports VALUES("9","super@123","warehouse deletes","","11-06-2018 ","06","2018","21:49:th","","0","5","OTHERS");
INSERT INTO reports VALUES("10","","drinks warehouse deletes","","14-06-2018 ","06","2018","6:52:08","","0","2334","River plate");
INSERT INTO reports VALUES("11","super@123","Supermarket warehouse deletes","","14-06-2018 ","06","2018","7:48:39","","0","677","NISJSJ GG");
INSERT INTO reports VALUES("12","super@123","wholesale warehouse deletes","","14-06-2018 ","06","2018","7:49:43","","0","677","Hjjsksk");
INSERT INTO reports VALUES("13","Nishang","item Subtracted","","14-06-2018","06","2018","23:00:18","20","2","1","AMSTEL");





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

INSERT INTO roll VALUES("1","cca5b81448c4b749f0d6201ad546d76aaabed92b","2018/ 05 /28","1e5a4f7606f6d4345c6cf4872b06ab50","2","19-05-2018","");





CREATE TABLE `sector` (
  `id` int(11) DEFAULT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO sector VALUES("","BAR1");
INSERT INTO sector VALUES("","BAR2");
INSERT INTO sector VALUES("","VIP");
INSERT INTO sector VALUES("","Super Market");





CREATE TABLE `sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL COMMENT 'supermarket/index.php',
  `area` int(11) NOT NULL,
  `link` varchar(98) NOT NULL COMMENT 'phones/phone/booking.php',
  `does` int(11) NOT NULL,
  `sarea` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO sectors VALUES("18","Boss Office","20","superadmin/index.php","0","0");
INSERT INTO sectors VALUES("19","Bars Stock Accountant","1","content/index.php","0","0");
INSERT INTO sectors VALUES("21","Super Market ","2","sales/casheir/welcomes.php?area=2","2","0");
INSERT INTO sectors VALUES("22","Bar One","3","sales/casheir/welcome.php?area=3","2","0");
INSERT INTO sectors VALUES("23","Bar two","4","sales/casheir/welcome.php?area=4","2","0");
INSERT INTO sectors VALUES("25","Bar Three","6","sales/casheir/welcome.php?area=6","2","0");
INSERT INTO sectors VALUES("26","VIP BAR","7","sales/casheir/welcome.php?area=7","2","0");
INSERT INTO sectors VALUES("27","Laundry Service","8","laundry/index.php?area=8","0","0");
INSERT INTO sectors VALUES("28","Bar One Wairtress","9","myphone/phone/booking.php","0","3");
INSERT INTO sectors VALUES("29","Super market Stock controler","10","POS/stock/index.php?area=10","0","0");
INSERT INTO sectors VALUES("30","Salaries Controler Admin","16","Staffs/admin/adminpage.php","0","0");
INSERT INTO sectors VALUES("31","Human Resource","17","Staffs/salary/salary.php","0","0");
INSERT INTO sectors VALUES("32","Access Accountant","12","acc/accpage.php","0","0");
INSERT INTO sectors VALUES("33","Access Boss Office","13","superadmin/index.php","0","0");
INSERT INTO sectors VALUES("34","","0","POS/Cash/index.php?area=2&roll=SUP","0","0");





CREATE TABLE `service_offered` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `name` varchar(90) NOT NULL,
  `date` varchar(20) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `tc` varchar(10) NOT NULL,
  `types` varchar(40) NOT NULL,
  `serve` varchar(60) NOT NULL,
  `comment` varchar(120) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO service_offered VALUES("9","NIS42017","Mayi Palle Edwin","29-12-2017","12","2017","3000","1","3000","Graduation Robbs","Ironing","Green","2");
INSERT INTO service_offered VALUES("12","NIS42017","Mayi Palle Edwin","30-12-2017","12","2017","3500","5","17500","T Shirts","Washing And Ironing","multiple","2");
INSERT INTO service_offered VALUES("13","NIS52017","Mbah Isaac","30-12-2017","12","2017","5000","3","15000","Men Suites","Washing And Ironing","gross","3");
INSERT INTO service_offered VALUES("14","NIS62018","Chu Nelly","01-01-2018","01","2018","2500","3","7500","Skirt","Diling And Washing","multiple","2");
INSERT INTO service_offered VALUES("15","NIS62018","Chu Nelly","01-01-2018","01","2018","8000","1","8000","Wedding Gown","Diling And Washing","","2");
INSERT INTO service_offered VALUES("16","NIS72017","Ni John","01-11-2017","11","2017","15000","2","30000","Men Suites","Washing And Ironing","black and green","4");
INSERT INTO service_offered VALUES("17","NIS82018","Mayi Palle Edwin","02-01-2018","01","2018","5000","22","110000","T Shirts","Washing And Ironing","multiple","2");
INSERT INTO service_offered VALUES("18","NIS92018","Mbah Isaac","22-03-2018","03","2018","5000","1","5000","Wedding Gown","Washing And Ironing","","4");
INSERT INTO service_offered VALUES("19","NIS92018","Mbah Isaac","22-03-2018","03","2018","4500","1","4500","Wedding Gown","Diling And Washing","","4");
INSERT INTO service_offered VALUES("20","NIS102018","Nishang BOY","05-04-2018","04","2018","12000","1","12000","Graduation Robbs","Washing And Ironing","","3");
INSERT INTO service_offered VALUES("21","NIS112018","Mayi Palle Edwin","05-04-2018","04","2018","4000","1","4000","Wedding Gown","Diling And Washing","","0");
INSERT INTO service_offered VALUES("22","NIS112018","Mayi Palle Edwin","05-04-2018","04","2018","1500","1","1500","Pants","Ironing","","0");
INSERT INTO service_offered VALUES("23","NIS122018","Mbah Isaac","10-04-2018","04","2018","4000","3","12000","Boxers","Dry Cleraning","","3");
INSERT INTO service_offered VALUES("24","NIS122018","Mbah Isaac","10-04-2018","04","2018","2500","3","7500","Shirts","Ironing","","3");





CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO services VALUES("1","Washing","2000","15000");
INSERT INTO services VALUES("3","Ironing","1500","5000");
INSERT INTO services VALUES("4","Washing And Ironing","3500","15000");
INSERT INTO services VALUES("6","Diling And Washing","2500","8000");
INSERT INTO services VALUES("7","Dry Cleraning","3000","5000");





CREATE TABLE `smkt_whouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `cost` varchar(12) NOT NULL,
  `disc` varchar(222) NOT NULL,
  `branch` varchar(90) NOT NULL,
  `qty` varchar(12) NOT NULL,
  `sp` varchar(12) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO smkt_whouse VALUES("1","Ovaltine 500mg","","","","80","2500","");
INSERT INTO smkt_whouse VALUES("2","ovaltine 200mg","","","","80","1800","");
INSERT INTO smkt_whouse VALUES("3","Maltinal 200MG","","","","70","2400","");
INSERT INTO smkt_whouse VALUES("4","Maltinal 100mg","","","","40.00","1800","");
INSERT INTO smkt_whouse VALUES("5","coco butter","","","","80","2200","");
INSERT INTO smkt_whouse VALUES("6","oraginal","","","","89","700","");
INSERT INTO smkt_whouse VALUES("7","fanta","","","","80","500","");





CREATE TABLE `spendingcats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(90) NOT NULL,
  `ids` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO spendingcats VALUES("1","Credit","0");
INSERT INTO spendingcats VALUES("2","Transport","0");
INSERT INTO spendingcats VALUES("3","Taxation","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
INSERT INTO stockreports VALUES("12","TOP C","","9","admin12","15","","49","31-12-2017","12","2017","");
INSERT INTO stockreports VALUES("13","AMSTEL","","9","admin12","15","","41","11-01-2018","01","2018","");
INSERT INTO stockreports VALUES("14","Top A","","11","admin12","15","","38","11-01-2018","01","2018","");





CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `cost` varchar(12) NOT NULL,
  `disc` varchar(222) NOT NULL,
  `branch` varchar(90) NOT NULL,
  `qty` varchar(12) NOT NULL,
  `sp` varchar(12) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  `sector` varchar(60) NOT NULL,
  `area` int(11) NOT NULL COMMENT 'from sectors',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

INSERT INTO store VALUES("1","Top A","500","TOP","","20","1000",""," Bar Two","4");
INSERT INTO store VALUES("2","Top C","500","TOP","","70","1000",""," Bar Two","4");
INSERT INTO store VALUES("3","Top G","500","TOP","","22","1000",""," Bar Two","4");
INSERT INTO store VALUES("4","Top P","500","TOP","","45","1000",""," Bar Two","4");
INSERT INTO store VALUES("5","Top A","500","TOP","","56","1000",""," Bar One","3");
INSERT INTO store VALUES("6","Top C","500","TOP","","20","1000",""," Bar One","3");
INSERT INTO store VALUES("7","Top G","500","TOP","","67","1000",""," Bar One","3");
INSERT INTO store VALUES("8","Top P","500","TOP","","58","1000",""," Bar One","3");
INSERT INTO store VALUES("9","Amalfin","1000","Custometics","","20","2500",""," Super Market","2");
INSERT INTO store VALUES("10","Blue Dream","340","Custometics","","22","1000",""," Super Market","2");
INSERT INTO store VALUES("17","Super Mont 1.5 L","300","Drinks","","18","500",""," Super Market","2");
INSERT INTO store VALUES("18","Super Mont 1  L","250","Drinks","","15","400",""," Super Market","2");
INSERT INTO store VALUES("19","Super Mont  0.5 L","165","Drinks","","17","250",""," Super Market","2");
INSERT INTO store VALUES("20","33 Export","600","Beer","","20","1000",""," Bar One","3");
INSERT INTO store VALUES("21","Amstel","600","Beer","","70","1000",""," Bar One","3");
INSERT INTO store VALUES("22","Guiness","600","Beer","","70","1000",""," Bar One","3");
INSERT INTO store VALUES("23","Big Guiness","850","Beer","","34","2000",""," Bar One","3");
INSERT INTO store VALUES("24","Pure Heaven","1000","Wine","","5","2500",""," Bar One","3");
INSERT INTO store VALUES("25","Baron De Roi","800","Wine","","16","1500",""," Bar One","3");
INSERT INTO store VALUES("26","Gold Label","15000","Wisky","","9","70000",""," Bar One","3");
INSERT INTO store VALUES("27","Blue Label","16000","Wisky","","10","65000",""," Bar One","3");
INSERT INTO store VALUES("28","Black Label","16000","Wisky","","12","71000",""," Bar One","3");





CREATE TABLE `styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `cost` varchar(15) NOT NULL,
  `types` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `supermkt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `cost` varchar(12) NOT NULL,
  `disc` varchar(222) NOT NULL,
  `branch` varchar(90) NOT NULL,
  `qty` varchar(12) NOT NULL,
  `sp` varchar(12) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  `sector` varchar(60) NOT NULL,
  `area` int(11) NOT NULL COMMENT 'from sectors',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO supermkt VALUES("1","Ovaltine 500mg","","","","76","2500","","","0");
INSERT INTO supermkt VALUES("2","Ovaltine 200mg","","","","79","1800","","","0");
INSERT INTO supermkt VALUES("3","Maltinal 200MG","","","","70","2400","","","0");
INSERT INTO supermkt VALUES("4","Maltinal 100mg","","","","15","1800","","","0");
INSERT INTO supermkt VALUES("9","coco butter","","","","0","2200","","","0");
INSERT INTO supermkt VALUES("10","oraginal","","","","0","700","","","0");
INSERT INTO supermkt VALUES("11","fanta","","","","0","500","","","0");





CREATE TABLE `supermkt_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO supermkt_cat VALUES("1","Provision");
INSERT INTO supermkt_cat VALUES("2","Drinks");





CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `town` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `supplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(21) NOT NULL,
  `items` text NOT NULL,
  `bys` varchar(30) NOT NULL,
  `amount` varchar(12) NOT NULL,
  `yn` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO supplies VALUES("1","13-06-2018","8 Crates Castel<br />\n6 Craetes Heindeken<br />\n1 Printers<br />\n2 Ice Cube<br />\n5 Craetes Big Guinness<br />\n                        ","","80000","");
INSERT INTO supplies VALUES("2","09-06-2018","1 CPU<br />\n1 MONITOR<br />\n2  HP Printer PRO001<br />\n3 POWER Cable Cables<br />\n                        ","","50000","MAX");





CREATE TABLE `supply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(70) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `month` int(6) NOT NULL,
  `year` int(8) NOT NULL,
  `date` varchar(15) NOT NULL,
  `cp` varchar(14) NOT NULL,
  `sp` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO supply VALUES("1","","5","6","2017","19-06-2017","1200","1500");





CREATE TABLE `trolley` (
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
  `froms` varchar(60) NOT NULL,
  `agent` varchar(80) NOT NULL,
  `discount` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO trolley VALUES("2","Coca Cola Zero","Drinks","1000","2","2","1000","5","1","2","2","","11","10","655","06-11-2017","06","11","2017","345","10:37:03","","","0");
INSERT INTO trolley VALUES("4","Maltina","Provision","4500","1","2","4500","2","1","2","2","","0","-1","2000","06-11-2017","06","11","2017","2500","10:37:06","","","0");
INSERT INTO trolley VALUES("5","Coca Cola","Drinks","1000","9","2","1000","4","1","2","2","","15","14","655","06-11-2017","06","11","2017","345","10:37:11","","","0");
INSERT INTO trolley VALUES("6","Guiness Pm","Drinks","1000","1","2","1000","6","1","2","2","","12","11","550","06-11-2017","06","11","2017","450","10:40:46","","","0");
INSERT INTO trolley VALUES("7","Coca Cola","Drinks","1000","5","2","1000","4","1","2","2","","15","14","655","06-11-2017","06","11","2017","345","10:47:50","","","0");
INSERT INTO trolley VALUES("8","Guiness Sm","Drinks","1000","3","2","1000","7","1","2","2","","13","12","550","06-11-2017","06","11","2017","450","10:48:14","","","0");
INSERT INTO trolley VALUES("9","Guiness Sm","Drinks","1000","5","2","1000","7","1","2","2","","13","12","550","06-11-2017","06","11","2017","450","10:50:37","","","0");
INSERT INTO trolley VALUES("10","Coca Cola","Drinks","1000","3","2","1000","4","1","2","2","","15","14","655","06-11-2017","06","11","2017","345","10:51:24","","","0");
INSERT INTO trolley VALUES("18","Maltina","Provision","4500","9","2","4500","2","1","2","2","","0","-1","2000","04-09-2017","04","09","2017","2500","03:04:57","","","0");
INSERT INTO trolley VALUES("19","Coca Cola","Drinks","1000","10","2","1000","4","1","2","2","","12","11","655","04-09-2017","04","09","2017","345","03:05:00","","","0");
INSERT INTO trolley VALUES("21","Ovaltine","Provision","2500","5","2","2500","8","1","2","2","","9","8","1300","04-09-2017","04","09","2017","1200","03:23:21","","","0");





CREATE TABLE `truck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sentby` varchar(30) NOT NULL,
  `sentto` varchar(40) NOT NULL,
  `item` varchar(80) NOT NULL,
  `stock` varchar(90) NOT NULL,
  `taken` varchar(15) NOT NULL,
  `current` varchar(15) NOT NULL,
  `discribe` varchar(50) NOT NULL,
  `date` varchar(17) NOT NULL,
  `month` varchar(22) NOT NULL,
  `year` text NOT NULL,
  `status` int(11) NOT NULL,
  `receiver` varchar(80) NOT NULL,
  `units` varchar(90) NOT NULL,
  `day` int(10) NOT NULL,
  `time` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO truck VALUES("1"," ","","80","Ovaltine 500mg","2","30","50.00","2500","14-06-2018","06","2018","","30","0","7:06:20");
INSERT INTO truck VALUES("2"," ","","67","ovaltine 200mg","2","17","50.00","1800","14-06-2018","06","2018","","17","0","7:06:20");
INSERT INTO truck VALUES("3"," ","","56","Maltinal 200MG","2","16","40.00","2400","14-06-2018","06","2018","","16","0","7:06:20");
INSERT INTO truck VALUES("4"," ","","58","Maltinal 100mg","2","18","40.00","1800","14-06-2018","06","2018","","18","0","7:06:20");
INSERT INTO truck VALUES("6"," ","","80","fanta","","20","60.00","500","14-06-2018","06","2018","","","0","7:24:54");





CREATE TABLE `types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `does` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO types VALUES("1","DRINKS","2");
INSERT INTO types VALUES("2","PROVISION","2");
INSERT INTO types VALUES("3","FOOD","0");





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
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO users VALUES("41","Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586","Nishang Isaac","w@me","w@me","3","$2y$10$cc5T8cIE6ueEJ.miHcGyhu0I78A2ivYj6zotGaiRxinrp8IeY3hly","","","","","","2017-09-30","::1","0","0","9","","1111111");
INSERT INTO users VALUES("37","Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586"," Me4455","trains@me","trains@me","5","$2y$10$e7lkujiE8yIuXhD0MARWRuouXjuC6FIkTZd..Mns6fzuxL7xpyohC","0362017","","67913526","","","2017-09-11","::1","0","0","5","","1111111");
INSERT INTO users VALUES("34","Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586","Admin","admin12","admin12","20","$2y$10$EuSOsSNVrSPG8LdxOh3bAOJYa9FTYsNqx8R50zJIXdpO0sPIJMqam","0332017","","677788888","","","2017-09-08","::1","0","0","20","","1111111");
INSERT INTO users VALUES("35","Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586","Nishang","super@123","super@123","20","$2y$10$svDhwwnz2jBdfcqvZPzBM.P2J3DaJyD76oswb19chDABehlbKDtUi","0342017","","6777888888","","","2017-09-08","::1","0","0","20","","1111111");
INSERT INTO users VALUES("40","Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586","Nishang Isaac","me@123","me@123","3","$2y$10$qSvtiIZ1YWn2OiVM61PxFeICBlptBuYbz4j4UrZDziGbYdMYhiWS6","","","","","","2017-09-25","::1","0","0","3","","1111111");
INSERT INTO users VALUES("43","Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586","Ni Shang","waiter1","waiter1","4","$2y$10$KDuQqsQkUBGr7Go55dOXcOONXI23fp9zaS4qAGe0M3HW0bv0kF4em","","","","","","2017-12-26","::1","0","0","9","","1111111");
INSERT INTO users VALUES("44","Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586","Bar12","bar12","bar12","4","$2y$10$0Y10xgM/B1wptVPdaxvdNuAKHN6J.TL/Ex2CMghYvyaxb5MQBnAn6","","","","","","2018-03-11","::1","0","0","4","","1111111");
INSERT INTO users VALUES("45","Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586","S","supermkt","supermkt","2","$2y$10$kVz71dv42/xdl3y3VsjllOGrX8ySTZCktMrx5CbjnkmDDZe4wgMS.","","","","","","2018-03-22","::1","0","0","2","","1111111");
INSERT INTO users VALUES("46","Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586","Superadmin","superadmin","superadmin","20","$2y$10$NQBSUo2oYnPeB30xRKdL8.f8.uOLBQz1xRiQpGXCDYscrMlOrFLGO","","","","","","2018-05-02","::1","0","0","20","","111111");
INSERT INTO users VALUES("47","Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586","Nishang M","superad","superad","20","$2y$10$3sR0YO6v6iAqThwGaq/xG.nlX5HuY2I8vexyidG1PlZQY/7JRKLOG","","","","","","2018-06-12","::1","0","0","20","","12345");





CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `cost` varchar(12) NOT NULL,
  `disc` varchar(222) NOT NULL,
  `branch` varchar(90) NOT NULL,
  `qty` varchar(12) NOT NULL,
  `sp` varchar(12) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO warehouse VALUES("1","33 EXPORT","455","BEER","","20.00","1500","");
INSERT INTO warehouse VALUES("2","AMSTEL","455","BEER","","25.00","1500","");
INSERT INTO warehouse VALUES("3","BIG GUINESS","455","BEER","","28.00","2000","");
INSERT INTO warehouse VALUES("4","SMALL GUINESS","455","BEER","","30.00","1500","");
INSERT INTO warehouse VALUES("5","TOP A","400","TOP","","35.00","1000","");
INSERT INTO warehouse VALUES("6","TOP P","400","TOP","","35.00","1000","");
INSERT INTO warehouse VALUES("7","TOP G","400","TOP ","","50.00","1000","");
INSERT INTO warehouse VALUES("8","VIMTO","400","TOP","","55.00","1000","");
INSERT INTO warehouse VALUES("9","MALTA","340","CAN","","100.00","1000","");
INSERT INTO warehouse VALUES("10","HEINDEKEN S","400","CAN","","65.00","1000","");
INSERT INTO warehouse VALUES("11","BAVARIA","500","CAN","","70.00","1000","");
INSERT INTO warehouse VALUES("12","HEINDEKEN B","800","CAN","","54.00","2000","");
INSERT INTO warehouse VALUES("13","SMALL SPRITE","","TOP","","30.00","1000","");





CREATE TABLE `wholesale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `cost` varchar(12) NOT NULL,
  `disc` varchar(222) NOT NULL,
  `branch` varchar(90) NOT NULL,
  `qty` varchar(12) NOT NULL,
  `sp` varchar(12) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  `sector` varchar(60) NOT NULL,
  `area` int(11) NOT NULL COMMENT 'from sectors',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO wholesale VALUES("8","TANGUI 1L","1500","PALLETS","","26","2300","","","0");
INSERT INTO wholesale VALUES("9","MALTINAL 5ML","1500","UNITS","","4","2100","","","0");
INSERT INTO wholesale VALUES("10","RICE","16000","BAGS","","20","19000","","","0");
INSERT INTO wholesale VALUES("11","TANGUI 0.5L","1100","PALLETS","","3","1500","","","0");
INSERT INTO wholesale VALUES("12","SUGAR","1500","PACKS","","10","2000","","","0");
INSERT INTO wholesale VALUES("13","MALTINAL 5L","7000","BUCKETS","","6","10000","","","0");
INSERT INTO wholesale VALUES("14","COLGATE","3000","CARTOONS","","26","5000","","","0");



