-- MySQL dump 10.13  Distrib 8.0.40, for macos14.7 (arm64)
--
-- Host: localhost    Database: recipes_table
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `recipeid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ingredients` json DEFAULT NULL,
  `steps` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `points` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onCalendar` tinyint(1) DEFAULT NULL,
  `calendarDate` int DEFAULT NULL,
  `onCandidate` tinyint(1) DEFAULT NULL,
  `onFavorite` tinyint(1) DEFAULT NULL,
  `onSuggestion` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`recipeid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'ふわっととろける！牛肉と玉ねぎのオムレツ炒め','和食','とろり卵が牛肉とたまねぎを包み込み、まるでオムレツのような満足感。仕上げに醤油をひとたらしで香ばしさアップ！','[{\"name\": \"キャベツ\", \"quantity\": \"1/4玉\"}, {\"name\": \"牛肉 (薄切り)\", \"quantity\": \"200g\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1/2個\"}, {\"name\": \"ピーマン\", \"quantity\": \"2個\"}, {\"name\": \"卵\", \"quantity\": \"2個\"}, {\"name\": \"醤油\", \"quantity\": \"大さじ2\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ1\"}, {\"name\": \"塩\", \"quantity\": \"適量\"}, {\"name\": \"胡椒\", \"quantity\": \"適量\"}]','キャベツはざく切り、玉ねぎは薄切りにする。\nフライパンにサラダ油を熱し、牛肉を炒める。\n野菜を加え、調味料で味付けする。\n卵を溶いて加え、炒め合わせる。\n仕上げにごま油を少量加える。','卵を入れることで、オムレツのような触感が楽しめます。醤油ベースの味付けが、野菜と牛肉のうまみを引き出します。','/public/images/dishes/dish1.jpg',1,12,0,0,1),(2,'シャキシャキ食感！香ばしいきんぴらごぼう','和食','シャキシャキしたごぼうと甘辛い味付けが絶品！お弁当や副菜にもぴったりです。','[{\"name\": \"ごぼう\", \"quantity\": \"1本\"}, {\"name\": \"にんじん\", \"quantity\": \"1/2本\"}, {\"name\": \"醤油\", \"quantity\": \"大さじ2\"}, {\"name\": \"みりん\", \"quantity\": \"大さじ1\"}, {\"name\": \"砂糖\", \"quantity\": \"大さじ1\"}, {\"name\": \"ごま油\", \"quantity\": \"大さじ1\"}, {\"name\": \"いりごま\", \"quantity\": \"適量\"}]','ごぼうとにんじんを千切りにする。\nフライパンにごま油を熱し、ごぼうとにんじんを炒める。\n醤油、みりん、砂糖を加え、汁気がなくなるまで炒める。\n仕上げにいりごまを振る。','ごぼうのアクを抜くため、切ったらすぐに水にさらしましょう。','/public/images/dishes/dish2.jpg',1,13,0,0,1),(3,'ほっこり幸せ！おふくろの味・肉じゃが','和食','ほっこり甘辛い味付けで、ごはんが進む家庭の定番料理。','[{\"name\": \"牛肉\", \"quantity\": \"200g\"}, {\"name\": \"じゃがいも\", \"quantity\": \"3個\"}, {\"name\": \"にんじん\", \"quantity\": \"1本\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1個\"}, {\"name\": \"醤油\", \"quantity\": \"大さじ3\"}, {\"name\": \"みりん\", \"quantity\": \"大さじ2\"}, {\"name\": \"砂糖\", \"quantity\": \"大さじ2\"}, {\"name\": \"だし汁\", \"quantity\": \"300ml\"}]','材料を一口大に切る。\n鍋で牛肉と玉ねぎを炒める。\nじゃがいもとにんじんを加え、だし汁を入れて煮る。\n醤油、みりん、砂糖で味付けし、煮汁が少なくなるまで煮る。','煮る際に落し蓋をすると、味が均一に染み込みます。','/public/images/dishes/dish3.jpg',1,1,0,0,1),(4,'とろふわ卵がたまらない！絶品親子丼','和食','ふわふわの卵と鶏肉の組み合わせが絶妙な丼ぶり。','[{\"name\": \"鶏肉\", \"quantity\": \"150g\"}, {\"name\": \"卵\", \"quantity\": \"2個\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1/2個\"}, {\"name\": \"醤油\", \"quantity\": \"大さじ2\"}, {\"name\": \"みりん\", \"quantity\": \"大さじ2\"}, {\"name\": \"砂糖\", \"quantity\": \"大さじ1\"}, {\"name\": \"だし汁\", \"quantity\": \"100ml\"}, {\"name\": \"ごはん\", \"quantity\": \"2膳\"}]','鶏肉と玉ねぎを一口大に切る。\n鍋にだし汁、醤油、みりん、砂糖を入れて煮立てる。\n鶏肉と玉ねぎを煮て、卵でとじる。\nごはんに乗せて完成。','卵を2回に分けて入れると、ふんわり仕上がります。','/public/images/dishes/dish4.jpg',1,2,1,0,1),(5,'寒い12月でも体ポカポカビーフシチュー','洋食','牛肉がほろほろになるまで煮込んだ、濃厚なデミグラスソースのビーフシチュー。','[{\"name\": \"合い挽き肉\", \"quantity\": \"300g\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1個\"}, {\"name\": \"卵\", \"quantity\": \"1個\"}, {\"name\": \"パン粉\", \"quantity\": \"大さじ4\"}, {\"name\": \"牛乳\", \"quantity\": \"大さじ2\"}, {\"name\": \"塩\", \"quantity\": \"適量\"}, {\"name\": \"胡椒\", \"quantity\": \"適量\"}, {\"name\": \"ナツメグ\", \"quantity\": \"少々\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ1\"}]','牛肉に塩・胡椒をし、小麦粉をまぶす。\n鍋でバターを溶かし、牛肉を焼き色がつくまで焼く。\n玉ねぎ、にんじん、じゃがいもを加えて炒める。\n赤ワインを加え、アルコールを飛ばしたらデミグラスソースを加え、弱火で煮込む。\n牛肉が柔らかくなったら完成。','赤ワインで煮込むことで、コクが深まります。','/public/images/dishes/dish5.jpg',1,5,1,0,1),(6,'ふわとろ卵の魔法！絶品オムライス','洋食','ふわふわ卵で包んだケチャップライスが絶品！大人も子供も大好きな一品。','[{\"name\": \"パスタ\", \"quantity\": \"200g\"}, {\"name\": \"ベーコン\", \"quantity\": \"100g\"}, {\"name\": \"卵\", \"quantity\": \"2個\"}, {\"name\": \"生クリーム\", \"quantity\": \"100ml\"}, {\"name\": \"粉チーズ\", \"quantity\": \"大さじ4\"}, {\"name\": \"塩\", \"quantity\": \"適量\"}, {\"name\": \"胡椒\", \"quantity\": \"適量\"}, {\"name\": \"オリーブオイル\", \"quantity\": \"大さじ1\"}]','鶏肉と玉ねぎを一口大に切る。\nフライパンでバターを溶かし、鶏肉と玉ねぎを炒める。\nごはんとケチャップを加え、炒め合わせる。\n別のフライパンで卵を焼き、ごはんを包む。\nお好みでケチャップをかける。','卵は半熟に仕上げるとふんわり感がアップします。','/public/images/dishes/dish6.jpg',1,3,0,0,1),(7,'ジュワッと肉汁あふれる！王道ハンバーグ','洋食','ジューシーでふっくらとした定番ハンバーグ。特製ソースでさらに美味しく！','[{\"name\": \"木綿豆腐\", \"quantity\": \"1丁\"}, {\"name\": \"豚ひき肉\", \"quantity\": \"150g\"}, {\"name\": \"長ねぎ\", \"quantity\": \"1/2本\"}, {\"name\": \"豆板醤\", \"quantity\": \"大さじ1\"}, {\"name\": \"甜麺醤\", \"quantity\": \"大さじ1\"}, {\"name\": \"しょうゆ\", \"quantity\": \"大さじ2\"}, {\"name\": \"酒\", \"quantity\": \"大さじ1\"}, {\"name\": \"水\", \"quantity\": \"150ml\"}, {\"name\": \"鶏がらスープの素\", \"quantity\": \"小さじ1\"}, {\"name\": \"片栗粉\", \"quantity\": \"大さじ1\"}, {\"name\": \"ごま油\", \"quantity\": \"大さじ1\"}, {\"name\": \"花椒\", \"quantity\": \"適量\"}]','玉ねぎをみじん切りにし、炒めて冷ます。\n合い挽き肉、玉ねぎ、卵、パン粉、牛乳、調味料を混ぜる。\n小判型に成形し、真ん中をくぼませる。\nフライパンで両面を焼き、中まで火を通す。\nお好みのソースで仕上げる。','肉ダネは冷蔵庫で少し寝かせると、味が馴染みます。','/public/images/dishes/dish7.jpg',0,NULL,0,0,1),(8,'濃厚クリーミー！本格カルボナーラ','洋食','濃厚なチーズとベーコンの旨味が絡む、クリーミーなパスタ。','[{\"name\": \"パスタ\", \"quantity\": \"200g\"}, {\"name\": \"ベーコン\", \"quantity\": \"100g\"}, {\"name\": \"卵\", \"quantity\": \"2個\"}, {\"name\": \"生クリーム\", \"quantity\": \"100ml\"}, {\"name\": \"粉チーズ\", \"quantity\": \"大さじ4\"}, {\"name\": \"塩\", \"quantity\": \"適量\"}, {\"name\": \"胡椒\", \"quantity\": \"適量\"}, {\"name\": \"オリーブオイル\", \"quantity\": \"大さじ1\"}]','ベーコンを細切りにし、オリーブオイルで炒める。\nパスタを茹でる。\nボウルで卵、生クリーム、粉チーズ、塩・胡椒を混ぜる。\n茹で上がったパスタをベーコンと和え、卵液を加える。\n手早く混ぜ、余熱でとろりと仕上げる。','余熱で卵液を固めることで、クリーミーに仕上がります。','/public/images/dishes/dish8.jpg',1,8,1,0,1),(9,'しびれる辛さ！本格四川麻婆豆腐','中華','ピリッと辛くてごはんが進む定番中華料理。豆腐とひき肉の旨味がたっぷり！','[{\"name\": \"木綿豆腐\", \"quantity\": \"1丁\"}, {\"name\": \"豚ひき肉\", \"quantity\": \"150g\"}, {\"name\": \"長ねぎ\", \"quantity\": \"1/2本\"}, {\"name\": \"豆板醤\", \"quantity\": \"大さじ1\"}, {\"name\": \"甜麺醤\", \"quantity\": \"大さじ1\"}, {\"name\": \"しょうゆ\", \"quantity\": \"大さじ2\"}, {\"name\": \"酒\", \"quantity\": \"大さじ1\"}, {\"name\": \"水\", \"quantity\": \"150ml\"}, {\"name\": \"鶏がらスープの素\", \"quantity\": \"小さじ1\"}, {\"name\": \"片栗粉\", \"quantity\": \"大さじ1\"}, {\"name\": \"ごま油\", \"quantity\": \"大さじ1\"}, {\"name\": \"花椒\", \"quantity\": \"適量\"}]','豆腐を一口大に切り、熱湯で軽く茹でて水気を切る。\nフライパンにごま油を熱し、豚ひき肉を炒める。\n豆板醤と甜麺醤を加えてさらに炒める。\n水、しょうゆ、酒、鶏がらスープの素を加え、豆腐を入れる。\n水溶き片栗粉でとろみをつけ、花椒を振る。','花椒を加えることで本格的な痺れる辛さが楽しめます。','/public/images/dishes/dish9.jpg',1,28,0,0,1),(10,'シャキッと旨い！ピーマンたっぷり青椒肉絲','中華','シャキシャキのピーマンと細切り豚肉の絶妙な組み合わせ。ごはんにぴったりの炒め物。','[{\"name\": \"豚肉 (細切り)\", \"quantity\": \"200g\"}, {\"name\": \"ピーマン\", \"quantity\": \"3個\"}, {\"name\": \"たけのこ (細切り)\", \"quantity\": \"100g\"}, {\"name\": \"しょうゆ\", \"quantity\": \"大さじ2\"}, {\"name\": \"酒\", \"quantity\": \"大さじ1\"}, {\"name\": \"オイスターソース\", \"quantity\": \"大さじ1\"}, {\"name\": \"片栗粉\", \"quantity\": \"大さじ1\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ2\"}, {\"name\": \"塩\", \"quantity\": \"少々\"}, {\"name\": \"胡椒\", \"quantity\": \"少々\"}]','豚肉に塩、胡椒、片栗粉をまぶす。\nピーマンとたけのこを細切りにする。\nフライパンにサラダ油を熱し、豚肉を炒める。\nピーマンとたけのこを加え、しょうゆ、酒、オイスターソースで味付けする。\n全体に味がなじんだら完成。','具材は手早く炒めてシャキシャキ感を残しましょう。','/public/images/dishes/dish10.jpg',1,9,1,0,1),(11,'甘酸っぱさがやみつき！彩り酢豚','中華','甘酸っぱいタレが絡む、ジューシーな豚肉と野菜の炒め物。','[{\"name\": \"豚肩ロース肉\", \"quantity\": \"200g\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1/2個\"}, {\"name\": \"ピーマン\", \"quantity\": \"2個\"}, {\"name\": \"にんじん\", \"quantity\": \"1/2本\"}, {\"name\": \"パイナップル\", \"quantity\": \"50g\"}, {\"name\": \"片栗粉\", \"quantity\": \"大さじ2\"}, {\"name\": \"酢\", \"quantity\": \"大さじ2\"}, {\"name\": \"しょうゆ\", \"quantity\": \"大さじ2\"}, {\"name\": \"砂糖\", \"quantity\": \"大さじ3\"}, {\"name\": \"ケチャップ\", \"quantity\": \"大さじ2\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ2\"}]','豚肉を一口大に切り、片栗粉をまぶす。\n野菜とパイナップルを食べやすい大きさに切る。\nフライパンで豚肉を揚げ焼きにする。\n野菜を加えて炒め、酢、しょうゆ、砂糖、ケチャップを混ぜたタレを加える。\n全体を炒め合わせて完成。','パイナップルを入れると甘みと酸味が引き立ちます。','/public/images/dishes/dish11.jpg',1,10,0,0,1),(12,'コク旨ピリ辛！クセになる担々麺','中華','ピリ辛ごまスープが癖になる本格的な担々麺。','[{\"name\": \"中華麺\", \"quantity\": \"1玉\"}, {\"name\": \"豚ひき肉\", \"quantity\": \"100g\"}, {\"name\": \"長ねぎ\", \"quantity\": \"1/2本\"}, {\"name\": \"にんにく\", \"quantity\": \"1片\"}, {\"name\": \"しょうが\", \"quantity\": \"1片\"}, {\"name\": \"豆板醤\", \"quantity\": \"小さじ1\"}, {\"name\": \"練りごま\", \"quantity\": \"大さじ2\"}, {\"name\": \"しょうゆ\", \"quantity\": \"大さじ2\"}, {\"name\": \"鶏がらスープ\", \"quantity\": \"300ml\"}, {\"name\": \"ラー油\", \"quantity\": \"適量\"}, {\"name\": \"ごま油\", \"quantity\": \"大さじ1\"}]','にんにく、しょうが、長ねぎをみじん切りにする。\nフライパンでごま油を熱し、豚ひき肉、にんにく、しょうがを炒める。\n豆板醤、しょうゆ、練りごまを加えて炒める。\n鶏がらスープを加え、ひと煮立ちさせる。\n茹でた中華麺にスープを注ぎ、長ねぎとラー油を加える。','仕上げにラー油をたっぷり加えると、辛さと香りが際立ちます。','/public/images/dishes/dish12.jpg',1,4,0,0,1),(13,'香り立つバジル！本格ガパオライス','その他','タイの定番料理！バジルの香りとピリ辛のひき肉炒めがごはんと相性抜群。','[{\"name\": \"鶏ひき肉\", \"quantity\": \"200g\"}, {\"name\": \"パプリカ\", \"quantity\": \"1/2個\"}, {\"name\": \"ピーマン\", \"quantity\": \"1個\"}, {\"name\": \"にんにく\", \"quantity\": \"1片\"}, {\"name\": \"赤唐辛子\", \"quantity\": \"1本\"}, {\"name\": \"バジル\", \"quantity\": \"一掴み\"}, {\"name\": \"ナンプラー\", \"quantity\": \"大さじ2\"}, {\"name\": \"オイスターソース\", \"quantity\": \"大さじ1\"}, {\"name\": \"砂糖\", \"quantity\": \"小さじ1\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ1\"}, {\"name\": \"卵\", \"quantity\": \"1個\"}, {\"name\": \"ごはん\", \"quantity\": \"1膳分\"}]','にんにくと赤唐辛子をみじん切りにする。\nフライパンにサラダ油を熱し、にんにくと唐辛子を炒める。\n鶏ひき肉を加え、パプリカとピーマンも炒める。\nナンプラー、オイスターソース、砂糖で味付けし、バジルを加える。\n目玉焼きを作り、ごはんと一緒に盛り付ける。','バジルはたっぷり加えると風味が引き立ちます。辛さはお好みで調整してください。','/public/images/dishes/dish13.jpg',1,11,1,0,1),(14,'スパイス香る！ジューシータンドリーチキン','その他','スパイスとヨーグルトで漬け込んだ、香ばしく焼き上げるインド風チキン。','[{\"name\": \"鶏もも肉\", \"quantity\": \"2枚\"}, {\"name\": \"プレーンヨーグルト\", \"quantity\": \"100g\"}, {\"name\": \"にんにく\", \"quantity\": \"1片\"}, {\"name\": \"しょうが\", \"quantity\": \"1片\"}, {\"name\": \"カレー粉\", \"quantity\": \"大さじ1\"}, {\"name\": \"パプリカパウダー\", \"quantity\": \"小さじ1\"}, {\"name\": \"塩\", \"quantity\": \"小さじ1\"}, {\"name\": \"レモン汁\", \"quantity\": \"大さじ1\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ1\"}]','にんにく、しょうがをすりおろす。\nヨーグルト、カレー粉、パプリカパウダー、塩、レモン汁、にんにく、しょうがを混ぜる。\n鶏肉を漬け込み、冷蔵庫で2時間寝かせる。\nオーブンで200℃で20分焼く。\n焼き色がついたら完成。','しっかり漬け込むことで、風味豊かな仕上がりになります。','/public/images/dishes/dish14.jpg',0,NULL,0,0,1),(15,'香り豊か！あっさり鶏だしフォー','その他','あっさりした鶏だしが効いた、ベトナムの定番ライスヌードルスープ。','[{\"name\": \"フォー麺\", \"quantity\": \"100g\"}, {\"name\": \"鶏むね肉\", \"quantity\": \"150g\"}, {\"name\": \"もやし\", \"quantity\": \"50g\"}, {\"name\": \"青ねぎ\", \"quantity\": \"2本\"}, {\"name\": \"パクチー\", \"quantity\": \"適量\"}, {\"name\": \"鶏がらスープ\", \"quantity\": \"500ml\"}, {\"name\": \"ナンプラー\", \"quantity\": \"大さじ1\"}, {\"name\": \"塩\", \"quantity\": \"小さじ1\"}, {\"name\": \"ライム\", \"quantity\": \"1/2個\"}, {\"name\": \"赤唐辛子\", \"quantity\": \"1本\"}]','鶏むね肉を茹で、細かく裂く。\n鶏がらスープにナンプラーと塩を加えて温める。\nフォー麺を茹で、器に盛る。\n鶏肉、もやし、青ねぎ、パクチーをトッピングする。\nスープを注ぎ、ライムを添える。','お好みでライムや唐辛子を加えて、さっぱりとした味わいを楽しんでください。','/public/images/dishes/dish15.jpg',1,15,0,0,1),(16,'カリッとあなたも包み込む！?メキシカン風タコス','その他','スパイス香るひき肉とフレッシュな野菜をトルティーヤで包んだ、メキシコの人気料理。','[{\"name\": \"トルティーヤ\", \"quantity\": \"4枚\"}, {\"name\": \"牛ひき肉\", \"quantity\": \"200g\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1/2個\"}, {\"name\": \"トマト\", \"quantity\": \"1個\"}, {\"name\": \"レタス\", \"quantity\": \"2枚\"}, {\"name\": \"チーズ\", \"quantity\": \"50g\"}, {\"name\": \"サルサソース\", \"quantity\": \"大さじ2\"}, {\"name\": \"タコミートシーズニング\", \"quantity\": \"大さじ1\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ1\"}]','玉ねぎとトマトをみじん切りにし、レタスは千切りにする。\nフライパンにサラダ油を熱し、牛ひき肉とタコミートシーズニングを炒める。\nトルティーヤを軽く温める。\nひき肉、野菜、チーズをトルティーヤに乗せ、サルサソースをかける。\nトルティーヤで包んで完成。','具材はお好みでアボカドやハラペーニョを加えても美味しいです。','/public/images/dishes/dish16.jpg',1,14,0,0,1),(17,'ごはんが進む！サバ味噌煮','和食','甘辛い味噌ダレで煮込んだサバがふっくら仕上がります。','[{\"name\": \"サバ\", \"quantity\": \"2切れ\"}, {\"name\": \"味噌\", \"quantity\": \"大さじ3\"}, {\"name\": \"みりん\", \"quantity\": \"大さじ2\"}, {\"name\": \"砂糖\", \"quantity\": \"大さじ2\"}, {\"name\": \"生姜\", \"quantity\": \"1片\"}, {\"name\": \"酒\", \"quantity\": \"大さじ2\"}, {\"name\": \"水\", \"quantity\": \"200ml\"}]','サバは食べやすい大きさに切る。\n鍋に水、酒、みりん、砂糖、味噌を入れて煮立てる。\nサバと生姜を加え、中火で煮る。\n煮汁が少なくなるまで煮詰める。','生姜を加えると臭みが取れて風味が良くなります。','/public/images/dishes/dish17.jpg',1,6,0,0,1),(18,'香り豊か！きのこの炊き込みご飯','和食','きのこの旨味が染み込んだ秋の味覚。','[{\"name\": \"米\", \"quantity\": \"2合\"}, {\"name\": \"しめじ\", \"quantity\": \"1パック\"}, {\"name\": \"えのき\", \"quantity\": \"1パック\"}, {\"name\": \"醤油\", \"quantity\": \"大さじ2\"}, {\"name\": \"みりん\", \"quantity\": \"大さじ1\"}, {\"name\": \"酒\", \"quantity\": \"大さじ1\"}, {\"name\": \"だし汁\", \"quantity\": \"400ml\"}]','米を研ぎ、炊飯器にセットする。\nしめじとえのきを小分けにする。\n炊飯器に醤油、みりん、酒、だし汁を加える。\n具材をのせて炊飯し、炊き上がったら混ぜる。','きのこは数種類使うと旨味が増します。','/public/images/dishes/dish18.jpg',0,NULL,0,0,1),(19,'だしが決め手！コク旨肉うどん','和食','甘辛い牛肉と旨味たっぷりのだしが絡む、満足感のあるうどん。','[{\"name\": \"うどん\", \"quantity\": \"2玉\"}, {\"name\": \"牛肉\", \"quantity\": \"150g\"}, {\"name\": \"だし汁\", \"quantity\": \"500ml\"}, {\"name\": \"醤油\", \"quantity\": \"大さじ2\"}, {\"name\": \"みりん\", \"quantity\": \"大さじ2\"}, {\"name\": \"砂糖\", \"quantity\": \"大さじ1\"}, {\"name\": \"長ねぎ\", \"quantity\": \"1本\"}]','牛肉を食べやすい大きさに切る。\n鍋にだし汁、醤油、みりん、砂糖を入れ煮立てる。\n牛肉を加えて煮込み、アクを取る。\n茹でたうどんに牛肉と汁をかけ、長ねぎを添える。','牛肉は薄切りを使うと柔らかく仕上がります。','/public/images/dishes/dish19.jpg',0,NULL,0,0,1),(20,'なめらか食感！定番茶碗蒸し','和食','ふんわり滑らかな茶碗蒸し。おもてなしにも最適です。','[{\"name\": \"卵\", \"quantity\": \"2個\"}, {\"name\": \"だし汁\", \"quantity\": \"300ml\"}, {\"name\": \"醤油\", \"quantity\": \"小さじ1\"}, {\"name\": \"塩\", \"quantity\": \"小さじ1/2\"}, {\"name\": \"みりん\", \"quantity\": \"小さじ1\"}, {\"name\": \"しいたけ\", \"quantity\": \"2枚\"}, {\"name\": \"かまぼこ\", \"quantity\": \"2切れ\"}, {\"name\": \"鶏肉\", \"quantity\": \"50g\"}]','卵を溶き、だし汁、醤油、塩、みりんを加えて混ぜる。\n器に具材を入れ、卵液を注ぐ。\n蒸し器で中火で15分蒸す。\n竹串で確認し、透明な汁が出たら完成。','卵液はこすと滑らかな仕上がりになります。','/public/images/dishes/dish20.jpg',1,16,0,0,1),(21,'懐かしの味！喫茶店風ナポリタン','洋食','ケチャップの甘みと酸味が絶妙！どこか懐かしい喫茶店風のナポリタンです。','[{\"name\": \"スパゲッティ\", \"quantity\": \"200g\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1/2個\"}, {\"name\": \"ピーマン\", \"quantity\": \"2個\"}, {\"name\": \"ソーセージ\", \"quantity\": \"4本\"}, {\"name\": \"ケチャップ\", \"quantity\": \"大さじ4\"}, {\"name\": \"バター\", \"quantity\": \"大さじ1\"}, {\"name\": \"塩\", \"quantity\": \"少々\"}, {\"name\": \"胡椒\", \"quantity\": \"少々\"}, {\"name\": \"粉チーズ\", \"quantity\": \"適量\"}]','スパゲッティを茹でる。\n玉ねぎ、ピーマン、ソーセージを食べやすい大きさに切る。\nフライパンにバターを溶かし、玉ねぎ、ソーセージを炒める。\nピーマンを加え、さらに炒める。\nケチャップを加えて全体に絡め、茹でたスパゲッティを加えて炒め合わせる。\n塩、胡椒で味を整え、粉チーズを振りかけて完成。','ケチャップはしっかり炒めると甘みと香ばしさが増します。','/public/images/dishes/dish21.jpg',0,NULL,0,0,1),(22,'とろけるチーズ！ジューシーハンバーグ','洋食','ジューシーなハンバーグにチーズがとろりと溶けた一品。','[{\"name\": \"合い挽き肉\", \"quantity\": \"300g\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1個\"}, {\"name\": \"卵\", \"quantity\": \"1個\"}, {\"name\": \"パン粉\", \"quantity\": \"大さじ4\"}, {\"name\": \"牛乳\", \"quantity\": \"大さじ2\"}, {\"name\": \"塩\", \"quantity\": \"適量\"}, {\"name\": \"胡椒\", \"quantity\": \"適量\"}, {\"name\": \"スライスチーズ\", \"quantity\": \"2枚\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ1\"}]','玉ねぎをみじん切りにし、炒めて冷ます。\n合い挽き肉、玉ねぎ、卵、パン粉、牛乳、調味料を混ぜる。\n小判型に成形し、真ん中をくぼませる。\nフライパンで両面を焼き、火が通ったらチーズを乗せて溶かす。\nお好みのソースで仕上げる。','チーズは最後に乗せて、余熱でとろりと溶かしましょう。','/public/images/dishes/dish22.jpg',1,7,0,0,1),(23,'おうちで簡単！ミートソースパスタ','洋食','トマトとひき肉の旨味がたっぷり詰まったミートソース。','[{\"name\": \"スパゲッティ\", \"quantity\": \"200g\"}, {\"name\": \"牛ひき肉\", \"quantity\": \"150g\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1/2個\"}, {\"name\": \"トマト缶\", \"quantity\": \"1缶\"}, {\"name\": \"にんにく\", \"quantity\": \"1片\"}, {\"name\": \"オリーブオイル\", \"quantity\": \"大さじ2\"}, {\"name\": \"塩\", \"quantity\": \"適量\"}, {\"name\": \"胡椒\", \"quantity\": \"適量\"}]','玉ねぎとにんにくをみじん切りにする。\nフライパンにオリーブオイルを熱し、にんにくを炒める。\n牛ひき肉と玉ねぎを加え、炒める。\nトマト缶を加え、煮詰める。\n茹でたスパゲッティにソースをかけて完成。','トマト缶はしっかり煮詰めることで、旨味が凝縮されます。','/public/images/dishes/dish23.jpg',0,NULL,0,0,1),(24,'プリプリ海老のエビチリ','中華','ピリ辛のチリソースが海老に絡んだ絶品中華。','[{\"name\": \"むきエビ\", \"quantity\": \"200g\"}, {\"name\": \"ねぎ\", \"quantity\": \"1/2本\"}, {\"name\": \"にんにく\", \"quantity\": \"1片\"}, {\"name\": \"しょうが\", \"quantity\": \"1片\"}, {\"name\": \"ケチャップ\", \"quantity\": \"大さじ4\"}, {\"name\": \"豆板醤\", \"quantity\": \"大さじ1\"}, {\"name\": \"片栗粉\", \"quantity\": \"大さじ1\"}, {\"name\": \"ごま油\", \"quantity\": \"大さじ1\"}]','エビに片栗粉をまぶし、下茹でする。\nフライパンでにんにく、しょうが、ねぎを炒める。\n豆板醤、ケチャップを加え、エビを絡める。\nとろみがついたら完成。','エビは片栗粉で下処理するとプリプリになります。','/public/images/dishes/dish24.jpg',1,18,0,0,1),(25,'ふわとろ卵の天津飯','中華','ふわふわ卵とあんが絶妙な中華風ごはん。','[{\"name\": \"卵\", \"quantity\": \"2個\"}, {\"name\": \"カニカマ\", \"quantity\": \"4本\"}, {\"name\": \"ごはん\", \"quantity\": \"1膳分\"}, {\"name\": \"だし汁\", \"quantity\": \"100ml\"}, {\"name\": \"醤油\", \"quantity\": \"大さじ1\"}, {\"name\": \"片栗粉\", \"quantity\": \"大さじ1\"}]','卵を溶き、カニカマを加える。\nフライパンで卵を焼き、ごはんに乗せる。\nあんを作り、卵にかける。','卵は半熟に仕上げましょう。','/public/images/dishes/dish25.jpg',0,NULL,0,0,1),(26,'香ばしさ満点！鶏肉とカシューナッツ炒め','中華','カリッとしたカシューナッツとジューシーな鶏肉の相性抜群な一品。','[{\"name\": \"鶏もも肉\", \"quantity\": \"200g\"}, {\"name\": \"カシューナッツ\", \"quantity\": \"50g\"}, {\"name\": \"ピーマン\", \"quantity\": \"2個\"}, {\"name\": \"赤パプリカ\", \"quantity\": \"1/2個\"}, {\"name\": \"にんにく\", \"quantity\": \"1片\"}, {\"name\": \"しょうゆ\", \"quantity\": \"大さじ2\"}, {\"name\": \"オイスターソース\", \"quantity\": \"大さじ1\"}, {\"name\": \"片栗粉\", \"quantity\": \"大さじ1\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ1\"}]','鶏肉を一口大に切り、片栗粉をまぶす。\nフライパンに油を熱し、鶏肉を炒める。\nカシューナッツと野菜を加え、さらに炒める。\nしょうゆとオイスターソースで味付けする。','カシューナッツは最後に加えて、食感を残しましょう。','/public/images/dishes/dish26.jpg',1,17,0,0,1),(27,'パリッとジューシー！春巻き','中華','パリパリの皮と中のジューシーな具がたまらない定番中華。','[{\"name\": \"春巻きの皮\", \"quantity\": \"10枚\"}, {\"name\": \"豚ひき肉\", \"quantity\": \"200g\"}, {\"name\": \"たけのこ\", \"quantity\": \"50g\"}, {\"name\": \"干ししいたけ\", \"quantity\": \"2枚\"}, {\"name\": \"にんじん\", \"quantity\": \"1/2本\"}, {\"name\": \"春雨\", \"quantity\": \"50g\"}, {\"name\": \"しょうゆ\", \"quantity\": \"大さじ2\"}, {\"name\": \"オイスターソース\", \"quantity\": \"大さじ1\"}, {\"name\": \"片栗粉\", \"quantity\": \"大さじ1\"}, {\"name\": \"サラダ油\", \"quantity\": \"適量\"}]','春雨を戻し、野菜としいたけを細切りにする。\nひき肉と野菜を炒め、調味料で味付けする。\n具を春巻きの皮で包む。\n油できつね色になるまで揚げる。','揚げる前に包み終わりをしっかり閉じると、油が入らずきれいに揚がります。','/public/images/dishes/dish27.jpg',0,NULL,0,0,1),(28,'スパイス香る！簡単キーマカレー','その他','ひき肉と野菜がたっぷり入った、スパイシーで旨味たっぷりのカレー。','[{\"name\": \"合い挽き肉\", \"quantity\": \"200g\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1個\"}, {\"name\": \"にんじん\", \"quantity\": \"1/2本\"}, {\"name\": \"ピーマン\", \"quantity\": \"1個\"}, {\"name\": \"カレー粉\", \"quantity\": \"大さじ2\"}, {\"name\": \"トマト缶\", \"quantity\": \"1/2缶\"}, {\"name\": \"にんにく\", \"quantity\": \"1片\"}, {\"name\": \"しょうが\", \"quantity\": \"1片\"}, {\"name\": \"塩\", \"quantity\": \"適量\"}, {\"name\": \"胡椒\", \"quantity\": \"適量\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ1\"}]','野菜をみじん切りにする。\nフライパンに油を熱し、にんにくとしょうがを炒める。\nひき肉と野菜を加え、炒める。\nカレー粉とトマト缶を加え、水分がなくなるまで煮る。\n塩と胡椒で味を調える。','カレー粉はしっかり炒めて香りを立たせましょう。','/public/images/dishes/dish28.jpg',0,NULL,0,0,1),(29,'ココナッツ香る！タイ風グリーンカレー','その他','ココナッツミルクの甘さとスパイシーさが絶妙にマッチしたタイの定番カレー。','[{\"name\": \"鶏肉\", \"quantity\": \"200g\"}, {\"name\": \"ナス\", \"quantity\": \"2本\"}, {\"name\": \"パプリカ\", \"quantity\": \"1個\"}, {\"name\": \"グリーンカレーペースト\", \"quantity\": \"大さじ2\"}, {\"name\": \"ココナッツミルク\", \"quantity\": \"400ml\"}, {\"name\": \"ナンプラー\", \"quantity\": \"大さじ2\"}, {\"name\": \"砂糖\", \"quantity\": \"大さじ1\"}, {\"name\": \"バジル\", \"quantity\": \"適量\"}, {\"name\": \"サラダ油\", \"quantity\": \"大さじ1\"}]','鶏肉と野菜を食べやすい大きさに切る。\nフライパンに油を熱し、グリーンカレーペーストを炒める。\n鶏肉と野菜を加えて炒める。\nココナッツミルクを加え、煮込む。\nナンプラーと砂糖で味を調え、バジルを加える。','辛さはペーストの量で調整できます。','/public/images/dishes/dish29.jpg',0,NULL,0,0,1),(30,'野菜たっぷり！彩りビビンバ','その他','彩り豊かな野菜とお肉を混ぜて食べる韓国の定番ごはん。','[{\"name\": \"ごはん\", \"quantity\": \"1膳分\"}, {\"name\": \"牛肉\", \"quantity\": \"100g\"}, {\"name\": \"ほうれん草\", \"quantity\": \"50g\"}, {\"name\": \"もやし\", \"quantity\": \"50g\"}, {\"name\": \"にんじん\", \"quantity\": \"1/2本\"}, {\"name\": \"卵\", \"quantity\": \"1個\"}, {\"name\": \"コチュジャン\", \"quantity\": \"大さじ1\"}, {\"name\": \"ごま油\", \"quantity\": \"大さじ1\"}, {\"name\": \"しょうゆ\", \"quantity\": \"大さじ2\"}, {\"name\": \"砂糖\", \"quantity\": \"大さじ1\"}]','牛肉をしょうゆと砂糖で炒める。\nほうれん草、もやし、にんじんをそれぞれ茹で、ごま油と塩で和える。\nごはんに具材を盛り付け、卵を乗せる。\nコチュジャンを加え、混ぜて食べる。','卵は半熟に仕上げると、全体がまろやかになります。','/public/images/dishes/dish30.jpg',0,NULL,0,0,1),(31,'トシさん激推し!絶品納豆ご飯','和食','シンプルながらも深い味わい。納豆のネバネバと卵黄が絡み合う究極のご飯。','[{\"name\": \"ごはん\", \"quantity\": \"1膳分\"}, {\"name\": \"納豆\", \"quantity\": \"1パック\"}, {\"name\": \"卵黄\", \"quantity\": \"1個\"}, {\"name\": \"醤油\", \"quantity\": \"小さじ1\"}, {\"name\": \"青ねぎ\", \"quantity\": \"適量\"}]','ごはんを茶碗に盛る。\n納豆に醤油を混ぜてよくかき混ぜる。\nごはんに納豆をかけ、中央に卵黄をのせる。\n青ねぎを散らして完成。','卵黄を加えることで、まろやかさがアップします。','/public/images/dishes/dish31.jpg',1,21,0,1,1),(32,'さけさんおすすめトマトのさっぱりサラダ','その他','みずみずしいトマトと香味野菜が引き立つ、さっぱりとしたサラダ。','[{\"name\": \"トマト\", \"quantity\": \"2個\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"1/4個\"}, {\"name\": \"バジル\", \"quantity\": \"適量\"}, {\"name\": \"醤油\", \"quantity\": \"小さじ2\"}, {\"name\": \"ごま油\", \"quantity\": \"小さじ1\"}]','トマトを食べやすい大きさに切る。\n玉ねぎを薄切りにし、水にさらして辛味を抜く。\nトマトと玉ねぎを皿に盛り、バジルを添える。\n醤油とごま油をかけて完成。','冷蔵庫で冷やしてから食べるとさらに美味しいです。','/public/images/dishes/dish32.jpg',1,18,0,1,1),(33,'こーきさんの定番!熱々羽付き紫蘇餃子','中華','パリッとした羽と紫蘇の香りが広がるジューシーな餃子。','[{\"name\": \"豚ひき肉\", \"quantity\": \"200g\"}, {\"name\": \"紫蘇の葉\", \"quantity\": \"10枚\"}, {\"name\": \"餃子の皮\", \"quantity\": \"20枚\"}, {\"name\": \"にんにく\", \"quantity\": \"1片\"}, {\"name\": \"しょうが\", \"quantity\": \"1片\"}, {\"name\": \"片栗粉\", \"quantity\": \"小さじ1\"}, {\"name\": \"しょうゆ\", \"quantity\": \"大さじ1\"}, {\"name\": \"ごま油\", \"quantity\": \"小さじ1\"}, {\"name\": \"サラダ油\", \"quantity\": \"適量\"}]','豚ひき肉に刻んだ紫蘇、にんにく、しょうが、調味料を加えて混ぜる。\n餃子の皮に具を包む。\nフライパンに油を熱し、餃子を並べて焼く。\n水を加え蓋をし、蒸し焼きにする。\n水がなくなったら羽ができるまで焼き上げる。','紫蘇の香りがアクセント。羽をしっかり焼くとパリッと仕上がります。','/public/images/dishes/dish33.jpg',1,23,0,1,1),(34,'ぐっさん秘伝の濃厚辛口カレー!','和食','濃厚な旨味とスパイスの辛さが絶妙に絡み合う秘伝のカレー。','[{\"name\": \"牛肉\", \"quantity\": \"300g\"}, {\"name\": \"玉ねぎ\", \"quantity\": \"2個\"}, {\"name\": \"じゃがいも\", \"quantity\": \"2個\"}, {\"name\": \"にんじん\", \"quantity\": \"1本\"}, {\"name\": \"カレールー\", \"quantity\": \"1箱\"}, {\"name\": \"赤唐辛子\", \"quantity\": \"2本\"}, {\"name\": \"にんにく\", \"quantity\": \"1片\"}, {\"name\": \"しょうが\", \"quantity\": \"1片\"}, {\"name\": \"水\", \"quantity\": \"800ml\"}]','牛肉を一口大に切り、塩胡椒で下味をつける。\n玉ねぎ、じゃがいも、にんじんを食べやすい大きさに切る。\n鍋に油を熱し、にんにくとしょうがを炒め、牛肉を加えて焼き色をつける。\n野菜を加えて炒め、水を加えて煮込む。\nカレールーと赤唐辛子を加えてさらに煮込む。','煮込む時間が長いほど、牛肉が柔らかくなり旨味が増します。','/public/images/dishes/dish34.jpg',1,31,0,1,1);
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-15  7:19:46
