CREATE DATABASE  IF NOT EXISTS `blogg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blogg`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: blogg
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `altbaslik` varchar(255) NOT NULL,
  `aciklama` text,
  `resim` varchar(255) NOT NULL,
  `anasayfa` tinyint(1) NOT NULL,
  `onay` tinyint(1) NOT NULL,
  `tarih` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Web Geliştirme Eğitimi','web-gelistirme-egitimi','Sıfırdan ileri seviyeye \'Web Geliştirme\': Html, Css, Sass, Flexbox, Bootstrap, Javascript, Angular, JQuery, Asp.Net Mvc&Core Mvc','<p>Web geliştirme komple bir web sitesinin hem web tasarım (html,css,javascript), hem de web programlama (asp.net mvc) konularının kullanılarak geliştirilmesidir. Sadece html css kullanarak statik bir site tasarlayabiliriz ancak işin içine bir web programlama dilini de katarsak dinamik bir web uygulaması geliştirmiş oluruz.</p>','1_3T7J7csXY8u36acofw5N8g-1704879110923.jpg',1,1,'2024-01-23 13:36:00','2024-01-10 09:30:55','2024-01-10 09:31:51',2),(2,'Python ile Sıfırdan İleri Seviye Programlama','python-ile-sifirdan-ileri-seviye-programlama','Sıfırdan İleri Seviye Python Dersleri.Veritabanı,Veri Analizi,Bot Yazımı,Web Geliştirme(Django)','<p>Python, son zamanların en popüler programlama dili haline geldi. Python\' ın bu kadar popüler olmasındaki sebep şüphesiz öğrenmesi kolay bir yazılım dili olmasıdır.sadikturan adreslerinde paylaşmış olduğum python dersleri serisini takip ederek ister video ister yazılı kaynaklar yardımıyla kısa zamanda python programlama alanında uzmanlık kazanın ve hayal ettiğiniz projeyi gerçekleştirin.</p>','2-1703681408512-1704215399243-1704879153644.jpeg',1,1,'2024-01-25 15:35:00','2024-01-10 09:30:55','2024-01-10 09:32:33',2),(3,'Sıfırdan İleri Seviye Modern Javascript Dersleri ES7+','sifirdan-ileri-seviye-modern-javascript-dersleri-es7','Modern javascript dersleri ile (ES6 & ES7+) Nodejs, Angular, React ve VueJs için sağlam bir temel oluşturun.','<p>Neden Javascript? Javascript son zamanlarda en popüler diller arasında yerini aldı hatta Javascript listenin en başında diyebiliriz. Peki son zamanlarda bu kadar popüler hale gelen Javascript nedir? Çoğu web geliştirici için Javascript sadece tarayıcıda yani client tarafında çalışan ve html içeriklerini hareketli hale getiren bir script dili olarak biliniyor. Web sitemize eklediğimiz bir resim galerisi, bir butona tıkladığımızda bir pop-up kutusunun açılması gibi html içeriklerini hareketli hale getiren ve yıllardır kullandığımız programlama dili tabi ki Javascript. Bu yönüyle Javascript \'i yıllardır zaten kullanmaktayız. Ancak son zamanlarda Javascript\' i bu kadar popüler yapan neden nedir?</p>','mobil-1704879203129.jpg',1,1,'2024-01-23 15:38:00','2024-01-10 09:30:55','2024-01-10 09:33:23',2),(4,'Node.js ile Sıfırdan İleri Seviye Web Geliştirme','nodejs-ile-sifirdan-ileri-seviye-web-gelistirme','Node.js ile sıfırdan ileri seviye dinamik web uygulaması geliştirmeyi öğren.','<p>Bu eğitimin amacı mevcut javascript programlama dili bilginizle nodejs kullanarak sıfırdan dinamik web uygulamalarını geliştirebilecek bilgi ve beceriyi kazandırmaktır.</p>','banner-1704879345501.png',1,1,'2024-02-07 02:40:00','2024-01-10 09:30:55','2024-01-10 09:35:45',3),(5,'Ekonomi Üzerine','ekonomi-uzerine','Ekonomi üzerine Bir Seminer','<p>Ekonominin tarihinin Mezapotamya kültürüne kadar uzandığına dair yazıtlar bulunmkatadır. Modern ekonominin gelişimi büyük ölçüdefizyokrat ve merkantilist olarak bilinen iki gruptan kaynaklanmaktadır. Bu programlar 16. yüzyılda Avrupa\'da kapitalizmin gelişmesine yardımcı olmuşlardır.</p>','182969080_m-1704879229685.jpg',1,1,'2024-01-19 12:36:00','2024-01-10 09:30:55','2024-01-10 09:33:49',3),(6,'Finansçı Olmayanlar İçin Temel Finans Eğitimi','finansci-olmayanlar-icin-temel-finans-egitimi','Temel düzeyde finans öğren.','<p>Finansal terimlerin sizi korkutmasına ve ilerlemenize engel olmasına izin vermeyin. Günümüzün rekabetçi dünyasında başarıya ulaşmak ve bilinçli kararlar almak için finansal dilin gücünden faydalanın.</p>','5b300b865379ff2cf0a80915-20200526193232-1704879251067.jpg',1,1,'2024-01-25 14:40:00','2024-01-10 09:30:55','2024-01-10 09:34:11',3),(7,'Pazarlamanın Geleceği','pazarlamanin-gelecegi','Pazarlamanın Geleceği üzerine bir konferans','<p>En popüler programlama dili olan Javascript programlama dilini artık Node.js sayesinde server tabanlı bir dil olarak kullanabilirsin.Kurs sonunda sadece Javascript programlama dilini kullanarak Fullstack bir web geliştirici olmak istiyorsan hemen kursa katılmalısın! Üstelik 30 gün iade garantisiyle! Kursumuz piyasadaki en popüler ve en güncel Node.js kursudur.</p>','pazarlama-1-800x400-1704879269719.jpg',1,1,'2024-02-05 13:40:00','2024-01-10 09:30:55','2024-01-10 09:34:29',3),(8,'Halkla İlişkiler Eğitimi','halkla-iliskiler-egitimi','i öğren.','<p>CRM, işletmelerin müşterilerini elde tutmasını sağlayan bir iş sürecidir. Bu sistem iyi işlerse başarının anahtarını elinize alır ve rekabet avantajı sağlarsınız. Bu alanda uzmanlaşmak istiyorsanız müşteri ilişkileri yönetimi online eğitimine hemen katılın.</p>','Business-Management-1704879321518.jpg',1,1,'2024-01-30 13:41:00','2024-01-10 09:30:55','2024-01-10 09:35:21',3),(9,'GİRİŞİMCİLİK EĞİTİMİ','girisimcilik-egitimi','Node.js ile sıfırdan ileri seviye dinamik web uygulaması geliştirmeyi öğren.','<p>Girişimcilik Eğitimi, girişimcilik kültürünü yaygınlaştırmak ve girişimcileri iş planı kavramı ile tanıştırarak başarılı işletmelerin kurulmasını sağlamak amacı ile verilir. Eğitim sonunda girişimci adaylarının kendi iş fikirlerine yönelik iş planlarını hazırlayabilecek bilgi ve deneyimi kazanmaları hedeflenir.</p>','1679919755-1704879293039.webp',1,1,'2024-01-26 14:40:00','2024-01-10 09:30:55','2024-01-10 09:34:53',3);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-19 20:51:39
