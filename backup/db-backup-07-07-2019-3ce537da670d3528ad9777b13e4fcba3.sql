

CREATE TABLE `ass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ls` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO ass VALUES("1","46");





CREATE TABLE `bar_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `sector` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO bar_tables VALUES("1","1","0","3");
INSERT INTO bar_tables VALUES("2","2","0","3");
INSERT INTO bar_tables VALUES("3","3","0","3");
INSERT INTO bar_tables VALUES("4","4","0","3");
INSERT INTO bar_tables VALUES("5","5","0","3");
INSERT INTO bar_tables VALUES("6","6","0","4");
INSERT INTO bar_tables VALUES("7","7","0","4");
INSERT INTO bar_tables VALUES("8","8","0","4");
INSERT INTO bar_tables VALUES("9","9","0","4");
INSERT INTO bar_tables VALUES("10","10","0","4");
INSERT INTO bar_tables VALUES("11","11","0","7");
INSERT INTO bar_tables VALUES("12","12","0","7");
INSERT INTO bar_tables VALUES("13","13","0","7");
INSERT INTO bar_tables VALUES("14","14","0","7");
INSERT INTO bar_tables VALUES("15","15","0","7");
INSERT INTO bar_tables VALUES("16","16","0","6");
INSERT INTO bar_tables VALUES("17","17","0","6");





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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

INSERT INTO basket VALUES("2","32","drinks"," castel big bottles","1000.0","2","2","a","Chelsea","3","2019-06-24 15:42:24","2","","21","19","","","","2000","06","2019","","","","","3000.0","","0","0508","");
INSERT INTO basket VALUES("3","33","drinks"," Castel Small bottles","1000.0","1","2","a","Chelsea","3","2019-06-24 15:42:24","2","","21","19","","","","1000","06","2019","","","","","3000.0","","0","0508","");
INSERT INTO basket VALUES("4","34","drinks","33 exports big bottles","1000.0","1","2","a","Chelsea","3","2019-06-24 15:42:24","2","","21","19","","","","1000","06","2019","","","","","3000.0","","0","0508","");
INSERT INTO basket VALUES("5","35","drinks","33 exports Small bottles","1000.0","1","2","a","Chelsea","3","2019-06-24 15:42:24","2","","21","19","","","","1000","06","2019","","","","","3000.0","","0","0508","");
INSERT INTO basket VALUES("6","39","drinks","Top ananas","1000.0","1","2","a","Chelsea","3","2019-06-24 15:42:24","2","","21","19","","","","1000","06","2019","","","","","3000.0","","0","0508","");
INSERT INTO basket VALUES("7","38","drinks","Booster","1000.0","1","2","a","Chelsea","3","2019-06-24 15:42:24","2","","21","19","","","","1000","06","2019","","","","","3000.0","","0","0508","");
INSERT INTO basket VALUES("12","34","drinks","33 Exports Big Bottles","1000","6","2","A","Man United","3","2019-07-01 17:30:20","2","","0","-6","","","","6000","07","2019","","","cold","","4000.0","","0","201901","");
INSERT INTO basket VALUES("13","6","drinks","CAPA ROSA","20000.0","8","2","whisky","Chelsea","3","2019-07-01 17:24:04","2","","","","","","","160000","07","2019","","","cold","","0.0","","0","0508","41");
INSERT INTO basket VALUES("17","35","drinks","33 Exports Small Bottles","1000.0","5","2","whisky","Chelsea","3","2019-07-01 17:24:04","2","","","","","","","5000","07","2019","","","cold","","0.0","","0","0508","41");
INSERT INTO basket VALUES("20","2","drinks","BELVEDERE VODKA","20000.0","10","2","snm","Chelsea","3","2019-07-01 17:24:09","2","","","","","","","200000","07","2019","","","hot","","10000.0","","0","20190505","");
INSERT INTO basket VALUES("21","8","drinks","CHATEAU HAUT-LAMOTHE","20000.0","18","2","snm","Chelsea","3","2019-07-01 17:24:09","2","","","","","","","360000","07","2019","","","cold","","10000.0","","0","20190505","");
INSERT INTO basket VALUES("22","34","drinks","33 Exports Big Bottles","1000.0","18","2","snm","Chelsea","3","2019-07-01 17:24:09","2","","","","","","","18000","07","2019","","","cold","","10000.0","","0","20190505","");
INSERT INTO basket VALUES("26","9","drinks","CHIVAS REGAL","20000.0","1","0","snm1","Man United","3","2019-07-01 17:45:05","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("27","7","drinks","CHAMPAGNE MOET ET CHANDON","20000.0","1","0","snm1","Man United","3","2019-07-01 17:45:21","2","","","","","","","","07","2019","","","hot","","","","0","0508","");
INSERT INTO basket VALUES("28","39","drinks","Top Ananas","1000.0","9","0","Boy","Arsenal","3","2019-07-01 17:45:23","2","","","","","","","","07","2019","","","cold","","","","0","0508","");
INSERT INTO basket VALUES("29","","","33 Exports Small Bottles","1000","1","2","35","","3","01-07-2019","2","","","","1000","BRASSERIES BEER","01","1000","07","2019","1000","06:46:20","","","","","0","02","");
INSERT INTO basket VALUES("30","","","Top pamplemousse","1000","2","2","44","4","3","01-07-2019","2","","","","1000","JUICE","01","1000","07","2019","1000","06:48:53","","","","","0","20190506","");
INSERT INTO basket VALUES("32","11","drinks","Blue Label","15000.0","1","0","xxxgg","4","3","2019-07-04 13:17:09","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("33","12","drinks","Black Label","50000.0","1","0","xxxgg","4","3","2019-07-04 13:17:11","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("34","50","drinks","","1500.0","1","0","xxxgg","4","3","2019-07-04 13:17:12","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("36","12","drinks","Black Label","50000.0","1","0","vshsj","5","3","2019-07-05 14:01:05","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("37","5","drinks","Heindeken Big","1000.0","1","0","vshsj","5","3","2019-07-05 14:01:08","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("38","63","drinks","HEINDEKEN S","1000.0","1","0","vshsj","5","3","2019-07-05 14:01:10","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("39","64","drinks","HEINDEKEN B","2000.0","1","0","vshsj","5","3","2019-07-05 14:01:11","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("40","65","drinks","BAVARIA","1000.0","1","0","vshsj","5","3","2019-07-05 14:01:13","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("41","74","drinks","Maltina","1000.0","1","0","vshsj","5","3","2019-07-05 14:01:14","2","","","","","","","","07","2019","","","","","","","0","0508","");
INSERT INTO basket VALUES("44","12","drinks","Black Label","50000.0","1","2","a","1","3","2019-07-07 08:52:33","2","","696","695","","","","50000","07","2019","","","","93","0.0","","0","20190507","44");
INSERT INTO basket VALUES("45","50","drinks","","1500.0","1","2","a","1","3","2019-07-07 08:52:33","2","","696","695","","","","1500","07","2019","","","","93","0.0","","0","20190507","44");
INSERT INTO basket VALUES("46","11","drinks","Blue Label","15000.0","1","2","a","1","3","2019-07-07 08:52:33","2","","696","695","","","","15000","07","2019","","","","93","0.0","","0","20190507","44");
INSERT INTO basket VALUES("47","10","drinks","Mutzig","1000.0","1","2","a","1","3","2019-07-07 08:52:33","2","","696","695","","","","1000","07","2019","","","","93","0.0","","0","20190507","44");
INSERT INTO basket VALUES("48","2","drinks","EXPORT","1000.0","10","2","a","1","3","2019-07-07 08:52:33","2","","696","695","","","","10000","07","2019","","","","93","0.0","","0","20190507","44");
INSERT INTO basket VALUES("51","2","drinks","EXPORT","1000.0","8","2","ssd","1","3","2019-07-06 06:07:31","2","","250","242","","","","8000","07","2019","","","","","2000.0","","0","0508","40");
INSERT INTO basket VALUES("52","3","drinks","AMSTEL","1000.0","5","2","ssd","1","3","2019-07-06 06:07:31","2","","250","242","","","","5000","07","2019","","","","","2000.0","","0","0508","40");
INSERT INTO basket VALUES("53","","","","","","0","h","4","3","2019-07-06 06:07:40","2","","","","","","","","","","","","","","","","0","0508","");
INSERT INTO basket VALUES("54","","","","","","2","a","1","3","2019-07-07 08:52:33","2","","696","695","","","","0","","","","","","93","0.0","","0","0508","44");
INSERT INTO basket VALUES("55","","","","","","2","as","3","3","2019-07-07 08:50:29","2","","51","51","","","","0","","","","","","","0.0","","0","0508","43");
INSERT INTO basket VALUES("56","11","drinks","Blue Label","15000.0","1","2","as","3","3","2019-07-07 08:50:29","2","","51","51","","","","15000","07","2019","","","","","0.0","","0","0508","43");
INSERT INTO basket VALUES("57","17","drinks","Natural Fruit Juice","1000.0","1","2","as","3","3","2019-07-07 08:50:29","2","","51","51","","","","1000","07","2019","","","","","0.0","","0","0508","43");
INSERT INTO basket VALUES("58","50","drinks","","1500.0","1","2","as","3","3","2019-07-07 08:50:29","2","","51","51","","","","1500","07","2019","","","","","0.0","","0","0508","43");
INSERT INTO basket VALUES("59","","","","","","2","as","3","3","2019-07-07 08:50:29","2","","51","51","","","","0","","","","","","","0.0","","0","0508","43");
INSERT INTO basket VALUES("61","","","HERBAL BANQUET","1500","2","2","19","SUP","2","07-07-2019","2","","43","34","1500","COSMETICS","07","1500","07","2019","1500","07:33:29","","","","","0","0508","");
INSERT INTO basket VALUES("62","","","GILETTE MACH PACK","1000","1","2","61","SUP","2","07-07-2019","2","","43","34","1000","COSMETICS","07","1000","07","2019","1000","07:34:56","","","","","0","0508","");
INSERT INTO basket VALUES("66","","","KKK","2000","9","2","6","SUP","2","07-07-2019","2","","43","34","2000","COSMETICS","07","2000","07","2019","2000","07:41:25","","","","","0","0508","");
INSERT INTO basket VALUES("67","","","OUR TIME","3500","1","2","86","SUP","2","07-07-2019","2","","46","44","3500","COSMETICS","07","3500","07","2019","3500","07:43:09","","","","","0","0509","");
INSERT INTO basket VALUES("71","","","COLGATE TOOTH BRUSH","1000","4","2","8","SUP","2","07-07-2019","2","","46","44","1000","COSMETICS","07","1000","07","2019","1000","07:50:18","","","","","0","0509","");
INSERT INTO basket VALUES("73","","","ADDIDAS BATHUNG GEL","3000","2","2","13","SUP","2","07-07-2019","2","","46","44","3000","COSMETICS","07","3000","07","2019","3000","08:11:34","","","","","0","0509","");
INSERT INTO basket VALUES("74","","","","","","2","df","1","3","2019-07-07 08:42:28","0","","51","51","","","","0","","","","","","93","0.0","","0","","42");
INSERT INTO basket VALUES("75","11","drinks","Blue Label","15000.0","1","2","df","1","3","2019-07-07 08:42:28","0","","51","51","","","","15000","07","2019","","","","93","0.0","","0","","42");
INSERT INTO basket VALUES("76","","","","","","2","dff","5","3","2019-07-07 08:53:05","0","","51","51","","","","0","","","","","","93","0.0","","0","","45");
INSERT INTO basket VALUES("77","3","drinks","AMSTEL","1000.0","5","2","dff","5","3","2019-07-07 08:53:05","0","","51","51","","","","5000","07","2019","","","","93","0.0","","0","","45");
INSERT INTO basket VALUES("78","","","","","","2","fghh","3","3","2019-07-07 08:58:23","0","","51","51","","","","0","","","","","","93","0.0","","0","","46");
INSERT INTO basket VALUES("79","58","drinks","BIG GUINESS","1500.0","10","2","fghh","3","3","2019-07-07 08:58:23","0","","51","51","","","","15000","07","2019","","","","93","0.0","","0","","46");





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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO categories VALUES("11","Wine");
INSERT INTO categories VALUES("14","TOP");
INSERT INTO categories VALUES("15","Beer");
INSERT INTO categories VALUES("18","Whisky");
INSERT INTO categories VALUES("20","Champagne");
INSERT INTO categories VALUES("21","Can ");
INSERT INTO categories VALUES("22","Water");





CREATE TABLE `client` (
  `clien_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `address` text,
  `as1` varchar(60) DEFAULT NULL,
  `as2` varchar(60) DEFAULT NULL,
  `as3` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`clien_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO client VALUES("2","JUNGLE GROUP OF COMPANIES<br>Burjkhalifa","Check Point- Buea","Tel:(237) 23332 4134","","V-2515");





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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

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
INSERT INTO customers VALUES("12","Nishang BOY","2018","28","05-06-2018","","","2","21:02:02","677778889","","NIS132018","06");
INSERT INTO customers VALUES("13","","2018","0","19-06-2018","","","","12:22:39","","","NIS142018","06");
INSERT INTO customers VALUES("14","Nishang BOY","2018","28","19-06-2018","","","2","13:50:25","677778889","","NIS152018","06");
INSERT INTO customers VALUES("15","Marie","2018","31","19-06-2018","","","2","14:39:51","555555667","","NIS162018","06");
INSERT INTO customers VALUES("16","Mayi Palle Edwin","2018","26","19-06-2018","Mile 17","","2","14:46:00","677282828","","NIS172018","06");
INSERT INTO customers VALUES("17","Mr Vb","2018","33","19-06-2018","Chech","","2","15:08:57","7894562","","NIS182018","06");
INSERT INTO customers VALUES("18","Chu Nelly","2018","27","19-06-2018","Mile 17","","2","15:16:12","6778889999","","NIS192018","06");
INSERT INTO customers VALUES("19","Peter","2018","32","19-06-2018","Gra","","2","15:24:47","3333333434","","NIS202018","06");
INSERT INTO customers VALUES("20","Angel","2018","34","19-06-2018","Kj","","2","15:59:13","55555555","","NIS212018","06");
INSERT INTO customers VALUES("21","Rose","2018","35","19-06-2018","Molyko","","2","16:25:31","555767","","NIS222018","06");
INSERT INTO customers VALUES("22","Tabi","2018","36","19-06-2018","Check Point","","2","16:30:49","4547779","","NIS232018","06");
INSERT INTO customers VALUES("23","Joe","2018","37","19-06-2018","Buea Town","","2","16:36:52","7655759779","","NIS242018","06");
INSERT INTO customers VALUES("24","Barry","2018","39","19-06-2018","Molyko","","2","16:50:05","65552228","","NIS252018","06");
INSERT INTO customers VALUES("25","Billy","2018","40","19-06-2018","","","2","16:59:35","695562333","","NIS262018","06");
INSERT INTO customers VALUES("26","","2018","0","19-06-2018","","","","17:01:08","","","NIS272018","06");
INSERT INTO customers VALUES("27","Felix","2018","41","19-06-2018","","","","17:04:41","676787928","","NIS282018","06");
INSERT INTO customers VALUES("28","Mbah Isaac","2018","7","19-06-2018","BUEA","88999999999","2","17:12:57","677888899","","NIS292018","06");
INSERT INTO customers VALUES("29","Mike","2018","42","19-06-2018","","","2","18:36:12","5886958","","NIS302018","06");
INSERT INTO customers VALUES("30","Pual","2018","43","20-06-2018","Check Point","","","10:31:16","56565552","","NIS312018","06");
INSERT INTO customers VALUES("31","Mikel","2018","44","20-06-2018","Buea Town","","2","10:32:04","5555555544","","NIS322018","06");
INSERT INTO customers VALUES("32","Mikel","2018","44","20-06-2018","Buea Town","","","10:49:12","5555555544","","NIS332018","06");
INSERT INTO customers VALUES("33","Mike","2018","42","20-06-2018","","","2","10:55:05","5886958","","NIS342018","06");
INSERT INTO customers VALUES("34","Mr G","2018","46","20-06-2018","Check","","2","11:06:50","885422","","NIS352018","06");
INSERT INTO customers VALUES("35","Mr G","2018","46","20-06-2018","Check","","","11:12:10","885422","","NIS362018","06");
INSERT INTO customers VALUES("36","","2018","0","20-06-2018","","","","11:14:12","","","NIS372018","06");
INSERT INTO customers VALUES("37","Stanley","2018","47","20-06-2018","M N B","","2","11:21:26","8965320","","NIS382018","06");
INSERT INTO customers VALUES("38","Stanley","2018","47","20-06-2018","M N B","","2","11:26:03","8965320","","NIS392018","06");
INSERT INTO customers VALUES("39","Falon","2018","48","20-06-2018","","","2","11:33:40","656555","","NIS402018","06");
INSERT INTO customers VALUES("40","Mira","2018","49","20-06-2018","Buea Town","","2","11:40:42","546643","","NIS412018","06");
INSERT INTO customers VALUES("41","Yvette","2018","50","20-06-2018","Sosoliso","","2","11:46:57","676787928","","NIS422018","06");
INSERT INTO customers VALUES("42","Agbor","2018","52","21-06-2018","Buea Town","","2","11:50:41","123658","","NIS432018","06");
INSERT INTO customers VALUES("43","Baby","2018","53","21-06-2018","GRA","","2","12:01:20","22222222","","NIS442018","06");
INSERT INTO customers VALUES("44","Me","2018","54","21-06-2018","Tg","","2","12:15:41","3333333434","","NIS452018","06");
INSERT INTO customers VALUES("45","Burj Khalifa","2018","55","21-06-2018","GRA","","2","12:35:40","876543334","","NIS462018","06");
INSERT INTO customers VALUES("46","Nishang BOY","2018","28","22-06-2018","","","","12:31:02","677778889","","NIS472018","06");
INSERT INTO customers VALUES("47","Oru","2018","56","22-06-2018","Wera","","2","12:33:50","5842369","","NIS482018","06");
INSERT INTO customers VALUES("48","Oru","2018","56","22-06-2018","Wera","","","12:45:52","5842369","","NIS492018","06");
INSERT INTO customers VALUES("49","","2018","0","22-06-2018","","","","12:46:39","","","NIS502018","06");
INSERT INTO customers VALUES("50","Mimi","2018","58","22-06-2018","Limbe","","","12:53:17","444444444","","NIS512018","06");
INSERT INTO customers VALUES("51","Love","2018","59","22-06-2018","Buea Town","","2","12:58:29","7777777","","NIS522018","06");
INSERT INTO customers VALUES("52","Mr John","2018","60","22-06-2018","Malingo","","2","13:15:06","66678799","","NIS532018","06");
INSERT INTO customers VALUES("53","Paul","2018","61","23-06-2018","Buea","","2","20:09:36","787888898","","NIS542018","06");
INSERT INTO customers VALUES("54","Felix","2018","41","23-06-2018","","","","20:14:48","676787928","","NIS552018","06");
INSERT INTO customers VALUES("55","Tabi","2018","62","27-06-2018","Molyko","215888522","","10:59:11","25555523","","NIS562018","06");
INSERT INTO customers VALUES("56","Felix","2018","41","27-06-2018","","","2","15:03:37","676787928","","NIS572018","06");
INSERT INTO customers VALUES("57","Felix","2018","41","27-06-2018","","","2","15:05:34","676787928","","NIS582018","06");





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
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=latin1;

INSERT INTO daily VALUES("1","SUP","","02-05-2018","","","05","2018","2","05:07:53"," Bill","1","","","","superadmin","0","","0194","","","Bills","","","");
INSERT INTO daily VALUES("2","SUP","","11-05-2018","8800","","05","2018","2","08:00:22"," Bill","1","8800","8800","","super@123","0","","0195","","","Bills","","","");
INSERT INTO daily VALUES("3","","","11-05-2018","1500","","05","2018","3","08:03:25"," Bill","1","1500","1500","0","super@123","-500","","0196","","","Bills","","","");
INSERT INTO daily VALUES("4","SUP","","20-05-2018","2000","","05","2018","2","09:42:32"," Bill","1","2000","2000","","super@123","0","","0197","","","Bills","","","");
INSERT INTO daily VALUES("5","","","31-05-2018","1500","","05","2018","4","11:11:49"," Bill","1","1500","1500","0","super@123","-500","","0198","","","Bills","","","");
INSERT INTO daily VALUES("6","SUP","","01-06-2018","6000","","06","2018","2","02:16:45"," Bill","1","6000","6000","","super@123","-4000","","0199","","","Bills","","","");
INSERT INTO daily VALUES("7","SUP","","04-06-2018","6000","","06","2018","2","08:25:04"," Bill","1","6000","6000","","super@123","-4000","","0200","","","Bills","","","");
INSERT INTO daily VALUES("8","NIS132018","","05-06-2018","5000","","06","2018","8","","laundry","0","","","0","","","","","Nishang BOY","","","0","","");
INSERT INTO daily VALUES("9","24","","09-06-2018","15500","","06","2018","3","04:18:52"," Bill","1","15500","15500","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("10","SUP","","09-06-2018","15500","","06","2018","2","04:46:15"," Bill","1","15500","15500","","super@123","-4500","","0203","","","Bills","","","");
INSERT INTO daily VALUES("11","","","09-06-2018","10500","","06","2018","2","04:48:08"," Bill","1","10500","10500","0","super@123","-4500","","0204","","","Bills","","","");
INSERT INTO daily VALUES("12","15","","09-06-2018","0","","06","2018","4","04:56:53"," Bill","1","1000","1000","0","Nishang","","1000","","","","Bills","0","","9");
INSERT INTO daily VALUES("13","","","09-06-2018","12000","","06","2018","4","04:59:07"," Bill","1","12000","12000","0","super@123","-3000","","0206","","","Bills","","","");
INSERT INTO daily VALUES("14","15","","09-06-2018","1000","","06","2018","0",""," Debts Payment","1","1000","1000","","","","","","","","debts payment","","","");
INSERT INTO daily VALUES("15","","","09-06-2018","18000","","06","2018","3","05:09:11"," Bill","1","18000","18000","0","super@123","-2000","","0207","","","Bills","","","");
INSERT INTO daily VALUES("16","","","14-06-2018","90000","","06","2018","3","11:00:20"," Bill","1","90000","90000","0","super@123","-20000","","0208","","","Bills","","","");
INSERT INTO daily VALUES("17","SUP","","14-06-2018","10500","","06","2018","2","11:01:15"," Bill","1","10500","10500","","super@123","-500","","0209","","","Bills","","","");
INSERT INTO daily VALUES("18","SUP","","14-06-2018","61000","","06","2018","2","01:04:29"," Bill","1","61000","61000","","Balemba ","-4000","","0210","","","Bills","","","");
INSERT INTO daily VALUES("19","SUP","","14-06-2018","","","06","2018","2","01:04:36"," Bill","1","","","","yonga","-65000","","0211","","","Bills","","","");
INSERT INTO daily VALUES("20","SUP","","14-06-2018","","","06","2018","2","01:04:46"," Bill","1","","","","corazon","-65000","","0212","","","Bills","","","");
INSERT INTO daily VALUES("21","SUP","","14-06-2018","19500","","06","2018","2","01:11:25"," Bill","1","19500","19500","","Balemba ","-500","","0213","","","Bills","","","");
INSERT INTO daily VALUES("22","SUP","","14-06-2018","19000","","06","2018","2","01:14:59"," Bill","1","19000","19000","","fembe","-1000","","0214","","","Bills","","","");
INSERT INTO daily VALUES("23","SUP","","14-06-2018","16000","","06","2018","2","01:16:59"," Bill","1","16000","16000","","corazon","-4000","","0215","","","Bills","","","");
INSERT INTO daily VALUES("24","SUP","","14-06-2018","75000","","06","2018","2","01:19:02"," Bill","1","75000","75000","","yonga","-25000","","0216","","","Bills","","","");
INSERT INTO daily VALUES("25","SUP","","14-06-2018","11000","","06","2018","2","01:26:12"," Bill","1","11000","11000","","yonga","-4000","","0217","","","Bills","","","");
INSERT INTO daily VALUES("26","SUP","","14-06-2018","15000","","06","2018","2","01:31:55"," Bill","1","15000","15000","","fembe","-5000","","0218","","","Bills","","","");
INSERT INTO daily VALUES("27","GROSS","","14-06-2018","1000","","06","2018","2","01:37:40"," Bill","1","1500","1500","","super@123","0","","0219","","","Bills","500","","");
INSERT INTO daily VALUES("28","GROSS","","14-06-2018","40000","","06","2018","2","01:40:49"," Bill","1","38000","38000","","super@123","-2000","","0220","","","Bills","0","","");
INSERT INTO daily VALUES("29","GROSS","","14-06-2018","40000","","06","2018","2","01:42:29"," Bill","1","38000","38000","","yonga","-2000","","0221","","","Bills","0","","");
INSERT INTO daily VALUES("30","GROSS","","14-06-2018","5000","","06","2018","2","01:45:05"," Bill","1","4000","4000","","Balemba ","-1000","","0222","","","Bills","0","","");
INSERT INTO daily VALUES("31","GROSS","","14-06-2018","5000","","06","2018","2","01:46:55"," Bill","1","2000","2000","","corazon","-3000","","0223","","","Bills","0","","");
INSERT INTO daily VALUES("32","","","14-06-2018","10000","","06","2018","3","03:04:27"," Bill","1","10000","10000","0","super@123","0","","0224","","","Bills","","","");
INSERT INTO daily VALUES("33","","","14-06-2018","","","06","2018","3","03:10:31"," Bill","1","","","0","super@123","-900","","0225","","","Bills","","","");
INSERT INTO daily VALUES("34","","","14-06-2018","10000","","06","2018","3","03:13:04"," Bill","1","10000","10000","0","ekemajoseph","-10000","","0226","","","Bills","","","");
INSERT INTO daily VALUES("35","","","14-06-2018","106000","","06","2018","3","03:16:43"," Bill","1","106000","106000","0","super@123","0","","0227","","","Bills","","","");
INSERT INTO daily VALUES("36","","","14-06-2018","5200","","06","2018","3","03:19:20"," Bill","1","5200","5200","0","raissa","-4800","","0228","","","Bills","","","");
INSERT INTO daily VALUES("37","","","14-06-2018","","","06","2018","3","03:19:48"," Bill","1","","","0","jervis","-1000","","","","","Bills","","","");
INSERT INTO daily VALUES("38","","","14-06-2018","5000","","06","2018","3","03:21:57"," Bill","1","5000","5000","0","kitim","0","","0229","","","Bills","","","");
INSERT INTO daily VALUES("39","","","14-06-2018","17000","","06","2018","3","03:24:23"," Bill","1","17000","17000","0","super@123","-3000","","0230","","","Bills","","","");
INSERT INTO daily VALUES("40","","","14-06-2018","111000","","06","2018","3","03:29:03"," Bill","1","111000","111000","0","bernadette","-39000","","0231","","","Bills","","","");
INSERT INTO daily VALUES("41","","","14-06-2018","","","06","2018","3","03:29:22"," Bill","1","","","0","carol","-2","","0232","","","Bills","","","");
INSERT INTO daily VALUES("42","","","14-06-2018","549000","","06","2018","3","03:31:50"," Bill","1","549000","549000","0","ekemajoseph","-51000","","0233","","","Bills","","","");
INSERT INTO daily VALUES("43","","","14-06-2018","72600","","06","2018","3","03:34:25"," Bill","1","72600","72600","0","bazil","-627400","","0234","","","Bills","","","");
INSERT INTO daily VALUES("44","","","14-06-2018","","","06","2018","3","03:34:27"," Bill","1","","","0","gilian","-80000","","0235","","","Bills","","","");
INSERT INTO daily VALUES("45","","","14-06-2018","614000","","06","2018","3","03:37:36"," Bill","1","614000","614000","0","ekemajoseph","-86000","","0236","","","Bills","","","");
INSERT INTO daily VALUES("46","","","14-06-2018","5000","","06","2018","3","03:37:58"," Bill","1","5000","5000","0","mejy","-5000","","0237","","","Bills","","","");
INSERT INTO daily VALUES("47","","","14-06-2018","","","06","2018","3","03:38:02"," Bill","1","","","0","carol","-70000","","0238","","","Bills","","","");
INSERT INTO daily VALUES("48","","","14-06-2018","5000","","06","2018","3","03:39:42"," Bill","1","5000","5000","0","ndifor ","-5000","","","","","Bills","","","");
INSERT INTO daily VALUES("49","","","14-06-2018","5000","","06","2018","3","03:39:46"," Bill","1","5000","5000","0","mejy","-5000","","0239","","","Bills","","","");
INSERT INTO daily VALUES("50","","","14-06-2018","","","06","2018","3","03:39:58"," Bill","1","","","0","ndifor ","-10000","","0240","","","Bills","","","");
INSERT INTO daily VALUES("51","","","14-06-2018","10000","","06","2018","3","03:40:32"," Bill","1","10000","10000","0","bisong","0","","0241","","","Bills","","","");
INSERT INTO daily VALUES("52","","","14-06-2018","","","06","2018","3","03:40:45"," Bill","1","","","0","ndifor ","-10000","","","","","Bills","","","");
INSERT INTO daily VALUES("53","","","14-06-2018","47800","","06","2018","3","03:42:16"," Bill","1","47800","47800","0","bisong","-2200","","0242","","","Bills","","","");
INSERT INTO daily VALUES("54","","","14-06-2018","10200","","06","2018","3","03:42:48"," Bill","1","10200","10200","0","bridget","-29800","","0243","","","Bills","","","");
INSERT INTO daily VALUES("55","","","14-06-2018","","","06","2018","3","03:43:09"," Bill","1","","","0","jervis","-15000","","0244","","","Bills","","","");
INSERT INTO daily VALUES("56","","","14-06-2018","9000","","06","2018","3","03:44:36"," Bill","1","9000","9000","0","ndifor ","-1000","","0245","","","Bills","","","");
INSERT INTO daily VALUES("57","","","14-06-2018","4000","","06","2018","3","03:45:08"," Bill","1","4000","4000","0","ndifor ","-6000","","0246","","","Bills","","","");
INSERT INTO daily VALUES("58","","","14-06-2018","4200","","06","2018","3","03:46:08"," Bill","1","4200","4200","0","udoh","-800","","0247","","","Bills","","","");
INSERT INTO daily VALUES("59","","","14-06-2018","9000","","06","2018","3","03:46:23"," Bill","1","9000","9000","0","ndifor ","-11000","","0248","","","Bills","","","");
INSERT INTO daily VALUES("60","","","14-06-2018","3000","","06","2018","3","04:19:15"," Bill","1","3000","3000","0","super@123","-2000","","0249","","","Bills","","","");
INSERT INTO daily VALUES("61","","","14-06-2018","5000","","06","2018","3","04:27:21"," Bill","1","5000","5000","0","super@123","0","","0250","","","Bills","","","");
INSERT INTO daily VALUES("62","","","15-06-2018","2000","","06","2018","3","10:38:20"," Bill","1","2000","2000","0","super@123","-1000","","0267","","","Bills","","","");
INSERT INTO daily VALUES("63","","","15-06-2018","2000","","06","2018","3","11:45:02"," Bill","1","2000","2000","0","mejy","-3000","","0268","","","Bills","","","");
INSERT INTO daily VALUES("64","","","15-06-2018","1000","","06","2018","3","11:47:46"," Bill","1","1000","1000","0","ekemajoseph","-4000","","","","","Bills","","","");
INSERT INTO daily VALUES("65","","","15-06-2018","","","06","2018","3","11:47:50"," Bill","1","","","0","ekemajoseph","-5000","","0269","","","Bills","","","");
INSERT INTO daily VALUES("66","","","15-06-2018","","","06","2018","3","11:47:54"," Bill","1","","","0","jervis","-60000","","0270","","","Bills","","","");
INSERT INTO daily VALUES("67","","","15-06-2018","2000","","06","2018","3","11:48:19"," Bill","1","2000","2000","0","maika","-13000","","0271","","","Bills","","","");
INSERT INTO daily VALUES("68","","","15-06-2018","","","06","2018","3","11:49:05"," Bill","1","","","0","machris","-15000","","","","","Bills","","","");
INSERT INTO daily VALUES("69","SUP","","15-06-2018","13800","","06","2018","2","11:49:14"," Bill","1","13800","13800","","yonga","-6200","","0272","","","Bills","","","");
INSERT INTO daily VALUES("70","","","15-06-2018","18000","","06","2018","3","11:51:01"," Bill","1","18000","18000","0","bisong","-2000","","0273","","","Bills","","","");
INSERT INTO daily VALUES("71","SUP","","15-06-2018","51500","","06","2018","2","11:52:14"," Bill","1","51500","51500","","fembe","-8500","","0274","","","Bills","","","");
INSERT INTO daily VALUES("72","","","15-06-2018","","","06","2018","3","11:52:23"," Bill","1","","","0","machris","-20000","","0275","","","Bills","","","");
INSERT INTO daily VALUES("73","","","15-06-2018","6000","","06","2018","3","11:53:37"," Bill","1","6000","6000","0","jervis","-4000","","0276","","","Bills","","","");
INSERT INTO daily VALUES("74","","","15-06-2018","","","06","2018","3","11:54:27"," Bill","1","","","0","ndifor ","-20000","","","","","Bills","","","");
INSERT INTO daily VALUES("75","","","15-06-2018","1000","","06","2018","3","11:54:56"," Bill","1","1000","1000","0","kitim","-4000","","0277","","","Bills","","","");
INSERT INTO daily VALUES("76","SUP","","15-06-2018","3000","","06","2018","2","11:55:47"," Bill","1","3000","3000","","Balemba ","-2000","","0278","","","Bills","","","");
INSERT INTO daily VALUES("77","","","15-06-2018","2000","","06","2018","3","11:56:58"," Bill","1","2000","2000","0","mejy","-3000","","","","","Bills","","","");
INSERT INTO daily VALUES("78","","","15-06-2018","","","06","2018","3","11:57:04"," Bill","1","","","0","mejy","-5000","","","","","Bills","","","");
INSERT INTO daily VALUES("79","","","15-06-2018","100000","","06","2018","3","11:57:11"," Bill","1","100000","100000","0","ndifor ","-100000","","0282","","","Bills","","","");
INSERT INTO daily VALUES("80","SUP","","15-06-2018","","","06","2018","2","11:57:13"," Bill","1","","","","Balemba ","-5000","","0280","","","Bills","","","");
INSERT INTO daily VALUES("81","","","15-06-2018","","","06","2018","3","11:57:28"," Bill","1","","","0","kitim","-10000","","0283","","","Bills","","","");
INSERT INTO daily VALUES("82","GROSS","","15-06-2018","10000","","06","2018","2","11:59:19"," Bill","1","","","","Balemba ","-10005","","","","","Bills","05","","");
INSERT INTO daily VALUES("83","","","15-06-2018","50000","","06","2018","3","12:00:41"," Bill","1","50000","50000","0","machris","-50000","","0284","","","Bills","","","");
INSERT INTO daily VALUES("84","","","15-06-2018","136000","","06","2018","3","12:03:42"," Bill","1","136000","136000","0","gilian","-14000","","0285","","","Bills","","","");
INSERT INTO daily VALUES("85","","","15-06-2018","1000","","06","2018","3","12:05:08"," Bill","1","1000","1000","0","carol","-1000","","0286","","","Bills","","","");
INSERT INTO daily VALUES("86","SUP","","15-06-2018","17500","","06","2018","2","12:06:18"," Bill","1","17500","17500","","yonga","-2500","","0287","","","Bills","","","");
INSERT INTO daily VALUES("87","","","15-06-2018","7500","","06","2018","3","12:08:21"," Bill","1","7500","7500","0","machris","-2500","","0288","","","Bills","","","");
INSERT INTO daily VALUES("88","","","15-06-2018","3000","","06","2018","3","12:10:24"," Bill","1","3000","3000","0","ndifor ","-7000","","0289","","","Bills","","","");
INSERT INTO daily VALUES("89","","","15-06-2018","39000","","06","2018","3","12:12:57"," Bill","1","39000","39000","0","jervis","-1000","","0290","","","Bills","","","");
INSERT INTO daily VALUES("90","","","15-06-2018","2000","","06","2018","3","12:13:57"," Bill","1","2000","2000","0","raissa","-3000","","0291","","","Bills","","","");
INSERT INTO daily VALUES("91","","","15-06-2018","11000","","06","2018","3","12:19:03"," Bill","1","11000","11000","0","raissa","-4000","","0292","","","Bills","","","");
INSERT INTO daily VALUES("92","SUP","","15-06-2018","4000","","06","2018","2","12:24:08"," Bill","1","4000","4000","","Balemba ","-1000","","0299","","","Bills","","","");
INSERT INTO daily VALUES("93","GROSS","","15-06-2018","15000","","06","2018","2","12:25:30"," Bill","1","","","","Balemba ","-15005","","","","","Bills","5","","");
INSERT INTO daily VALUES("94","GROSS","","15-06-2018","10000","","06","2018","2","12:26:30"," Bill","1","5000","5000","","Balemba ","-5000","","0294","","","Bills","0","","");
INSERT INTO daily VALUES("95","","","15-06-2018","90000","","06","2018","3","12:28:42"," Bill","1","90000","90000","0","machris","-10000","","0295","","","Bills","","","");
INSERT INTO daily VALUES("96","","","15-06-2018","3600","","06","2018","3","12:32:04"," Bill","1","3600","3600","0","kitim","-6400","","0296","","","Bills","","","");
INSERT INTO daily VALUES("97","","","15-06-2018","17600","","06","2018","3","12:35:36"," Bill","1","17600","17600","0","bridget","-2400","","0297","","","Bills","","","");
INSERT INTO daily VALUES("98","","","15-06-2018","6000","","06","2018","3","12:39:19"," Bill","1","6000","6000","0","mejy","-4000","","0300","","","Bills","","","");
INSERT INTO daily VALUES("99","","","15-06-2018","7000","","06","2018","3","12:40:40"," Bill","1","7000","7000","0","mejy","-3000","","0301","","","Bills","","","");
INSERT INTO daily VALUES("100","2","","15-06-2018","2000","","06","2018","3","12:54:41"," Bill","1","6000","6000","4000","Nishang","","4000","","","","Bills","0","","10");
INSERT INTO daily VALUES("101","1","","15-06-2018","8500","","06","2018","3","12:55:56"," Bill","1","8500","8500","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("102","2","","15-06-2018","4000","","06","2018","3","12:57:29"," Bill","1","6000","6000","2000","Nishang","","2000","","","","Bills","","","11");
INSERT INTO daily VALUES("103","","","15-06-2018","","","06","2018","3","01:11:16"," Bill","1","","","0","super@123","-10000","","","","","Bills","","","");
INSERT INTO daily VALUES("104","3","","15-06-2018","5000","","06","2018","3","01:11:46"," Bill","1","5000","5000","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("105","3","","15-06-2018","11000","","06","2018","3","01:13:11"," Bill","1","11000","11000","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("106","1","","15-06-2018","12500","","06","2018","3","01:14:23"," Bill","1","12500","12500","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("107","1","","15-06-2018","2000","","06","2018","3","01:18:13"," Bill","1","2000","2000","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("108","3","","15-06-2018","11500","","06","2018","3","01:19:23"," Bill","1","11500","11500","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("109","2","","15-06-2018","8000","","06","2018","3","01:23:15"," Bill","1","8000","8000","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("110","2","","15-06-2018","0","","06","2018","3","01:26:49"," Bill","1","0","0","0","Isanga Bridget Etongo","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("111","2","","15-06-2018","0","","06","2018","3","01:26:51"," Bill","1","0","0","0","Isanga Bridget Etongo","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("112","3","","15-06-2018","5000","","06","2018","3","01:27:23"," Bill","1","5000","5000","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("113","4","","15-06-2018","9500","","06","2018","3","01:28:06"," Bill","1","9500","9500","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("114","1","","15-06-2018","56000","","06","2018","3","01:34:42"," Bill","1","56000","56000","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("115","1","","15-06-2018","11500","","06","2018","3","01:40:06"," Bill","1","11500","11500","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("116","2","","15-06-2018","69000","","06","2018","3","01:43:15"," Bill","1","69000","69000","0","Nchung Roseline Bisong","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("117","","","15-06-2018","10000","","06","2018","2","01:54:53"," Bill","1","1000","1000","0","fembe","-9000","","0317","","","Bills","0","","");
INSERT INTO daily VALUES("118","SUP","","15-06-2018","13000","","06","2018","2","01:55:16"," Bill","1","13000","13000","","Balemba ","-2000","","0318","","","Bills","","","");
INSERT INTO daily VALUES("119","SUP","","15-06-2018","18500","","06","2018","2","01:57:49"," Bill","1","18500","18500","","yonga","-1500","","0319","","","Bills","","","");
INSERT INTO daily VALUES("120","SUP","","15-06-2018","34500","","06","2018","2","02:02:03"," Bill","1","34500","34500","","Balemba ","-5500","","0320","","","Bills","","","");
INSERT INTO daily VALUES("121","SUP","","15-06-2018","6000","","06","2018","2","02:03:26"," Bill","1","6000","6000","","fembe","-4000","","0321","","","Bills","","","");
INSERT INTO daily VALUES("122","SUP","","15-06-2018","27900","","06","2018","2","02:07:39"," Bill","1","27900","27900","","fembe","-2100","","0322","","","Bills","","","");
INSERT INTO daily VALUES("123","SUP","","15-06-2018","29400","","06","2018","2","02:13:04"," Bill","1","29400","29400","","yonga","-600","","0323","","","Bills","","","");
INSERT INTO daily VALUES("124","GROSS","","15-06-2018","150000","","06","2018","2","02:19:15"," Bill","1","147000","147000","","yonga","-4140","","0324","","","Bills","1140","","");
INSERT INTO daily VALUES("125","SUP","","15-06-2018","24950","","06","2018","2","02:23:26"," Bill","1","24950","24950","","Balemba ","-50","","0325","","","Bills","","","");
INSERT INTO daily VALUES("126","GROSS","","15-06-2018","70000","","06","2018","2","02:25:28"," Bill","1","67400","67400","","Balemba ","-2600","","0326","","","Bills","0","","");
INSERT INTO daily VALUES("127","SUP","","15-06-2018","950","","06","2018","2","02:38:58"," Bill","1","950","950","","yonga","-50","","0327","","","Bills","","","");
INSERT INTO daily VALUES("128","GROSS","","15-06-2018","2500","","06","2018","2","02:39:43"," Bill","1","2300","2300","","yonga","-200","","0328","","","Bills","0","","");
INSERT INTO daily VALUES("129","1","","16-06-2018","6000","","06","2018","3","11:26:50"," Bill","1","6000","6000","0","Nishang","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("130","1","","16-06-2018","70000","","06","2018","3","11:36:29"," Bill","1","70000","70000","0","Isanga Bridget Etongo","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("131","1","","16-06-2018","0","","06","2018","3","11:50:08"," Bill","1","102000","102000","102000","Isanga Bridget Etongo","","102000","","","","Bills","0","","12");
INSERT INTO daily VALUES("132","1","","16-06-2018","57500","","06","2018","3","12:03:26"," Bill","1","57500","57500","0","Nchung Roseline Bisong","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("133","1","","16-06-2018","40000","","06","2018","3","12:09:11"," Bill","1","95000","95000","55000","Nchung Roseline Bisong","","55000","","","","Bills","0","","13");
INSERT INTO daily VALUES("134","2","","16-06-2018","152000","","06","2018","3","12:22:40"," Bill","1","152000","152000","0","Gwanyeh Marie Christine","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("135","","","10-07-2018","","","07","2018","","","","0","","","0","","","","","Reno","","","","","");
INSERT INTO daily VALUES("136","3","","16-06-2018","0","","06","2018","3","12:42:05"," Bill","1","137000","137000","137000","Gwanyeh Marie Christine","","137000","","","","Bills","0","","14");
INSERT INTO daily VALUES("137","","","16-06-2018","100000","","06","2018","3","12:49:10"," Bill","1","100000","100000","0","bernadette","0","","0336","","","Bills","","","");
INSERT INTO daily VALUES("138","","","16-06-2018","52000","","06","2018","3","12:53:00"," Bill","1","52000","52000","0","bernadette","0","","0337","","","Bills","","","");
INSERT INTO daily VALUES("139","","","16-06-2018","51000","","06","2018","3","12:55:01"," Bill","1","51000","51000","0","bernadette","-4000","","0338","","","Bills","","","");
INSERT INTO daily VALUES("140","4","","16-06-2018","15000","","06","2018","3","01:14:42"," Bill","1","11000","11000","-4000","Enow Bernadette Akum","","-4000","","","","Bills","0","","");
INSERT INTO daily VALUES("141","1","","16-06-2018","20500","","06","2018","3","01:21:06"," Bill","1","20500","20500","0","Ndoh Jervis Ndoh","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("142","","","16-06-2018","173000","","06","2018","3","01:27:37"," Bill","1","173000","173000","0","raissa","-27000","","0341","","","Bills","","","");
INSERT INTO daily VALUES("143","","","16-06-2018","116000","","06","2018","3","01:36:47"," Bill","1","116000","116000","0","gilian","-104000","","0342","","","Bills","","","");
INSERT INTO daily VALUES("144","1","","16-06-2018","77500","","06","2018","3","01:38:02"," Bill","1","77500","77500","0","Nchang Gilian","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("145","","","16-06-2018","46000","","06","2018","3","01:41:58"," Bill","1","46000","46000","0","jervis","-4000","","0344","","","Bills","","","");
INSERT INTO daily VALUES("146","","","16-06-2018","17500","","06","2018","3","01:50:15"," Bill","1","17500","17500","0","bazil","-150000","","0345","","","Bills","","","");
INSERT INTO daily VALUES("147","","","16-06-2018","","","06","2018","3","01:50:23"," Bill","1","","","0","jervis","-200000","","0346","","","Bills","","","");
INSERT INTO daily VALUES("148","","","16-06-2018","102000","","06","2018","3","01:54:41"," Bill","1","102000","102000","0","gilian","-98000","","0347","","","Bills","","","");
INSERT INTO daily VALUES("149","1","","18-06-2018","14000","","06","2018","3","12:47:30"," Bill","1","14000","14000","0","udoh","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("150","5","","18-06-2018","13000","","06","2018","3","12:49:47"," Bill","1","13000","13000","0","bisong","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("151","3","","18-06-2018","63000","","06","2018","3","12:58:08"," Bill","1","63000","63000","0","bisong","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("152","5","","18-06-2018","15000","","06","2018","3","01:00:07"," Bill","1","35000","35000","20000","Alex Motale Edith Ikor Itoe","","20000","","","","Bills","0","","15");
INSERT INTO daily VALUES("153","","","18-06-2018","5000","","06","2018","3","01:05:04"," Bill","1","5000","5000","0","alex","-1000","","0352","","","Bills","","","");
INSERT INTO daily VALUES("154","1","","18-06-2018","14500","","06","2018","3","01:08:42"," Bill","1","14500","14500","0","alex","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("155","4","","18-06-2018","33400","","06","2018","3","01:11:06"," Bill","1","33400","33400","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("156","4","","18-06-2018","70300","","06","2018","3","01:16:49"," Bill","1","70300","70300","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("157","3","","18-06-2018","3000","","06","2018","3","01:18:33"," Bill","1","3000","3000","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("158","3","","18-06-2018","47000","","06","2018","3","01:22:49"," Bill","1","47000","47000","0","bernadette","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("159","4","","18-06-2018","18600","","06","2018","3","01:23:34"," Bill","1","18600","18600","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("160","","","18-06-2018","2400","","06","2018","3","01:24:33"," Bill","1","2400","2400","0","Heldrine","-600","","0359","","","Bills","","","");
INSERT INTO daily VALUES("161","4","","18-06-2018","21800","","06","2018","3","01:28:14"," Bill","1","21800","21800","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("162","","","18-06-2018","5000","","06","2018","3","01:29:13"," Bill","1","5000","5000","0","Heldrine","-5000","","0361","","","Bills","","","");
INSERT INTO daily VALUES("163","3","","18-06-2018","48500","","06","2018","3","01:29:53"," Bill","1","48500","48500","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("164","2","","18-06-2018","24000","","06","2018","3","01:34:03"," Bill","1","24000","24000","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("165","1","","18-06-2018","36500","","06","2018","3","01:34:36"," Bill","1","36500","36500","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("166","1","","18-06-2018","291900","","06","2018","3","01:41:44"," Bill","1","291900","291900","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("167","4","","18-06-2018","3000","","06","2018","3","01:43:43"," Bill","1","3000","3000","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("168","1","","18-06-2018","42200","","06","2018","3","01:44:56"," Bill","1","42200","42200","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("169","2","","18-06-2018","150500","","06","2018","3","01:46:17"," Bill","1","150500","150500","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("170","","","18-06-2018","","","06","2018","3","01:46:41"," Bill","1","","","0","carol","-10000","","","","","Bills","","","");
INSERT INTO daily VALUES("171","1","","18-06-2018","0","","06","2018","3","01:50:14"," Bill","1","28000","28000","28000","Gwanyeh Marie Christine","","28000","","","","Bills","0","","16");
INSERT INTO daily VALUES("172","4","","18-06-2018","49300","","06","2018","3","01:50:38"," Bill","1","49300","49300","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("173","2","","18-06-2018","17500","","06","2018","3","01:53:26"," Bill","1","17500","17500","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("174","1","","18-06-2018","5000","","06","2018","3","02:29:19"," Bill","1","5000","5000","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("175","1","","18-06-2018","152500","","06","2018","3","02:36:42"," Bill","1","152500","152500","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("176","1","","18-06-2018","48000","","06","2018","3","02:41:57"," Bill","1","48000","48000","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("177","2","","18-06-2018","35000","","06","2018","3","02:42:32"," Bill","1","35000","35000","0","machris","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("178","2","","18-06-2018","66500","","06","2018","3","02:45:26"," Bill","1","66500","66500","0","udoh","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("179","1","","18-06-2018","73500","","06","2018","3","02:47:13"," Bill","1","73500","73500","0","udoh","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("180","2","","18-06-2018","54500","","06","2018","3","02:53:28"," Bill","1","54500","54500","0","udoh","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("181","4","","18-06-2018","139500","","06","2018","3","02:58:54"," Bill","1","139500","139500","0","udoh","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("182","1","","18-06-2018","142500","","06","2018","3","03:00:15"," Bill","1","142500","142500","0","ndifor ","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("183","4","","18-06-2018","11000","","06","2018","3","03:06:31"," Bill","1","11000","11000","0","carol","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("184","1","","18-06-2018","49300","","06","2018","3","03:08:07"," Bill","1","49300","49300","0","kitim","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("185","1","","18-06-2018","37000","","06","2018","3","03:11:25"," Bill","1","37000","37000","0","alex","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("186","2","","18-06-2018","16600","","06","2018","3","03:18:12"," Bill","1","16600","16600","0","alex","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("187","4","","18-06-2018","100000","","06","2018","3","03:23:59"," Bill","1","122500","122500","22500","Nchang Gilian","","22500","","","","Bills","0","","17");
INSERT INTO daily VALUES("188","2","","18-06-2018","335600","","06","2018","3","03:30:39"," Bill","1","335600","335600","0","raissa","","0","","","","Bills","0","","");
INSERT INTO daily VALUES("189","","","18-06-2018","100000","","06","2018","3","03:40:16"," Bill","1","100000","100000","0","ndifor ","-100000","","0387","","","Bills","","","");
INSERT INTO daily VALUES("190","","","18-06-2018","214500","","06","2018","3","03:44:56"," Bill","1","214500","214500","0","ndifor ","-15500","","0388","","","Bills","","","");
INSERT INTO daily VALUES("191","","","18-06-2018","209500","","06","2018","3","03:48:36"," Bill","1","209500","209500","0","machris","-90500","","0389","","","Bills","","","");
INSERT INTO daily VALUES("192","","","18-06-2018","220500","","06","2018","3","03:55:36"," Bill","1","220500","220500","0","kitim","-29500","","0390","","","Bills","","","");
INSERT INTO daily VALUES("193","","","18-06-2018","82600","","06","2018","3","04:02:40"," Bill","1","82600","82600","0","bernadette","-7400","","0391","","","Bills","","","");
INSERT INTO daily VALUES("194","","","18-06-2018","345500","","06","2018","3","04:06:24"," Bill","1","345500","345500","0","raissa","-4500","","0392","","","Bills","","","");
INSERT INTO daily VALUES("195","1","","19-06-2018","10000","","06","2018","3","10:50:37"," Bill","1","10000","10000","0","bisong","0","-2000","20180393","","","Bills","","","");
INSERT INTO daily VALUES("196","","","19-06-2018","42900","","06","2018","3","12:21:17"," Bill","1","42900","42900","0","super@123","0","","0394","","","Bills","","","");
INSERT INTO daily VALUES("197","","","19-06-2018","105000","","06","2018","3","01:04:36"," Bill","1","105000","105000","0","super@123","-5000","","0395","","","Bills","","","");
INSERT INTO daily VALUES("198","","","19-06-2018","7000","","06","2018","3","01:08:26"," Bill","1","7000","7000","0","Heldrine","-3000","","0396","","","Bills","","","");
INSERT INTO daily VALUES("199","","","19-06-2018","6000","","06","2018","3","01:12:57"," Bill","1","6000","6000","0","raissa","0","","0397","","","Bills","","","");
INSERT INTO daily VALUES("200","","","19-06-2018","6000","","06","2018","3","01:15:17"," Bill","1","6000","6000","0","raissa","0","","0398","","","Bills","","","");
INSERT INTO daily VALUES("201","","","19-06-2018","205000","","06","2018","3","01:21:38"," Bill","1","205000","205000","0","bazil","-5000","","0399","","","Bills","","","");
INSERT INTO daily VALUES("202","","","19-06-2018","207500","","06","2018","3","01:24:22"," Bill","1","207500","207500","0","udoh","-92500","","0400","","","Bills","","","");
INSERT INTO daily VALUES("203","","","19-06-2018","10000","","06","2018","3","01:25:48"," Bill","1","10000","10000","0","super@123","0","","0401","","","Bills","","","");
INSERT INTO daily VALUES("204","","","19-06-2018","110000","","06","2018","3","01:29:58"," Bill","1","110000","110000","0","udoh","-90000","","0402","","","Bills","","","");
INSERT INTO daily VALUES("205","","","19-06-2018","15000","","06","2018","3","01:35:00"," Bill","1","15000","15000","0","maika","-5000","","0403","","","Bills","","","");
INSERT INTO daily VALUES("206","","","19-06-2018","10000","","06","2018","3","01:37:41"," Bill","1","10000","10000","0","super@123","0","","0404","","","Bills","","","");
INSERT INTO daily VALUES("207","","","19-06-2018","2000","","06","2018","3","01:40:35"," Bill","1","2000","2000","0","maika","-3000","","0405","","","Bills","","","");
INSERT INTO daily VALUES("208","NIS152018","","19-06-2018","4500","","06","2018","8","","laundry","0","","","0","","","","","Nishang BOY","","","0","","");
INSERT INTO daily VALUES("209","NIS162018","","19-06-2018","10000","","06","2018","8","","laundry","0","","","0","","","","","Marie","","","0","","");
INSERT INTO daily VALUES("210","NIS172018","","19-06-2018","10000","","06","2018","8","","laundry","0","","","0","","","","","Mayi Palle Edwin","","","0","","");
INSERT INTO daily VALUES("211","NIS172018","","19-06-2018","5000","","06","2018","8","","laundry debts","1","5000","","0","","","","","Mayi Palle Edwin","","","","","");
INSERT INTO daily VALUES("212","NIS162018","","19-06-2018","18000","","06","2018","8","","laundry debts","1","18000","","0","","","","","Marie","","","","","");
INSERT INTO daily VALUES("213","","","19-06-2018","4000","","06","2018","8","","laundry","0","","","0","","","","","","","","0","","");
INSERT INTO daily VALUES("214","NIS192018","","19-06-2018","10000","","06","2018","8","","laundry","0","","","0","","","","","Chu Nelly","","","0","","");
INSERT INTO daily VALUES("215","NIS192018","","19-06-2018","19000","","06","2018","8","","laundry debts","1","19000","","0","","","","","Chu Nelly","","","","","");
INSERT INTO daily VALUES("216","NIS152018","","19-06-2018","18000","","06","2018","8","","laundry debts","1","18000","","0","","","","","Nishang BOY","","","","","");
INSERT INTO daily VALUES("217","NIS182018","","19-06-2018","","","06","2018","8","","laundry","0","","","0","","","","","Mr Vb","","","0","","");
INSERT INTO daily VALUES("218","NIS202018","","19-06-2018","20000","","06","2018","8","","laundry","0","","","0","","","","","Peter","","","0","","");
INSERT INTO daily VALUES("219","NIS202018","","19-06-2018","57000","","06","2018","8","","laundry debts","1","57000","","0","","","","","Peter","","","","","");
INSERT INTO daily VALUES("220","NIS212018","","19-06-2018","23000","","06","2018","8","","laundry","0","","","0","","","","","Angel","","","0","","");
INSERT INTO daily VALUES("221","NIS212018","","19-06-2018","15000","","06","2018","8","","laundry debts","1","15000","","0","","","","","Angel","","","","","");
INSERT INTO daily VALUES("222","NIS132018","","19-06-2018","4000","","06","2018","8","","laundry debts","1","8000","","0","","","","","Nishang BOY","","","","","");
INSERT INTO daily VALUES("223","NIS132018","","19-06-2018","8000","","06","2018","8","","laundry debts","1","8000","","0","","","","","Nishang BOY","","","","","");
INSERT INTO daily VALUES("224","NIS222018","","19-06-2018","22000","","06","2018","8","","laundry","0","","","0","","","","","Rose","","","0","","");
INSERT INTO daily VALUES("225","NIS222018","","19-06-2018","8000","","06","2018","8","","laundry debts","1","8000","","0","","","","","Rose","","","","","");
INSERT INTO daily VALUES("226","NIS232018","","19-06-2018","45000","","06","2018","8","","laundry","0","","","0","","","","","Tabi","","","0","","");
INSERT INTO daily VALUES("227","NIS242018","","19-06-2018","20000","","06","2018","8","","laundry","0","","","0","","","","","Joe","","","0","","");
INSERT INTO daily VALUES("228","NIS242018","","19-06-2018","28000","","06","2018","8","","laundry debts","1","28000","","0","","","","","Joe","","","","","");
INSERT INTO daily VALUES("229","NIS252018","","19-06-2018","10000","","06","2018","8","","laundry","0","","","0","","","","","Barry","","","0","","");
INSERT INTO daily VALUES("230","NIS252018","","19-06-2018","8000","","06","2018","8","","laundry debts","1","8000","","0","","","","","Barry","","","","","");
INSERT INTO daily VALUES("231","NIS262018","","19-06-2018","24500","","06","2018","8","","laundry","0","","","0","","","","","Billy","","","0","","");
INSERT INTO daily VALUES("232","NIS262018","","19-06-2018","0","","06","2018","8","","laundry debts","1","0","","0","","","","","Billy","","","","","");
INSERT INTO daily VALUES("233","NIS292018","","19-06-2018","60000","","06","2018","8","","laundry","0","","","0","","","","","Mbah Isaac","","","0","","");
INSERT INTO daily VALUES("234","NIS292018","","19-06-2018","2000","","06","2018","8","","laundry debts","1","3000","","0","","","","","Mbah Isaac","","","","","");
INSERT INTO daily VALUES("235","NIS292018","","19-06-2018","2000","","06","2018","8","","laundry debts","1","3000","","0","","","","","Mbah Isaac","","","","","");
INSERT INTO daily VALUES("236","NIS292018","","19-06-2018","3000","","06","2018","8","","laundry debts","1","3000","","0","","","","","Mbah Isaac","","","","","");
INSERT INTO daily VALUES("237","NIS302018","","19-06-2018","40000","","06","2018","8","","laundry","0","","","0","","","","","Mike","","","0","","");
INSERT INTO daily VALUES("238","NIS302018","","19-06-2018","21000","","06","2018","8","","laundry debts","1","21000","","0","","","","","Mike","","","","","");
INSERT INTO daily VALUES("239","NIS302018","","19-06-2018","21000","","06","2018","8","","laundry debts","1","21000","","0","","","","","Mike","","","","","");
INSERT INTO daily VALUES("240","NIS322018","","20-06-2018","20000","","06","2018","8","","laundry","0","","","0","","","","","Mikel","","","0","","");
INSERT INTO daily VALUES("241","NIS322018","","20-06-2018","33000","","06","2018","8","","laundry debts","1","33000","","0","","","","","Mikel","","","","","");
INSERT INTO daily VALUES("242","NIS322018","","20-06-2018","2000","","06","2018","8","","laundry debts","1","33000","","0","","","","","Mikel","","","","","");
INSERT INTO daily VALUES("243","NIS322018","","20-06-2018","55000","","06","2018","8","","laundry debts","1","93000","","0","","","","","Mikel","","","","","");
INSERT INTO daily VALUES("244","NIS322018","","20-06-2018","114000","","06","2018","8","","laundry debts","1","114000","","0","","","","","Mikel","","","","","");
INSERT INTO daily VALUES("245","NIS342018","","20-06-2018","1000","","06","2018","8","","laundry","0","","","0","","","","","Mike","","","0","","");
INSERT INTO daily VALUES("246","NIS342018","","20-06-2018","3000","","06","2018","8","","laundry debts","1","4000","","0","","","","","Mike","","","","","");
INSERT INTO daily VALUES("247","NIS342018","","20-06-2018","1000","","06","2018","8","","laundry debts","1","1000","","0","","","","","Mike","","","","","");
INSERT INTO daily VALUES("248","","","20-06-2018","42900","","06","2018","8","","laundry debts","1","42900","","0","","","","","","","","","","");
INSERT INTO daily VALUES("249","NIS352018","","20-06-2018","4000","","06","2018","8","","laundry","0","","","0","","","","","Mr G","","","0","","");
INSERT INTO daily VALUES("250","NIS382018","","20-06-2018","100000","","06","2018","8","","laundry","0","","","0","","","","","Stanley","","","0","","");
INSERT INTO daily VALUES("251","NIS392018","","20-06-2018","6000","","06","2018","8","","laundry","0","","","0","","","","","Stanley","","","0","","");
INSERT INTO daily VALUES("252","NIS382018","","20-06-2018","2000","","06","2018","8","","laundry debts","1","2000","","0","","","","","Stanley","","","","","");
INSERT INTO daily VALUES("253","NIS382018","","20-06-2018","2000","","06","2018","8","","laundry debts","1","2000","","0","","","","","Stanley","","","","","");
INSERT INTO daily VALUES("254","NIS412018","","20-06-2018","100000","","06","2018","8","","laundry","0","","","0","","","","","Mira","","","0","","");
INSERT INTO daily VALUES("255","NIS412018","","20-06-2018","10000","","06","2018","8","","laundry debts","1","10000","","0","","","","","Mira","","","","","");
INSERT INTO daily VALUES("256","NIS422018","","20-06-2018","200000","","06","2018","8","","laundry","0","","","0","","","","","Yvette","","","0","","");
INSERT INTO daily VALUES("257","NIS422018","","20-06-2018","252000","","06","2018","8","","laundry debts","1","252000","","0","","","","","Yvette","","","","","");
INSERT INTO daily VALUES("258","NIS402018","","20-06-2018","155000","","06","2018","8","","laundry","0","","","0","","","","","Falon","","","0","","");
INSERT INTO daily VALUES("259","NIS402018","","20-06-2018","50000","","06","2018","8","","laundry debts","1","50000","","0","","","","","Falon","","","","","");
INSERT INTO daily VALUES("260","NIS402018","","20-06-2018","0","","06","2018","8","","laundry debts","1","0","","0","","","","","Falon","","","","","");
INSERT INTO daily VALUES("261","3","","20-06-2018","22500","","06","2018","3","02:03:14"," Bill","1","22500","22500","0","bazil","-1000","-1500","20180406","","","Bills","","","");
INSERT INTO daily VALUES("262","4","","20-06-2018","7500","","06","2018","3","02:05:56"," Bill","1","7500","7500","0","bazil","0","4500","20180407","","","Bills","0","","18");
INSERT INTO daily VALUES("263","3","","20-06-2018","0","","06","2018","3","02:14:40"," Bill","1","0","10000","10000","bazil","0","7000","20180408","Reno","","Bills","0","","19");
INSERT INTO daily VALUES("264","","","20-06-2018","5000","","06","2018","3","02:37:20"," Bill","1","5000","5000","","felix11","-5000","","0409","","","Bills","","","");
INSERT INTO daily VALUES("265","4","","20-06-2018","35000","","06","2018","3","02:48:01"," Bill","1","35000","35000","-5000","bazil","5000","-5000","20180410","","","Bills","","","");
INSERT INTO daily VALUES("266","NIS432018","","21-06-2018","7500","","06","2018","8","","laundry","0","","","0","ojong","","","","Agbor","","","0","","");
INSERT INTO daily VALUES("267","NIS442018","","21-06-2018","96000","","06","2018","8","","laundry","0","","","0","yah","","","","Baby","","","0","","");
INSERT INTO daily VALUES("268","NIS452018","","21-06-2018","22000","","06","2018","8","","laundry","0","","","0","yah","","","","Me","","","0","","");
INSERT INTO daily VALUES("269","NIS452018","","21-06-2018","3000","","06","2018","8","","laundry debts","1","3000","","0","yah","","","","Me","","","","","");
INSERT INTO daily VALUES("270","NIS462018","","21-06-2018","25000","","06","2018","8","","laundry","0","","","0","yah","","","","Burj Khalifa","","","0","","");
INSERT INTO daily VALUES("271","NIS462018","","21-06-2018","10000","","06","2018","8","","laundry debts","1","17000","","0","yah","","","","Burj Khalifa","","","","","");
INSERT INTO daily VALUES("272","NIS462018","","21-06-2018","10000","","06","2018","8","","laundry debts","1","17000","","0","yah","","","","Burj Khalifa","","","","","");
INSERT INTO daily VALUES("273","NIS462018","","21-06-2018","10000","","06","2018","8","","laundry debts","1","17000","","0","yah","","","","Burj Khalifa","","","","","");
INSERT INTO daily VALUES("274","NIS462018","","21-06-2018","7000","","06","2018","8","","laundry debts","1","7000","","0","yah","","","","Burj Khalifa","","","","","");
INSERT INTO daily VALUES("275","2","","21-06-2018","124000","","06","2018","3","02:08:15"," Bill","1","124000","124000","0","irene","0","-3500","20180411","","","Bills","","","");
INSERT INTO daily VALUES("276","","","21-06-2018","18000","","06","2018","3","02:15:13"," Bill","1","18000","18000","0","irene","0","","0412","","","Bills","","","");
INSERT INTO daily VALUES("277","","","21-06-2018","2000","","06","2018","3","02:20:29"," Bill","1","2000","2000","","irene","0","","0413","","","Bills","","","");
INSERT INTO daily VALUES("279","2","","21-06-2018","24500","","06","2018","3","02:36:27"," Bill","1","24500","24500","0","irene","-500","-1000","20180415","","","Bills","","","");
INSERT INTO daily VALUES("280","4","","21-06-2018","165000","","06","2018","3","02:42:14"," Bill","1","165000","165000","0","irene","0","0","20180416","Guy Daneil","","Bills","0","","21");
INSERT INTO daily VALUES("281","1","","21-06-2018","54500","","06","2018","3","02:46:48"," Bill","1","54500","54500","0","irene","0","0","20180417","","","Bills","","","");
INSERT INTO daily VALUES("282","5","","21-06-2018","250000","","06","2018","3","02:50:30"," Bill","1","250000","250000","0","irene","2500","0","20180418","","","Bills","","","");
INSERT INTO daily VALUES("283","","","21-06-2018","2000","","06","2018","3","02:53:44"," Bill","1","2000","2000","","irene","0","","0419","","","Bills","","","");
INSERT INTO daily VALUES("284","3","","21-06-2018","12000","","06","2018","3","02:56:29"," Bill","1","12000","12000","0","irene","2000","0","20180420","","","Bills","","","");
INSERT INTO daily VALUES("285","","","21-06-2018","","","06","2018","3","03:01:04"," Bill","1","","","","irene","-2000","","","","","Bills","","","");
INSERT INTO daily VALUES("286","","","21-06-2018","4000","","06","2018","3","03:02:54"," Bill","1","4000","4000","","irene","-2000","","0421","","","Bills","","","");
INSERT INTO daily VALUES("287","1","","21-06-2018","10000","","06","2018","3","03:09:28"," Bill","1","14300","14300","4300","irene","","4300","20180422","Reno","","Bills","0","","22");
INSERT INTO daily VALUES("288","","","21-06-2018","","","06","2018","3","03:12:22"," Bill","1","","","","irene","-100000","","","","","Bills","","","");
INSERT INTO daily VALUES("289","","","21-06-2018","35000","","06","2018","3","03:13:39"," Bill","1","35000","35000","","irene","-5000","","0423","","","Bills","","","");
INSERT INTO daily VALUES("290","5","","21-06-2018","38500","","06","2018","3","03:25:03"," Bill","1","38500","38500","-1500","irene","1500","-1500","20180424","","","Bills","","","");
INSERT INTO daily VALUES("291","","","21-06-2018","282500","","06","2018","3","03:28:27"," Bill","1","282500","282500","","irene","-17500","","0425","","","Bills","","","");
INSERT INTO daily VALUES("292","","","21-06-2018","6400","","06","2018","4","04:38:46"," Bill","1","6400","6400","","super@123","-20950","","0426","","","Bills","","","");
INSERT INTO daily VALUES("293","","","21-06-2018","2400","","06","2018","4","04:39:56"," Bill","1","2400","2400","","super@123","0","","0427","","","Bills","","","");
INSERT INTO daily VALUES("294","","","21-06-2018","3600","","06","2018","4","04:43:42"," Bill","1","3600","3600","","super@123","0","","0428","","","Bills","","","");
INSERT INTO daily VALUES("295","","","21-06-2018","270000","","06","2018","4","04:48:22"," Bill","1","270000","270000","","super@123","0","","0429","","","Bills","","","");
INSERT INTO daily VALUES("296","","","21-06-2018","50000","","06","2018","4","04:52:03"," Bill","1","50000","50000","","super@123","0","","0430","","","Bills","","","");
INSERT INTO daily VALUES("297","NIS482018","","22-06-2018","80000","","06","2018","8","","laundry","0","","","0","ojong","","","","Oru","","","0","","");
INSERT INTO daily VALUES("298","NIS482018","","22-06-2018","60000","","06","2018","8","","laundry debts","1","64000","","0","ojong","","","","Oru","","","","","");
INSERT INTO daily VALUES("299","NIS482018","","22-06-2018","4000","","06","2018","8","","laundry debts","1","4000","","0","ojong","","","","Oru","","","","","");
INSERT INTO daily VALUES("300","","","22-06-2018","3000","","06","2018","3","01:00:35"," Bill","1","3000","3000","0","irene","0","","0431","","","Bills","","","");
INSERT INTO daily VALUES("301","NIS522018","","22-06-2018","25000","","06","2018","8","","laundry","0","","","0","yah","","","","Love","","","0","","");
INSERT INTO daily VALUES("302","","","22-06-2018","1000","","06","2018","3","01:06:34"," Bill","1","1000","1000","","super@123","0","","0432","","","Bills","","","");
INSERT INTO daily VALUES("303","NIS522018","","22-06-2018","25000","","06","2018","8","","laundry debts","1","27000","","0","yah","","","","Love","","","","","");
INSERT INTO daily VALUES("304","NIS522018","","22-06-2018","2000","","06","2018","8","","laundry debts","1","2000","","0","yah","","","","Love","","","","","");
INSERT INTO daily VALUES("305","1","","22-06-2018","10500","","06","2018","3","01:12:46"," Bill","1","10500","10500","-500","super@123","500","-500","20180433","","","Bills","","","");
INSERT INTO daily VALUES("306","5","","22-06-2018","1000","","06","2018","3","01:13:33"," Bill","1","2000","2000","1000","super@123","","1000","20180434","Reno","","Bills","0","","23");
INSERT INTO daily VALUES("307","","","22-06-2018","2000","","06","2018","3","01:19:12"," Bill","1","2000","2000","","super@123","0","","0435","","","Bills","","","");
INSERT INTO daily VALUES("308","","","22-06-2018","2000","","06","2018","3","01:20:51"," Bill","1","2000","2000","","super@123","0","","0436","","","Bills","","","");
INSERT INTO daily VALUES("309","","","22-06-2018","1000","","06","2018","3","01:22:48"," Bill","1","1000","1000","","super@123","0","","0437","","","Bills","","","");
INSERT INTO daily VALUES("310","","","22-06-2018","1000","","06","2018","3","01:23:46"," Bill","1","1000","1000","0","super@123","0","","0438","","","Bills","","","");
INSERT INTO daily VALUES("311","","","22-06-2018","1000","","06","2018","3","01:24:37"," Bill","1","1000","1000","","super@123","0","","0439","","","Bills","","","");
INSERT INTO daily VALUES("312","NIS532018","","22-06-2018","23000","","06","2018","8","","laundry","0","","","0","yah","","","","Mr John","","","0","","");
INSERT INTO daily VALUES("313","","","22-06-2018","1000","","06","2018","3","01:26:34"," Bill","1","1000","1000","","super@123","0","","0440","","","Bills","","","");
INSERT INTO daily VALUES("314","NIS532018","","22-06-2018","19000","","06","2018","8","","laundry debts","1","39500","","0","yah","","","","Mr John","","","","","");
INSERT INTO daily VALUES("315","NIS532018","","22-06-2018","18000","","06","2018","8","","laundry debts","1","20500","","0","yah","","","","Mr John","","","","","");
INSERT INTO daily VALUES("316","NIS532018","","22-06-2018","2500","","06","2018","8","","laundry debts","1","2500","","0","yah","","","","Mr John","","","","","");
INSERT INTO daily VALUES("317","","","22-06-2018","1000","","06","2018","3","01:29:25"," Bill","1","1000","1000","","super@123","0","","0441","","","Bills","","","");
INSERT INTO daily VALUES("318","","","22-06-2018","3000","","06","2018","3","01:30:49"," Bill","1","3000","3000","","super@123","-1000","","0442","","","Bills","","","");
INSERT INTO daily VALUES("319","3","","22-06-2018","103000","","06","2018","3","01:34:39"," Bill","1","103000","103000","-2000","irene","2000","-2000","20180443","","","Bills","","","");
INSERT INTO daily VALUES("320","","","22-06-2018","10000","","06","2018","3","01:35:34"," Bill","1","10000","10000","","irene","0","","0444","","","Bills","","","");
INSERT INTO daily VALUES("321","","","22-06-2018","63500","","06","2018","3","01:37:21"," Bill","1","63500","63500","0","irene","-65000","","0445","","","Bills","","","");
INSERT INTO daily VALUES("322","2","","22-06-2018","50000","","06","2018","3","01:44:29"," Bill","1","50000","50000","0","irene","2500","0","20180446","","","Bills","","","");
INSERT INTO daily VALUES("323","2","","22-06-2018","54000","","06","2018","3","01:50:57"," Bill","1","54000","54000","-1000","irene","1000","-1000","20180447","","","Bills","","","");
INSERT INTO daily VALUES("324","","","22-06-2018","15000","","06","2018","3","01:52:52"," Bill","1","15000","15000","","irene","-5000","","0448","","","Bills","","","");
INSERT INTO daily VALUES("325","4","","22-06-2018","54000","","06","2018","3","01:53:51"," Bill","1","54000","54000","-1000","irene","1000","-1000","20180449","","","Bills","","","");
INSERT INTO daily VALUES("326","3","","22-06-2018","49000","","06","2018","3","01:57:32"," Bill","1","49000","49000","-1000","irene","1000","-1000","20180450","","","Bills","","","");
INSERT INTO daily VALUES("327","5","","22-06-2018","10000","","06","2018","3","01:59:26"," Bill","1","12000","12000","2000","irene","","2000","20180451","Musango Beach Hotel","","Bills","0","","24");
INSERT INTO daily VALUES("328","","","22-06-2018","19500","","06","2018","3","02:06:40"," Bill","1","19500","19500","","irene","-500","","0452","","","Bills","","","");
INSERT INTO daily VALUES("329","","","22-06-2018","50000","","06","2018","3","02:10:59"," Bill","1","50000","50000","","irene","0","","0453","","","Bills","","","");
INSERT INTO daily VALUES("330","","","22-06-2018","77000","","06","2018","3","02:12:03"," Bill","1","77000","77000","","irene","-3000","","0454","","","Bills","","","");
INSERT INTO daily VALUES("331","2","","22-06-2018","72500","","06","2018","3","02:27:02"," Bill","1","72500","72500","0","irene","0","2500","20180455","Marga Motanga","","Bills","0","","25");
INSERT INTO daily VALUES("332","","","22-06-2018","60000","","06","2018","3","02:31:49"," Bill","1","60000","60000","","irene","0","","0456","","","Bills","","","");
INSERT INTO daily VALUES("333","1","","23-06-2018","18500","","06","2018","3","11:15:46"," Bill","1","18500","18500","-1500","kenne","1500","-1500","20180457","","","Bills","","","");
INSERT INTO daily VALUES("334","1","","23-06-2018","100000","","06","2018","3","11:28:00"," Bill","1","100000","100000","0","kenne","0","0","20180458","","","Bills","","","");
INSERT INTO daily VALUES("335","4","","23-06-2018","108000","","06","2018","3","11:30:58"," Bill","1","108000","108000","0","kenne","0","0","20180459","","","Bills","","","");
INSERT INTO daily VALUES("336","2","","23-06-2018","3000","","06","2018","3","11:32:49"," Bill","1","3000","3000","0","kenne","0","0","20180460","","","Bills","","","");
INSERT INTO daily VALUES("337","2","","23-06-2018","98000","","06","2018","3","11:36:04"," Bill","1","98000","98000","-2000","kenne","2000","-2000","20180461","","","Bills","","","");
INSERT INTO daily VALUES("338","2","","23-06-2018","24000","","06","2018","3","11:37:45"," Bill","1","24000","24000","-1000","kenne","1000","-1000","20180462","","","Bills","","","");
INSERT INTO daily VALUES("339","3","","23-06-2018","136000","","06","2018","3","11:38:55"," Bill","1","136000","136000","-4000","kenne","4000","-4000","20180463","","","Bills","","","");
INSERT INTO daily VALUES("340","3","","23-06-2018","17500","","06","2018","3","11:42:55"," Bill","1","17500","17500","-2500","kenne","2500","-2500","20180464","","","Bills","","","");
INSERT INTO daily VALUES("341","1","","23-06-2018","12000","","06","2018","3","11:45:01"," Bill","1","12000","12000","-3000","kenne","3000","-3000","20180465","","","Bills","","","");
INSERT INTO daily VALUES("342","1","","23-06-2018","45000","","06","2018","3","11:47:45"," Bill","1","45000","45000","-5000","kenne","5000","-5000","20180466","","","Bills","","","");
INSERT INTO daily VALUES("343","1","","23-06-2018","8000","","06","2018","3","11:48:58"," Bill","1","8000","8000","-2000","kenne","2000","-2000","20180467","","","Bills","","","");
INSERT INTO daily VALUES("344","5","","23-06-2018","118000","","06","2018","3","11:50:08"," Bill","1","118000","118000","-2000","kenne","2000","-2000","20180468","","","Bills","","","");
INSERT INTO daily VALUES("345","3","","23-06-2018","36500","","06","2018","3","11:51:47"," Bill","1","36500","36500","-3500","kenne","3500","-3500","20180469","","","Bills","","","");
INSERT INTO daily VALUES("347","3","","23-06-2018","2000","","06","2018","3","11:57:32"," Bill","1","5000","5000","3000","kenne","","3000","20180471","Guy Daneil","","Bills","0","","27");
INSERT INTO daily VALUES("348","3","","23-06-2018","50000","","06","2018","3","12:01:08"," Bill","1","77000","77000","27000","kenne","","27000","20180472","Reno","","Bills","0","","28");
INSERT INTO daily VALUES("349","3","","23-06-2018","0","","06","2018","3","12:02:48"," Bill","1","44500","44500","44500","kenne","","44500","","Marga Motanga","","Bills","0","","29");
INSERT INTO daily VALUES("351","3","","23-06-2018","65000","","06","2018","3","12:07:51"," Bill","1","65000","65000","-5000","kenne","5000","-5000","20180474","","","Bills","","","");
INSERT INTO daily VALUES("352","","","23-06-2018","130000","","06","2018","3","12:10:33"," Bill","1","130000","130000","","kenne","-20000","","0475","","","Bills","","","");
INSERT INTO daily VALUES("353","","","23-06-2018","13000","","06","2018","3","12:12:53"," Bill","1","13000","13000","","kenne","-2000","","0476","","","Bills","","","");
INSERT INTO daily VALUES("354","4","","23-06-2018","1000","","06","2018","3","12:17:42"," Bill","1","1000","1000","0","kenne","0","0","20180477","","","Bills","","","");
INSERT INTO daily VALUES("356","3","","23-06-2018","9000","","06","2018","3","12:21:31"," Bill","1","19000","19000","10000","kenne","","10000","20180479","Marga Motanga","","Bills","0","","32");
INSERT INTO daily VALUES("357","3","","23-06-2018","5000","","06","2018","3","12:22:55"," Bill","1","5600","5600","600","kenne","","600","20180480","Guy Daneil","","Bills","0","","33");
INSERT INTO daily VALUES("358","","","23-06-2018","","","06","2018","3","12:23:38"," Bill","1","","","","kenne","-2","","","","","Bills","","","");
INSERT INTO daily VALUES("359","","","23-06-2018","75000","","06","2018","3","12:25:39"," Bill","1","75000","75000","","kenne","-5000","","0481","","","Bills","","","");
INSERT INTO daily VALUES("360","","","23-06-2018","80000","","06","2018","3","12:26:42"," Bill","1","80000","80000","0","kenne","0","","0482","","","Bills","","","");
INSERT INTO daily VALUES("361","","","23-06-2018","3000","","06","2018","3","12:28:08"," Bill","1","3000","3000","","kenne","-2000","","0483","","","Bills","","","");
INSERT INTO daily VALUES("362","","","23-06-2018","4800","","06","2018","4","07:49:54"," Bill","1","4800","4800","","super@123","0","","0484","","","Bills","","","");
INSERT INTO daily VALUES("363","","","23-06-2018","79400","","06","2018","4","07:52:50"," Bill","1","79400","79400","0","super@123","-4000","","0485","","","Bills","","","");
INSERT INTO daily VALUES("364","6","","23-06-2018","50000","","06","2018","4","07:58:19"," Bill","1","73000","73000","23000","super@123","","23000","20180486","Marga Motanga","","Bills","0","","34");
INSERT INTO daily VALUES("365","8","","23-06-2018","15000","","06","2018","4","07:59:16"," Bill","1","15000","15000","0","super@123","0","0","20180487","","","Bills","","","");
INSERT INTO daily VALUES("366","GROSS","","23-06-2018","5000","","06","2018","2","08:01:48"," Bill","1","2000","2000","","super@123","-3000","","0488","","","Bills","0","","");
INSERT INTO daily VALUES("367","GROSS","","23-06-2018","5000","","06","2018","2","08:02:44"," Bill","1","2000","2000","","super@123","-3000","","0489","","","Bills","0","","");
INSERT INTO daily VALUES("368","NIS542018","","23-06-2018","50000","","06","2018","8","","laundry","0","","","0","super@123","","","","Paul","","","0","","");
INSERT INTO daily VALUES("369","NIS542018","","23-06-2018","46000","","06","2018","8","","laundry debts","1","46000","","0","super@123","","","","Paul","","","","","");
INSERT INTO daily VALUES("370","NIS542018","","23-06-2018","0","","06","2018","8","","laundry debts","1","0","","0","super@123","","","","Paul","","","","","");
INSERT INTO daily VALUES("371","NIS542018","","23-06-2018","0","","06","2018","8","","laundry debts","1","0","","0","super@123","","","","Paul","","","","","");
INSERT INTO daily VALUES("372","NIS542018","","23-06-2018","0","","06","2018","8","","laundry debts","1","0","","0","super@123","","","","Paul","","","","","");
INSERT INTO daily VALUES("373","","","26-06-2018","80000","","06","2018","3","12:13:18"," Bill","1","80000","80000","","kenne","0","","0490","","","Bills","","","");
INSERT INTO daily VALUES("374","","","26-06-2018","","","06","2018","3","12:16:29"," Bill","1","","","","kenne","-75000","","","","","Bills","","","");
INSERT INTO daily VALUES("375","","","26-06-2018","5000","","06","2018","3","12:17:50"," Bill","1","5000","5000","","kenne","-5000","","0491","","","Bills","","","");
INSERT INTO daily VALUES("376","2","","26-06-2018","70000","","06","2018","3","12:21:22"," Bill","1","70000","70000","-5000","kenne","5000","-5000","20180492","","","Bills","","","");
INSERT INTO daily VALUES("377","3","","26-06-2018","0","","06","2018","3","12:21:54"," Bill","1","2000","2000","2000","kenne","","2000","20180493","Guy Daneil","","Bills","0","","35");
INSERT INTO daily VALUES("378","5","","26-06-2018","80000","","06","2018","3","12:23:11"," Bill","1","80000","80000","-10000","kenne","10000","-10000","20180494","","","Bills","","","");
INSERT INTO daily VALUES("379","","","26-06-2018","20000","","06","2018","3","12:32:23"," Bill","1","20000","20000","","kenne","0","","0495","","","Bills","","","");
INSERT INTO daily VALUES("380","","","26-06-2018","97500","","06","2018","3","12:38:44"," Bill","1","97500","97500","","kenne","-2500","","0496","","","Bills","","","");
INSERT INTO daily VALUES("382","4","","26-06-2018","4000","","06","2018","3","12:56:12"," Bill","1","4000","4000","0","kenne","0","0","20180498","","","Bills","","","");
INSERT INTO daily VALUES("383","2","","26-06-2018","103000","","06","2018","3","01:04:19"," Bill","1","103000","103000","-2000","kenne","2000","-2000","20180499","","","Bills","","","");
INSERT INTO daily VALUES("384","1","","26-06-2018","30000","","06","2018","3","01:13:54"," Bill","1","32000","32000","0","kenne","","2000","20180500","Reno","","Bills","0","","37");
INSERT INTO daily VALUES("385","1","","26-06-2018","2000","","06","2018","0",""," Debts Payment","1","2000","2000","","","","","","Reno","","debts payment","","","");
INSERT INTO daily VALUES("386","","","26-06-2018","","","06","2018","","","","0","","","41000","","","","","Pa Tambi David","","","","","");
INSERT INTO daily VALUES("387","","","26-06-2018","50000","","06","2018","0",""," Debts Payment","1","50000","50000","","","","","","Pa Tambi David","","debts payment","","","");
INSERT INTO daily VALUES("388","12","","26-06-2018","16000","","06","2018","7","05:37:48"," Bill","1","16000","16000","0","tassa","0","0","20180501","","","Bills","","","");
INSERT INTO daily VALUES("389","12","","26-06-2018","13000","","06","2018","7","05:39:27"," Bill","1","13000","13000","-2000","tassa","2000","-2000","20180502","","","Bills","","","");
INSERT INTO daily VALUES("390","NIS572018","","27-06-2018","0","","06","2018","8","","laundry","0","","","0","super@123","","","","Felix","","","0","","");
INSERT INTO daily VALUES("391","NIS572018","","27-06-2018","5000","","06","2018","8","","laundry debts","1","5000","","0","super@123","","","","Felix","","","","","");
INSERT INTO daily VALUES("392","NIS582018","","27-06-2018","30000","","06","2018","8","","laundry","0","","","0","super@123","","","","Felix","","","0","","");
INSERT INTO daily VALUES("393","NIS582018","","27-06-2018","50000","","06","2018","8","","laundry debts","1","50000","","0","super@123","","","","Felix","","","","","");
INSERT INTO daily VALUES("394","GROSS","","27-06-2018","5000","","06","2018","2","03:10:30"," Bill","1","2300","2300","","super@123","-2700","","0503","","","Bills","0","","");
INSERT INTO daily VALUES("395","GROSS","","28-06-2018","25000","","06","2018","2","11:22:26"," Bill","1","22300","22300","","super@123","-2700","","0504","","","Bills","0","","");
INSERT INTO daily VALUES("396","20","","05-07-2019","578000","","07","2019","3","01:21:20"," Bill","1","578000","578000","0","bonecash","0","0","20190505","","","Bills","","","");
INSERT INTO daily VALUES("397","30","","05-07-2019","2000","","07","2019","3","02:59:24"," Bill","1","2000","2000","0","bonecash","0","0","20190506","","","Bills","","","");
INSERT INTO daily VALUES("398","44","","06-07-2019","77500","","07","2019","3","07:00:40"," Bill","1","77500","77500","0","bonecash","0","0","20190507","","","Bills","","","");
INSERT INTO daily VALUES("399","SUP","","07-07-2019","22000","","07","2019","2","07:42:44"," Bill","1","22000","22000","","super@123","-3000","","0508","","","Bills","","","");
INSERT INTO daily VALUES("400","SUP","","07-07-2019","13500","","07","2019","2","08:11:44"," Bill","1","13500","13500","","super@123","-1500","","0509","","","Bills","","","");
INSERT INTO daily VALUES("401","56","","07-07-2019","0","","07","2019","3","09:38:20"," Bill","1","17500","17500","17500","super@123","","17500","","Pa Tambi David","","Bills","0","","38");
INSERT INTO daily VALUES("402","56","","07-07-2019","0","","07","2019","3","09:39:33"," Bill","1","17500","17500","17500","super@123","","17500","20190510","Pa Tambi David","","Bills","0","","39");
INSERT INTO daily VALUES("403","51","","07-07-2019","0","","07","2019","3","09:40:19"," Bill","1","13000","13000","13000","super@123","","13000","20190511","Marga Motanga","","Bills","0","","40");
INSERT INTO daily VALUES("404","13","","07-07-2019","0","","07","2019","3","09:40:50"," Bill","1","165000","165000","165000","super@123","","165000","20190512","Musango Beach Hotel","","Bills","0","","41");
INSERT INTO daily VALUES("405","75","","07-07-2019","0","","07","2019","3","09:43:03"," Bill","1","15000","15000","15000","super@123","","15000","20190513","Marga Motanga","","Bills","0","","42");
INSERT INTO daily VALUES("406","56","","07-07-2019","0","","07","2019","3","09:50:56"," Bill","1","17500","17500","17500","super@123","","17500","20190514","Guy Daneil","","Bills","0","","43");
INSERT INTO daily VALUES("407","44","","07-07-2019","0","","07","2019","3","09:52:56"," Bill","1","77500","77500","77500","super@123","","77500","","Musango Beach Hotel","","Bills","0","","44");
INSERT INTO daily VALUES("408","77","","07-07-2019","0","","07","2019","3","09:54:14"," Bill","1","5000","5000","5000","super@123","","5000","","Pa Tambi David","","Bills","0","","45");
INSERT INTO daily VALUES("409","79","","07-07-2019","0","","07","2019","3","09:58:46"," Bill","1","15000","15000","15000","super@123","","15000","","Musango Beach Hotel","","Bills","0","","46");





CREATE TABLE `debtors` (
  `name` varchar(90) NOT NULL,
  `date` varchar(20) NOT NULL,
  `amt` varchar(12) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(23) NOT NULL,
  `owed` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO debtors VALUES("Musango Beach Hotel","15-09-2017","1000","3","","416500");
INSERT INTO debtors VALUES("Marga Motanga","17-08-2017","6555","5","","126500");
INSERT INTO debtors VALUES("Pa Tambi David","","","7","675757575","40000");
INSERT INTO debtors VALUES("Guy Daneil","","","8",".","51600");
INSERT INTO debtors VALUES("Reno","10-07-2018","","9","","178300");
INSERT INTO debtors VALUES("Pa Tambi David","26-06-2018","50000","10","","40000");





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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO disburse VALUES("14"," general","","25.00","TOP A","2","25","50.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("15"," general","","30.00","TOP P","2","20","50.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("16"," general","","35.00","TOP G","2","15","50.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("17"," general","","39.00","AMSTEL","2","1","40.00","1500","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("18"," general","","50.00","VIMTO","2","5","55.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("19"," general","","44.00","MALTA","2","16","60.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("20"," general","","35.00","SMALL GUINESS","2","10","45.00","1500","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("21"," general","","70.00","HEINDEKEN S","2","3","73.00","1000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("22"," general","","54.00","HEINDEKEN B","2","11","65.00","2000","02-05-2018","05","2018","","");
INSERT INTO disburse VALUES("23"," general","","10.00","AMSTEL","2","55","65.00","1500","14-06-2018","06","2018","","");
INSERT INTO disburse VALUES("24"," general","","80","BAVARIA","2","100","180.00","1000","14-06-2018","06","2018","","");
INSERT INTO disburse VALUES("25"," general","","65.00","HEINDEKEN B","2","100","165.00","2000","14-06-2018","06","2018","","");
INSERT INTO disburse VALUES("26"," general","","10","CHIPS","2","2","12.00","200","14-06-2018","06","2018","","");
INSERT INTO disburse VALUES("27"," general","","1000.00","amstel","2","500","1500.00","1000","22-06-2018","06","2018","","");
INSERT INTO disburse VALUES("28"," general","","800.00","my","2","500","1300.00","1000","23-06-2018","06","2018","","");
INSERT INTO disburse VALUES("29"," general","","1500","Baron De madrid","2","100","1600.00","2000","26-06-2018","06","2018","","");
INSERT INTO disburse VALUES("30"," general","","1000","black label","2","500","1500.00","40000","26-06-2018","06","2018","","");
INSERT INTO disburse VALUES("31"," general","","1000.00","MALTA","2","1000","2000.00","1000","27-06-2018","06","2018","","");
INSERT INTO disburse VALUES("32"," general","","0","maltina","2","5000","5000.00","1000","27-06-2018","06","2018","","");





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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

INSERT INTO finals VALUES("2","EXPORT","455","Beer","","250","1000","","","3","");
INSERT INTO finals VALUES("3","AMSTEL","455","Beer","","20","1000","","","3","");
INSERT INTO finals VALUES("5","Heindeken Big","700","Can","","97","1000","","","3","");
INSERT INTO finals VALUES("10","Mutzig","455","Beer","","950","1000","","","3","");
INSERT INTO finals VALUES("11","Blue Label","","whisky","","171","15000","","","3","");
INSERT INTO finals VALUES("12","Black Label","17000","Wisky","","696","50000","","","3","");
INSERT INTO finals VALUES("14","Top G","445","Top","","0","1000","","","3","");
INSERT INTO finals VALUES("16","Baron De Roi","900","Wine","","0","2000","","","3","");
INSERT INTO finals VALUES("17","Natural Fruit Juice","300","Juice","","1","1000","","","3","");
INSERT INTO finals VALUES("19","Top A","445","TOP","","30","1000","","","4","");
INSERT INTO finals VALUES("20","TOP C","445","TOP","","100","1000","","","4","");
INSERT INTO finals VALUES("21","EXPORT","455","Beer","","49","1000","","","4","");
INSERT INTO finals VALUES("22","AMSTEL","455","Beer","","36","1000","","","4","");
INSERT INTO finals VALUES("23","GUINESS SM","450","BEER","","41","1000","","","4","");
INSERT INTO finals VALUES("24","Heindeken Big","700","Can","","49","1000","","","4","");
INSERT INTO finals VALUES("25","Heindeken Small","400","Can","","49","800","","","4","");
INSERT INTO finals VALUES("26","Manyang","455","Beer","","18","600","","","4","");
INSERT INTO finals VALUES("27","Top P","445","Top","","40","1000","","","4","");
INSERT INTO finals VALUES("28","Mutzig","455","Beer","","45","1000","","","4","");
INSERT INTO finals VALUES("29","Blue Label","","whisky","","42","15000","","","4","");
INSERT INTO finals VALUES("30","Black Label","17000","Wisky","","48","50000","","","4","");
INSERT INTO finals VALUES("31","Blue Heaven","1500","Wine","","37","5000","","","4","");
INSERT INTO finals VALUES("32","Top G","445","Top","","49","1000","","","4","");
INSERT INTO finals VALUES("33","Supermonth 1l","250","Water","","49","1000","","","4","");
INSERT INTO finals VALUES("34","Baron De Roi","900","Wine","","46","2000","","","4","");
INSERT INTO finals VALUES("35","Natural Fruit Juice","300","Juice","","49","1000","","","4","");
INSERT INTO finals VALUES("36","Guiness Smooth","600","Beer","","49","2000","","","4","");
INSERT INTO finals VALUES("37","33 EXPORT","455","BEER","","13","1500","","","6","");
INSERT INTO finals VALUES("38","AMSTEL","455","Beer","","26","1000","","","6","");
INSERT INTO finals VALUES("40","TOP A","400","TOP","","5","1000","","","6","");
INSERT INTO finals VALUES("41","TOP P","400","TOP","","5","1000","","","6","");
INSERT INTO finals VALUES("42","TOP G","400","TOP ","","8","1000","","","6","");
INSERT INTO finals VALUES("45","33 EXPORT","455","BEER","","4","1500","","","2","");
INSERT INTO finals VALUES("46","AMSTEL","455","Beer","","1","1000","","","2","");
INSERT INTO finals VALUES("47","TOP G","400","TOP ","","5","1000","","","2","");
INSERT INTO finals VALUES("48","AMSTEL","455","Beer","","40","1000","","","75","");
INSERT INTO finals VALUES("49","AMSTEL","455","Beer","","450","1000","","","7","");
INSERT INTO finals VALUES("50","","455","","","51","1500","","","3","");
INSERT INTO finals VALUES("51","SMALL GUINESS","455","Beer","","1489","1000","","","3","");
INSERT INTO finals VALUES("52","Kadji","455","Beer","","82","1200","","","3","");
INSERT INTO finals VALUES("53","My","455","Beer","","75","1000","","","3","");
INSERT INTO finals VALUES("54","Grants","10000","Whisky","","10","35000","","","3","");
INSERT INTO finals VALUES("55","Top Tonic","455","Top","","1000","1000","","","3","");
INSERT INTO finals VALUES("56","Castel","455","Beer","","89","1000","","","3","");
INSERT INTO finals VALUES("57","Tangui 1L","400","Water","","464","1000","","","3","");
INSERT INTO finals VALUES("58","BIG GUINESS","455","BEER","","1002","1500","","","3","");
INSERT INTO finals VALUES("59","Malta","340","CANmalt","","905","1500","","","3","");
INSERT INTO finals VALUES("60","Coke","500","TOP","","652","1000","","","3","");
INSERT INTO finals VALUES("61","Red Label","10000","Whisky","","143","25000","","","3","");
INSERT INTO finals VALUES("62","Balis","7500","Whisky","","46","20000","","","3","");
INSERT INTO finals VALUES("63","HEINDEKEN S","400","CAN","","61","1000","","","3","");
INSERT INTO finals VALUES("64","HEINDEKEN B","800","CAN","","88","2000","","","3","");
INSERT INTO finals VALUES("65","BAVARIA","500","CAN","","142","1000","","","3","");
INSERT INTO finals VALUES("66","My","455","Beer","","200","1000","","","7","");
INSERT INTO finals VALUES("67","Renard","45000","Champagne","","100","85000","","","7","");
INSERT INTO finals VALUES("68","TOP Grenadine","400","TOP ","","25","1000","","","3","");
INSERT INTO finals VALUES("69","Baron De Madrid","1000","Wine","","500","2000","","","3","");
INSERT INTO finals VALUES("70","Renard","45000","Champagne","","100","85000","","","3","");
INSERT INTO finals VALUES("71","biscuit ","1000","","","0","2000","","","0","");
INSERT INTO finals VALUES("72","iomo","50","","","0","100","","","0","");
INSERT INTO finals VALUES("73","SMALL GUINESS","455","Beer","","200","1000","","","4","");
INSERT INTO finals VALUES("74","Maltina","455","Can ","","999","1000","","","3","");





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
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=latin1;

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
INSERT INTO history VALUES("201","09-06-2018","20180201","","","","\n","","");
INSERT INTO history VALUES("202","09-06-2018","20180202","","","","\n","","");
INSERT INTO history VALUES("203","","0203","","","","","","");
INSERT INTO history VALUES("204","","0204","","","","","","");
INSERT INTO history VALUES("205","09-06-2018","20180205","","","","\n","","");
INSERT INTO history VALUES("206","","0206","","","","","","");
INSERT INTO history VALUES("207","","0207","","","","","","");
INSERT INTO history VALUES("208","","0208","","","","","","");
INSERT INTO history VALUES("209","","0209","","","","","","");
INSERT INTO history VALUES("210","","0210","","","","","","");
INSERT INTO history VALUES("211","","0211","","","","","","");
INSERT INTO history VALUES("212","","0212","","","","","","");
INSERT INTO history VALUES("213","","0213","","","","","","");
INSERT INTO history VALUES("214","","0214","","","","","","");
INSERT INTO history VALUES("215","","0215","","","","","","");
INSERT INTO history VALUES("216","","0216","","","","","","");
INSERT INTO history VALUES("217","","0217","","","","","","");
INSERT INTO history VALUES("218","","0218","","","","","","");
INSERT INTO history VALUES("219","","0219","","super@123","","","","");
INSERT INTO history VALUES("220","","0220","","super@123","","","","");
INSERT INTO history VALUES("221","","0221","","yonga","","","","");
INSERT INTO history VALUES("222","","0222","","Balemba ","","","","");
INSERT INTO history VALUES("223","","0223","","corazon","","","","");
INSERT INTO history VALUES("224","","0224","","","","","","");
INSERT INTO history VALUES("225","","0225","","","","","","");
INSERT INTO history VALUES("226","","0226","","","","","","");
INSERT INTO history VALUES("227","","0227","","","","","","");
INSERT INTO history VALUES("228","","0228","","","","","","");
INSERT INTO history VALUES("229","","0229","","","","","","");
INSERT INTO history VALUES("230","","0230","","","","","","");
INSERT INTO history VALUES("231","","0231","","","","","","");
INSERT INTO history VALUES("232","","0232","","","","","","");
INSERT INTO history VALUES("233","","0233","","","","","","");
INSERT INTO history VALUES("234","","0234","","","","","","");
INSERT INTO history VALUES("235","","0235","","","","","","");
INSERT INTO history VALUES("236","","0236","","","","","","");
INSERT INTO history VALUES("237","","0237","","","","","","");
INSERT INTO history VALUES("238","","0238","","","","","","");
INSERT INTO history VALUES("239","","0239","","","","","","");
INSERT INTO history VALUES("240","","0240","","","","","","");
INSERT INTO history VALUES("241","","0241","","","","","","");
INSERT INTO history VALUES("242","","0242","","","","","","");
INSERT INTO history VALUES("243","","0243","","","","","","");
INSERT INTO history VALUES("244","","0244","","","","","","");
INSERT INTO history VALUES("245","","0245","","","","","","");
INSERT INTO history VALUES("246","","0246","","","","","","");
INSERT INTO history VALUES("247","","0247","","","","","","");
INSERT INTO history VALUES("248","","0248","","","","","","");
INSERT INTO history VALUES("249","","0249","","","","","","");
INSERT INTO history VALUES("250","","0250","","","","","","");
INSERT INTO history VALUES("251","","0251","","","","","","");
INSERT INTO history VALUES("252","","0252","","","","","","");
INSERT INTO history VALUES("253","","0253","","","","","","");
INSERT INTO history VALUES("254","","0254","","","","","","");
INSERT INTO history VALUES("255","","0255","","","","","","");
INSERT INTO history VALUES("256","","0256","","","","","","");
INSERT INTO history VALUES("257","","0257","","","","","","");
INSERT INTO history VALUES("258","","0258","","","","","","");
INSERT INTO history VALUES("259","","0259","","","","","","");
INSERT INTO history VALUES("260","","0260","","","","","","");
INSERT INTO history VALUES("261","","0261","","","","","","");
INSERT INTO history VALUES("262","","0262","","","","","","");
INSERT INTO history VALUES("263","","0263","","","","","","");
INSERT INTO history VALUES("264","","0264","","","","","","");
INSERT INTO history VALUES("265","","0265","","","","","","");
INSERT INTO history VALUES("266","","0266","","","","","","");
INSERT INTO history VALUES("267","","0267","","","","","","");
INSERT INTO history VALUES("268","","0268","","","","","","");
INSERT INTO history VALUES("269","","0269","","","","","","");
INSERT INTO history VALUES("270","","0270","","","","","","");
INSERT INTO history VALUES("271","","0271","","","","","","");
INSERT INTO history VALUES("272","","0272","","","","","","");
INSERT INTO history VALUES("273","","0273","","","","","","");
INSERT INTO history VALUES("274","","0274","","","","","","");
INSERT INTO history VALUES("275","","0275","","","","","","");
INSERT INTO history VALUES("276","","0276","","","","","","");
INSERT INTO history VALUES("277","","0277","","","","","","");
INSERT INTO history VALUES("278","","0278","","","","","","");
INSERT INTO history VALUES("279","","0279","","","","","","");
INSERT INTO history VALUES("280","","0280","","","","","","");
INSERT INTO history VALUES("281","","0280","","","","","","");
INSERT INTO history VALUES("282","","0282","","","","","","");
INSERT INTO history VALUES("283","","0283","","","","","","");
INSERT INTO history VALUES("284","","0284","","","","","","");
INSERT INTO history VALUES("285","","0285","","","","","","");
INSERT INTO history VALUES("286","","0286","","","","","","");
INSERT INTO history VALUES("287","","0287","","","","","","");
INSERT INTO history VALUES("288","","0288","","","","","","");
INSERT INTO history VALUES("289","","0289","","","","","","");
INSERT INTO history VALUES("290","","0290","","","","","","");
INSERT INTO history VALUES("291","","0291","","","","","","");
INSERT INTO history VALUES("292","","0292","","","","","","");
INSERT INTO history VALUES("293","","0293","","","","","","");
INSERT INTO history VALUES("294","","0294","","Balemba ","","","","");
INSERT INTO history VALUES("295","","0295","","","","","","");
INSERT INTO history VALUES("296","","0296","","","","","","");
INSERT INTO history VALUES("297","","0297","","","","","","");
INSERT INTO history VALUES("298","","0298","","","","","","");
INSERT INTO history VALUES("299","","0299","","","","","","");
INSERT INTO history VALUES("300","","0300","","","","","","");
INSERT INTO history VALUES("301","","0301","","","","","","");
INSERT INTO history VALUES("302","15-06-2018","20180302","","","","\n","","");
INSERT INTO history VALUES("303","15-06-2018","20180303","","","","\n","","");
INSERT INTO history VALUES("304","15-06-2018","20180304","","","","\n","","");
INSERT INTO history VALUES("305","15-06-2018","20180305","","","","\n","","");
INSERT INTO history VALUES("306","15-06-2018","20180306","","","","\n","","");
INSERT INTO history VALUES("307","15-06-2018","20180307","","","","\n","","");
INSERT INTO history VALUES("308","15-06-2018","20180308","","","","\n","","");
INSERT INTO history VALUES("309","15-06-2018","20180309","","","","\n","","");
INSERT INTO history VALUES("310","15-06-2018","20180310","","","","\n","","");
INSERT INTO history VALUES("311","15-06-2018","20180311","","","","\n","","");
INSERT INTO history VALUES("312","15-06-2018","20180312","","","","\n","","");
INSERT INTO history VALUES("313","15-06-2018","20180313","","","","\n","","");
INSERT INTO history VALUES("314","15-06-2018","20180314","","","","\n","","");
INSERT INTO history VALUES("315","15-06-2018","20180315","","","","\n","","");
INSERT INTO history VALUES("316","15-06-2018","20180316","","","","\n","","");
INSERT INTO history VALUES("317","","0317","","fembe","","","","");
INSERT INTO history VALUES("318","","0318","","","","","","");
INSERT INTO history VALUES("319","","0319","","","","","","");
INSERT INTO history VALUES("320","","0320","","","","","","");
INSERT INTO history VALUES("321","","0321","","","","","","");
INSERT INTO history VALUES("322","","0322","","","","","","");
INSERT INTO history VALUES("323","","0323","","","","","","");
INSERT INTO history VALUES("324","","0324","","yonga","","","","");
INSERT INTO history VALUES("325","","0325","","","","","","");
INSERT INTO history VALUES("326","","0326","","Balemba ","","","","");
INSERT INTO history VALUES("327","","0327","","","","","","");
INSERT INTO history VALUES("328","","0328","","yonga","","","","");
INSERT INTO history VALUES("329","16-06-2018","20180329","","","","\n","","");
INSERT INTO history VALUES("330","16-06-2018","20180330","","","","\n","","");
INSERT INTO history VALUES("331","16-06-2018","20180331","","","","\n","","");
INSERT INTO history VALUES("332","16-06-2018","20180332","","","","\n","","");
INSERT INTO history VALUES("333","16-06-2018","20180333","","","","\n","","");
INSERT INTO history VALUES("334","16-06-2018","20180334","","","","\n","","");
INSERT INTO history VALUES("335","16-06-2018","20180335","","","","\n","","");
INSERT INTO history VALUES("336","","0336","","","","","","");
INSERT INTO history VALUES("337","","0337","","","","","","");
INSERT INTO history VALUES("338","","0338","","","","","","");
INSERT INTO history VALUES("339","16-06-2018","20180339","","","","\n","","");
INSERT INTO history VALUES("340","16-06-2018","20180340","","","","\n","","");
INSERT INTO history VALUES("341","","0341","","","","","","");
INSERT INTO history VALUES("342","","0342","","","","","","");
INSERT INTO history VALUES("343","16-06-2018","20180343","","","","\n","","");
INSERT INTO history VALUES("344","","0344","","","","","","");
INSERT INTO history VALUES("345","","0345","","","","","","");
INSERT INTO history VALUES("346","","0346","","","","","","");
INSERT INTO history VALUES("347","","0347","","","","","","");
INSERT INTO history VALUES("348","18-06-2018","20180348","","","","\n","","");
INSERT INTO history VALUES("349","18-06-2018","20180349","","","","\n","","");
INSERT INTO history VALUES("350","18-06-2018","20180350","","","","\n","","");
INSERT INTO history VALUES("351","18-06-2018","20180351","","","","\n","","");
INSERT INTO history VALUES("352","","0352","","","","","","");
INSERT INTO history VALUES("353","18-06-2018","20180353","","","","\n","","");
INSERT INTO history VALUES("354","18-06-2018","20180354","","","","\n","","");
INSERT INTO history VALUES("355","18-06-2018","20180355","","","","\n","","");
INSERT INTO history VALUES("356","18-06-2018","20180356","","","","\n","","");
INSERT INTO history VALUES("357","18-06-2018","20180357","","","","\n","","");
INSERT INTO history VALUES("358","18-06-2018","20180358","","","","\n","","");
INSERT INTO history VALUES("359","","0359","","","","","","");
INSERT INTO history VALUES("360","18-06-2018","20180360","","","","\n","","");
INSERT INTO history VALUES("361","","0361","","","","","","");
INSERT INTO history VALUES("362","18-06-2018","20180362","","","","\n","","");
INSERT INTO history VALUES("363","18-06-2018","20180363","","","","\n","","");
INSERT INTO history VALUES("364","18-06-2018","20180364","","","","\n","","");
INSERT INTO history VALUES("365","18-06-2018","20180365","","","","\n","","");
INSERT INTO history VALUES("366","18-06-2018","20180366","","","","\n","","");
INSERT INTO history VALUES("367","18-06-2018","20180367","","","","\n","","");
INSERT INTO history VALUES("368","18-06-2018","20180368","","","","\n","","");
INSERT INTO history VALUES("369","18-06-2018","20180369","","","","\n","","");
INSERT INTO history VALUES("370","18-06-2018","20180370","","","","\n","","");
INSERT INTO history VALUES("371","18-06-2018","20180371","","","","\n","","");
INSERT INTO history VALUES("372","18-06-2018","20180372","","","","\n","","");
INSERT INTO history VALUES("373","18-06-2018","20180373","","","","\n","","");
INSERT INTO history VALUES("374","18-06-2018","20180374","","","","\n","","");
INSERT INTO history VALUES("375","18-06-2018","20180375","","","","\n","","");
INSERT INTO history VALUES("376","18-06-2018","20180376","","","","\n","","");
INSERT INTO history VALUES("377","18-06-2018","20180377","","","","\n","","");
INSERT INTO history VALUES("378","18-06-2018","20180378","","","","\n","","");
INSERT INTO history VALUES("379","18-06-2018","20180379","","","","\n","","");
INSERT INTO history VALUES("380","18-06-2018","20180380","","","","\n","","");
INSERT INTO history VALUES("381","18-06-2018","20180381","","","","\n","","");
INSERT INTO history VALUES("382","18-06-2018","20180382","","","","\n","","");
INSERT INTO history VALUES("383","18-06-2018","20180383","","","","\n","","");
INSERT INTO history VALUES("384","18-06-2018","20180384","","","","\n","","");
INSERT INTO history VALUES("385","18-06-2018","20180385","","","","\n","","");
INSERT INTO history VALUES("386","18-06-2018","20180386","","","","\n","","");
INSERT INTO history VALUES("387","","0387","","","","","","");
INSERT INTO history VALUES("388","","0388","","","","","","");
INSERT INTO history VALUES("389","","0389","","","","","","");
INSERT INTO history VALUES("390","","0390","","","","","","");
INSERT INTO history VALUES("391","","0391","","","","","","");
INSERT INTO history VALUES("392","","0392","","","","","","");
INSERT INTO history VALUES("393","19-06-2018","20180393","","","","\n","","");
INSERT INTO history VALUES("394","","0394","","","","","","");
INSERT INTO history VALUES("395","","0395","","","","","","");
INSERT INTO history VALUES("396","","0396","","","","","","");
INSERT INTO history VALUES("397","","0397","","","","","","");
INSERT INTO history VALUES("398","","0398","","","","","","");
INSERT INTO history VALUES("399","","0399","","","","","","");
INSERT INTO history VALUES("400","","0400","","","","","","");
INSERT INTO history VALUES("401","","0401","","","","","","");
INSERT INTO history VALUES("402","","0402","","","","","","");
INSERT INTO history VALUES("403","","0403","","","","","","");
INSERT INTO history VALUES("404","","0404","","","","","","");
INSERT INTO history VALUES("405","","0405","","","","","","");
INSERT INTO history VALUES("406","20-06-2018","20180406","","","","\n","","");
INSERT INTO history VALUES("407","20-06-2018","20180407","","","","\n","","");
INSERT INTO history VALUES("408","20-06-2018","20180408","","","","\n","","");
INSERT INTO history VALUES("409","","0409","","","","","","");
INSERT INTO history VALUES("410","20-06-2018","20180410","","","","\n","","");
INSERT INTO history VALUES("411","21-06-2018","20180411","","","","\n","","");
INSERT INTO history VALUES("412","","0412","","","","","","");
INSERT INTO history VALUES("413","","0413","","","","","","");
INSERT INTO history VALUES("414","21-06-2018","20180414","","","","\n","","");
INSERT INTO history VALUES("415","21-06-2018","20180415","","","","\n","","");
INSERT INTO history VALUES("416","21-06-2018","20180416","","","","\n","","");
INSERT INTO history VALUES("417","21-06-2018","20180417","","","","\n","","");
INSERT INTO history VALUES("418","21-06-2018","20180418","","","","\n","","");
INSERT INTO history VALUES("419","","0419","","","","","","");
INSERT INTO history VALUES("420","21-06-2018","20180420","","","","\n","","");
INSERT INTO history VALUES("421","","0421","","","","","","");
INSERT INTO history VALUES("422","21-06-2018","20180422","","","","\n","","");
INSERT INTO history VALUES("423","","0423","","","","","","");
INSERT INTO history VALUES("424","21-06-2018","20180424","","","","\n","","");
INSERT INTO history VALUES("425","","0425","","","","","","");
INSERT INTO history VALUES("426","","0426","","","","","","");
INSERT INTO history VALUES("427","","0427","","","","","","");
INSERT INTO history VALUES("428","","0428","","","","","","");
INSERT INTO history VALUES("429","","0429","","","","","","");
INSERT INTO history VALUES("430","","0430","","","","","","");
INSERT INTO history VALUES("431","","0431","","","","","","");
INSERT INTO history VALUES("432","","0432","","","","","","");
INSERT INTO history VALUES("433","22-06-2018","20180433","","","","\n","","");
INSERT INTO history VALUES("434","22-06-2018","20180434","","","","\n","","");
INSERT INTO history VALUES("435","","0435","","","","","","");
INSERT INTO history VALUES("436","","0436","","","","","","");
INSERT INTO history VALUES("437","","0437","","","","","","");
INSERT INTO history VALUES("438","","0438","","","","","","");
INSERT INTO history VALUES("439","","0439","","","","","","");
INSERT INTO history VALUES("440","","0440","","","","","","");
INSERT INTO history VALUES("441","","0441","","","","","","");
INSERT INTO history VALUES("442","","0442","","","","","","");
INSERT INTO history VALUES("443","22-06-2018","20180443","","","","\n","","");
INSERT INTO history VALUES("444","","0444","","","","","","");
INSERT INTO history VALUES("445","","0445","","","","","","");
INSERT INTO history VALUES("446","22-06-2018","20180446","","","","\n","","");
INSERT INTO history VALUES("447","22-06-2018","20180447","","","","\n","","");
INSERT INTO history VALUES("448","","0448","","","","","","");
INSERT INTO history VALUES("449","22-06-2018","20180449","","","","\n","","");
INSERT INTO history VALUES("450","22-06-2018","20180450","","","","\n","","");
INSERT INTO history VALUES("451","22-06-2018","20180451","","","","\n","","");
INSERT INTO history VALUES("452","","0452","","","","","","");
INSERT INTO history VALUES("453","","0453","","","","","","");
INSERT INTO history VALUES("454","","0454","","","","","","");
INSERT INTO history VALUES("455","22-06-2018","20180455","","","","\n","","");
INSERT INTO history VALUES("456","","0456","","","","","","");
INSERT INTO history VALUES("457","23-06-2018","20180457","","","","\n","","");
INSERT INTO history VALUES("458","23-06-2018","20180458","","","","\n","","");
INSERT INTO history VALUES("459","23-06-2018","20180459","","","","\n","","");
INSERT INTO history VALUES("460","23-06-2018","20180460","","","","\n","","");
INSERT INTO history VALUES("461","23-06-2018","20180461","","","","\n","","");
INSERT INTO history VALUES("462","23-06-2018","20180462","","","","\n","","");
INSERT INTO history VALUES("463","23-06-2018","20180463","","","","\n","","");
INSERT INTO history VALUES("464","23-06-2018","20180464","","","","\n","","");
INSERT INTO history VALUES("465","23-06-2018","20180465","","","","\n","","");
INSERT INTO history VALUES("466","23-06-2018","20180466","","","","\n","","");
INSERT INTO history VALUES("467","23-06-2018","20180467","","","","\n","","");
INSERT INTO history VALUES("468","23-06-2018","20180468","","","","\n","","");
INSERT INTO history VALUES("469","23-06-2018","20180469","","","","\n","","");
INSERT INTO history VALUES("470","23-06-2018","20180470","","","","\n","","");
INSERT INTO history VALUES("471","23-06-2018","20180471","","","","\n","","");
INSERT INTO history VALUES("472","23-06-2018","20180472","","","","\n","","");
INSERT INTO history VALUES("473","23-06-2018","20180473","","","","\n","","");
INSERT INTO history VALUES("474","23-06-2018","20180474","","","","\n","","");
INSERT INTO history VALUES("475","","0475","","","","","","");
INSERT INTO history VALUES("476","","0476","","","","","","");
INSERT INTO history VALUES("477","23-06-2018","20180477","","","","\n","","");
INSERT INTO history VALUES("478","23-06-2018","20180478","","","","\n","","");
INSERT INTO history VALUES("479","23-06-2018","20180479","","","","\n","","");
INSERT INTO history VALUES("480","23-06-2018","20180480","","","","\n","","");
INSERT INTO history VALUES("481","","0481","","","","","","");
INSERT INTO history VALUES("482","","0482","","","","","","");
INSERT INTO history VALUES("483","","0483","","","","","","");
INSERT INTO history VALUES("484","","0484","","","","","","");
INSERT INTO history VALUES("485","","0485","","","","","","");
INSERT INTO history VALUES("486","23-06-2018","20180486","","","","\n","","");
INSERT INTO history VALUES("487","23-06-2018","20180487","","","","\n","","");
INSERT INTO history VALUES("488","","0488","","super@123","","","","");
INSERT INTO history VALUES("489","","0489","","super@123","","","","");
INSERT INTO history VALUES("490","","0490","","","","","","");
INSERT INTO history VALUES("491","","0491","","","","","","");
INSERT INTO history VALUES("492","26-06-2018","20180492","","","","\n","","");
INSERT INTO history VALUES("493","26-06-2018","20180493","","","","\n","","");
INSERT INTO history VALUES("494","26-06-2018","20180494","","","","\n","","");
INSERT INTO history VALUES("495","","0495","","","","","","");
INSERT INTO history VALUES("496","","0496","","","","","","");
INSERT INTO history VALUES("497","26-06-2018","20180497","","","","\n","","");
INSERT INTO history VALUES("498","26-06-2018","20180498","","","","\n","","");
INSERT INTO history VALUES("499","26-06-2018","20180499","","","","\n","","");
INSERT INTO history VALUES("500","26-06-2018","20180500","","","","\n","","");
INSERT INTO history VALUES("501","26-06-2018","20180501","","","","\n","","");
INSERT INTO history VALUES("502","26-06-2018","20180502","","","","\n","","");
INSERT INTO history VALUES("503","","0503","","super@123","","","","");
INSERT INTO history VALUES("504","","0504","","super@123","","","","");
INSERT INTO history VALUES("505","05-07-2019","20190505","","","","\n","","");
INSERT INTO history VALUES("506","05-07-2019","20190506","","","","\n","","");
INSERT INTO history VALUES("507","06-07-2019","20190507","","","","\n","","");
INSERT INTO history VALUES("508","","0508","","","","","","");
INSERT INTO history VALUES("509","","0509","","","","","","");
INSERT INTO history VALUES("510","07-07-2019","20190510","","","","\n","","");
INSERT INTO history VALUES("511","07-07-2019","20190511","","","","\n","","");
INSERT INTO history VALUES("512","07-07-2019","20190512","","","","\n","","");
INSERT INTO history VALUES("513","07-07-2019","20190513","","","","\n","","");
INSERT INTO history VALUES("514","07-07-2019","20190514","","","","\n","","");





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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

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
INSERT INTO sectors VALUES("34","Bar two waiter","0","POS/Cash/index.php?area=2&roll=SUP","0","0");





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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

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
INSERT INTO supermkt VALUES("33","MAXI NUIT","","COSMETICS","","60","1200","3258561670652","","0");
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

INSERT INTO truck VALUES("1","","","33 EXPORT","100","2","20","80.00","1500","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("2","","","AMSTEL","100","2","30","70.00","1500","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("3","","","BIG GUINESS","100","2","20","80.00","2000","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("4","","","SMALL GUINESS","100","2","25","75.00","1500","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("5","","","TOP A","100","2","30","70.00","1000","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("6","","","TOP P","100","2","30","70.00","1000","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("7","","","TOP G","100","2","20","80.00","1000","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("8","","","VIMTO","100","2","25","75.00","1000","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("9","","","MALTA","100","2","25","75.00","1000","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("10","","","HEINDEKEN S","100","2","15","85.00","1000","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("11","","","BAVARIA","100","2","20","80.00","1000","11-03-2018","03","2018","3","","0","19:56:03");
INSERT INTO truck VALUES("12","","","HEINDEKEN B","100","2","15","85.00","2000","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("13","","","33 EXPORT","80.00","2","12","68.00","1500","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("14","","","AMSTEL","70.00","2","11","59.00","1500","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("15","","","BIG GUINESS","80.00","2","13","67.00","2000","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("16","","","SMALL GUINESS","75.00","2","14","61.00","1500","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("17","","","TOP A","70.00","2","11","59.00","1000","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("18","","","TOP P","70.00","2","12","58.00","1000","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("19","","","TOP G","80.00","2","11","69.00","1000","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("20","","","VIMTO","75.00","2","12","63.00","1000","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("21","","","MALTA","75.00","2","9","66.00","1000","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("22","","","HEINDEKEN S","85.00","2","8","77.00","1000","11-03-2018","03","2018","4","","0","20:01:40");
INSERT INTO truck VALUES("23","","","33 EXPORT","68.00","2","3","65.00","1500","11-03-2018","03","2018","3","","0","20:03:09");
INSERT INTO truck VALUES("24","","","AMSTEL","59.00","2","3","56.00","1500","11-03-2018","03","2018","3","","0","20:03:09");
INSERT INTO truck VALUES("25","","","HEINDEKEN B","85.00","2","10","75.00","2000","11-03-2018","03","2018","3","","0","20:03:09");
INSERT INTO truck VALUES("26","","","HEINDEKEN B","75.00","2","10","65.00","2000","11-03-2018","03","2018","3","","0","20:09:07");
INSERT INTO truck VALUES("27","","","33 EXPORT","65.00","2","5","60.00","1500","14-03-2018","03","2018","6","","0","9:58:46");
INSERT INTO truck VALUES("28","","","AMSTEL","56.00","2","6","50.00","1500","14-03-2018","03","2018","6","","0","9:58:46");
INSERT INTO truck VALUES("29","","","BIG GUINESS","67.00","2","7","60.00","2000","14-03-2018","03","2018","6","","0","9:58:46");
INSERT INTO truck VALUES("30","","","33 EXPORT","65.00","2","5","60.00","1500","15-03-2018","03","2018","4","","0","20:54:19");
INSERT INTO truck VALUES("31","","","AMSTEL","56.00","2","6","50.00","1500","15-03-2018","03","2018","4","","0","20:54:19");
INSERT INTO truck VALUES("32","","","BIG GUINESS","67.00","2","7","60.00","2000","15-03-2018","03","2018","4","","0","20:54:19");
INSERT INTO truck VALUES("33","","","SMALL GUINESS","61.00","2","6","55.00","1500","15-03-2018","03","2018","4","","0","20:54:19");
INSERT INTO truck VALUES("34","","","TOP A","59.00","2","9","50.00","1000","15-03-2018","03","2018","4","","0","20:54:19");
INSERT INTO truck VALUES("35","","","TOP P","58.00","2","8","50.00","1000","15-03-2018","03","2018","4","","0","20:54:19");
INSERT INTO truck VALUES("36","","","TOP G","69.00","2","9","60.00","1000","15-03-2018","03","2018","4","","0","20:54:19");
INSERT INTO truck VALUES("37","","","33 EXPORT","60.00","2","10","50.00","1500","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("38","","","AMSTEL","50.00","2","10","40.00","1500","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("39","","","BIG GUINESS","60.00","2","10","50.00","2000","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("40","","","SMALL GUINESS","55.00","2","5","50.00","1500","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("41","","","TOP A","50.00","2","9","41.00","1000","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("42","","","TOP P","50.00","2","10","40.00","1000","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("43","","","TOP G","60.00","2","12","48.00","1000","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("44","","","VIMTO","63.00","2","13","50.00","1000","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("45","","","MALTA","66.00","2","6","60.00","1000","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("46","","","HEINDEKEN S","77.00","2","7","70.00","1000","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("47","","","BAVARIA","80.00","2","10","70.00","1000","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("48","","","HEINDEKEN B","65.00","2","11","54.00","2000","17-03-2018","03","2018","3","","0","21:05:33");
INSERT INTO truck VALUES("49","","","33 EXPORT","60.00","2","10","50.00","1500","17-03-2018","03","2018","4","","0","21:21:35");
INSERT INTO truck VALUES("50","","","AMSTEL","50.00","2","10","40.00","1500","17-03-2018","03","2018","4","","0","21:21:35");
INSERT INTO truck VALUES("51","","","BIG GUINESS","60.00","2","10","50.00","2000","17-03-2018","03","2018","4","","0","21:21:35");
INSERT INTO truck VALUES("52","","","SMALL GUINESS","50.00","2","10","40.00","1500","17-03-2018","03","2018","4","","0","21:21:35");
INSERT INTO truck VALUES("53","","","TOP A","41.00","2","11","30.00","1000","17-03-2018","03","2018","4","","0","21:21:35");
INSERT INTO truck VALUES("54","","","TOP P","40.00","2","5","35.00","1000","17-03-2018","03","2018","4","","0","21:21:35");
INSERT INTO truck VALUES("55","","","33 EXPORT","60.00","2","10","50.00","1500","17-03-2018","03","2018","4","","0","21:23:03");
INSERT INTO truck VALUES("56","admin12","","33 EXPORT","60.00","2","10","50.00","1500","04-04-2018","04","2018","6","","0","13:52:17");
INSERT INTO truck VALUES("57","admin12","","AMSTEL","50.00","2","10","40.00","1500","04-04-2018","04","2018","6","","0","13:52:17");
INSERT INTO truck VALUES("58","admin12","","TOP A","30.00","2","5","25.00","1000","04-04-2018","04","2018","6","","0","13:52:17");
INSERT INTO truck VALUES("59","admin12","","TOP P","35.00","2","5","30.00","1000","04-04-2018","04","2018","6","","0","13:52:17");
INSERT INTO truck VALUES("60","admin12","","TOP G","48.00","2","8","40.00","1000","04-04-2018","04","2018","6","","0","13:52:17");
INSERT INTO truck VALUES("61","","","33 EXPORT","60.00","2","16","44.00","1500","10-04-2018","04","2018","6","","0","10:04:56");
INSERT INTO truck VALUES("62","","","AMSTEL","50.00","2","10","40.00","1500","10-04-2018","04","2018","6","","0","10:04:56");
INSERT INTO truck VALUES("63","","","BIG GUINESS","60.00","2","16","44.00","2000","10-04-2018","04","2018","6","","0","10:04:56");
INSERT INTO truck VALUES("64","","","SMALL GUINESS","40.00","2","5","35.00","1500","10-04-2018","04","2018","6","","0","10:04:56");
INSERT INTO truck VALUES("65","","","MALTA","60.00","2","16","44.00","1000","10-04-2018","04","2018","6","","0","10:04:56");
INSERT INTO truck VALUES("66","","","33 EXPORT","44.00","2","4","40.00","1500","10-04-2018","04","2018","2","","0","16:23:00");
INSERT INTO truck VALUES("67","","","AMSTEL","40.00","2","1","39.00","1500","10-04-2018","04","2018","2","","0","16:23:00");
INSERT INTO truck VALUES("68","","","TOP G","40.00","2","5","35.00","1000","10-04-2018","04","2018","2","","0","16:23:00");
INSERT INTO truck VALUES("69"," ","","500","butter","2","80","420.00","5000","14-06-2018","06","2018","","80","0","12:37:54");
INSERT INTO truck VALUES("70"," ","","30","dadu","2","20","10.00","8000","14-06-2018","06","2018","","20","0","12:49:54");
INSERT INTO truck VALUES("71"," ","","20","lb link","2","20","0.00","3000","14-06-2018","06","2018","","20","0","12:49:54");
INSERT INTO truck VALUES("72"," ","","10.00","dadu","2","5","5.00","8000","14-06-2018","06","2018","","25","0","13:19:27");
INSERT INTO truck VALUES("73"," ","","1000","sugar","2","500","500.00","950","14-06-2018","06","2018","","500","0","13:24:31");
INSERT INTO truck VALUES("76","","","AMSTEL","40.00","2","20","20.00","1500","14-06-2018","06","2018","7","","0","13:48:37");
INSERT INTO truck VALUES("77","","","AMSTEL","40.00","2","20","20.00","1500","14-06-2018","06","2018","7","","0","13:49:49");
INSERT INTO truck VALUES("78","","","AMSTEL","20.00","2","5","15.00","1500","14-06-2018","06","2018","7","","0","13:53:49");
INSERT INTO truck VALUES("79","","","AMSTEL","15.00","2","5","10.00","1500","14-06-2018","06","2018","3","","0","13:54:38");
INSERT INTO truck VALUES("80"," ","","5.00","dadu","2","4","1.00","8000","14-06-2018","06","2018","","29","0","14:08:30");
INSERT INTO truck VALUES("81"," ","","43","olives","2","23","20.00","1000","14-06-2018","06","2018","","23","0","14:32:40");
INSERT INTO truck VALUES("82"," ","","500.00","sugar","2","100","400.00","950","15-06-2018","06","2018","","595","0","14:30:16");
INSERT INTO truck VALUES("83"," ","","100","tangui 1L","2","50","50.00","400","15-06-2018","06","2018","","50","0","14:36:25");
INSERT INTO truck VALUES("84","","","TOP A","50.00","2","10","40.00","1000","16-06-2018","06","2018","3","","0","12:14:05");
INSERT INTO truck VALUES("85","","","33 EXPORT","40.00","2","30","10.00","1500","16-06-2018","06","2018","3","","0","13:25:08");
INSERT INTO truck VALUES("86","","","33 EXPORT","10.00","2","10","0.00","1500","16-06-2018","06","2018","3","","0","13:29:07");
INSERT INTO truck VALUES("87","","","SMALL GUINESS","45.00","2","15","30.00","1500","18-06-2018","06","2018","3","","0","13:16:35");
INSERT INTO truck VALUES("88","","","manyang","150","2","50","100.00","1000","18-06-2018","06","2018","3","","0","13:17:51");
INSERT INTO truck VALUES("89","","","kadji","500","2","100","400.00","1200","18-06-2018","06","2018","3","","0","13:20:59");
INSERT INTO truck VALUES("90","","","my","1000","2","100","900.00","1000","18-06-2018","06","2018","3","","0","13:26:06");
INSERT INTO truck VALUES("91","","","Grants","50","2","30","20.00","35000","18-06-2018","06","2018","3","","0","14:16:24");
INSERT INTO truck VALUES("92","","","export","1000","2","500","500.00","1000","18-06-2018","06","2018","3","","0","14:17:47");
INSERT INTO truck VALUES("93","","","SMALL GUINESS","1500","2","1000","500.00","1000","18-06-2018","06","2018","3","","0","14:17:47");
INSERT INTO truck VALUES("94","","","top tonic","100","2","50","50.00","1000","18-06-2018","06","2018","3","","0","14:17:47");
INSERT INTO truck VALUES("95","","","castel","1000","2","100","900.00","1000","18-06-2018","06","2018","3","","0","14:17:47");
INSERT INTO truck VALUES("96","","","tangui 1L","1000","2","500","500.00","1000","18-06-2018","06","2018","3","","0","14:17:47");
INSERT INTO truck VALUES("97","","","amstel","2000","2","1000","1000.00","1000","18-06-2018","06","2018","3","","0","14:17:47");
INSERT INTO truck VALUES("98","","","BIG GUINESS","1500","2","1000","500.00","1000","18-06-2018","06","2018","3","","0","14:18:52");
INSERT INTO truck VALUES("99","","","malta","2000","2","1000","1000.00","1500","18-06-2018","06","2018","3","","0","14:18:52");
INSERT INTO truck VALUES("100","","","coke","1000","2","700","300.00","1000","18-06-2018","06","2018","3","","0","14:18:52");
INSERT INTO truck VALUES("101","","","red label","50","2","50","0.00","25000","18-06-2018","06","2018","3","","0","14:18:52");
INSERT INTO truck VALUES("102","","","balis","50","2","30","20.00","20000","19-06-2018","06","2018","3","","0","12:23:07");
INSERT INTO truck VALUES("103","","","balis","50","2","40","10.00","20000","22-06-2018","06","2018","3","","0","14:40:06");
INSERT INTO truck VALUES("104","","","HEINDEKEN S","73.00","2","73","0.00","1000","22-06-2018","06","2018","3","","0","14:40:06");
INSERT INTO truck VALUES("105","","","HEINDEKEN B","165.00","2","100","65.00","2000","22-06-2018","06","2018","3","","0","14:40:06");
INSERT INTO truck VALUES("106","","","BAVARIA","180.00","2","150","30.00","1000","22-06-2018","06","2018","3","","0","14:40:06");
INSERT INTO truck VALUES("107","","","Grants","20.00","2","20","0.00","35000","22-06-2018","06","2018","3","","0","14:40:06");
INSERT INTO truck VALUES("108","","","red label","300.00","2","150","150.00","25000","22-06-2018","06","2018","3","","0","14:40:06");
INSERT INTO truck VALUES("109","","","blue label","300","2","200","100.00","15000","22-06-2018","06","2018","3","","0","14:40:06");
INSERT INTO truck VALUES("110","","","my","900.00","2","100","800.00","1000","23-06-2018","06","2018","7","","0","19:28:28");
INSERT INTO truck VALUES("111","","","my","900.00","2","100","800.00","1000","23-06-2018","06","2018","7","","0","19:32:44");
INSERT INTO truck VALUES("112","","","Renard","1000","2","100","900.00","85000","23-06-2018","06","2018","7","","0","19:59:25");
INSERT INTO truck VALUES("113","","","TOP Grenadine","50.00","2","30","20.00","1000","26-06-2018","06","2018","3","","0","13:17:18");
INSERT INTO truck VALUES("114","","","Castel","900.00","2","100","800.00","1000","26-06-2018","06","2018","3","","0","13:17:59");
INSERT INTO truck VALUES("115","","","SMALL GUINESS","500.00","2","500","0.00","1000","26-06-2018","06","2018","3","","0","13:18:33");
INSERT INTO truck VALUES("116","","","Baron De madrid","1600.00","2","500","1100.00","2000","26-06-2018","06","2018","3","","0","13:20:52");
INSERT INTO truck VALUES("117","","","black label","1500.00","2","700","800.00","40000","26-06-2018","06","2018","3","","0","13:24:42");
INSERT INTO truck VALUES("118","","","Renard","900.00","2","100","800.00","85000","26-06-2018","06","2018","3","","0","13:24:42");
INSERT INTO truck VALUES("119","","","BIG GUINESS","1000","2","50","950.00","1000","26-06-2018","06","2018","3","","0","13:24:42");
INSERT INTO truck VALUES("120","","","my","1300.00","2","100","1200.00","1000","26-06-2018","06","2018","3","","0","13:28:55");
INSERT INTO truck VALUES("121","","","SMALL GUINESS","5000","2","100","4900.00","1000","27-06-2018","06","2018","4","","0","14:56:00");
INSERT INTO truck VALUES("122","","","maltina","5000.00","2","1000","4000.00","1000","27-06-2018","06","2018","3","","0","15:02:07");





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
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

INSERT INTO users VALUES("41","Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586","Nishang Isaac","w@me","w@me","3","3abd30376f4c2a0e1b019cfc2eaed161e9edd485ef6259b61","12345678","","","","","2017-09-30","::1","0","0","9","","1111111");
INSERT INTO users VALUES("35","Windows NT NISHANG 6.2 build 9200 (Windows 8 Business Edition) i586","Nishang","super@123","super@123","20","$2y$10$svDhwwnz2jBdfcqvZPzBM.P2J3DaJyD76oswb19chDABehlbKDtUi","0342017","","6777888888","","","2017-09-08","::1","0","0","20","","1111111");
INSERT INTO users VALUES("92","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Tassa Noella","tassa","tassa","7","$2y$10$tQAE9C0O7SSyAdfSeo/Oo.daG/UyTplbqHme.KPfiGoc5dKbS4nKm","","","","","","2018-06-26","192.168.1.7","0","0","7","","noella1234");
INSERT INTO users VALUES("91","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Kenne Pianta Nadege Nah","kenne","kenne","3","$2y$10$nWGi9o8o4OKLlVt6jxjZ4eYDUA2LNRFF4N6.ZNDKDnN3WHAmrzXCK","","","","","","2018-06-23","192.168.1.34","0","0","3","","claude1993");
INSERT INTO users VALUES("89","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Felix","felix11","felix11","3","$2y$10$hh5gLQMEmQhEDgPqccmfWecV5qjqF2TESo.mDZr.ru/8Hb4.V4Gp6","","","","","","2018-06-20","fe80::b03b:2b0c:b239:3cdf","0","0","3","","alonso1");
INSERT INTO users VALUES("90","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Ekwe Irene Epolle","irene","irene","3","10ceca584ff89e76d60982ab1aae647656c80919ffc418f08","12345678","","","","","2018-06-21","192.168.1.32","0","0","3","","philosophi");
INSERT INTO users VALUES("46","Windows NT DESKTOP-JG6P9LQ 6.2 build 9200 (Windows 8 Business Edition) i586","Superadmin","superadmin","superadmin","20","$2y$10$NQBSUo2oYnPeB30xRKdL8.f8.uOLBQz1xRiQpGXCDYscrMlOrFLGO","","","","","","2018-05-02","::1","0","0","20","","111111");
INSERT INTO users VALUES("47","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Mbolle Corazon Sone","corazon","corazon","2","$2y$10$ubDHKCzrO8Uv6Ky0HkC5KOBm3l3mOAJdMPI/pvq.R9hQfgg9FMh3a","","","","","","2018-06-14","fe80::a401:b3ae:9417:ba80","0","0","2","","mcs1993");
INSERT INTO users VALUES("56","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Balemba Pauline Iko","Balemba ","Balemba ","2","$2y$10$4tgtsrThYTG/9NSdrAXcx.osK2nGpjj5l5BaYMLbNIYjJ5/r0O/dy","","","","","","2018-06-14","192.168.1.22","0","0","2","","princewill2007");
INSERT INTO users VALUES("49","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Heldrine Welayi Wansi","Heldrine","Heldrine","3","$2y$10$eI.f4iKCCLSOW4BMSSRFVeEGjKMLhm2ugcsyW6nGSssH/6Wmjfs7e","","","","","","2018-06-14","fe80::a401:b3ae:9417:ba80","0","0","3","","wansi1991");
INSERT INTO users VALUES("50","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Ojong Chanceline Fembe","fembe","fembe","2","$2y$10$Ome/U66A4xmaCpLvDBY44eil2PrY3DiEs/pFRqNb6e0Qm/uut6KlG","","","","","","2018-06-14","fe80::a401:b3ae:9417:ba80","0","0","2","","god1996");
INSERT INTO users VALUES("51","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Kekenou Feh Yonga Pauline","yonga","yonga","2","$2y$10$E6qvl1ASPOXzMngmr9IA/ei2MIih.BXWc6xL9lHWbqJANZxA/qIqK","","","","","","2018-06-14","fe80::a401:b3ae:9417:ba80","0","0","2","","pauline");
INSERT INTO users VALUES("52","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Keme Diana Ebude","k diana","k diana","1","$2y$10$zHH.U0T8tC1Dp5zMt3edR.RorVJ7.lkMrA9Wd.4Lc/iW5eH.phBcu","","","","","","2018-06-14","fe80::a401:b3ae:9417:ba80","0","0","1","","D75186114a");
INSERT INTO users VALUES("53","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Keme Diana Ebude","e diana","e diana","10","$2y$10$XwoEMGKqJERcxMLgLMnkse2KDxRHF.l4mKxCA7ZuAGM5jmvP8BZTS","","","","","","2018-06-14","fe80::a401:b3ae:9417:ba80","0","0","10","","D75186114a");
INSERT INTO users VALUES("57","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Chenemo Yvette Asoh","yvette","yvette","10","$2y$10$8dmU2Ljcro8RXWyhZwI/fO2HElAa4Pd.AAPEKUea55RHgmdISjW.i","","","","","","2018-06-14","192.168.1.22","0","0","10","","chenemo2000");
INSERT INTO users VALUES("58","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Chenemo Yvette Asoh","asoh","asoh","1","$2y$10$TjitoYsxqm0pVZwOxjhHwukp2jibpco/0CyFthePrD7nZRz8Rfkii","","","","","","2018-06-14","192.168.1.22","0","0","1","","chenemo2000");
INSERT INTO users VALUES("59","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Felix Uchechukwu Chukwu","felix","felix","1","$2y$10$0iWxFV9bZC8TrAOVr6adQe.0ayqJR1ViGnrPZp13K1oYl.AqgniI6","","","","","","2018-06-14","192.168.1.22","0","0","1","","alonso1994");
INSERT INTO users VALUES("60","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Felix Uchechukwu Chukwu","felix1","felix1","10","$2y$10$.eqQFxXkDp5vDYzvXMsKnepZxxLb.tWVgfU22ydRjNxvmAhyegHVq","","","","","","2018-06-14","192.168.1.22","0","0","10","","alonso1994");
INSERT INTO users VALUES("61","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Caroline Ndinge Nolinga","carol","carol","3","$2y$10$Dx8O.Y5zgruXk23.ku1.3eCx7jHQy8rfIMKbppJQrkEL5YBfGm/p6","","","","","","2018-06-14","192.168.1.22","0","0","3","","nolinga5");
INSERT INTO users VALUES("62","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Maimo Relindys Yennyug","kitim","kitim","3","$2y$10$FKYRwldw3/jMV0ZPTzB.G.g5lwIfpWf2N9qOdwK30E9TJofQLMk6.","","","","","","2018-06-14","192.168.1.22","0","0","3","","sweetbaby");
INSERT INTO users VALUES("63","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Paul Ekema Joseph","ekemajoseph","ekemajoseph","3","$2y$10$pVouEiHQaBEJ0ZMwqT4Rlutz.itytE/XUbWTjo84mkSJTfPkJM.sG","","","","","","2018-06-14","192.168.1.22","0","0","3","","pa7515ul6065");
INSERT INTO users VALUES("64","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Njinabo Maika Muboh","maika","maika","3","$2y$10$4jxDDQcYjh3c6vzVb26Q1uKbq19xPxEWgJ4GN8NDz1hs0smo1rXdS","","","","","","2018-06-14","192.168.1.22","0","0","3","","maika1999");
INSERT INTO users VALUES("65","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Ophillia Emmanuel Udoh","udoh","udoh","3","$2y$10$IPJ3QoMRAPkKK2b/dAFgN.TKiuit37M3Igm4Usj.8yxX.4ONuEtNq","","","","","","2018-06-14","192.168.1.22","0","0","3","","ophillia");
INSERT INTO users VALUES("66","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Nchung Roseline Bisong","bisong","bisong","3","$2y$10$YU6/aNltID6DBbAwOWZci.r5ZtKM.w0bwhdIJGsw8QMPZEKFQICya","","","","","","2018-06-14","192.168.1.22","0","0","3","","courtney");
INSERT INTO users VALUES("67","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Ndifor Kerly Ngum","ndifor ","ndifor ","3","$2y$10$1SQyRWh92qUjXZMIhW5/cuhZMlUrLekzBZ4skuLoxmimTuPaWtBnK","","","","","","2018-06-14","192.168.1.22","0","0","3","","50429134");
INSERT INTO users VALUES("68","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Nadesh Mejane Mekede","mejy","mejy","3","$2y$10$du1KQfzvIWIe9zN2TsO0ieH8QdzwJhDsrlaYHnIgX1UA8ZF.iHEZO","","","","","","2018-06-14","192.168.1.22","0","0","3","","mejygirl");
INSERT INTO users VALUES("69","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Ndoh Jervis Ndoh","jervis","jervis","3","$2y$10$c9xAdRj1.b9SaeHefNU9XuRz48ThZaLQzB/sJwecpQg8RjXHFiry2","","","","","","2018-06-14","192.168.1.22","0","0","3","","673383074");
INSERT INTO users VALUES("70","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Wabi Bazil Nbe","bazil","bazil","3","$2y$10$IV/.DjR9jVJCiPMKRlEzdeIG7froQ8zBXptk..KJQiFM2xaKX0J0m","","","","","","2018-06-14","192.168.1.22","0","0","3","","wabibaz");
INSERT INTO users VALUES("71","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Ekume Raissa Nnane","raissa","raissa","3","$2y$10$wNU9x2YHFy00w4GuFTDRg.pOc0TeuXSjnLVOGjr6jPee1b0N.Eery","","","","","","2018-06-14","192.168.1.22","0","0","3","","shulette");
INSERT INTO users VALUES("81","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Nchang Gilian","gilian","gilian","3","$2y$10$1Uycqzm2THzb4mvcunAbL.GYKJaCwOLvh5V5zNjzJipe/SxSn4d.u","","","","","","2018-06-14","192.168.1.22","0","0","3","","gilianbrandy");
INSERT INTO users VALUES("73","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Isanga Bridget Etongo","bridget","bridget","3","$2y$10$xq1bhapF0V8q/ciuR/EoaeQeMUBdrBySLQlK6HppSnm6OdUTEHhZC","","","","","","2018-06-14","192.168.1.22","0","0","3","","fildeline");
INSERT INTO users VALUES("74","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Junior Frank Mbonde","frank ","frank ","3","$2y$10$70uDgJlUxu1oYLAFvVb9XempGQQGkxdoJ5EkqHHgtWIYwk/Pd0XGq","","","","","","2018-06-14","192.168.1.22","0","0","3","","ramirest");
INSERT INTO users VALUES("75","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Gwanyeh Marie Christine","machris","machris","3","$2y$10$5MkDUn8NcnYrR8jSEo9gT.3kv2/GUfaByycxtmkcNUD6scMvJF0LK","","","","","","2018-06-14","192.168.1.22","0","0","3","","machris2");
INSERT INTO users VALUES("76","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Azeah Nelson Awanti","nass","nass","3","$2y$10$ktwHAIQaz83GbnTPjUdQmugsGg47LRh1acAyNKNRGgUVNq2pD.aBm","","","","","","2018-06-14","192.168.1.22","0","0","3","","thedopeman237");
INSERT INTO users VALUES("77","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Enow Bernadette Akum","bernadette","bernadette","3","$2y$10$LQsFwf0LZP.M/tye/lFNV.qEBQyiOgvcNZoCGxduR3/rzAkzAzW.m","","","","","","2018-06-14","192.168.1.22","0","0","3","","bernie1");
INSERT INTO users VALUES("82","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Franklin Minde Ngomba","minde","minde","3","$2y$10$Zh8c9SO2n48m1s30IoDkreMj.gq1fgwCO9AbLsuOSxQ5sLYuswuQC","","","","","","2018-06-14","192.168.1.22","0","0","3","","franklin");
INSERT INTO users VALUES("79","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Nicolas Mukete Bangole","tbagfire6","tbagfire6","3","$2y$10$kejar3gCSIraqdBo2r1jzOZjHaK2WgkzjwyysrU6XaTf1VwOLadu6","","","","","","2018-06-14","192.168.1.22","0","0","3","","ilovemylife");
INSERT INTO users VALUES("83","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","A","wait1","wait1","9","$2y$10$ODyXR0M0w/MHWtN3Zl0GaulEaGwBjJyv1cbQm6ONzOvTV6EpPooNO","","","","","","2018-06-15","192.168.1.14","0","0","9","","111111");
INSERT INTO users VALUES("84","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586"," Nkongho Fotabe Glory ","glory","glory","3","$2y$10$SM0iOzF4WI22WwgPgDcjHecvXTXpPhN1mbBbECzpBGXVFK9G7zpD6","","","","","","2018-06-16","192.168.1.22","0","0","3","","678058566");
INSERT INTO users VALUES("85","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Alex Motale Edith Ikor Itoe","alex","alex","3","$2y$10$PjKeashn03jRqFWYzzGEuetAx7D4vDHXjiyO7DeS56qHmZKfSiCDW","","","","","","2018-06-18","192.168.1.40","0","0","3","","fireballs1");
INSERT INTO users VALUES("86","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Yah Marienet Atam","yah","yah","8","$2y$10$ggDxsKQmlaO438q0ouTJkObmSm56jZynrutgdV3.oO3ROEBk8eHaK","","","","","","2018-06-19","192.168.1.32","0","0","8","","grace123");
INSERT INTO users VALUES("88","Windows NT JSERVER 6.2 build 9200 (Windows Server 2012 Standard Edition) i586","Ojong Mirabel Njong","ojong","ojong","8","$2y$10$KmhvBnvYoS/.1.P5.HZW5OzqbsfvOLnIh39XRoY6cfsaUIDuJI1ZO","","","","","","2018-06-19","192.168.1.32","0","0","8","","6828304326");
INSERT INTO users VALUES("93","Windows NT DESKTOP-TRF82UB 6.2 build 9200 (Windows 8 Business Edition) i586","Bar Agent One","bone","bone","9","$2y$10$uwP7bclJ5aguabUaOp8j6ej3DEo81/KNHK5SBicujIZJREUO2StdS","","","","","","2019-07-01","::1","0","0","9","","12345678");
INSERT INTO users VALUES("94","Windows NT DESKTOP-TRF82UB 6.2 build 9200 (Windows 8 Business Edition) i586","Bar One ","bones","bones","9","$2y$10$KubNb9Xyo5CPRC7XfaAUveZO/gnLa6fKw9oEJLyqRlnWD4p87R0Me","","","","","","2019-07-01","::1","0","0","9","","12345678");
INSERT INTO users VALUES("95","Windows NT DESKTOP-TRF82UB 6.2 build 9200 (Windows 8 Business Edition) i586","Bar One Casheir","bcasheir","bcasheir","3","$2y$10$d4.eqEm4fnKTHaNGs9wI9O9MB5J6ylDKRoch5k.JRBlnIae.FkmDy","","","","","","2019-07-01","::1","0","0","9","","12345678");
INSERT INTO users VALUES("96","Windows NT DESKTOP-TRF82UB 6.2 build 9200 (Windows 8 Business Edition) i586","Bar","bonecash","bonecash","3","$2y$10$OH77FUXYhRHlRnb9u9ibpuceS0/3efVlUnzH9VHS3XPFQvPF3n2fa","","","","","","2019-07-05","::1","0","0","3","","12345678");





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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO warehouse VALUES("3","BIG GUINESS","455","BEER","","950.00","1500","");
INSERT INTO warehouse VALUES("5","Ananas","400","TOP","","400","1000","");
INSERT INTO warehouse VALUES("6","Pamplemouse","400","TOP","","50.00","1000","");
INSERT INTO warehouse VALUES("7","TOP Grenadine","400","TOP ","","20.00","1000","");
INSERT INTO warehouse VALUES("8","Vinto","400","TOP","","55.00","1000","");
INSERT INTO warehouse VALUES("9","MALTA","340","CAN","","2000.00","1000","");
INSERT INTO warehouse VALUES("10","HEINEKEN S","400","CAN","","0.00","1000","");
INSERT INTO warehouse VALUES("11","BAVARIA","500","CAN","","30.00","1000","");
INSERT INTO warehouse VALUES("12","HEINDEKEN B","800","CAN","","65.00","2000","");
INSERT INTO warehouse VALUES("14","Kadji","455","Beer","","400.00","1200","");
INSERT INTO warehouse VALUES("16","my","455","Beer","","1200.00","1000","");
INSERT INTO warehouse VALUES("17","export","455","Beer","","500.00","1000","");
INSERT INTO warehouse VALUES("18","SMALL GUINESS","455","Beer","","4900.00","1000","");
INSERT INTO warehouse VALUES("19","Grants","10000","Whisky","","1000","35000","");
INSERT INTO warehouse VALUES("20","Tonic","455","TOP","","50.00","1000","");
INSERT INTO warehouse VALUES("21","Castel","455","Beer","","800.00","1000","");
INSERT INTO warehouse VALUES("22","Tangui 1L","400","Water","","500.00","1000","");
INSERT INTO warehouse VALUES("23","Mutzig","455","Beer","","1500","1000","");
INSERT INTO warehouse VALUES("24","Amstel","455","Beer","","1500.00","1000","");
INSERT INTO warehouse VALUES("25","Red Label","10000","Whisky","","150.00","25000","");
INSERT INTO warehouse VALUES("26","Coke","500","TOP","","300.00","1000","");
INSERT INTO warehouse VALUES("28","Blue Label","","whisky","","100.00","15000","");
INSERT INTO warehouse VALUES("29","Baileys","7500","Whisky","","20.00","20000","");
INSERT INTO warehouse VALUES("30","Renard","45000","Champagne","","800.00","85000","");
INSERT INTO warehouse VALUES("31","Baron De madrid","1000","Wine","","1100.00","2000","");
INSERT INTO warehouse VALUES("32","black label","15000","Whisky","","800.00","40000","");
INSERT INTO warehouse VALUES("33","maltina","455","Can ","","4000.00","1000","");
INSERT INTO warehouse VALUES("34","bg","500","Can ","","42","900","");





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



