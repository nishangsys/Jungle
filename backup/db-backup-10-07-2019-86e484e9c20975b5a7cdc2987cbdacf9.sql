

CREATE TABLE `ass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ls` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO ass VALUES("1","50");





CREATE TABLE `bar_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `sector` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO bar_tables VALUES("4","E004","0","7");
INSERT INTO bar_tables VALUES("5","001","0","3");
INSERT INTO bar_tables VALUES("6","0002","0","3");
INSERT INTO bar_tables VALUES("7","003","0","3");
INSERT INTO bar_tables VALUES("8","0004","0","3");
INSERT INTO bar_tables VALUES("9","A001","0","7");
INSERT INTO bar_tables VALUES("10","E002","0","7");
INSERT INTO bar_tables VALUES("11","E003","0","7");
INSERT INTO bar_tables VALUES("12","A002","0","7");
INSERT INTO bar_tables VALUES("13","A003","0","7");
INSERT INTO bar_tables VALUES("14","B001","0","7");
INSERT INTO bar_tables VALUES("15","C001","0","7");
INSERT INTO bar_tables VALUES("16","C002","0","7");
INSERT INTO bar_tables VALUES("17","D001","0","7");
INSERT INTO bar_tables VALUES("18","D002","0","7");
INSERT INTO bar_tables VALUES("19","D003","0","7");
INSERT INTO bar_tables VALUES("20","D004","0","7");
INSERT INTO bar_tables VALUES("21","D005","0","7");
INSERT INTO bar_tables VALUES("22","D006","0","7");
INSERT INTO bar_tables VALUES("23","E001","0","7");
INSERT INTO bar_tables VALUES("24","E005","0","7");





CREATE TABLE `basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `product` varchar(51) NOT NULL,
  `price` varchar(20) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `ids` varchar(20) NOT NULL,
  `tab` varchar(50) NOT NULL,
  `area` int(11) NOT NULL,
  `date` varchar(19) NOT NULL,
  `printed` int(11) NOT NULL,
  `section` varchar(40) NOT NULL,
  `opening_stocks` varchar(8) NOT NULL,
  `closing_stocks` varchar(8) NOT NULL,
  `profit` varchar(11) NOT NULL,
  `category` varchar(60) NOT NULL,
  `day` varchar(6) NOT NULL,
  `total` varchar(20) NOT NULL,
  `month` varchar(6) NOT NULL,
  `year` varchar(6) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `time` varchar(18) NOT NULL,
  `comment` text NOT NULL,
  `agent` varchar(80) NOT NULL,
  `balance` varchar(100) NOT NULL,
  `main_category` varchar(30) NOT NULL,
  `discount` int(11) NOT NULL,
  `froms` varchar(30) NOT NULL,
  `dib` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO basket VALUES("1","","","","","","0","d004","D004","7","2019-07-10 13:08:08","0","","","","","","","","","","","","","","","","0","","");
INSERT INTO basket VALUES("2","","","","","","0","bbbbb","D004","7","2019-07-10 13:08:55","0","","","","","","","","","","","","","","","","0","","");
INSERT INTO basket VALUES("3","","","","","","0","laura","0002","3","2019-07-10 13:11:46","0","","","","","","","","","","","","","","","","0","","");





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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO categories VALUES("11","Wine");
INSERT INTO categories VALUES("14","TOP");
INSERT INTO categories VALUES("15","Beer");
INSERT INTO categories VALUES("18","Whisky");
INSERT INTO categories VALUES("20","Champagne");
INSERT INTO categories VALUES("21","Can ");
INSERT INTO categories VALUES("22","Water");
INSERT INTO categories VALUES("23","Soft");





CREATE TABLE `client` (
  `clien_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `address` text,
  `as1` varchar(60) DEFAULT NULL,
  `as2` varchar(60) DEFAULT NULL,
  `as3` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`clien_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO client VALUES("2","JUNGLE GROUP OF COMPANIES<br>Burjkhalifa","Check Point- Buea","Tel:(237) 23332 4270","","V-2515");





CREATE TABLE `clothes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `code` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

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
INSERT INTO clothes VALUES("20","Bed Shit","");
INSERT INTO clothes VALUES("21","Wool Carpet","");
INSERT INTO clothes VALUES("22","Tie","");
INSERT INTO clothes VALUES("23","Bel","");
INSERT INTO clothes VALUES("24","Blanket","");
INSERT INTO clothes VALUES("25","Linen","");
INSERT INTO clothes VALUES("26","Socks","01");





CREATE TABLE `codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO codes VALUES("1","58");





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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO creditors VALUES("1","Guy Kamga Daneil","100000","--","0","","","","6789778");
INSERT INTO creditors VALUES("2","MAX","7000","--","0","","","","67677676");





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO d_gross VALUES("1"," general","","50","Fanta 5L","2","30","80.00","8000","14-06-2018","06","2018","","","");





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






CREATE TABLE `debtors` (
  `name` varchar(90) NOT NULL,
  `date` varchar(20) NOT NULL,
  `amt` varchar(12) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(23) NOT NULL,
  `owed` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO debtors VALUES("Care of Manager","","","1","","283800");





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
  `image_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

INSERT INTO finals VALUES("1","Mimbo Rouge","1000","Wines","","18","2500","","","2","");
INSERT INTO finals VALUES("2","Mimbo Blanc","1389","Wines","","18","3000","","","2","");
INSERT INTO finals VALUES("3","Cogsigna Rouge","2084","Wines","","2","5000","","","2","");
INSERT INTO finals VALUES("4","Cogsigna Blanc","2166","Wines","","2","5000","","","2","");
INSERT INTO finals VALUES("5","ST Loude","2084","Wines","","2","5000","","","2","");
INSERT INTO finals VALUES("6","Cles De Bellevine","2166","Wines","","3","5000","","","2","");
INSERT INTO finals VALUES("7","Alma Artesan","2166","Wines","","2","5000","","","2","");
INSERT INTO finals VALUES("8","ST Loude","2084","Wines","","2","10000","","","3","");
INSERT INTO finals VALUES("9","Ice Black","","Beer","","48","1000","","","2","");
INSERT INTO finals VALUES("10","Malta Guiness Bottle","463","Soft","","48","1000","","","2","");
INSERT INTO finals VALUES("11","Harp","","Beer","","36","800","","","2","");
INSERT INTO finals VALUES("12","Guiness Smooth","631","Beer","","45","800","","","2","");
INSERT INTO finals VALUES("13","Small Guiness","","Beer","","312","1000","","","2","");
INSERT INTO finals VALUES("14","Big Guinness","","Beer","","60","1200","","","2","");
INSERT INTO finals VALUES("15","Supermont 1L ","209","Water","","12","1000","","","2","");
INSERT INTO finals VALUES("16","Tour Cantelou Red","2166","Wines","","2","5000","","","2","");
INSERT INTO finals VALUES("17","Tour Cantelou Blanc","2166","Wine","","6","5000","","","2","");
INSERT INTO finals VALUES("18","Domaine De Gironde","2166","Wines","","3","5000","","","2","");
INSERT INTO finals VALUES("19","Chateaux Lemon","2166","Wines","","4","5000","","","2","");
INSERT INTO finals VALUES("20","Malta GN","463","Soft D","","84","1000","","","2","");
INSERT INTO finals VALUES("21","Heineken Bottle","575","Beer","","200","1000","","","2","");
INSERT INTO finals VALUES("22","Don Simon","1042","Wines","","12","3000","","","2","");
INSERT INTO finals VALUES("23","Baron De Valle","1042","Wines","","12","2500","","","2","");
INSERT INTO finals VALUES("24","Penasol Red","1416","Wines","","12","3000","","","2","");
INSERT INTO finals VALUES("25","Penasol White","1459","Wines","","12","3000","","","2","");
INSERT INTO finals VALUES("26","Vinosol","1125","Wines","","12","2500","","","2","");
INSERT INTO finals VALUES("27","El Vino","1084","Wines","","12","2500","","","2","");
INSERT INTO finals VALUES("28","Chateaux Le Maquis","2000","Wines","","6","5000","","","2","");
INSERT INTO finals VALUES("29","Refuge Camters","2334","Wines","","2","5000","","","2","");
INSERT INTO finals VALUES("30","Mouton Calmet","2084","Wines","","6","5000","","","2","");
INSERT INTO finals VALUES("31","Ruinart Blanc","","Champagne","","30","100000","","","3","");
INSERT INTO finals VALUES("32","Chivas 18 Ans","","Whisky","","30","90000","","","3","");
INSERT INTO finals VALUES("33","Jack Honey","","Whisky","","6","35000","","","3","");
INSERT INTO finals VALUES("34","Ballentines","","Whisky","","6","25000","","","3","");
INSERT INTO finals VALUES("35","Baileys","8292","Whisky","","12","25000","","","3","");
INSERT INTO finals VALUES("36","Gold Reserve","34540","Whisky","","18","70000","","","3","");
INSERT INTO finals VALUES("37","Black Label","14917","Whisky","","24","35000","","","3","");
INSERT INTO finals VALUES("38","Red Label","7590","Whisky","","6","25000","","","3","");
INSERT INTO finals VALUES("39","Small Guiness","596","Beer","","188","1000","","","3","");
INSERT INTO finals VALUES("40","Malta GN","463","Soft D","","60","1000","","","3","");
INSERT INTO finals VALUES("41","Ice Black","554","Beer","","100","1000","","","3","");
INSERT INTO finals VALUES("42","Heineken Bottle","575","Beer","","400","1500","","","3","");
INSERT INTO finals VALUES("43","Skoll","750","Soft ","","48","1500","","","3","");
INSERT INTO finals VALUES("44","J&B","7590","Whisky","","6","25000","","","3","");





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
  `image_name` varchar(50) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO foods VALUES("2","CHIEFS SALAD","","3000.00","","STARTER","15","15","");
INSERT INTO foods VALUES("6","1/4 Chicken","","6000.00","","Chicken","2","Reception","");
INSERT INTO foods VALUES("7","1/2 Chicken","","8000.00","","Chicken","2","Reception","");
INSERT INTO foods VALUES("8","Rice And Beans","","4000.00","","Main Course","10","Restaurant","");
INSERT INTO foods VALUES("9","Jerof Rice","","2000.00","","Mian Course","10","Restaurant","");
INSERT INTO foods VALUES("11","Okongobong , Ripe Plantain And Dry Fish","","4000","","MAIN COURSE","0","RESTAURANT","");
INSERT INTO foods VALUES("12","Okongobong , Ripe Plantain And Meat","","5000","","MAIN COURSE","0","RESTAURANT","");
INSERT INTO foods VALUES("13","Chicken Plantain Chips","","5000","","MAIN COURSE","0","RESTAURANT","");





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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

INSERT INTO history VALUES("1","07-07-2019","201901","","","","\n","","");
INSERT INTO history VALUES("2","07-07-2019","201902","","","","\n","","");
INSERT INTO history VALUES("3","07-07-2019","201903","","","","","","");
INSERT INTO history VALUES("4","01-01-2014","201404","","","","\n","","");
INSERT INTO history VALUES("5","01-01-2014","201405","","","","\n","","");
INSERT INTO history VALUES("6","01-01-2014","201406","","","","\n","","");
INSERT INTO history VALUES("7","01-01-2014","201407","","","","\n","","");
INSERT INTO history VALUES("8","01-01-2014","201408","","","","","","");
INSERT INTO history VALUES("9","","09","","","","","","");
INSERT INTO history VALUES("10","08-07-2019","2019010","","","","\n","","");
INSERT INTO history VALUES("11","08-07-2019","2019010","","","","\n","","");
INSERT INTO history VALUES("12","08-07-2019","2019012","","","","\n","","");
INSERT INTO history VALUES("13","08-07-2019","2019013","","","","\n","","");
INSERT INTO history VALUES("14","08-07-2019","2019014","","","","\n","","");
INSERT INTO history VALUES("15","08-07-2019","2019015","","","","\n","","");
INSERT INTO history VALUES("16","08-07-2019","2019016","","","","\n","","");
INSERT INTO history VALUES("17","08-07-2019","2019017","","","","\n","","");
INSERT INTO history VALUES("18","08-07-2019","2019018","","","","\n","","");
INSERT INTO history VALUES("19","08-07-2019","2019019","","","","\n","","");
INSERT INTO history VALUES("20","08-07-2019","2019020","","","","\n","","");
INSERT INTO history VALUES("21","08-07-2019","2019021","","","","\n","","");
INSERT INTO history VALUES("22","08-07-2019","2019022","","","","","","");
INSERT INTO history VALUES("23","08-07-2019","2019023","","","","","","");
INSERT INTO history VALUES("24","08-07-2019","2019024","","","","\n","","");
INSERT INTO history VALUES("25","08-07-2019","2019025","","","","\n","","");
INSERT INTO history VALUES("26","08-07-2019","2019026","","","","\n","","");
INSERT INTO history VALUES("27","08-07-2019","2019027","","","","\n","","");
INSERT INTO history VALUES("28","08-07-2019","2019028","","","","\n","","");
INSERT INTO history VALUES("29","08-07-2019","2019029","","","","\n","","");
INSERT INTO history VALUES("30","08-07-2019","2019030","","","","\n","","");
INSERT INTO history VALUES("31","08-07-2019","2019031","","","","\n","","");





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
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

INSERT INTO names VALUES("26","Mayi Palle Edwin","","677282828","0","Mile 17","");
INSERT INTO names VALUES("25","Ni John","","677886869","0","Boduma","78686866868");
INSERT INTO names VALUES("14","Coca Cola Zero","","67777888","0","BUEA","88999999999");
INSERT INTO names VALUES("7","Mbah Isaac","","677888899","0","BUEA","88999999999");
INSERT INTO names VALUES("27","Chu Nelly","","6778889999","0","Mile 17","");
INSERT INTO names VALUES("28","Nishang BOY","","677778889","0","","");
INSERT INTO names VALUES("29","Hyjufyufgv U","","5655566","0","","");
INSERT INTO names VALUES("30","Bed Shit","","5655566","0","","");
INSERT INTO names VALUES("31","Marie","","555555667","0","","");
INSERT INTO names VALUES("32","Peter","","3333333434","0","Gra","");
INSERT INTO names VALUES("33","Mr Vb","","7894562","0","Chech","");
INSERT INTO names VALUES("34","Angel","","55555555","0","Kj","");
INSERT INTO names VALUES("35","Rose","","555767","0","Molyko","");
INSERT INTO names VALUES("36","Tabi","","4547779","0","Check Point","");
INSERT INTO names VALUES("37","Joe","","7655759779","0","Buea Town","");
INSERT INTO names VALUES("39","Barry","","65552228","0","Molyko","");
INSERT INTO names VALUES("40","Billy","","695562333","0","","");
INSERT INTO names VALUES("41","Felix","","676787928","0","","");
INSERT INTO names VALUES("42","Mike","","5886958","0","","");
INSERT INTO names VALUES("43","Pual","","56565552","0","Check Point","");
INSERT INTO names VALUES("44","Mikel","","5555555544","0","Buea Town","");
INSERT INTO names VALUES("45","Peter","","4562322","0","Bm","");
INSERT INTO names VALUES("46","Mr G","","885422","0","Check","");
INSERT INTO names VALUES("47","Stanley","","8965320","0","M N B","");
INSERT INTO names VALUES("48","Falon","","656555","0","","");
INSERT INTO names VALUES("49","Mira","","546643","0","Buea Town","");
INSERT INTO names VALUES("50","Yvette","","676787928","0","Sosoliso","");
INSERT INTO names VALUES("51","Agbor23658","","123658","0","Buea","");
INSERT INTO names VALUES("52","Agbor","","123658","0","Buea Town","");
INSERT INTO names VALUES("53","Baby","","22222222","0","GRA","");
INSERT INTO names VALUES("54","Me","","3333333434","0","Tg","");
INSERT INTO names VALUES("55","Burj Khalifa","","876543334","0","GRA","");
INSERT INTO names VALUES("56","Oru","","5842369","0","Wera","");
INSERT INTO names VALUES("57","Oru58","","5842369we","0","Wera","");
INSERT INTO names VALUES("59","Love","","7777777","0","Buea Town","");
INSERT INTO names VALUES("60","Mr John","","66678799","0","Malingo","");
INSERT INTO names VALUES("61","Paul","","787888898","0","Buea","");
INSERT INTO names VALUES("62","Tabi","","25555523","0","Molyko","215888522");





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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

INSERT INTO reports VALUES("1","Nishang","item Subtracted","","27-12-2017","12","2017","0:07:26","12","1","0","GORDONS SHOTS");
INSERT INTO reports VALUES("2","Nishang","item Subtracted","","11-03-2018","03","2018","22:02:09","16","3","2","33 EXPORT");
INSERT INTO reports VALUES("3","Nishang","item Subtracted","","17-03-2018","03","2018","14:02:21","22","3","2","33 EXPORT");
INSERT INTO reports VALUES("4","Nishang","item deleted","","20-03-2018","03","2018","15:15:27","3","1","0","AMSTEL");
INSERT INTO reports VALUES("5","Nishang","item Subtracted","","04-04-2018","04","2018","14:00:13","18","2","1","EXPORT");
INSERT INTO reports VALUES("6","Nishang","item deleted","","04-04-2018","04","2018","14:00:34","18","1","0","Mutzig");
INSERT INTO reports VALUES("7","Nishang","item deleted","","04-04-2018","04","2018","14:04:14","18","1","0","Top G");
INSERT INTO reports VALUES("8","Nishang","item Subtracted","","10-04-2018","04","2018","16:45:29","20","10","9","GUINESS SM");
INSERT INTO reports VALUES("9","Njinabo Maika Muboh","item Subtracted","","15-06-2018","06","2018","12:50:07","2","4","3","Heindeken Big");
INSERT INTO reports VALUES("10","Nishang","item deleted","","15-06-2018","06","2018","13:10:41","3","1","0","EXPORT");
INSERT INTO reports VALUES("11","Enow Bernadette Akum","item deleted","","16-06-2018","06","2018","12:57:20","4","10","0","Baron De Roi");
INSERT INTO reports VALUES("12","Enow Bernadette Akum","item deleted","","16-06-2018","06","2018","13:05:39","4","3","0","EXPORT");
INSERT INTO reports VALUES("13","Enow Bernadette Akum","item deleted","","16-06-2018","06","2018","13:05:46","4","2","0","GUINESS SM");
INSERT INTO reports VALUES("14","Enow Bernadette Akum","item deleted","","16-06-2018","06","2018","13:05:52","4","2","0","Top G");
INSERT INTO reports VALUES("15","Enow Bernadette Akum","item deleted","","16-06-2018","06","2018","13:05:57","4","3","0","EXPORT");
INSERT INTO reports VALUES("16","Enow Bernadette Akum","item deleted","","16-06-2018","06","2018","13:06:02","4","1","0","Supermonth 1l");
INSERT INTO reports VALUES("17","Enow Bernadette Akum","item deleted","","16-06-2018","06","2018","13:09:18","3","4","0","Top P");
INSERT INTO reports VALUES("18","Enow Bernadette Akum","item deleted","","16-06-2018","06","2018","13:10:01","3","3","0","AMSTEL");
INSERT INTO reports VALUES("19","Enow Bernadette Akum","item deleted","","16-06-2018","06","2018","13:10:06","3","2","0","EXPORT");
INSERT INTO reports VALUES("20","Ophillia Emmanuel Udoh","item deleted","","18-06-2018","06","2018","12:42:48","2","3","0","AMSTEL");
INSERT INTO reports VALUES("21","Ophillia Emmanuel Udoh","item deleted","","18-06-2018","06","2018","12:42:52","2","2","0","EXPORT");
INSERT INTO reports VALUES("22","Alex Motale Edith Ikor Itoe","item Subtracted","","18-06-2018","06","2018","12:54:53","3","5","4","Supermonth 1l");
INSERT INTO reports VALUES("23","Nchung Roseline Bisong","item Subtracted","","18-06-2018","06","2018","12:54:56","3","5","4","Supermonth 1l");
INSERT INTO reports VALUES("24","Nchung Roseline Bisong","item deleted","","18-06-2018","06","2018","12:56:21","3","6","0","");
INSERT INTO reports VALUES("25","Heldrine Welayi Wansi","item deleted","","18-06-2018","06","2018","13:16:45","3","2","0","Baron De Roi");
INSERT INTO reports VALUES("26","Heldrine Welayi Wansi","item deleted","","18-06-2018","06","2018","13:16:50","3","1","0","Supermonth 1l");
INSERT INTO reports VALUES("27","felix","drinks warehouse deletes","","18-06-2018 ","06","2018","13:21:41","","0","100","manyang");
INSERT INTO reports VALUES("28","felix","drinks warehouse deletes","","18-06-2018 ","06","2018","13:24:08","","0","500","manyang");
INSERT INTO reports VALUES("29","Heldrine Welayi Wansi","item deleted","","18-06-2018","06","2018","13:35:20","3","3","0","My");
INSERT INTO reports VALUES("30","felix","drinks warehouse deletes","","18-06-2018 ","06","2018","13:46:53","","0","0","33 EXPORT");
INSERT INTO reports VALUES("31","felix","drinks warehouse deletes","","18-06-2018 ","06","2018","13:50:55","","0","30","SMALL GUINESS");
INSERT INTO reports VALUES("32","felix","drinks warehouse deletes","","18-06-2018 ","06","2018","13:50:59","","0","0","");
INSERT INTO reports VALUES("33","felix","drinks warehouse deletes","","18-06-2018 ","06","2018","14:13:51","","0","65","AMSTEL");
INSERT INTO reports VALUES("34","Alex Motale Edith Ikor Itoe","item Subtracted","","18-06-2018","06","2018","15:17:31","2","10","9","Heindeken Small");
INSERT INTO reports VALUES("35","Alex Motale Edith Ikor Itoe","item Subtracted","","18-06-2018","06","2018","15:17:37","2","9","8","Heindeken Small");
INSERT INTO reports VALUES("36","Alex Motale Edith Ikor Itoe","item Subtracted","","18-06-2018","06","2018","15:17:45","2","8","7","Heindeken Small");
INSERT INTO reports VALUES("37","Ekume Raissa Nnane","item Subtracted","","18-06-2018","06","2018","15:29:56","2","6","5","TOP C");
INSERT INTO reports VALUES("38","Ekume Raissa Nnane","item Subtracted","","18-06-2018","06","2018","15:30:08","2","5","4","TOP C");
INSERT INTO reports VALUES("39","Ekwe Irene Epolle","item Subtracted","","21-06-2018","06","2018","14:31:50","2","3","2","Top Tonic");
INSERT INTO reports VALUES("40","Ekwe Irene Epolle","item deleted","","21-06-2018","06","2018","14:33:13","2","1","0","Grants");
INSERT INTO reports VALUES("41","Ekwe Irene Epolle","item deleted","","22-06-2018","06","2018","13:46:23","2","5","0","EXPORT");
INSERT INTO reports VALUES("42","Kenne Pianta Nadege Nah","item Subtracted","","23-06-2018","06","2018","11:25:50","1","3","2","Blue Label");
INSERT INTO reports VALUES("43","Kenne Pianta Nadege Nah","item Subtracted","","23-06-2018","06","2018","11:29:15","3","2","1","EXPORT");
INSERT INTO reports VALUES("44","Kenne Pianta Nadege Nah","item deleted","","23-06-2018","06","2018","11:33:55","3","1","0","EXPORT");
INSERT INTO reports VALUES("45","Kenne Pianta Nadege Nah","item deleted","","23-06-2018","06","2018","12:16:23","3","1","0","HEINDEKEN B");
INSERT INTO reports VALUES("46","Kenne Pianta Nadege Nah","item deleted","","23-06-2018","06","2018","12:16:26","3","4","0","Mutzig");
INSERT INTO reports VALUES("47","Kenne Pianta Nadege Nah","item deleted","","23-06-2018","06","2018","12:16:29","3","2","0","My");
INSERT INTO reports VALUES("48","Kenne Pianta Nadege Nah","item deleted","","23-06-2018","06","2018","12:16:31","3","3","0","Tangui 1L");
INSERT INTO reports VALUES("49","Kenne Pianta Nadege Nah","item deleted","","23-06-2018","06","2018","12:18:12","3","3","0","Mutzig");
INSERT INTO reports VALUES("50","felix","drinks warehouse deletes","","23-06-2018 ","06","2018","19:55:45","","0","1000","malta");
INSERT INTO reports VALUES("51","Kenne Pianta Nadege Nah","item Subtracted","","26-06-2018","06","2018","13:02:39","2","10","9","AMSTEL");
INSERT INTO reports VALUES("52","Kenne Pianta Nadege Nah","item Subtracted","","26-06-2018","06","2018","13:03:38","2","5","4","HEINDEKEN S");
INSERT INTO reports VALUES("53","Kenne Pianta Nadege Nah","item Subtracted","","26-06-2018","06","2018","13:03:43","2","4","3","HEINDEKEN S");
INSERT INTO reports VALUES("54","Kenne Pianta Nadege Nah","item Subtracted","","26-06-2018","06","2018","13:08:35","1","3","2","Malta");
INSERT INTO reports VALUES("55","Kenne Pianta Nadege Nah","item Subtracted","","26-06-2018","06","2018","13:08:40","1","3","2","Coke");
INSERT INTO reports VALUES("56","FONJIA","item Subtracted","","01-01-2014","01","2014","2:38:01","E00","5","4","Green Label");
INSERT INTO reports VALUES("57","FONJIA","item Subtracted","","01-01-2014","01","2014","2:38:13","E00","4","3","Green Label");
INSERT INTO reports VALUES("58","edith","item Subtracted","","01-01-2014","01","2014","2:57:06","000","12","11","Heineken Bottle");
INSERT INTO reports VALUES("59","FONJIA","item Subtracted","","08-07-2019","07","2019","16:03:45","E00","2","1","Small Guiness");
INSERT INTO reports VALUES("60","FONJIA","item Subtracted","","08-07-2019","07","2019","16:28:41","E00","2","1","Green Label");





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





CREATE TABLE `rounds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(4) DEFAULT NULL,
  `who` varchar(50) DEFAULT NULL,
  `num` varchar(40) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `oname` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

INSERT INTO rounds VALUES("5","7","97","E0001","","08-07-2019","a167");
INSERT INTO rounds VALUES("8","7","113","A001","","08-07-2019","LAURA");
INSERT INTO rounds VALUES("10","7","113","E002","","08-07-2019","FONJIA");
INSERT INTO rounds VALUES("12","3","112","003","","08-07-2019","vi");





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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO sectors VALUES("18","Boss Office","20","superadmin/index.php","0","0");
INSERT INTO sectors VALUES("19","Bars Stock Accountant","1","content/index.php","0","0");
INSERT INTO sectors VALUES("21","Super Market ","2","sales/casheir/welcome.php?area=2","2","0");
INSERT INTO sectors VALUES("22","SNACK BAR DOWN STAIRS","3","sales/casheir/index.php?area=3","2","0");
INSERT INTO sectors VALUES("23","SNACK BAR UP STARS ","4","sales/casheir/index.php?area=4","2","0");
INSERT INTO sectors VALUES("25","SHISHA","6","sales/casheir/index.php?area=6","2","0");
INSERT INTO sectors VALUES("26","VIP BAR Cashier","7","sales/casheir/index.php?area=7","2","0");
INSERT INTO sectors VALUES("27","Laundry Service","8","laundry/index.php?area=8","0","0");
INSERT INTO sectors VALUES("28","SNACK BAR DOWN STAIRS SERVICE","9","myphone/phone/booking.php","0","3");
INSERT INTO sectors VALUES("29","Super market Stock controler","10","POS/stock/index.php?area=10","0","0");
INSERT INTO sectors VALUES("30","Salaries Controler Admin","16","Staffs/admin/adminpage.php","0","0");
INSERT INTO sectors VALUES("31","Human Resource","17","Staffs/salary/salary.php","0","0");
INSERT INTO sectors VALUES("32","Access Accountant","12","acc/accpage.php","0","0");
INSERT INTO sectors VALUES("33","Access Boss Office","13","superadmin/index.php","0","0");
INSERT INTO sectors VALUES("34","SNACK BAR UP STAIRS SERVICE","0","POS/Cash/index.php?area=2&roll=SUP","0","0");
INSERT INTO sectors VALUES("35","VIP SERVICE","14","","0","7");





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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

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
INSERT INTO service_offered VALUES("25","NIS132018","Nishang BOY","05-06-2018","06","2018","3000","1","3000","Skirt","Diling And Washing","","4");
INSERT INTO service_offered VALUES("26","NIS132018","Nishang BOY","05-06-2018","06","2018","2000","3","6000","Skirt","Ironing","","4");
INSERT INTO service_offered VALUES("27","NIS152018","Nishang BOY","19-06-2018","06","2018","3500","1","3500","Jeans","Washing And Ironing","blue ","4");
INSERT INTO service_offered VALUES("28","NIS152018","Nishang BOY","19-06-2018","06","2018","3500","1","3500","Jeans","Washing And Ironing","black","4");
INSERT INTO service_offered VALUES("29","NIS152018","Nishang BOY","19-06-2018","06","2018","3500","1","3500","T Shirts","Ironing","black","4");
INSERT INTO service_offered VALUES("30","NIS162018","Marie","19-06-2018","06","2018","2500","2","5000","Wool Carpet","Parceling","red and white","4");
INSERT INTO service_offered VALUES("31","NIS162018","Marie","19-06-2018","06","2018","3000","2","6000","T Shirts","Dry Cleraning","white and blue","4");
INSERT INTO service_offered VALUES("32","NIS162018","Marie","19-06-2018","06","2018","5000","1","5000","Jeans","Washing And Ironing","blaCK","4");
INSERT INTO service_offered VALUES("33","NIS172018","Mayi Palle Edwin","19-06-2018","06","2018","5000","3","15000","Wedding Gown","Washing And Ironing","Red","4");
INSERT INTO service_offered VALUES("36","","","19-06-2018","06","2018","2000","2","4000","Boxers","Ironing","","2");
INSERT INTO service_offered VALUES("37","NIS182018","Mr Vb","19-06-2018","06","2018","4000","1","4000","Boxers","Dry Cleraning","cotton,white","4");
INSERT INTO service_offered VALUES("38","NIS192018","Chu Nelly","19-06-2018","06","2018","1500","3","4500","Skirt","Ironing","black skirt","4");
INSERT INTO service_offered VALUES("39","NIS192018","Chu Nelly","19-06-2018","06","2018","5000","3","15000","Shirts","Dry Cleraning","Red","4");
INSERT INTO service_offered VALUES("40","NIS182018","Mr Vb","19-06-2018","06","2018","5000","1","5000","Wool Carpet","Dry Cleraning","red","4");
INSERT INTO service_offered VALUES("41","NIS202018","Peter","19-06-2018","06","2018","3000","3","9000","Bed Shit","Dry Cleraning","cotton,white blue","4");
INSERT INTO service_offered VALUES("42","NIS202018","Peter","19-06-2018","06","2018","5000","2","10000","Jeans","Dry Cleraning","black","4");
INSERT INTO service_offered VALUES("43","NIS202018","Peter","19-06-2018","06","2018","5000","4","20000","Blanket","Dry Cleraning","white yellow pink and blue","4");
INSERT INTO service_offered VALUES("44","NIS212018","Angel","19-06-2018","06","2018","3000","3","9000","Shirts","Ironing","red","4");
INSERT INTO service_offered VALUES("45","NIS212018","Angel","19-06-2018","06","2018","5000","1","5000","Robe","Dry Cleraning","white and blue","4");
INSERT INTO service_offered VALUES("46","NIS212018","Angel","19-06-2018","06","2018","3500","4","14000","Shirts","Ironing","white yellow pink and blue","4");
INSERT INTO service_offered VALUES("47","NIS222018","Rose","19-06-2018","06","2018","5000","2","10000","Blanket","Dry Cleraning","yellow and pink","4");
INSERT INTO service_offered VALUES("48","NIS222018","Rose","19-06-2018","06","2018","4000","4","16000","Jeans","Ironing","","4");
INSERT INTO service_offered VALUES("49","NIS232018","Tabi","19-06-2018","06","2018","5000","6","30000","T Shirts","Dry Cleraning","blue,green","4");
INSERT INTO service_offered VALUES("50","NIS232018","Tabi","19-06-2018","06","2018","5000","3","15000","Blanket","Dry Cleraning","3 blue","4");
INSERT INTO service_offered VALUES("51","NIS242018","Joe","19-06-2018","06","2018","5000","5","25000","Jeans","Dry Cleraning","nvbnvjhgv","4");
INSERT INTO service_offered VALUES("52","NIS242018","Joe","19-06-2018","06","2018","3000","3","9000","Wool Carpet","Ironing","yfuffjk","4");
INSERT INTO service_offered VALUES("53","NIS252018","Barry","19-06-2018","06","2018","5000","1","5000","Wedding Gown","Washing And Ironing","its white","4");
INSERT INTO service_offered VALUES("54","NIS252018","Barry","19-06-2018","06","2018","3000","3","9000","Skirt","Dry Cleraning","white, blue and red","4");
INSERT INTO service_offered VALUES("55","NIS262018","Billy","19-06-2018","06","2018","2500","5","12500","Jeans","Diling And Washing","","4");
INSERT INTO service_offered VALUES("56","NIS262018","Billy","19-06-2018","06","2018","4000","3","12000","T Shirts","Washing And Ironing","","4");
INSERT INTO service_offered VALUES("57","NIS282018","Felix","19-06-2018","06","2018","4000","2","8000","Jeans","Dry Cleraning","white","0");
INSERT INTO service_offered VALUES("58","NIS292018","Mbah Isaac","19-06-2018","06","2018","5000","3","15000","Wool Carpet","Dry Cleraning","","4");
INSERT INTO service_offered VALUES("59","NIS292018","Mbah Isaac","19-06-2018","06","2018","3000","2","6000","Ladies Suites","Parceling","","4");
INSERT INTO service_offered VALUES("60","NIS292018","Mbah Isaac","19-06-2018","06","2018","20000","2","40000","Graduation Robbs","Washing And Ironing","","4");
INSERT INTO service_offered VALUES("61","NIS282018","Felix","19-06-2018","06","2018","5000","6","30000","Robe","Dry Cleraning","","0");
INSERT INTO service_offered VALUES("62","NIS302018","Mike","19-06-2018","06","2018","3000","2","6000","Children Suite","Parceling","","4");
INSERT INTO service_offered VALUES("63","NIS302018","Mike","19-06-2018","06","2018","7000","1","7000","Wool Carpet","Diling And Washing","red","4");
INSERT INTO service_offered VALUES("64","NIS302018","Mike","19-06-2018","06","2018","17000","2","34000","Bed Shit","Washing And Ironing","white","4");
INSERT INTO service_offered VALUES("65","NIS322018","Mikel","20-06-2018","06","2018","5000","2","10000","Jeans","Dry Cleraning","red and white","4");
INSERT INTO service_offered VALUES("66","NIS322018","Mikel","20-06-2018","06","2018","15000","1","15000","Wool Carpet","Washing","black","4");
INSERT INTO service_offered VALUES("67","NIS322018","Mikel","20-06-2018","06","2018","3000","2","6000","Linen","Ironing","red and white","4");
INSERT INTO service_offered VALUES("68","NIS332018","Mikel","20-06-2018","06","2018","2000","2","4000","Tie","Ironing","red","0");
INSERT INTO service_offered VALUES("69","NIS342018","Mike","20-06-2018","06","2018","5000","1","5000","Skirt","Dry Cleraning","black","4");
INSERT INTO service_offered VALUES("70","NIS352018","Mr G","20-06-2018","06","2018","4000","1","4000","Blanket","Dry Cleraning","yellow and pink","3");
INSERT INTO service_offered VALUES("71","NIS362018","Mr G","20-06-2018","06","2018","4000","1","4000","Skirt","Dry Cleraning","yellow and pink","0");
INSERT INTO service_offered VALUES("72","NIS362018","Mr G","20-06-2018","06","2018","18000","2","36000","Jeans","Washing And Ironing","blue,green","0");
INSERT INTO service_offered VALUES("73","NIS362018","Mr G","20-06-2018","06","2018","4000","1","4000","Bel","Dry Cleraning","black","0");
INSERT INTO service_offered VALUES("74","NIS382018","Stanley","20-06-2018","06","2018","17000","6","102000","T Shirts","Washing And Ironing","white and blue","4");
INSERT INTO service_offered VALUES("75","NIS392018","Stanley","20-06-2018","06","2018","3000","2","6000","Shirts","Ironing","white and blue","4");
INSERT INTO service_offered VALUES("76","NIS402018","Falon","20-06-2018","06","2018","4000","5","20000","Men Suites","Dry Cleraning","black white and yellow","4");
INSERT INTO service_offered VALUES("77","NIS402018","Falon","20-06-2018","06","2018","17000","4","68000","Wedding Gown","Washing And Ironing","white","4");
INSERT INTO service_offered VALUES("79","NIS402018","Falon","20-06-2018","06","2018","4000","4","16000","Wedding Gown","Dry Cleraning","white","4");
INSERT INTO service_offered VALUES("80","NIS402018","Falon","20-06-2018","06","2018","4000","4","16000","Socks","Dry Cleraning","white","4");
INSERT INTO service_offered VALUES("81","NIS412018","Mira","20-06-2018","06","2018","18000","5","90000","Wedding Gown","Washing And Ironing","white","4");
INSERT INTO service_offered VALUES("82","NIS412018","Mira","20-06-2018","06","2018","3000","5","15000","Bed Shit","Washing","white","4");
INSERT INTO service_offered VALUES("83","NIS422018","Yvette","20-06-2018","06","2018","19000","8","152000","Wedding Gown","Washing And Ironing","white","4");
INSERT INTO service_offered VALUES("84","NIS422018","Yvette","20-06-2018","06","2018","18000","6","108000","Children Suite","Washing And Ironing","white","4");
INSERT INTO service_offered VALUES("85","NIS422018","Yvette","20-06-2018","06","2018","4000","6","24000","Ladies Suites","Dry Cleraning","white","4");
INSERT INTO service_offered VALUES("86","NIS402018","Falon","20-06-2018","06","2018","3000","15","45000","Shirts","Ironing","white","4");
INSERT INTO service_offered VALUES("87","NIS432018","Agbor","21-06-2018","06","2018","1500","5","7500","Bed Shit","Ironing","yellow and pink","4");
INSERT INTO service_offered VALUES("88","NIS442018","Baby","21-06-2018","06","2018","18000","3","54000","Children Suite","Washing And Ironing","black and white","4");
INSERT INTO service_offered VALUES("89","NIS442018","Baby","21-06-2018","06","2018","20000","2","40000","Men Suites","Washing And Ironing","white and blue","4");
INSERT INTO service_offered VALUES("90","NIS442018","Baby","21-06-2018","06","2018","2000","1","2000","Wedding Gown","Parceling","white","4");
INSERT INTO service_offered VALUES("91","NIS452018","Me","21-06-2018","06","2018","3000","5","15000","Bed Shit","Washing","white yellow pink and blue","4");
INSERT INTO service_offered VALUES("92","NIS452018","Me","21-06-2018","06","2018","5000","2","10000","Diling And Washing","Diling And Washing","blue,green","4");
INSERT INTO service_offered VALUES("93","NIS462018","Burj Khalifa","21-06-2018","06","2018","5000","2","10000","Wool Carpet","Washing","white and blue","4");
INSERT INTO service_offered VALUES("94","NIS462018","Burj Khalifa","21-06-2018","06","2018","8000","3","24000","Ladies Suites","Diling And Washing","red and white","4");
INSERT INTO service_offered VALUES("95","NIS462018","Burj Khalifa","21-06-2018","06","2018","2000","4","8000","Graduation Robbs","Parceling","white","4");
INSERT INTO service_offered VALUES("96","NIS482018","Oru","22-06-2018","06","2018","18000","4","72000","Children Suite","Washing And Ironing","","4");
INSERT INTO service_offered VALUES("97","NIS482018","Oru","22-06-2018","06","2018","18000","4","72000","Children Suite","Washing And Ironing","white and blue","4");
INSERT INTO service_offered VALUES("98","NIS492018","Oru","22-06-2018","06","2018","15000","3","45000","Jeans","Washing","yellow and pink","0");
INSERT INTO service_offered VALUES("99","NIS522018","Love","22-06-2018","06","2018","5000","3","15000","Men Suites","Diling And Washing","white and blue","4");
INSERT INTO service_offered VALUES("100","NIS522018","Love","22-06-2018","06","2018","5000","2","10000","Wool Carpet","Washing","red and white","4");
INSERT INTO service_offered VALUES("101","NIS522018","Love","22-06-2018","06","2018","4500","6","27000","Bed Shit","Diling And Washing","black white and yellow","4");
INSERT INTO service_offered VALUES("102","NIS532018","Mr John","22-06-2018","06","2018","3500","3","10500","Robe","Dry Cleraning","white and blue","4");
INSERT INTO service_offered VALUES("103","NIS532018","Mr John","22-06-2018","06","2018","8000","1","8000","Wedding Gown","Diling And Washing","white","4");
INSERT INTO service_offered VALUES("104","NIS532018","Mr John","22-06-2018","06","2018","17500","2","35000","Children Suite","Washing And Ironing","white and blue","4");
INSERT INTO service_offered VALUES("105","NIS532018","Mr John","22-06-2018","06","2018","3000","3","9000","Wool Carpet","Washing","red and white","4");
INSERT INTO service_offered VALUES("106","NIS542018","Paul","23-06-2018","06","2018","18000","3","54000","Graduation Robbs","Washing And Ironing","white, blue and red","4");
INSERT INTO service_offered VALUES("107","NIS542018","Paul","23-06-2018","06","2018","18000","1","18000","Wedding Gown","Washing And Ironing","white","4");
INSERT INTO service_offered VALUES("108","NIS542018","Paul","23-06-2018","06","2018","3000","1","3000","Wedding Gown","Washing","white","4");
INSERT INTO service_offered VALUES("109","NIS542018","Paul","23-06-2018","06","2018","3000","7","21000","Shirts","Washing","white, blue and red","4");
INSERT INTO service_offered VALUES("110","NIS562018","Tabi","27-06-2018","06","2018","20000","2","40000","Graduation Robbs","Washing And Ironing","blue","0");
INSERT INTO service_offered VALUES("111","NIS572018","Felix","27-06-2018","06","2018","5000","1","5000","Skirt","Dry Cleraning","white and black","4");
INSERT INTO service_offered VALUES("112","NIS582018","Felix","27-06-2018","06","2018","5000","3","15000","Boxers","Dry Cleraning","white","4");
INSERT INTO service_offered VALUES("113","NIS582018","Felix","27-06-2018","06","2018","3000","5","15000","Jeans","Diling And Washing","blue","4");
INSERT INTO service_offered VALUES("114","NIS582018","Felix","27-06-2018","06","2018","5000","10","50000","Socks","Ironing","Red","4");





CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO services VALUES("1","Washing","2000","15000");
INSERT INTO services VALUES("3","Ironing","1500","5000");
INSERT INTO services VALUES("6","Diling And Washing","2500","8000");
INSERT INTO services VALUES("7","Dry Cleraning","3000","5000");
INSERT INTO services VALUES("8","Parceling","2000","10000");
INSERT INTO services VALUES("9","Washing And Ironing","16000","20000");





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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO smkt_whouse VALUES("3","Amstel","445","Drinks","","20","1000","");
INSERT INTO smkt_whouse VALUES("4","Coca Cola","345","Drinks","","17","1000","");
INSERT INTO smkt_whouse VALUES("5","Coca Cola Zero","345","Drinks","","16","1000","");
INSERT INTO smkt_whouse VALUES("6","Guiness Pm","450","Drinks","","20","1000","");
INSERT INTO smkt_whouse VALUES("7","Guiness Sm","450","Drinks","","20","1000","");
INSERT INTO smkt_whouse VALUES("8","Ovaltine","1200","Provision","","19","2500","");
INSERT INTO smkt_whouse VALUES("9","Top Milk","35","Provision","","80","50","");
INSERT INTO smkt_whouse VALUES("10","butter","1000","","","420.00","5000","");
INSERT INTO smkt_whouse VALUES("11","lb link","1500","","","0","3000","E171210011450082939");
INSERT INTO smkt_whouse VALUES("12","dadu","5000","","","1.00","8000","1070906002056");
INSERT INTO smkt_whouse VALUES("13","sugar","","","","400.00","950","");
INSERT INTO smkt_whouse VALUES("14","CHIPS","100","","","12","200","");
INSERT INTO smkt_whouse VALUES("15","olives","500","","","20.00","1000","");
INSERT INTO smkt_whouse VALUES("16","meat pie","200","","","700","500","");
INSERT INTO smkt_whouse VALUES("17","tangui 1L","","","","50.00","400","");
INSERT INTO smkt_whouse VALUES("18","biscuit ","1000","","","200","2000","");
INSERT INTO smkt_whouse VALUES("19","iomo","50","","","40","100","");
INSERT INTO smkt_whouse VALUES("20","RECORD BOOK 200 PAGES","1000","","","200.00","2500","6920150129106");





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
  `area` int(11) NOT NULL,
  `day` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=latin1;

INSERT INTO stockreports VALUES("1","Top A","","10","admin12","15","","40","06-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("2","TOP C","","11","admin12","15","","41","06-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("3","Top G","","15","admin12","15","","45","06-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("4","Top P","","9","admin12","15","","39","06-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("5","AMSTEL","","13","admin12","15","","43","06-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("6","Heindeken Big","","7","admin12","15","","37","06-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("7","Heindeken Small","","8","admin12","15","","38","06-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("8","Top A","1000.00","8","admin12","Bar two","0","8","19-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("9","Top A","1000.00","5","admin12","Reception Bar","0","5","27-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("10","Natural Fruit Juice","1000.00","40","admin12","Reception Bar","00","40","27-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("11","Top A","1000.00","9","admin12","Reception Bar","0","9","27-11-2017","11","2017","","0","");
INSERT INTO stockreports VALUES("12","TOP C","","9","admin12","15","","49","31-12-2017","12","2017","","0","");
INSERT INTO stockreports VALUES("13","AMSTEL","","9","admin12","15","","41","11-01-2018","01","2018","","0","");
INSERT INTO stockreports VALUES("14","Top A","","11","admin12","15","","38","11-01-2018","01","2018","","0","");
INSERT INTO stockreports VALUES("15","EXPORT","1500","283","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("16","AMSTEL","1000","843","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("17","Heindeken Big","1000","0","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("18","Mutzig","1000","970","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("19","Blue Label","45000","195","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("20","Black Label","50000","0","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("21","Top G","1000","0","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("22","Baron De Roi","2000","0","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("23","Natural Fruit Juice","1000","30","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("24","33 EXPORT","1500","7","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("25","SMALL GUINESS","1500","989","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("26","Kadji","1200","82","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("27","My","1000","17","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("28","Grants","35000","14","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("29","Top Tonic","1000","0","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("30","Castel","1000","2","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("31","Tangui 1L","1000","469","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("32","BIG GUINESS","1000","964","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("33","Malta","1500","908","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("34","Coke","1000","654","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("35","Red Label","25000","143","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("36","Balis","20000","57","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("37","HEINDEKEN S","1000","72","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("38","HEINDEKEN B","2000","89","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("39","BAVARIA","1000","143","super@123","Bar One","","","23-06-2018","06","2018","","3","23");
INSERT INTO stockreports VALUES("40","Top A","1000","35","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("41","TOP C","1000","44","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("42","EXPORT","1500","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("43","AMSTEL","1000","36","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("44","GUINESS SM","1000","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("45","Heindeken Big","1000","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("46","Heindeken Small","800","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("47","Manyang","600","35","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("48","Top P","1000","40","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("49","Mutzig","1000","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("50","Blue Label","45000","43","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("51","Black Label","50000","48","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("52","Blue Heaven","5000","39","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("53","Top G","1000","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("54","Supermonth 1l","1000","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("55","Baron De Roi","2000","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("56","Natural Fruit Juice","1000","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("57","Guiness Smooth","2000","49","felix","Bar two","","","23-06-2018","06","2018","","4","23");
INSERT INTO stockreports VALUES("59","AMSTEL","1000","450","felix","VIP BAR","","","23-06-2018","06","2018","","7","23");
INSERT INTO stockreports VALUES("60","My","1000","200","felix","VIP BAR","","","23-06-2018","06","2018","","7","23");
INSERT INTO stockreports VALUES("61","EXPORT","1000","273","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("62","AMSTEL","1000","838","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("63","Heindeken Big","1000","100","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("64","Mutzig","1000","957","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("65","Blue Label","15000","192","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("66","Black Label","50000","700","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("67","Top G","1000","0","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("68","Baron De Roi","2000","0","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("69","Natural Fruit Juice","1000","30","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("70","","1500","","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("71","SMALL GUINESS","1000","1489","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("72","Kadji","1200","82","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("73","My","1000","75","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("74","Grants","35000","10","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("75","Top Tonic","1000","1000","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("76","Castel","1000","100","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("77","Tangui 1L","1000","464","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("78","BIG GUINESS","1000","1012","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("79","Malta","1500","905","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("80","Coke","1000","652","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("81","Red Label","25000","143","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("82","Balis","20000","46","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("83","HEINDEKEN S","1000","62","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("84","HEINDEKEN B","2000","89","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("85","BAVARIA","1000","143","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("86","TOP Grenadine","1000","30","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("87","Baron De Madrid","2000","500","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("88","Renard","85000","100","felix","Bar One","","","27-06-2018","06","2018","","3","27");
INSERT INTO stockreports VALUES("127","Top A","1000","30","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("128","TOP C","1000","100","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("129","EXPORT","1000","49","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("130","AMSTEL","1000","36","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("131","GUINESS SM","1000","41","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("132","Heindeken Big","1000","49","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("133","Heindeken Small","800","49","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("134","Manyang","600","18","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("135","Top P","1000","40","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("136","Mutzig","1000","45","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("137","Blue Label","15000","42","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("138","Black Label","50000","48","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("139","Blue Heaven","5000","37","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("140","Top G","1000","49","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("141","Supermonth 1l","1000","49","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("142","Baron De Roi","2000","46","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("143","Natural Fruit Juice","1000","49","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("144","Guiness Smooth","2000","49","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("145","SMALL GUINESS","1000","200","felix","Bar two","","","27-06-2018","06","2018","","4","27");
INSERT INTO stockreports VALUES("146","EXPORT","1000","273","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("147","AMSTEL","1000","838","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("148","Heindeken Big","1000","100","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("149","Mutzig","1000","957","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("150","Blue Label","15000","192","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("151","Black Label","50000","700","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("152","Top G","1000","0","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("153","Baron De Roi","2000","50","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("154","Natural Fruit Juice","1000","30","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("155","","1500","","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("156","SMALL GUINESS","1000","1489","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("157","Kadji","1200","82","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("158","My","1000","75","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("159","Grants","35000","10","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("160","Top Tonic","1000","1000","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("161","Castel","1000","100","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("162","Tangui 1L","1000","464","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("163","BIG GUINESS","1000","1012","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("164","Malta","1500","905","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("165","Coke","1000","652","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("166","Red Label","25000","143","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("167","Balis","20000","46","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("168","HEINDEKEN S","1000","62","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("169","HEINDEKEN B","2000","89","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("170","BAVARIA","1000","143","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("171","TOP Grenadine","1000","30","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("172","Baron De Madrid","2000","500","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("173","Renard","85000","100","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("174","Maltina","1000","1000","k diana","Bar One","","","28-06-2018","06","2018","","3","28");
INSERT INTO stockreports VALUES("175","EXPORT","1000","268","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("176","AMSTEL","1000","30","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("177","Heindeken Big","1000","99","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("178","Mutzig","1000","951","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("179","Blue Label","15000","176","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("180","Black Label","50000","700","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("181","Top G","1000","0","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("182","Baron De Roi","2000","0","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("183","Natural Fruit Juice","1000","2","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("184","","1500","55","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("185","SMALL GUINESS","1000","1489","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("186","Kadji","1200","82","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("187","My","1000","75","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("188","Grants","35000","10","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("189","Top Tonic","1000","1000","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("190","Castel","1000","89","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("191","Tangui 1L","1000","464","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("192","BIG GUINESS","1500","1012","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("193","Malta","1500","905","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("194","Coke","1000","652","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("195","Red Label","25000","143","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("196","Balis","20000","46","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("197","HEINDEKEN S","1000","62","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("198","HEINDEKEN B","2000","89","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("199","BAVARIA","1000","143","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("200","TOP Grenadine","1000","25","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("201","Baron De Madrid","2000","500","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("202","Renard","85000","100","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("203","Maltina","1000","1000","super@123","Bar One","","","01-07-2019","07","2019","","3","01");
INSERT INTO stockreports VALUES("223","Mimbo Rouge","2500","18","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("224","Mimbo Blanc","3000","18","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("225","Cogsigna Rouge","5000","2","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("226","Cogsigna Blanc","5000","2","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("227","ST Loude","5000","2","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("228","Cles De Bellevine","5000","3","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("229","Alma Artesan","5000","2","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("230","Ice Black","1000","48","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("231","Malta Guiness Bottle","1000","48","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("232","Harp","800","36","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("233","Guiness Smooth","800","45","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("234","Small Guiness","1000","312","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("235","Big Guinness","1200","60","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("236","Supermont 1L ","1000","12","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("237","Tour Cantelou Red","5000","2","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("238","Tour Cantelou Blanc","5000","6","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("239","Domaine De Gironde","5000","3","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("240","Chateaux Lemon","5000","4","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");
INSERT INTO stockreports VALUES("241","Malta GN","1000","84","super@123","Super Market ","","","09-07-2019","07","2019","","2","09");





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
) ENGINE=InnoDB AUTO_INCREMENT=919 DEFAULT CHARSET=latin1;

INSERT INTO supermkt VALUES("6","KKK","","COSMETICS","","34","2000","037000969020","","0");
INSERT INTO supermkt VALUES("8","COLGATE TOOTH BRUSH","","COSMETICS","","48","1000","8935236000031","","0");
INSERT INTO supermkt VALUES("10","CAREXT BATHING GEL","","COSMETICS","","59","2500","5055028346253","","0");
INSERT INTO supermkt VALUES("11","NIVEA MEN BATHING GEL","","COSMETICS","","59","3000","4005808130610","","0");
INSERT INTO supermkt VALUES("12","NIVEA SEA MINERALS BATHING GEL","","COSMETICS","","60","3000","4005900296504","","0");
INSERT INTO supermkt VALUES("13","ADDIDAS BATHUNG GEL","","COSMETICS","","44","3000","3607340727108","","0");
INSERT INTO supermkt VALUES("14","LYNX BATHING GEL","","COSMETICS","","12","3000","","","0");
INSERT INTO supermkt VALUES("15","CREST TOOTH PASTE","","COSMETICS","","60","1500","037000884378","","0");
INSERT INTO supermkt VALUES("16","COLGATE TOOTH PASTE","","COSMETICS","","56","1500","6920354812521","","0");
INSERT INTO supermkt VALUES("17","RADOX","","COSMETICS","","60","2500","5000231050831","","0");
INSERT INTO supermkt VALUES("18","PETROLEUM JELLY","","COSMETICS","","9","2000","5050375107601","","0");
INSERT INTO supermkt VALUES("19","HERBAL BANQUET","","COSMETICS","","37","1500","041348002783","","0");
INSERT INTO supermkt VALUES("20","AVON MOISTURE THERAPY ","","COSMETICS","","59","6500","","","0");
INSERT INTO supermkt VALUES("21","JOHNSON BABY LOTION","","COSMETICS","","59","2000","3574660453157","","0");
INSERT INTO supermkt VALUES("22","JOHNSON BABY OIL","","COSMETICS","","58","2000","","","0");
INSERT INTO supermkt VALUES("23","JOHNSON BABY SHAMPOO","","COSMETICS","","60","2500","3574660453072","","0");
INSERT INTO supermkt VALUES("24","JOHNSON BABY SET","","COSMETICS","","60","35000","","","0");
INSERT INTO supermkt VALUES("25","COMFORT DRY DIAPERS","","COSMETICS","","56","10000","","","0");
INSERT INTO supermkt VALUES("26","POWDER FORMULAR FOR NURSING MOMS","","COSMETICS","","60","3500","","","0");
INSERT INTO supermkt VALUES("27","JOHNSON BABY POWDER","","COSMETICS","","60","1500","8991111101422","","0");
INSERT INTO supermkt VALUES("28","JOHNSON COTTON BUDS","","COSMETICS","","60","1500","5000207584506","","0");
INSERT INTO supermkt VALUES("29","CUSSONS BABY POWDER","","COSMETICS","","57","2000","","","0");
INSERT INTO supermkt VALUES("30","SWIPERS COTTON","","COSMETICS","","53","1500","048341007999","","0");
INSERT INTO supermkt VALUES("31","COTTENELLE FRESH CARE","","COSMETICS","","60","1250","","","0");
INSERT INTO supermkt VALUES("32","MAXI NORMAL PAD","","COSMETICS","","49","1500","3258561670638","","0");
INSERT INTO supermkt VALUES("33","MAXI NUIT","","COSMETICS","","56","1200","3258561670652","","0");
INSERT INTO supermkt VALUES("34","CREST PRO MOUTH WASH","","COSMETICS","","57","7500","","","0");
INSERT INTO supermkt VALUES("35","SOFT SOAP","","COSMETICS","","60","0","","","0");
INSERT INTO supermkt VALUES("36","IRISH SPRING","","COSMETICS","","55","500","","","0");
INSERT INTO supermkt VALUES("37","SPONGE","","COSMETICS","","60","500","","","0");
INSERT INTO supermkt VALUES("38","EVERYDAY TOILET PAPER","","COSMETICS","","60","500","","","0");
INSERT INTO supermkt VALUES("39","TIMELESS POWDER","","COSMETICS","","51","1000","094000794021","","0");
INSERT INTO supermkt VALUES("40","PALMERS COCO BUTTER","","COSMETICS","","57","5500","010181140082","","0");
INSERT INTO supermkt VALUES("41","REFRESH CAR AIR FRESHENER","","COSMETICS","","60","1500","012844091588","","0");
INSERT INTO supermkt VALUES("42","CALIFORNIA SCENT","","COSMETICS","","60","1500","091400000059","","0");
INSERT INTO supermkt VALUES("43","NIVEA CREAM","","COSMETICS","","60","1500","072140801014","","0");
INSERT INTO supermkt VALUES("44","DAILY MOISTURISING LOTION","","COSMETICS","","54","2400","","","0");
INSERT INTO supermkt VALUES("45","DOVE INVISIBLE DRY ROLLON","","COSMETICS","","58","1500","50096206","","0");
INSERT INTO supermkt VALUES("46","DOVE ADVANCE CARE BIG","","COSMETICS","","60","2500","","","0");
INSERT INTO supermkt VALUES("47","DOVE ADVANCE CARE SMALL","","COSMETICS","","60","1500","","","0");
INSERT INTO supermkt VALUES("48","AXE ROLLON","","COSMETICS","","53","1500","","","0");
INSERT INTO supermkt VALUES("49","SWAGGER ROLLON","","COSMETICS","","60","1500","012044016435","","0");
INSERT INTO supermkt VALUES("50","DEGREE DRY PROTECTION ROLLON SMALL","","COSMETICS","","60","1500","","","0");
INSERT INTO supermkt VALUES("51","SUAVE ROLLON","","COSMETICS","","60","1500","079400403599","","0");
INSERT INTO supermkt VALUES("52","NIVEA SET","","COSMETICS","","60","10000","072140817602","","0");
INSERT INTO supermkt VALUES("53","VIRAL SPRAY","","COSMETICS","","52","3000","","","0");
INSERT INTO supermkt VALUES("54","SANEX","","COSMETICS","","60","1500","8714789997872","","0");
INSERT INTO supermkt VALUES("55","DEGREE ROLLON BIG","","COSMETICS","","60","2500","","","0");
INSERT INTO supermkt VALUES("56","DOVE SPRAY ","","COSMETICS","","60","2500","","","0");
INSERT INTO supermkt VALUES("57","RIGHT GUARD SPRAY","","COSMETICS","","57","2500","5012583204190","","0");
INSERT INTO supermkt VALUES("58","IMPULSE SPRAY","","COSMETICS","","56","2000","","","0");
INSERT INTO supermkt VALUES("59","BIC SENSITIVE PACK","","COSMETICS","","41","2500","070330708419","","0");
INSERT INTO supermkt VALUES("60","BIC COMFORT PACK","","COSMETICS","","60","1000","","","0");
INSERT INTO supermkt VALUES("61","GILETTE MACH PACK","","COSMETICS","","53","1000","","","0");
INSERT INTO supermkt VALUES("62","TRIPLE BLADE BIG","","COSMETICS","","58","1000","","","0");
INSERT INTO supermkt VALUES("63","CHAP STICK","","COSMETICS","","51","1000","","","0");
INSERT INTO supermkt VALUES("64","GILETTE SHAVING GEL MACH","","COSMETICS","","57","2500","7702018980932","","0");
INSERT INTO supermkt VALUES("65","GILETTE FUSION PRO GLIDE","","COSMETICS","","59","3500","","","0");
INSERT INTO supermkt VALUES("66","GILETTE FOAM","","COSMETICS","","60","2500","","","0");
INSERT INTO supermkt VALUES("67","CURVE CONNECT PERFUME","","COSMETICS","","60","16000","098691046254","","0");
INSERT INTO supermkt VALUES("68","BEVERLY HILLS PERFUME ACTIVE","","COSMETICS","","54.5","5000","","","0");
INSERT INTO supermkt VALUES("69","SPARKLING WHITE DIAMONDS","","COSMETICS","","60","12000","","","0");
INSERT INTO supermkt VALUES("70","PARIS PERFUME","","COSMETICS","","56","5000","","","0");
INSERT INTO supermkt VALUES("71","HELLEN TRACY PERFUME","","COSMETICS","","60","13000","899219002017","","0");
INSERT INTO supermkt VALUES("72","JOHNNY BAHAMA FEMALE","","COSMETICS","","60","16000","","","0");
INSERT INTO supermkt VALUES("73","BEVERLY HILLS BLUE PERFUME","","COSMETICS","","60","5000","793573072269","","0");
INSERT INTO supermkt VALUES("74","SEXY SECRET","","COSMETICS","","59","12000","778628150024","","0");
INSERT INTO supermkt VALUES("75","VANDERBELT PERFUME","","COSMETICS","","60","12000","","","0");
INSERT INTO supermkt VALUES("76","ELLEN TRACY SET","","COSMETICS","","60","15000","","","0");
INSERT INTO supermkt VALUES("77","BEVERLY HILLS SET","","COSMETICS","","59","20000","","","0");
INSERT INTO supermkt VALUES("78","MUSTANG","","COSMETICS","","59","13000","","","0");
INSERT INTO supermkt VALUES("79","ELLEN TRACY ROLLON","","COSMETICS","","60","2500","849017000227","","0");
INSERT INTO supermkt VALUES("80","CONDOMS ","","COSMETICS","","60","1500","","","0");
INSERT INTO supermkt VALUES("81","PINK DUSK","","COSMETICS","","56","3500","000201186756","","0");
INSERT INTO supermkt VALUES("82","PARIS WOMEN","","COSMETICS","","58","3500","000202317838","","0");
INSERT INTO supermkt VALUES("83","NIGHT CODE","","COSMETICS","","60","3500","000201241943","","0");
INSERT INTO supermkt VALUES("84","KITTY CAT","","COSMETICS","","51","3500","000202770916","","0");
INSERT INTO supermkt VALUES("85","MARTHA RODRIGUE","","COSMETICS","","60","3500","895589203917","","0");
INSERT INTO supermkt VALUES("86","OUR TIME","","COSMETICS","","58","3500","895589203559","","0");
INSERT INTO supermkt VALUES("87","ATTRACTION","","COSMETICS","","49","3500","000201247075","","0");
INSERT INTO supermkt VALUES("88","FLOWER PERFUME SET","","COSMETICS","","55","15000","810474018070","","0");
INSERT INTO supermkt VALUES("89","BEVERLY HILLS SEXY SET","","COSMETICS","","60","12000","","","0");
INSERT INTO supermkt VALUES("90","WHITE SHOULDERS","","COSMETICS","","59","13000","719346077118","","0");
INSERT INTO supermkt VALUES("91","JUSTIN BIEBER","","COSMETICS","","60","1500","","","0");
INSERT INTO supermkt VALUES("92","ETERNITY","","COSMETICS","","60","10000","","","0");
INSERT INTO supermkt VALUES("93","QUORUM SILVER","","COSMETICS","","60","25000","000661213313","","0");
INSERT INTO supermkt VALUES("94","MUSTANG SET","","COSMETICS","","60","20000","","","0");
INSERT INTO supermkt VALUES("95","ADAM LEVINE","","COSMETICS","","55","8000","818155011471","","0");
INSERT INTO supermkt VALUES("96","ANDRIENNE VITADINI","","COSMETICS","","59","15000","","","0");
INSERT INTO supermkt VALUES("97","JOHNNY BAHAMA COMPASS","","COSMETICS","","60","23000","","","0");
INSERT INTO supermkt VALUES("98","ELLEN TRACY EXOTIC","","COSMETICS","","60","7000","849017000173","","0");
INSERT INTO supermkt VALUES("99","FEMME NOIR","","COSMETICS","","60","15000","","","0");
INSERT INTO supermkt VALUES("100","DR FRESH","","COSMETICS","","60","1500","","","0");
INSERT INTO supermkt VALUES("101","LILAC MILK","","PROVISION","","58","1500","5410266104216","","0");
INSERT INTO supermkt VALUES("102","MAYONAISE","","PROVISION","","60","1600","5400141210415","","0");
INSERT INTO supermkt VALUES("103","OLIJVEN OLIVES","","PROVISION","","59","2000","5400141118407","","0");
INSERT INTO supermkt VALUES("104","IODIZED SALT","","PROVISION","","60","1000","038400133158","","0");
INSERT INTO supermkt VALUES("105","MACEDOINE DE LEGUMES ","","PROVISION","","60","2500","3258561210704","","0");
INSERT INTO supermkt VALUES("106","SARDINE","","PROVISION","","60","750","070303022160","","0");
INSERT INTO supermkt VALUES("107","GREEN TEA","","PROVISION","","50","100","","","0");
INSERT INTO supermkt VALUES("108","PARIJSE CHAMPIGNONS","","PROVISION","","60","2500","5400141207521","","0");
INSERT INTO supermkt VALUES("109","LAMOTHE SAINT GERMAIN","","WINE","","60","6000","","","0");
INSERT INTO supermkt VALUES("110","TOUR HAUT LABRIT","","WINE","","60","6000","","","0");
INSERT INTO supermkt VALUES("111","VIEUX MANOIR","","WINE","","60","7000","","","0");
INSERT INTO supermkt VALUES("112","GLASS 1","","KITCHEN UTENSILS","","60","20000","","","0");
INSERT INTO supermkt VALUES("113","GLASS 2","","KITCHEN UTENSILS","","59","5000","","","0");
INSERT INTO supermkt VALUES("114","GLASS 3","","KITCHEN UTENSILS","","60","10000","","","0");
INSERT INTO supermkt VALUES("115","GLASS 4","","KITCHEN UTENSILS","","60","20000","","","0");
INSERT INTO supermkt VALUES("116","GLASS 5","","KITCHEN UTENSILS","","60","6000","","","0");
INSERT INTO supermkt VALUES("117","GLASS 6","","KITCHEN UTENSILS","","60","5000","","","0");
INSERT INTO supermkt VALUES("118","GLASS 7","","KITCHEN UTENSILS","","60","9000","","","0");
INSERT INTO supermkt VALUES("119","GLASS 8","","KITCHEN UTENSILS","","60","8000","","","0");
INSERT INTO supermkt VALUES("120","GLASS 9","","KITCHEN UTENSILS","","60","15000","","","0");
INSERT INTO supermkt VALUES("121","GLASS 10","","KITCHEN UTENSILS","","60","15000","","","0");
INSERT INTO supermkt VALUES("122","GLASS 11","","KITCHEN UTENSILS","","60","15000","","","0");
INSERT INTO supermkt VALUES("123","GLASS 12","","KITCHEN UTENSILS","","60","9000","","","0");
INSERT INTO supermkt VALUES("124","GLASS 13","","KITCHEN UTENSILS","","60","4000","","","0");
INSERT INTO supermkt VALUES("125","GLASS 14","","KITCHEN UTENSILS","","60","2000","","","0");
INSERT INTO supermkt VALUES("126","GLASS 15","","KITCHEN UTENSILS","","60","6000","","","0");
INSERT INTO supermkt VALUES("127","GLASS 16","","KITCHEN UTENSILS","","60","3000","","","0");
INSERT INTO supermkt VALUES("128","GLASS 17 WHISKY SHOTS SET","","KITCHEN UTENSILS","","60","5000","","","0");
INSERT INTO supermkt VALUES("129","GLASS 18","","KITCHEN UTENSILS","","60","5000","","","0");
INSERT INTO supermkt VALUES("130","GLASS 19","","KITCHEN UTENSILS","","60","2000","","","0");
INSERT INTO supermkt VALUES("131","GLASS 20","","KITCHEN UTENSILS","","60","2000","","","0");
INSERT INTO supermkt VALUES("132","GLASS 21","","KITCHEN UTENSILS","","60","1000","","","0");
INSERT INTO supermkt VALUES("133","GLASS 22 SET","","KITCHEN UTENSILS","","60","20000","","","0");
INSERT INTO supermkt VALUES("134","GLASS 23 SET","","KITCHEN UTENSILS","","60","15000","","","0");
INSERT INTO supermkt VALUES("135","BLENDER 1","","KITCHEN UTENSILS","","59","30000","","","0");
INSERT INTO supermkt VALUES("136","BLENDER 2","","KITCHEN UTENSILS","","60","25000","","","0");
INSERT INTO supermkt VALUES("137","BLENDER 3","","KITCHEN UTENSILS","","60","20000","","","0");
INSERT INTO supermkt VALUES("138","BLENDER 4","","KITCHEN UTENSILS","","60","30000","","","0");
INSERT INTO supermkt VALUES("139","COFFEE MAKER 1","","KITCHEN UTENSILS","","60","18000","","","0");
INSERT INTO supermkt VALUES("140","COFFE MAKER 2","","KITCHEN UTENSILS","","60","25000","","","0");
INSERT INTO supermkt VALUES("141","ITEM 1","","KITCHEN UTENSILS","","60","4000","","","0");
INSERT INTO supermkt VALUES("142","ITEM 2","","KITCHEN UTENSILS","","60","3000","","","0");
INSERT INTO supermkt VALUES("143","ITEM 3","","KITCHEN UTENSILS","","60","7000","","","0");
INSERT INTO supermkt VALUES("144","ITEM 4","","KITCHEN UTENSILS","","60","4500","","","0");
INSERT INTO supermkt VALUES("145","ITEM 5","","KITCHEN UTENSILS","","60","5000","","","0");
INSERT INTO supermkt VALUES("146","ITEM 6","","KITCHEN UTENSILS","","60","5000","","","0");
INSERT INTO supermkt VALUES("147","ITEM 7","","KITCHEN UTENSILS","","60","3000","","","0");
INSERT INTO supermkt VALUES("148","ITEM 8","","KITCHEN UTENSILS","","60","9500","","","0");
INSERT INTO supermkt VALUES("149","ITEM 9","","KITCHEN UTENSILS","","60","11000","","","0");
INSERT INTO supermkt VALUES("150","ITEM 10","","KITCHEN UTENSILS","","60","9700","","","0");
INSERT INTO supermkt VALUES("151","ITEM 11","","KITCHEN UTENSILS","","60","15000","","","0");
INSERT INTO supermkt VALUES("152","ITEM 12","","KITCHEN UTENSILS","","60","17000","","","0");
INSERT INTO supermkt VALUES("153","ITEM 13","","KITCHEN UTENSILS","","60","8000","","","0");
INSERT INTO supermkt VALUES("154","ITEM 14","","KITCHEN UTENSILS","","60","5000","","","0");
INSERT INTO supermkt VALUES("155","ITEM 15","","KITCHEN UTENSILS","","60","14000","","","0");
INSERT INTO supermkt VALUES("156","ITEM 16","","KITCHEN UTENSILS","","60","9000","","","0");
INSERT INTO supermkt VALUES("158","ITEM 18","","KITCHEN UTENSILS","","60","2000","","","0");
INSERT INTO supermkt VALUES("159","ITEM 19","","KITCHEN UTENSILS","","60","1000","","","0");
INSERT INTO supermkt VALUES("160","ITEM 20","","KITCHEN UTENSILS","","60","1000","","","0");
INSERT INTO supermkt VALUES("161","ITEM 21","","KITCHEN UTENSILS","","60","1000","","","0");
INSERT INTO supermkt VALUES("162","ITEM 22","","KITCHEN UTENSILS","","60","2500","","","0");
INSERT INTO supermkt VALUES("163","ITEM 23","","KITCHEN UTENSILS","","60","5000","","","0");
INSERT INTO supermkt VALUES("164","ITEM 24","","KITCHEN UTENSILS","","60","12000","","","0");
INSERT INTO supermkt VALUES("165","ITEM 25","","KITCHEN UTENSILS","","60","1500","","","0");
INSERT INTO supermkt VALUES("166","ITEM 26","","KITCHEN UTENSILS","","60","1000","","","0");
INSERT INTO supermkt VALUES("167","ITEM 27","","KITCHEN UTENSILS","","60","1200","","","0");
INSERT INTO supermkt VALUES("168","ITEM 28","","KITCHEN UTENSILS","","60","3000","","","0");
INSERT INTO supermkt VALUES("169","ITEM 29","","KITCHEN UTENSILS","","60","1000","","","0");
INSERT INTO supermkt VALUES("170","ITEM 30","","KITCHEN UTENSILS","","60","1000","","","0");
INSERT INTO supermkt VALUES("171","ITEM 31","","KITCHEN UTENSILS","","60","7000","","","0");
INSERT INTO supermkt VALUES("172","ITEM 32","","KITCHEN UTENSILS","","60","40000","","","0");
INSERT INTO supermkt VALUES("173","ITEM 33","","KITCHEN UTENSILS","","60","8000","","","0");
INSERT INTO supermkt VALUES("174","ITEM 34","","KITCHEN UTENSILS","","60","300","","","0");
INSERT INTO supermkt VALUES("175","ITEM 35","","KITCHEN UTENSILS","","60","2300","","","0");
INSERT INTO supermkt VALUES("176","ITEM 36","","KITCHEN UTENSILS","","60","1000","","","0");
INSERT INTO supermkt VALUES("177","ITEM 37","","KITCHEN UTENSILS","","60","1200","","","0");
INSERT INTO supermkt VALUES("178","ITEM 38","","KITCHEN UTENSILS","","60","3000","","","0");
INSERT INTO supermkt VALUES("179","ITEM 39","","KITCHEN UTENSILS","","60","15000","","","0");
INSERT INTO supermkt VALUES("180","ITEM 40","","KITCHEN UTENSILS","","60","2500","","","0");
INSERT INTO supermkt VALUES("181","ITEM 41","","KITCHEN UTENSILS","","60","20000","","","0");
INSERT INTO supermkt VALUES("182","ITEM 42","","KITCHEN UTENSILS","","60","2500","","","0");
INSERT INTO supermkt VALUES("183","ITEM 43","","KITCHEN UTENSILS","","60","12000","","","0");
INSERT INTO supermkt VALUES("184","ITEM 44","","KITCHEN UTENSILS","","60","15000","","","0");
INSERT INTO supermkt VALUES("185","ITEM 45","","KITCHEN UTENSILS","","60","14000","","","0");
INSERT INTO supermkt VALUES("186","ITEM 46","","KITCHEN UTENSILS","","60","15000","","","0");
INSERT INTO supermkt VALUES("187","DAIPERS SMALL","","COSMETICS","","60","5000","","","0");
INSERT INTO supermkt VALUES("188","DAIPERS BIG","","COSMETICS","","60","12000","","","0");
INSERT INTO supermkt VALUES("189","COMFORTER ","","PROVISION","","60","195000","","","0");
INSERT INTO supermkt VALUES("190","BED SPREAD","","PROVISION","","60","30000","","","0");
INSERT INTO supermkt VALUES("191","WINDOW CURTINGS","","PROVISION","","59","10000","","","0");
INSERT INTO supermkt VALUES("192","CURTINGS SET BROWN","","PROVISION","","60","20000","","","0");
INSERT INTO supermkt VALUES("193","CANOPY","","PROVISION","","60","15000","","","0");
INSERT INTO supermkt VALUES("194","TEDDY BEAR WHITE","","PROVISION","","60","10000","","","0");
INSERT INTO supermkt VALUES("195","COOLER","","KITCHEN UTENSILS","","60","240000","","","0");
INSERT INTO supermkt VALUES("196","JEWELRY BOX","","COSMETICS","","60","25000","","","0");
INSERT INTO supermkt VALUES("197","SAMSUNG SMART TV","","ELECTRONIC","","60","1800000","","","0");
INSERT INTO supermkt VALUES("198","SANYO TV ","","ELECTRONIC","","60","150000","","","0");
INSERT INTO supermkt VALUES("200","SMALL HP LAPTOP","","ELECTRONIC","","60","150000","","","0");
INSERT INTO supermkt VALUES("202","DELL LAPTOP","","ELECTRONIC","","60","250000","","","0");
INSERT INTO supermkt VALUES("203","HP 6730B","","ELECTRONIC","","60","300000","","","0");
INSERT INTO supermkt VALUES("204","PYLE AMPLIFIER","","ELECTRONIC","","60","75000","","","0");
INSERT INTO supermkt VALUES("206","REALISTIC AMPLIFIER","","ELECTRONIC","","60","80000","","","0");
INSERT INTO supermkt VALUES("207","ALESIS AMPLIFIER","","ELECTRONIC","","59","135000","","","0");
INSERT INTO supermkt VALUES("208","BIAMP (CMA30)","","ELECTRONIC","","60","0","","","0");
INSERT INTO supermkt VALUES("209","PIONEER","","ELECTRONIC","","60","48000","012562869896","","0");
INSERT INTO supermkt VALUES("210","WIRELESS KEYBOARD AND MOUSE","","ELECTRONIC","","60","10000","","","0");
INSERT INTO supermkt VALUES("211","WIRED KEYBOARD ","","ELECTRONIC","","60","2500","","","0");
INSERT INTO supermkt VALUES("212","CREATIVE N400 SPEAKERS","","ELECTRONIC","","60","10000","","","0");
INSERT INTO supermkt VALUES("213","ELITE AUDIO SET","","ELECTRONIC","","60","180000","","","0");
INSERT INTO supermkt VALUES("214","McLAREN TECHNOLOGY SET","","ELECTRONIC","","60","110000","","","0");
INSERT INTO supermkt VALUES("215","DESKTOP THEATER 5.1","","ELECTRONIC","","60","0","","","0");
INSERT INTO supermkt VALUES("216","PROJECTOR","","ELECTRONIC","","60","155000","","","0");
INSERT INTO supermkt VALUES("217","SOLAR LED SPOT LIGHT","","ELECTRONIC","","60","10000","","","0");
INSERT INTO supermkt VALUES("218","SOLAR MOTION LIGHT","","ELECTRONIC","","60","10000","","","0");
INSERT INTO supermkt VALUES("219","BINATONE VOLTAGE REGULATOR 1000W","","ELECTRONIC","","60","45000","","","0");
INSERT INTO supermkt VALUES("220","BINATONE VOLTAGE REGULATOR 2000W","","ELECTRONIC","","60","0","","","0");
INSERT INTO supermkt VALUES("222","BIC TWIN BLADE","0","COSMETICS","","60","1000","681131074452","","0");
INSERT INTO supermkt VALUES("223","BIC TRIPPLE BLADE","","COSMETICS","","60","1000","070330713802","","0");
INSERT INTO supermkt VALUES("224","TOOTH BRUSH","","COSMETICS","","54","2000","","","0");
INSERT INTO supermkt VALUES("225","GALAXY S4 BAG","","ELECTRONIC","","60","5000","x0018ph96p","","0");
INSERT INTO supermkt VALUES("226","GALAXY NOTE 4 BAG","","ELECTRONIC","","60","8000","","","0");
INSERT INTO supermkt VALUES("227","LIQUID SHOE POLISH","","COSMETICS","","57","1500","","","0");
INSERT INTO supermkt VALUES("228","SOLID SHOE POLISH","","COSMETICS","","60","1000","031600101132","","0");
INSERT INTO supermkt VALUES("229","ZIPLOCK BAGS (BIG)","","PROVISION","","48","150","","","0");
INSERT INTO supermkt VALUES("230","ZIPLOCK BAGS (SMALL)","","PROVISION","","60","100","","","0");
INSERT INTO supermkt VALUES("231","AIBOCN POWER BANK","","ELECTRONIC","","60","15000","","","0");
INSERT INTO supermkt VALUES("232","ELIVE BUY POWER BANK","","ELECTRONIC","","60","20000","x000s7xknp","","0");
INSERT INTO supermkt VALUES("233","ETECITY LAMP","","ELECTRONIC","","60","10000","","","0");
INSERT INTO supermkt VALUES("234","CHARISMA BED SPREAD","","COSMETICS","","58","30000","843754005897","","0");
INSERT INTO supermkt VALUES("235","FULL SIZE BEDSPREAD","","COSMETICS","","60","0","","","0");
INSERT INTO supermkt VALUES("236","QUEEN SIZE BED SPREAD","","COSMETICS","","60","0","","","0");
INSERT INTO supermkt VALUES("237","TWIN SIZE BED SPREAD","","COSMETICS","","60","0","","","0");
INSERT INTO supermkt VALUES("238","HEADACHE RELIEF","","PROVISION","","60","2500","350844334084","","0");
INSERT INTO supermkt VALUES("239","ZIPLOCK TOTAL HOME","","PROVISION","","60","75","050428330708","","0");
INSERT INTO supermkt VALUES("240","ERASE MARKERS","","PROVISION","","60","2500","","","0");
INSERT INTO supermkt VALUES("241","BREATH RIGHT","","PROVISION","","58","2500","757145247400","","0");
INSERT INTO supermkt VALUES("242","LED WIRELESS LIGHT","","ELECTRONIC","","60","30000","","","0");
INSERT INTO supermkt VALUES("243","DURACELL BATTERY BIG","","ELECTRONIC","","60","750","","","0");
INSERT INTO supermkt VALUES("244","DURACELL BATTERY SMALL","","ELECTRONIC","","60","750","041333660127","","0");
INSERT INTO supermkt VALUES("245","MINI DRONE","","ELECTRONIC","","60","44000","","","0");
INSERT INTO supermkt VALUES("246","MAGIC JACK","","ELECTRONIC","","60","30000","","","0");
INSERT INTO supermkt VALUES("247","RAMS 512MB","","ELECTRONIC","","60","2500","473133","","0");
INSERT INTO supermkt VALUES("299","BELL HOWELL (air conditioner)","","ELECTRONICS","","60","12000","080313078422","","0");
INSERT INTO supermkt VALUES("455","ZTE CRICKET 4GLTE","1200","PHONES","","60","10000","112223333","","0");
INSERT INTO supermkt VALUES("515","CONSERVE ENERGY BULBS (4 IN ONE)","","LIGHTINGS","","60","2500","017801877588","","0");
INSERT INTO supermkt VALUES("517","GREAT VALUE LIGHT","","LIGHTINGS","","60","4000","078742019970","","0");
INSERT INTO supermkt VALUES("696","DELUXE SHANVING MACHINE","","ELECTRONICS","","60","30000","043917796413","","0");
INSERT INTO supermkt VALUES("704","IVSO PHONE CASE","","PHONE CASE","","60","8000","X000Q5CDOV","","0");
INSERT INTO supermkt VALUES("710","PINK PHONE BAG","","PHONE CASE","","60","8000","X0015GFOEB","","0");
INSERT INTO supermkt VALUES("747","DYNATRAP INSECTOS","","OTHERS","","60","45000","043256330507","","0");
INSERT INTO supermkt VALUES("751","DIGITAL LAMP METER","","OTHERS","","60","15000","9339346250970","","0");
INSERT INTO supermkt VALUES("810","BRUT","","SPRAY","","60","2500","3014230021404","","0");
INSERT INTO supermkt VALUES("843","SMALL SCHOOL BAG","","BAGS","","60","1122222222","barcode","","0");
INSERT INTO supermkt VALUES("844","Dove ","","","","60","2500","8710908400506","","0");
INSERT INTO supermkt VALUES("845","Degree Men","","","","60",".","079400343697","","0");
INSERT INTO supermkt VALUES("846","Degree Men motsense",".","","","60","2500","079400070210","","0");
INSERT INTO supermkt VALUES("847","CURL Stretch","","","","60","4000","603084351398","","0");
INSERT INTO supermkt VALUES("848","aveeno","","","","60","5500","381370036722","","0");
INSERT INTO supermkt VALUES("849","ambi fade cream","","","","60","5500","301875480028","","0");
INSERT INTO supermkt VALUES("850","BOD man","","","","60",".","026169055651","","0");
INSERT INTO supermkt VALUES("851","PALMERS SKIN SUCCESS","","","","60","4500","010181075001","","0");
INSERT INTO supermkt VALUES("852","PORCELANA","","","","60","5500","855093002451","","0");
INSERT INTO supermkt VALUES("853","VAGISIL","","","","60","6500","011509003720","","0");
INSERT INTO supermkt VALUES("854","VAGISIL ","","","","60","5500","011509003676","","0");
INSERT INTO supermkt VALUES("855","EQUATE","","","","60","1000","681131149839","","0");
INSERT INTO supermkt VALUES("856","8 COUNT TOOTHBRUSHES","","","","52","2000","094187373651","","0");
INSERT INTO supermkt VALUES("857","PULSAR TOOTHBRUSH","","","","60","500","300416693651","","0");
INSERT INTO supermkt VALUES("858","FEBREZE BIG","","","","60","1500","037000962281","","0");
INSERT INTO supermkt VALUES("859","EQUATE DISPOSABLE TRAVEL SCRUBS","","","","60","500","681131145848","","0");
INSERT INTO supermkt VALUES("860","DRY ERASE MARKERS","","","","60","2500","639277320117","","0");
INSERT INTO supermkt VALUES("861","ADVIL LIQUI GELS","","","","60","500","305730169028","","0");
INSERT INTO supermkt VALUES("862","LED COLLAPSIBLE LANTERN","","","","60","10000","x0018l1ur3","","0");
INSERT INTO supermkt VALUES("863","Freshtimes pantiliner","","","","60","1500","037867444012","","0");
INSERT INTO supermkt VALUES("864","carefree acti refresh","","","","60","1000","078300069904","","0");
INSERT INTO supermkt VALUES("865","BEVERLY HILLS POLO CLUB BIG","","","","60","22000","793573151087","","0");
INSERT INTO supermkt VALUES("866","BEVERLY HILLS POLO CLUB","","","","60","12000","793573740014","","0");
INSERT INTO supermkt VALUES("867","Tommy bahama","","","","60","23000","603531784649","","0");
INSERT INTO supermkt VALUES("868","anuck case","","","","60",".","X000VL5O0Z","","0");
INSERT INTO supermkt VALUES("869","Xtreme Micro Usb","","","","58","7500","805106923969","","0");
INSERT INTO supermkt VALUES("870","MAGNUM","","","","60","1500","022600642039","","0");
INSERT INTO supermkt VALUES("871","SKEIMI WATCH","","","","60","10000","2500385285545","","0");
INSERT INTO supermkt VALUES("872","WATCH ","","","","60","8000","2500400307306","","0");
INSERT INTO supermkt VALUES("873","RED WATCH","","","","60","10000","2000320746730","","0");
INSERT INTO supermkt VALUES("874","POWER UP PORTAL POWER BANK","","","","60","15000","849813002647","","0");
INSERT INTO supermkt VALUES("875","Tommy Bahaan small","","","","60","16000","603531784144","","0");
INSERT INTO supermkt VALUES("876","trojan perfium","","","","60","1500","022600953210","","0");
INSERT INTO supermkt VALUES("877","ELLEN TRACY PERFIUM","","","","60","5000","849017001606","","0");
INSERT INTO supermkt VALUES("878","FORD MUSTANG","","","","60","13000","827669030908","","0");
INSERT INTO supermkt VALUES("879","BHPC","","","","60","15000","793573087393","","0");
INSERT INTO supermkt VALUES("880","GUESS NIGHT","","","","60","20000","3607346505274","","0");
INSERT INTO supermkt VALUES("881","SPECTRE 007 SPEAKERS","","","","60","25000","","","0");
INSERT INTO supermkt VALUES("882","HMDX SPEAKERS","","","","59","15000","","","0");
INSERT INTO supermkt VALUES("883","IHIP","","","","60","10000","","","0");
INSERT INTO supermkt VALUES("884","IHOME","","","","60","15000","","","0");
INSERT INTO supermkt VALUES("885","SAMSUNG GALAXY S5","","","","60","0","010722990","","0");
INSERT INTO supermkt VALUES("886","Parrot minidrone","","","","60","44000","3520410028939","","0");
INSERT INTO supermkt VALUES("887","NIKON COOLPRIX S23","","","","60","35000","","","0");
INSERT INTO supermkt VALUES("888","MAXATTRAX HOME PEST GLUE TRAP","","","","60","0","071121009357","","0");
INSERT INTO supermkt VALUES("889","TRIDENT","","","","60","1000","012546001250","","0");
INSERT INTO supermkt VALUES("890","LIBBEY","","","","60","22000","031009443932","","0");
INSERT INTO supermkt VALUES("891","HEAVY DUTO TARP","","","","60","15000","874335007320","","0");
INSERT INTO supermkt VALUES("892","LIGHTME","","","","59","20000","x001j78yr5","","0");
INSERT INTO supermkt VALUES("893","LIGHTME SMALL","","","","60","15000","x0017mf4ar","","0");
INSERT INTO supermkt VALUES("894","SECURITY BULB","","","","60","0","x000rsbokv","","0");
INSERT INTO supermkt VALUES("895","KIRKLAND DRESS SOCK","","","","53","3000","096619405480","","0");
INSERT INTO supermkt VALUES("896","COOL CELL","","","","60","2000","888435749219","","0");
INSERT INTO supermkt VALUES("897","COOL CELL SHORT","","","","60","2500","888435749172","","0");
INSERT INTO supermkt VALUES("898","CALVIN KLEIN BOXERS","","","","60","608279872603","4000","","0");
INSERT INTO supermkt VALUES("899","CHAMPION ELITE","","","","59","2500","090563639809","","0");
INSERT INTO supermkt VALUES("900","CHAMPION ELITE 3","","","","59","2500","090563639809","","0");
INSERT INTO supermkt VALUES("901","DAILY WARE","","","","60","15000","","","0");
INSERT INTO supermkt VALUES("902","ASDA 12 CUP COFFEE MAKER","","","","60","25000","5051413568002","","0");
INSERT INTO supermkt VALUES("903","MR.COFFEE","","","","60","18000","072179234180","","0");
INSERT INTO supermkt VALUES("905","SUNFORCE","","","","60","45000","688432820801","","0");
INSERT INTO supermkt VALUES("906","INNOGEAR SOLAR MOTION","","","","60","10000","b00j5c9f0k","","0");
INSERT INTO supermkt VALUES("907","CROISNAT 1000CFA","950","","","56","","","","0");
INSERT INTO supermkt VALUES("908","GATEUR RULLE","","","","7","475","","","0");
INSERT INTO supermkt VALUES("909","LANGUE DE CHAT ","","","","18","80","","","0");
INSERT INTO supermkt VALUES("910","CROISANT ","","","","100","325","8411250013054","","0");
INSERT INTO supermkt VALUES("911","Butter","1000","","","50","5000","","","0");
INSERT INTO supermkt VALUES("912","Lb Link","1500","","","5","3000","E171210011450082939","","0");
INSERT INTO supermkt VALUES("913","dadu","5000","","","29","8000","1070906002056","","0");
INSERT INTO supermkt VALUES("914","Sugar","","","","594","950","","","0");
INSERT INTO supermkt VALUES("915","CHIPS","100","","","0","200","","","0");
INSERT INTO supermkt VALUES("916","olives","500","","","23","1000","","","0");
INSERT INTO supermkt VALUES("917","meat pie","200","","","0","500","","","0");
INSERT INTO supermkt VALUES("918","tangui 1L","","","","50","400","","","0");





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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

INSERT INTO truck VALUES("135","","","Mimbo Rouge","27","2","18","9.00","2500","09-07-2019","07","2019","2","","0","13:37:37");
INSERT INTO truck VALUES("136","","","Mimbo Blanc","27","2","18","9.00","3000","09-07-2019","07","2019","2","","0","13:37:37");
INSERT INTO truck VALUES("137","","","Cogsigna Rouge","6","2","2","4.00","10000","09-07-2019","07","2019","2","","0","13:37:37");
INSERT INTO truck VALUES("138","","","Cogsigna Blanc","6","2","2","4.00","10000","09-07-2019","07","2019","2","","0","13:37:37");
INSERT INTO truck VALUES("139","","","ST Loude","6","2","2","4.00","10000","09-07-2019","07","2019","2","","0","13:37:37");
INSERT INTO truck VALUES("140","","","Cles de Bellevine","6","2","2","4.00","10000","09-07-2019","07","2019","2","","0","13:37:37");
INSERT INTO truck VALUES("141","","","Alma Artesan","6","2","2","4.00","10000","09-07-2019","07","2019","2","","0","13:37:37");
INSERT INTO truck VALUES("142","","","ST Loude","4.00","2","2","2.00","10000","09-07-2019","07","2019","3","","0","14:20:51");
INSERT INTO truck VALUES("143","","","Ice Black","240","2","48","192.00","1000","09-07-2019","07","2019","2","","0","14:45:55");
INSERT INTO truck VALUES("144","","","Malta Guiness Bottle","120","2","48","72.00","1000","09-07-2019","07","2019","2","","0","14:45:55");
INSERT INTO truck VALUES("145","","","Harp","60","2","36","24.00","800","09-07-2019","07","2019","2","","0","14:45:55");
INSERT INTO truck VALUES("146","","","Guiness Smooth","75","2","45","30.00","800","09-07-2019","07","2019","2","","0","14:45:55");
INSERT INTO truck VALUES("147","","","Small Guiness","480","2","120","360.00","1000","09-07-2019","07","2019","2","","0","14:45:55");
INSERT INTO truck VALUES("148","","","Big Guinness","60","2","36","24.00","1200","09-07-2019","07","2019","2","","0","14:45:55");
INSERT INTO truck VALUES("149","","","Supermont 1L ","30","2","12","18.00","1000","09-07-2019","07","2019","2","","0","19:11:54");
INSERT INTO truck VALUES("150","","","Tour Cantelou Red","6","2","2","4.00","10000","09-07-2019","07","2019","2","","0","19:19:16");
INSERT INTO truck VALUES("151","","","Tour Cantelou Blanc","18","2","6","12.00","10000","09-07-2019","07","2019","2","","0","19:22:36");
INSERT INTO truck VALUES("152","","","Domaine De Gironde","6","2","3","3.00","10000","09-07-2019","07","2019","2","","0","19:37:35");
INSERT INTO truck VALUES("153","","","Chateaux Lemon","12","2","4","8.00","10000","09-07-2019","07","2019","2","","0","19:37:35");
INSERT INTO truck VALUES("154","","","Cles de Bellevine","4.00","2","1","3.00","10000","09-07-2019","07","2019","2","","0","19:37:35");
INSERT INTO truck VALUES("155","","","Big Guinness","60","2","24","36.00","1200","09-07-2019","07","2019","2","","0","19:46:48");
INSERT INTO truck VALUES("156","","","Malta GN","120","2","48","72.00","1000","09-07-2019","07","2019","2","","0","19:46:48");
INSERT INTO truck VALUES("157","","","Small Guiness","480","2","192","288.00","1000","09-07-2019","07","2019","2","","0","19:46:48");
INSERT INTO truck VALUES("158","","","Heineken Bottle","2448","2","200","2248.00","1500","09-07-2019","07","2019","2","","0","21:49:04");
INSERT INTO truck VALUES("159","","","Don Simon","24","2","12","12.00","3000","09-07-2019","07","2019","2","","0","21:57:56");
INSERT INTO truck VALUES("160","","","Baron De Valle","12","2","12","0.00","2500","09-07-2019","07","2019","2","","0","21:57:56");
INSERT INTO truck VALUES("161","","","Penasol Red","24","2","12","12.00","3000","09-07-2019","07","2019","2","","0","21:57:56");
INSERT INTO truck VALUES("162","","","Penasol White","24","2","12","12.00","3000","09-07-2019","07","2019","2","","0","21:57:56");
INSERT INTO truck VALUES("163","","","Vinosol","24","2","12","12.00","2500","09-07-2019","07","2019","2","","0","21:57:56");
INSERT INTO truck VALUES("164","","","El Vino","24","2","12","12.00","2500","09-07-2019","07","2019","2","","0","21:57:56");
INSERT INTO truck VALUES("165","","","Chateaux Le Maquis","24","2","6","18.00","10000","09-07-2019","07","2019","2","","0","21:57:56");
INSERT INTO truck VALUES("166","","","Refuge Camters","6","2","2","4.00","10000","09-07-2019","07","2019","2","","0","21:57:56");
INSERT INTO truck VALUES("167","","","Mouton Calmet","18","2","6","12.00","10000","09-07-2019","07","2019","2","","0","21:57:56");
INSERT INTO truck VALUES("168","","","Ruinart Blanc","60","2","30","30.00","100000","09-07-2019","07","2019","3","","0","22:07:14");
INSERT INTO truck VALUES("169","","","Chivas 18 ans","30","2","30","0.00","90000","09-07-2019","07","2019","3","","0","22:07:14");
INSERT INTO truck VALUES("170","","","Jack Honey","6","2","6","0.00","35000","09-07-2019","07","2019","3","","0","22:07:14");
INSERT INTO truck VALUES("171","","","Ballentines","12","2","6","6.00","25000","09-07-2019","07","2019","3","","0","22:07:14");
INSERT INTO truck VALUES("172","","","Baileys","36","2","12","24.00","25000","09-07-2019","07","2019","3","","0","22:07:14");
INSERT INTO truck VALUES("173","","","Gold Reserve","36","2","18","18.00","70000","09-07-2019","07","2019","3","","0","22:07:14");
INSERT INTO truck VALUES("174","","","Black Label","72","2","24","48.00","35000","09-07-2019","07","2019","3","","0","22:07:14");
INSERT INTO truck VALUES("175","","","Red Label","12","2","6","6.00","25000","09-07-2019","07","2019","3","","0","22:07:14");
INSERT INTO truck VALUES("176","","","Small Guiness","288.00","2","188","100.00","1000","09-07-2019","07","2019","3","","0","22:09:54");
INSERT INTO truck VALUES("177","","","Malta GN","72.00","2","60","12.00","1000","09-07-2019","07","2019","3","","0","22:09:54");
INSERT INTO truck VALUES("178","","","Ice Black","192.00","2","100","92.00","1000","09-07-2019","07","2019","3","","0","22:09:54");
INSERT INTO truck VALUES("179","","","Heineken Bottle","2248.00","2","400","1848.00","1500","09-07-2019","07","2019","3","","0","22:12:05");
INSERT INTO truck VALUES("180","","","Skoll","96","2","48","48.00","1500","09-07-2019","07","2019","3","","0","22:12:05");
INSERT INTO truck VALUES("181","","","J&B","12","2","6","6.00","25000","09-07-2019","07","2019","3","","0","22:12:05");





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
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO users VALUES("35","Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586","Nishang","super@123","super@123","20","$2y$10$svDhwwnz2jBdfcqvZPzBM.P2J3DaJyD76oswb19chDABehlbKDtUi","0342017","","6777888888","","","2017-09-08","::1","0","0","20","","1111111");
INSERT INTO users VALUES("46","Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586","Superadmin","superadmin","superadmin","20","$2y$10$NQBSUo2oYnPeB30xRKdL8.f8.uOLBQz1xRiQpGXCDYscrMlOrFLGO","","","","","","2018-05-02","::1","0","0","20","","111111");
INSERT INTO users VALUES("100","Windows NT NISHANG-SYS 6.2 build 9200 (Windows 8 Business Edition) i586","VIP Waitress","bwait","bwait","14","037d5583730ca4ad5be9bb9bff67f89db55ebfffe0ae11559","12345678","","","","","2019-07-07","::1","0","0","14","","12345678");
INSERT INTO users VALUES("99","Windows NT NISHANG-SYS 6.2 build 9200 (Windows 8 Business Edition) i586","Nwa Chris","bvip","bvip","7","$2y$10$9bFE0gIiIpmJswNKJpOOquLfHOoyPugrRCrMgk7QAMTHap/M5dPyO","","","","","","2019-07-07","::1","0","0","7","","12345678");
INSERT INTO users VALUES("98","Windows NT NISHANG-SYS 6.2 build 9200 (Windows 8 Business Edition) i586","B","bone","bone","2","$2y$10$Wxf1w2gx/ntbx0m4j31Fn.2Rk65kw1oL.smEknbKBRfDpjEa0o4Oa","","","","","","2019-07-07","::1","0","0","2","","12345678");
INSERT INTO users VALUES("97","Windows NT NISHANG-SYS 6.2 build 9200 (Windows 8 Business Edition) i586","N","bcash","bcash","7","$2y$10$Glh7Vf3V8x7rqls8xaVbZuoKbPVH7/iYFrC/VyyBvdVBK5Quno2yK","","","","","","2019-07-07","::1","0","0","7","","12345678");
INSERT INTO users VALUES("101","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Emeli Emelda","emeli","emeli","14","$2y$10$puyPZg9O0bZ6FX9Cb1pP3OnFkU211O04VOYMR9FdpuhjGLsi1xoAq","","","","","","2014-01-01","fe80::6543:86cb:5f89:ebc9","0","0","14","","30june");
INSERT INTO users VALUES("102","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Ndi Vinnette Yaah","yaah","yaah","14","$2y$10$xfIIXZht5cD9v/tV6S5e.OVX4DGeppMr9N2gr5Y.UM49.t32Qem6q","","","","","","2014-01-01","192.168.1.18","0","0","14","","chrisv");
INSERT INTO users VALUES("103","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Kanjo Henrietta Nyengeh","nyengeh","nyengeh","14","$2y$10$cIRNiUZBOLuZhK8qJzmyYe3r3SaI1fmJ2/DArqhTfge.vw2ueboLS","","","","","","2014-01-01","192.168.1.20","0","0","14","","01994");
INSERT INTO users VALUES("104","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Etchu Sylvia Bessem","bessem","bessem","9","$2y$10$lojSnINQgUKmqUxjGaXM9.GjwUV9TeqKD/HR2rENyukdRFSd7PZiC","","","","","","2014-01-01","192.168.1.18","0","0","9","","etchu14");
INSERT INTO users VALUES("105","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Ojini Dorothy Ogalga","ogalga","ogalga","9","$2y$10$fMqRAHtpyRZDST7mpQKV8uIywA5zA3iJfXK/OJ.BpjB.HAA6Q7sZa","","","","","","2014-01-01","192.168.1.20","0","0","9","","haniblanch");
INSERT INTO users VALUES("106","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Langmi Cyrenne Kimberly","kimberly","kimberly","9","$2y$10$LGfkghJ9KoYFuGHgdl6yyOmkEpeX89svgmA57x6uc9l3iz1Qr7gx6","","","","","","2014-01-01","192.168.1.20","0","0","9","","129800");
INSERT INTO users VALUES("107","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Ako Claryl Aye","aye","aye","9","$2y$10$ytsVBjpRWR4k0QOn.P.Yve1BvkoSrj2dHb4ZinCBDqmzanhXxTD6.","","","","","","2014-01-01","192.168.1.18","0","0","9","","Ako674788278");
INSERT INTO users VALUES("108","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Nolinga Caroline Ndinge","ndinge","ndinge","9","$2y$10$E4b8O8HGfOEgJuuFA//Fc.UuSuUW9VQ0je0PHLbWYI3Qa6HD6e2gS","","","","","","2014-01-01","192.168.1.20","0","0","9","","noling5");
INSERT INTO users VALUES("109","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Ngong Virginia Ngachu","ngachu","ngachu","2","$2y$10$1W8XmAezBHw5EAhE4TkDmOFidJW1.TNpQnE9JPDHVpMGswT1fya0C","","","","","","2014-01-01","192.168.1.18","0","0","2","","cliff1995");
INSERT INTO users VALUES("110","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Nanyia Kelly","kelly","kelly","2","$2y$10$5xpjVOyr/OSI8074zKTKYu90rGlqnVVxec0kRG.p/XEKKIJyWddP6","","","","","","2014-01-01","192.168.1.18","0","0","2","","679974563");
INSERT INTO users VALUES("111","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Vahkunseh Edith","edith","edith","3","$2y$10$jbK5XSBbRH8S5O6pzF7GC.vwQFts4vcs/Yo2LKDOx6fSadTOHUy7G","","","","","","2014-01-01","192.168.1.20","0","0","3","","672613234");
INSERT INTO users VALUES("112","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Kenah Rita Sih","sih","sih","3","$2y$10$TRKjXSdDOCVPu.kt63QQv.UgidUk/rj0LWnHIHacRlljAfhVqJoxO","","","","","","2014-01-01","192.168.1.20","0","0","3","","123456");
INSERT INTO users VALUES("113","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","ASONGAFAC FONJIA","FONJIA","FONJIA","7","$2y$10$xYng.b8OdGQwbfZx2dpJ1.h1/ybBzgyfqqu240GTbJOX8caK65a6m","","","","","","2014-01-01","192.168.1.18","0","0","7","","FONJIA89");
INSERT INTO users VALUES("119","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Etta Rekha Bright Youge","youge","youge","7","0e9456d73c9f05a56a03ecfc8ded1ac04e17f88fcfe988f50","2035000","","","","","2019-07-09","192.168.1.3","0","0","7","","203500");
INSERT INTO users VALUES("115","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Demo Testing","wvip","wvip","14","$2y$10$2lva6QD204XKTZWQBXW4LupA7zsdtCCu8MUtBf8JmIUWp32cU8E9q","","","","","","2014-01-01","192.168.1.20","0","0","14","","12345678");
INSERT INTO users VALUES("116","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Demo Sales Person","vipsales","vipsales","7","$2y$10$UutOHgqUGQ/akX.fX8foCehz8Nu87S80jquV6uHaxPPc8PiN4B.Ra","","","","","","2014-01-02","fe80::b95b:249e:db87:d81b","0","0","7","","12345678");
INSERT INTO users VALUES("117","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Ewane Mary Awajoh","awajoh","awajoh","20","$2y$10$K25ceYGuvrRzrx6O.jxF4OJ8CnkdqCDn1Oogw6u/OOMbOPAYfOw3W","","","","","","2019-07-08","192.168.1.3","0","0","20","","emar1996");
INSERT INTO users VALUES("118","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Felix Uchechukwu Chukwu","felix","felix","20","$2y$10$DqyIZI5Qtn2jyK70WJKscO7oLIf.BhtGOpeztDZrdKPDxxeRpMt9m","","","","","","2019-07-09","192.168.1.7","0","0","20","","alonso1422@");
INSERT INTO users VALUES("120","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","EKUME RAISSA NNANE","raissa","raissa","14","$2y$10$FYuzN1LX3JYnwQc.KonQsOO1mpK.SUmsXYNzLz42egg5uoFN5EHmG","","","","","","2019-07-09","192.168.1.3","0","0","14","","henrykulu");
INSERT INTO users VALUES("121","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Nolinga Caroline Ndinge","nolinga","nolinga","3","$2y$10$EZvU5idz9OK.bdcP/90jmOTRzW3a5ja0lpUM0lgT00ICnOCJ9.hOG","","","","","","2019-07-09","192.168.1.3","0","0","3","","nolinga5");
INSERT INTO users VALUES("122","Windows NT JSERVER 6.1 build 7601 (Windows 7 Ultimate Edition Service Pack 1) i586","Miki James Tita","miki","miki","9","$2y$10$gzYLYnOYWhnPDkxKHrgxBuV7jLz1tR9SiAZbG0w.y.YPhuC9.LHF2","","","","","","2019-07-09","192.168.1.3","0","0","9","","mikisusan");





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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;

INSERT INTO warehouse VALUES("1","Black Label","14917","Whisky","","48.00","35000","");
INSERT INTO warehouse VALUES("2","Platinum Johnny Walker 18 years","45344","Whisky","","30","90000","");
INSERT INTO warehouse VALUES("3","Red Label","7590","Whisky","","6.00","25000","");
INSERT INTO warehouse VALUES("4","CIROC","18113","Whisky","","12","50000","");
INSERT INTO warehouse VALUES("5","Singleton","19379","Whisky","","12","50000","");
INSERT INTO warehouse VALUES("6","Blue Label","111045","Whisky","","6","250000","");
INSERT INTO warehouse VALUES("7","Green Label","52218","Whisky","","6","130000","");
INSERT INTO warehouse VALUES("8","J&B","7590","Whisky","","6.00","25000","");
INSERT INTO warehouse VALUES("9","Heineken Bottle","575","Beer","","1848.00","1500","");
INSERT INTO warehouse VALUES("10","Bavaria","521","Beer","","168","1500","");
INSERT INTO warehouse VALUES("11","Extra Fresco","297","Beer","","144","750","");
INSERT INTO warehouse VALUES("12","Power Malt Bottle","479","Soft ","","96","800","");
INSERT INTO warehouse VALUES("13","Pepsi Can","395","Soft ","","48","750","");
INSERT INTO warehouse VALUES("14","Mirinda","313","Soft ","","24","700","");
INSERT INTO warehouse VALUES("15","Fanta Can","395","Soft ","","24","700","");
INSERT INTO warehouse VALUES("16","Coke Can","395","Soft ","","24","700","");
INSERT INTO warehouse VALUES("17","Sprite Can","395","Soft ","","24","700","");
INSERT INTO warehouse VALUES("18","Skoll","750","Soft ","","48.00","1500","");
INSERT INTO warehouse VALUES("19","Big Guinness","984","Beer","","36.00","1200","");
INSERT INTO warehouse VALUES("20","Small Guiness","596","Beer","","100.00","1000","");
INSERT INTO warehouse VALUES("21","Harp","630","Beer","","24.00","800","");
INSERT INTO warehouse VALUES("22","G Smooth","632","Beer","","75","800","");
INSERT INTO warehouse VALUES("23","Malta GN","463","Soft D","","12.00","1000","");
INSERT INTO warehouse VALUES("24","Ice Black","554","Beer","","92.00","1000","");
INSERT INTO warehouse VALUES("25","Don Perignon","0","Champagne","","12","250000","");
INSERT INTO warehouse VALUES("76","Moet Brut","","Champagne","","30","60000","");
INSERT INTO warehouse VALUES("77","Moet Nectar","","Champagne","","18","80000","");
INSERT INTO warehouse VALUES("78","Moet Ice","","Champagne","","6","90000","");
INSERT INTO warehouse VALUES("79","Ruinart Blanc","","Champagne","","30.00","100000","");
INSERT INTO warehouse VALUES("80","Chateau D\'arcins","","Wines","","6","45000","");
INSERT INTO warehouse VALUES("81","Chateau Ferrande","","Wines","","6","50000","");
INSERT INTO warehouse VALUES("82","Don Simon","1042","Wines","","12.00","3000","");
INSERT INTO warehouse VALUES("83","Baron De Valle","1042","Wines","","0.00","2500","");
INSERT INTO warehouse VALUES("84","Mimbo Blanc","1389","Wines","","27","3000","");
INSERT INTO warehouse VALUES("85","Penasol Red","1416","Wines","","12.00","3000","");
INSERT INTO warehouse VALUES("86","Penasol White","1459","Wines","","12.00","3000","");
INSERT INTO warehouse VALUES("87","Tour Cantelou Red","2166","Wines","","4.00","10000","");
INSERT INTO warehouse VALUES("88","Vinosol","1125","Wines","","12.00","2500","");
INSERT INTO warehouse VALUES("89","El Vino","1084","Wines","","12.00","2500","");
INSERT INTO warehouse VALUES("90","Cogsigna Rouge","2084","Wines","","4.00","10000","");
INSERT INTO warehouse VALUES("91","Domaine De Gironde","2166","Wines","","3.00","10000","");
INSERT INTO warehouse VALUES("92","Chateaux Le Maquis","2000","Wines","","18.00","10000","");
INSERT INTO warehouse VALUES("93","Refuge Camters","2334","Wines","","4.00","10000","");
INSERT INTO warehouse VALUES("94","Chateaux Lemon","2166","Wines","","8.00","10000","");
INSERT INTO warehouse VALUES("95","Mouton Calmet","2084","Wines","","12.00","10000","");
INSERT INTO warehouse VALUES("96","Alma Artesan","2166","Wines","","4.00","10000","");
INSERT INTO warehouse VALUES("97","Cles de Bellevine","2166","Wines","","3.00","10000","");
INSERT INTO warehouse VALUES("98","ST Loude","2084","Wines","","4","10000","");
INSERT INTO warehouse VALUES("99","Cogsigna Blanc","2166","Wines","","4.00","10000","");
INSERT INTO warehouse VALUES("100","Mimbo Rouge","1000","Wines","","27","2500","");
INSERT INTO warehouse VALUES("101","Big Guiness","984","Beer","","60","1200","");
INSERT INTO warehouse VALUES("102","Guiness Smooth","631","Beer","","30.00","800","");
INSERT INTO warehouse VALUES("103","Malta Guiness Bottle","463","Soft","","72.00","1000","");
INSERT INTO warehouse VALUES("104","Chivas 18 ans","","Whisky","","0.00","90000","");
INSERT INTO warehouse VALUES("105","Martini","","Whisky","","12","25000","");
INSERT INTO warehouse VALUES("106","Chivas 15 Ans","","Whisky","","6","70000","");
INSERT INTO warehouse VALUES("107","Ballentines","","Whisky","","6.00","25000","");
INSERT INTO warehouse VALUES("108","Jack Honey","","Whisky","","0.00","35000","");
INSERT INTO warehouse VALUES("109","Gold Reserve","34540","Whisky","","18.00","70000","");
INSERT INTO warehouse VALUES("110","Baileys","8292","Whisky","","24.00","25000","");
INSERT INTO warehouse VALUES("111","Supermont 1L ","209","Water","","18.00","1000","");
INSERT INTO warehouse VALUES("112","SUPERMONT 0.5L","150","Water","","360","1000","");
INSERT INTO warehouse VALUES("113","Tour Cantelou Blanc","2166","Wine","","12.00","10000","");
INSERT INTO warehouse VALUES("114","Belaire Rose","31000","Champagne","","42","70000","");
INSERT INTO warehouse VALUES("115","Belaire Rose Luxe","32000","Champagne","","12","80000","");
INSERT INTO warehouse VALUES("116","Belaire Icon Series Dj Khaled","50000","Champagne","","6","100000","");
INSERT INTO warehouse VALUES("117","Belaire Icon Series Rick Ross","50000","Champagne","","6","100000","");
INSERT INTO warehouse VALUES("118","Belaire Brut/Gold","36000","Champagne","","6","85000","");





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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO wholesale VALUES("8","TANGUI 1L","1500","PALLETS","","1","2300","","","0");
INSERT INTO wholesale VALUES("9","MALTINAL 5ML","1500","UNITS","","0","2100","","","0");
INSERT INTO wholesale VALUES("10","RICE","16000","BAGS","","0","19000","","","0");
INSERT INTO wholesale VALUES("11","TANGUI 0.5L","1100","PALLETS","","3","1500","","","0");
INSERT INTO wholesale VALUES("12","Sugar","1500","PACKS","","1","2000","","","0");
INSERT INTO wholesale VALUES("13","MALTINAL 5L","7000","BUCKETS","","4","10000","","","0");
INSERT INTO wholesale VALUES("14","Fanta 5L","","Litres","","70","8000","","","0");
INSERT INTO wholesale VALUES("15","Cheese","500","packs","","44.5","1000","","","0");
INSERT INTO wholesale VALUES("16","Milk","5000","packs","","30","7500","","","0");
INSERT INTO wholesale VALUES("17","top ananas 1L","","LITRES","","30","3500","","","0");



