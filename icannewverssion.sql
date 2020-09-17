-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: testdb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author_id` bigint NOT NULL,
  `worker_id` bigint DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `rating` int NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_to_picture`
--

DROP TABLE IF EXISTS `card_to_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_to_picture` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_id` bigint DEFAULT NULL,
  `picture_id` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_card_id1_idx` (`card_id`),
  KEY `fk_picture_id1_idx` (`picture_id`),
  CONSTRAINT `fk_card_id1` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `fk_picture_id1` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_to_picture`
--

LOCK TABLES `card_to_picture` WRITE;
/*!40000 ALTER TABLE `card_to_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_to_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `picture` (
  `id` varchar(150) NOT NULL,
  `data` longblob,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES ('1',_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ú\0\0\0ú\0\0\0ˆ\ìZ=\0\0\0gAMA\0\0±üa\0\0\0sRGB\0®\Î\é\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0%\0\0%IR$ğ\0\0DiIDATx\Ú\í½w˜\\G™\ïÿ©“:wO”F£\äœq\Æ&/,\É$c2˜\Ì.\ì\Ã\ï\Ş\å\îŞ½%n`aYkc®\×,ƒ\r\Ø\Æ	gË–l+\çQœØ¹û„ª\ß\Õ\İ3-\É\ÒH\ÖÈ’¨\ïóŒ&h\ætŸ:õ­7¿¯PJ)kXf	\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r\Ñ\r^R\r\r›u8F\á˜%0˜”ŒğŸ\Ä/¾,##ŒD78\î ,+“a\ì\ßD\æófA\Ñ\rÏb\á\Ì\è£ş\ÔS¾û=Ò¬‰!ºÁq)\Õc1\ìJ·üU,™1D78n¥z\ß¢Á\İo¾L§pCtƒ\ã¶=s&*©=ö8\ÊÌš¢—\ê»e¡¤$xö9\Â\ÛÍ‚¢Pn\Üd\Ä\İà¸ƒ”\È\á!°lˆ\"‚µkÍš¢wˆ\"\Âm\Ë©ù‚YCtƒ\ãNm¯\×	7oÏŠ\Â,Š!ºÁñ&\ÍıU«QB4®\Z†\èÇ4C\ê?P\n-Ç…\Éw7D78\îˆ^«Q{\è¡¹…c\áÎŸo\Æ\İà¸”ø+\Åö9°,”R‹\ã¢¢G\Ò<)üğ‡¨jU/\Î\ì\Ù8³fš\Å1D78>X®Ö¬¡ş\Èc`\ëöÂ²ğN:«£Ã¬!ºÁq¡µ—\Ê\ä¿õ-d¾€°„.d±m\âW^pL\ßCtƒ\ã\Õ\ßş–\êı€m¤\Ä\î\ê$q\á…fq\Ñ\rø+W’ÿ\Î?¡ª5]Ì¢$\Ø6\ÉW¿\Z+—3dˆnp¬#\Z\Z&ÿµol\Úİ°\×%\ÎÌ™d\Şÿ^“gˆnp\Ì\Û\å\å2\Åë¯§z÷\İ\0!P(ˆ\"Ro~#\îÂ…†\è†\è\Ç:Jÿq#\Å¿%%Â¶µm„8³f“~\ç;\É\r\Ñ\rmQ.)ÿ\ì\ç\äÿ\å»\È|¾Arıs\á\Å\È~\ì£83g\Z¢¢Ó’ü–[ıŸÿ9<§	­@V*$^ıJRo~4\ÉopLÁB\r\å2¥ÿ¼…ü?ÿr\çD‹\ä\n¸‹‘ı\ÄÇ°:Œ§\İ\İ\à˜Eñú‘ÿ\ç\ï\"\ÇÆ°<%@\0*\n!£\ã‹E\ì\ÔS\Ênˆnp,\"Ú¾\ÂD\é\'7¡\ÆF^š$—\Ê\èøË¿$ùªW™’TCtƒcÁ†\r\äÿéŸ©üâ—¨Z\rbq]g®\0%Qµ:™k\ŞM\æ\İ\ïB$fÁ\Ñ\r5\Ôÿøc_ûº®/—\nó@G\Êõ\çZ•\Ô\Ş@ö“\Ç\î\é9|¾€±1ügŸÃ™?O{\ï\r\Ñ\r?””Tn¿ƒü·¿ƒ¿rB„\ëh§\Ú—•*±\Ë.!w\İguc‰i—«j•ú²eT~ù+d±Dò\r¯\Ç6Uo†\èSY(Pú\ÉO)|\ïû„»v!\\Wwsm—+ET(?\ï\\º¾ü%¼“N:t»<Š¨¯x–\êo~KõÁ?n\ŞBòÕ¯!ó÷\áx\"•2\äC(eh\ßb\\n\ÙJş[ß¡üóŸ£\Âl{œ\ä€R\nU,‘xù\åtüõ—ˆqúA\Ç\ËU\í\ÜIõ\î\ßSşõ„«\×\ãv\ZÙ^Kü¢—i3Àx\îD78\Üb\\\â/_Á\è\ßı=µ\Ç‡(Ç\×J*TµB\ì¢\äJi‚o\ÚLñ†ŸP½ÿ~\ÂÍ›‘ù<VGÌ‡>Hæš«q\æ\ÏG¸®yF¢vA^.Sş\Õ\íŒ}\ã[„[£KMii\ë()QuŸô\Û\ŞJ\îÓŸ\Â]´hr$W\nY©\à/[Fñ?¤ú\Ø\ã¨r\åû\Û&~Ù¥d?òabçƒ•J)nˆn0ªº\Ì\ç)ÿüŒş\ïÿƒ*•µ4môbWZk\éE$\ßú:®û\îüy¶É¥D\Õ\ë7’ÿ\Ú×©=ş8rl¨(\Ä\ê\ì$ûş÷“ù\Ğ±:r¦!ºÁ”\Ù\ã[·2öß ô³ÿBX¢\Ñç­©®+¥ ñ¹\Ï~š\Ì{¯\ÑM$@rU«l\ÜDşÿ‰\ê\íwh[ß²@\êf‰‹/\"w\İux§.E\Ä\ã\æY\İ`ª\ìñ`\ÃFÿşS½\ã7ZŠ7\ÕğFø© ±ûgûô\'I]uVzÿp„È±1J7\ßLñ\Ç7\rl\×nO™\é·_E\îº\ÏaO\âÀ00\İ\àPy<û\Ãñ\êO?•L¢,]y&š\Å)JB\âv\Z_ş\"ñ‹/: j-‹%j=Dş›\ß\Æ\æip\\]º*JE¸‹\Óñ¥/’¸\â\å\Æ\Ùfˆn0¥$\ê>\Æ\ÈW¾B°f-Â‹¡„hh\ê\\·PŠø%\Óñ…¿ÔõıI^)‰†‡)ü\ë¿Qº\é&]›\î8 *ŠCü\å—\Óñù\ëğ–l¤¸Q\İ\r¦š\ä\ÕşÀ\È\çÿ‚h\×n\Ê*ºñ“@(@F  õ†\×\Óñ\×_>`\ãø+\Õ)²÷\Ü®£\ËV•D…V*I\êª7\ÓùÕ¯¶\Èo`$ºÁT!©>ğ†>ó9\ä\è\ÂuQJL\àB!\"\'}õ»\È}\æSØ½½û?8*ªx\ÑÿşU‚±\â±Vó	X\ä®û,\Ù¼\ß4 0\İ\àH ö\È#\á‹D\Ã\ÃXJ „\Z6¹”\×%õÖ·\Ğñ\Å/`¥\Óû·\Ç*¿¸•±¯ƒhpP“«‘\àÌC\æ#$óş÷’‰np$\à¯Z\Í\î÷hóğ\\\íp\Ó2H?\Äò\Ò\ï}/¹\Ï}»«ó€’¼xÃŒ}ı›\ÈB+\ÓE.\n¤\àÌœA\×\ßı\ÉW½\Â\Ø\ãF¢}\Ó&F¿ú·„›6!b±–W´mRKùt\\÷Y¬\Î\Îš\0\å_şŠÂ¿~Y*b\ÅbZ4\ìu»·—/ü%‰W\\aH~\Ã<¹c*\Éó\ÛT\ï½\áy-IMJ¾Œ®ÿö•“¨=ş8ùo}‹p\ë\0V£\Ã€Š$\Âqt¼ı\Ío2Yn†\èG\Ì.\èaÊ¿¾\á\ì]}¦\ÓZu2L\æÚ\àÌŸw`\í`\Ãò\ßù\'\Â-[°R\É	\'\n¤\Şòf\Ò\ïz‡öº¢L=d>Oş\ßB\Õë‡MF6\ã2B$’¤\ßõ¯¸òÀÚ\ïS¼ñ\'\Ôşğ v®‰\æ5*pf\Ï&û©OĞ‰g`ˆnpQ½\ç^ü\çŸo©\êJ)ZnT(E\ì\ì³\É\\ó\îI]\Ï_±‚\ÚC£\Â`‚Z®Z¥§©w¾{\Æ³ğ\Ç	Œ\áuŒ |\ëm¨j\Ñ_L\ã“R¨(\ÂJ§\È~ğı\ØÓ§Xš!•\ßŞ‰ÿ\Üóºó«v\ãiw^\àÌšIòu¯\Ñ%¦F¢)µ½@°aƒö¶‰	$o)\ï\à~:‰+^>©\ë…7Pò‰\ÆÁa·™*ñ\Î8»«\Ë,¼!ºÁ‘D80€ª\×\Ú:ÃŒ×–KD2Iòu¯ƒI–ÔŸzŠ`õZD#”F#ş®m…3wqÀ¢iD;v@\İoˆñ&\ÛEÃ¦»³“ø%M\îbJnŞŠŸ{>B0¡Q…!ºÁ‘ƒmO %´\ß|ˆ9œşş\Éñ¼RAéœ?,\0”\0%rpP7–00D78‚<\ï\í\ÑR¶\éfª\ÅQ\0»¯o\Òõ\à*P¾¿‡¿–°m‚õPÕªYxCtƒ#	gŞ¼F©¨f\åxu‚–Ê“•\æmúy‹\á!p]\ê\Ï>K¸y‹ne`ˆnp„R:5}úø(\ã–8\×µ¦M›¼Mİ¨l\ï\Ùt\ì5ò\ämU*Qºù?‘ù¼Y|Ctƒ#‰\ä+¯Dx®Î€k¼I\Îh\çN˜d¢\Èd°;:V³hZ­D\ÄbT~ó[\êËc«¢9$®¼»¯oœ\ĞJ\'¸ %Ñ¦Í“\'º\ã`uv€c£¤jTÂˆÖ¸d”@\Ø6²X¤tÃ\Èb\Ñ,¾!ºÁ³\Ó\ç\Ï#~\É\Å`Ùˆ‰.w\á\ĞÁy\É\İÅ‹uK© \Ğ\é´B;ß…®j·b•\ß\ŞI\éÿİ‚ª\Ö\Ì0D78®K\æ\ï\ÃJ$Z\Íu\Ğ[!GF	_9\ék\ÅN?\rw\á\"] \ÓT\ŞE³½iş[  pıõø«WÇœ!ºÁ‘‚»h©·¿\rlK«İ€rl”\Êı÷OZ}·§O\'v\Î\ÙX¨(¢™\ëBw\r®{.\ÑÀ\0£óU\ã˜3D78¢Rı#\Ö-–›Ö²AHõö\ß +•I>u‹\Øy\ç\â,˜\nüq©\Şú¬Z?‡ú\ãOÿ\Ş÷Ml\İ\İ\àˆ\Ù\ê3û\É~\ê“`Y\ri¬‡4›6R¹\ã7“W\ß\Ï;—\Øù\çkGœ”´\ë¢™ı®\\X¥~Bı\Ñ\Çô\Ì6Ctƒ)–\ê¶Mòå—“¾új\íH“aYÈºO\é\æÿD\n“\Ö\Òo¿Š\ØYg \ê>{E\á\Ç3cÁ¶‘ù<#ÿ\ã\ï\ã…7D782dO&\éø\Âç‰Ÿ}„!ªñ \Ã\çWRº\í×“¶\Õc§F\êõ¯Gt\äPA\Ğş\Zb<3V°,‚5k(ş\à{§\Ğ\Z¢L\r\ì®.ºş\ápf\Ï\Ö$µ,¢±1Šÿöo„»vM\ÚVO¿\ï=$.½XOt™\èYW´\Ù\î4Uø[I¸u\ë¤Ctƒ%\ÖÎœYt|ù‹Ø¨0\Û&Ü²•\âw¿‡ªM.öm¥\Ód\Şÿ>Ü“OFA‹ÀJ\ì\ë%\á¶øË–™õ7D78b\\w]’¯}\r]ó\ßôLr)‘¾O\éW¿¦z÷\ï\'}ø…\ÒñW_À™Ù¯c\ëJ5l\'\nw\"…T\ï{À\Ä\Õ\r\Ñ\r(\Ùc1¯}\r\Ùk?ŒH%J!w\ì ğ\Ã\ë‰\'­$_ı*2W_Õ‘k\Å\Ö\ÛCn\ãŸ\Ãm\Û\Í\Â¢ñ‡˜N“ı\ä\Ç\É~ôZp”RøO-#ÿ\í\ï K¥I_\'û¹Ïº\ê*„c·Bwj¢\Ñ\Şbº)t1D7x\é\ÈşÁy÷»±²\\¡ò«;¨ü\êö\Ék–Eö£\×\âÌ›×Š—›\ê:x¥ñ˜YpCtƒ—\ìavv\Òñ—A\æ\ïÀJ\'	6o¢ø\ã\ë²“„3{\É?{=\"™DEQ[\"M3\'\Ş=\é$\ÓS\Î\İ\à%} \İ\İ\ä¾ø\ÒW¿‘HP{úiò\ßıW\ä\ÈÈ¤¯‘ü³\×\â\Ì\èk8\åÆ¡¤\î8›¸ü2CtCtƒ—\Zvw¹\Ï|’\ìûß‹HQù¯_P¾\íW“ö”»\çc\Ï\è\ïhC£¹´’x§œ‚wúi†\è†\èGÙ§O§\ã\Ë_\"÷\éO ªUŠ7üÕª\É\Ù\ê±8\"™f|‚\éöS™÷½\Çw0D78ªn6Kú½\ï!w\İ\çˆv\ï¦xı¢\Üt‚—½\Ñg.ñªW‘|Í«47D78\ê${O¹O|ŒÜµÁÿ\ãST\ï¹÷À¯ûº$µa£\Ër\ï¤\éø«¿œt[iƒ£f\È\âŸ\0D:Mú½\× R)Â\Âm\Ût+©@°qƒ£ª\î\ã.ZH\Ç_|\ï„%S\"\Íµ\Í#U\Û^d°\ä3\\¨#ƒa:21z3KgdXØ›\"7[\Öı8B ;ò5F\Ê>»‹>…jHÌ±¸lq7\Ù\ÄÁ?6+—#ı\îw¬]{Àšò\Ú\îØ‰,—ñNXB\çûÊ”¨\ìùjÀ-\ÛÉ½«Ù´½ÈªÁ2#µY\rA*pmYÎ¤\Ë\â$\'÷gyÅ‰=\\qb	£Y\Ôa¯”)Cz)á‡’­£U¶Œ\ÖX7Xf\İ\î2…±\Z…B!©\è\Èxô\ç\âœÒŸaQoŠs\ævŠÙ‡ş‚R\ê\Â{\ß×ˆ†G\Ø}\Í{¨=ü(ñ³\Ï$÷ù\ëH¾îµºz\í0b{¾Æ\àñ\ÍcLKy\ÌL¹t¤<\êR±e¬\Êò\íE–m\ÍS¬Ø…”\nÛ¶˜›‹s\Å\ÂN®¹t.—.\ê6\Èı\èE5ˆxt\Ã(OmÍ³~¨Â¦\İe¶\rW\ØV¨3\\ò™•‹sÅ¢.N˜cÉŒs»,\êMÑ™šz)Vø\î÷ùÿş;‰‹/\"÷ù\Ï\éÎ³S ®o\Ë\×Y1P ›°Y<-Mw\Ê\Åj¼\ÎP\Ég\ËH•e[óüô‰mÜ³zÏ±±,|‰¥§\Ï\ë\àsW.\à\êsgš\reˆ~ô Xyx\Ãle\Ù\æ<›†\Êl-\Ô+ù¨H2»\'É•\'ôò²E]œĞ—fñ´4½i\×>r\î\Êm¿b\ì\ß$~\É%¤\ßùv¼“O2{(µÿkK¥xf ÀMOl\ç;÷nDp„@¢¨û’\Å\ÓRü\íO\ämg\Í0\Ì\Ø\è/-6Uø\é\Ûxjs\çwÙ¯Q¨†I„cq\î¼N\Şvv?,\ìd~w’™ñ—Æ„xf9µG#û\á‘x\İk§<V~ ’XBp\æ\ì3rq„P|\ã÷±l%1\Ïb\İ`™\ïü~s:œ?¿\Ãl6#Ñ,”‚‡7Œpó“\Ûyt\İ\ëF*”\ëJ)„%ˆ”bqoŠ^<—+O\êeAO’”g¿d\ïW‹øO?ƒH¥ğ–ŒˆMM\ÑJ\ÔhQm[¯%¬,ó\Ùÿ|\ß=·›xc­\"©@*>z\é\\¾~\Õ\ÒCº®‘\è‡Dğe[óüß»\Öñ\Ì@­#U\êÄ¶-lK „À-\è\â\ï\ßxg\ÌÊ¾8\Ç\Ú\á:\í\ãq¼3N\ÇJ¥‹Ó­H*~\ÄP\Ùg\í®2+¶\È\×._\Ò\Í%‹ºIÂ¡6¿;\Ég^>Ÿ\ß=·)–Xj‘\ä‘\r£üqKó\æ©nˆ>Õªo$ù÷‡¶ğ\Ï÷mb\í\î2ª!¹b\İ\Z|ªDR2³#\Î\Ë\æw`%H¸\î!%ÂŒUC¶ŒT\Ø6Vg\ëH…İ¥:\Û\Çj\ì,ú\ì®2²«D2\ã²3ûøóS§³tF†¸{h‰m	N\ìKó²…]<²~„¸k!\0Ç±\Ø<VcÙ€!º!úTKr`¤ğw­góhÏ²t\çÔ‰­Y\Z”b\Å]+yó÷äª³fpñ\Â.º\Ó©˜\ÃDŞ‹)~¿ûú¡TŠŠQ#j¢\ZD”\ëcU†\Ê>[†«l®°e¤\Êp\Ù\'RPó#j¤F‘Â$‘9¼\í¬\\sÁlö¥\éI{“²\Ë÷‡\\\Â\áò\Å]<¸f\ZZmÁX\Ùgı`\ÅlDCô)–ˆ@2fÓ•ôØº«L\ä	P¢1Nv\Û”\êw®ä‘µ\Ãôdc\Ì\íIÒŸ‹Ó›ñ\è\ÏÅ˜–1=\Ãsl\æt\ÆIy¶zŠ\"C\í‹ÀA¤\Õf\Ñx\İz$\Ù9V§X±-Áp\Ùg°äƒ‚…:ùj@)ŠµZ \É\×\Êõˆ|5 P	j!¾T„J\é\ÏRIE¤\Æ‡\Öx¨Hb!8u~\Ï_¹€×\ÒGg\Ò=lû¸c3»#~ñ	>¥C\Éx!ú!s¸\åÚ³ù·?l\á–e;\Ø2\\A*¥½Äú\Ætb,¡[/Iq¸Â¦‘*°…À`#p,\Ğ\ÉaX\ÍAIJ\í\Û\á¤\ÆO\Õ\Øø¢5\\I“³Y \Z)ˆ”B	\Ñ ¬f‡DOdnMfV-ò²ñP`Iğ\â6Ó³1fv\Ä9¹/Ã…:8{N)—®”G\Ì9¼I6\nE\Ô,µm\ë\\)\Z³\İ\rÑ§Zª˜×\äK¯Y\Ä{.˜\Å3~¶l;o\Zcd¬Nd”\n‰@…Í™\ä¢%…\"¥ec÷†Lú\ÑúRk:ğÒ¨;Wú{!`µ\'ˆ\ÅN‘á´™YN\íÏ°xzŠ¾lŒŞ´GÌµ‰9\Öa\'÷DTıˆõ\Ã„=¾fJc®e¤¹!ú”\ìq‡¦§YØ›äµ§L#ˆ$\ÅZ\ÈS[ó<»½\ÈÆ¡\n»ŠuK:}´\ìS«†(¥P”H1>½¸)¶Bk„û\Ü\Ô{FJ[š\ì„[RW¤	ÀR\nÛ³‰\Çrq‡LÜ¡+å’;t¥<ö$™ß“bvgœy\İIKk\Z®m\á\Øúkk¢/bŠ1Z	¸gõ0–c5\îUJÅ´ŒÇ¢Ş¤\Ù|†\èG^º»¶…kk\éÖ•ò˜Õ‘\àuK§#•\"ˆ$e?¢\êG”ü?•|v\ëÔ‚ˆ-#5*AD±²«P#ŠTË¹70Zg´ì“x\ÉR\Ã\Ü\îD‹xJ*1›™‰Iûs1r	—\\\ÂaZ&F*fsm’®EÜµI{N#¨ı	–\Ø/\è8R\nv\ê¬\ØVÄ³µ³¥µ¤Y¹\'õe\Ì\Æ3D\éu-pZ\é¬6Ù„\Ûd¨Z*h\Ãü\ÕÒ½ù3\Ô^ş…Rœ„ \Ís\ß<\r&’Ôš`.Œÿ®h\ZG«ö;X¬ó\İ6!¥B¸š\äQ\Ãgñ²…&´fˆ~ô’¿e£\ï!™±ÙP*ş¸%\Ïo\Äu,D#š†’\Óú3¼ñ´\é&+\î\00fÒ-MfrK\ÓY?Xæ«·¯¡P\r°­É¥$—ôx\×³¹|IY(#Ñ4“SŠµ=)ºR¦¹ÂB¯ß½e[òxl¸°\Ñ\â\êMgôñ\É\Ë\æ™v†\è\ÇòÕ€M\ÃU~¿r[Ÿ\ÙÉ•\'õòñK\çıÉ¯\Ë\ÎB\ï?¸™=²\ÇÑ±‚°1\0òµ§L\ã¯^µP‡\ÕÑv}\ëh•\à_\Ü\ÌöE®¾h\ï\Ùl¦e¼?\éµ*ù|û÷ù\æ½\ëu\0AI,KğúS§óµ·œÌ¼nR3D?\ÊQ\r\"Y?\Ê7\î^Ï+µ\'=\ár\Ê\ì3²G÷l3¥µPR$µ bz6vX\Ão\ë\Ëüôñm|óõ4òŠBIO\Ú\å\Íg\Î\à/^±À\Üı\ØÀ3¾r\ëJY7B<\åbªGüf\Å \'\Ï\Èp\É\ânº’/½.•\î3Zñ\ÉWCŠõ¡b±:\ÛG«Œ”}\Şy\Ş,.Y\ÔuX<\ß\Ï\ï(ò?~½šŸ?µ\á\Ø\ÈH¢”\â\Ì\Ù9>t\É>zñ\\³yÑ\r(Üš\ç\Û\nÄ’š\ä\01\Ï\æ\áM£ŞºŠ72Sfe\é\Í\Ä\èLº$=›t\Ì&\æ\èTSÛ‚˜kcBTe˜Tº0%”Š \Ò	<a¤\È\×B\Êõb-¤X‹¨T|†+\Ûò5\Ö\r\éœü]…:\Åz\ÄX% ô#lßœ\çº+\æóò{™\ÕyhrjA\Ä\ïWó\İû6q\×s»Q– ’’9q.[\ÔÅµ—\Í\ã\ÂfBÌ¡\Ât˜yI¤¤\âÇğÙ›Ÿ¥\ZD\Ä\ÜF#†FÂŒJ\Âzz;\Ì\êŒÓğ\èI\ëôÔ¤‡\çº\Ó^#uZ:†l$\×t\î·e\éQ\ÇA$ñ#©‡1((TCªaD5ˆ(\Õ\"\nÕ€ª/\Ù>Vc°\\gw\ÑgWÑ§8Z\ÕX\Ë[ ,\İ@Ã²D\ë€¨ù!\×\æªsgr\ÕY38kNi™É›\ë\ËÜ¾bsû\Z\Æ\Æ\ê\àZL\ËÆ¸hao;k\ï2\r \rÑU¬,óµß­\ç¦\Ç¨k\ï•7®„‘$”Jg\Ë5\Ò\â„ccca52\ß\â®İª6Bs¶¥\Û$‘–\Ş\Ík‘$jJõHFRŸ\0„%°mµ½—=\ÍğfŒTP÷Cğ%³û3|ì’¹\\s\ŞL\æt%ö»£•€?¬á†‡·p\ë\Ó;	Q\Ì\éJrşüN.?¡‡·\ÙGo\Æ\Ìb7ªû1ŒE½)¾ü\ÚE\Ì\êŒóË§w²|G‘Za[\Ï\Ö\ÒXMföf\n]3*•.;\rQÔ£ ¥\0¨j[õj³^\ç\Ì\ë#¡®-ğ§\åôjx\Ï\ä¼\æß‡‘.•R3\ß‚l\Ü\áôş»\Ì\èJÒr©ûŸ\Üú\àú~ö\Ävn|r€Ñ¢Ï©ıY.=±‡ó\çwğš¥\Ó\èNyf“‰~ü ’Š×ğûUC,(ğü\Î\"›†ªõa[X¥k\ÓiT®Mú-b\îG\ê\îõÀ÷øÑ”Ì‚Vî½–\Ò¥Q\Ô µT`	º31ºS.3;\â\Ì\êL0§3Á\ì®§ôg8qzš\îôş	ú\ä\æ1~ıô\îZ3B¹\Zp\âŒ§\Ï\ÉqŞ¼.^\Ø5¥e®†\èG…ƒnıP™•;K¬\ÙYb\Ó\î2«Ë¬®2\\®ã‡’ ‚HIhU³	„5n+7U±ß€lJü¦9\ĞøšV¥šv\ì9¶E&\î03\ë1#cv.NoGœ\Ù]	¦et³‰¾lœ¾llÒ™iOo-p\ëòŒ\äk\Ì\íMqú\ì§\Ì\ÈĞ—3\ê¹!úŸ(Jõˆ\rCe6\è\Ö`\ÉgWÁg¸\ì“/ù\äk\ÅzD¾R\r\"0V	\"¹‡\ì\Öò[ H\Çl’ÒCÊ³H\Ål21—lÂ¡#\éÒ‘t\éIy\ä’.™¸ÃŒlŒ\ŞLŒ\Ù™9\àp\å\Î£•€¥32\ä\Æj4D7\Ø[\ÅWŠR-¢T©úe?¤\âKÊ¾\îõ:\Ş4\ZK´ih\çyÂµtOt	\Ï&\î\Ú$\\‹„g“tmş>sLıœ!ºÁ±\ãù000D7000D7˜Rl­rı#[yp\İõPš18d\×\çQˆ\å\Û\nüô‰m\Üû\ìn.9±‡\Ëw\Ññ\É†\èSˆ‘²\Ï÷\Ü\ÂO\Ù\Ê\æ±\Zù|\\2—™ñ—¼«!ºÁa@(\ßøışùŞ”ıÛ¶ğR.ß¹\åPò\ŞfÑ•ô˜Ğ¸u\â§\Ã\ÕúGÃ\"ª¾d\ÅöË·Y>P\à\ì99®>w&©¸	ÁK0áµ£w®\ä/ny\çw‰7\â\Øzúª\"\å:3‹§¥9sV–¾8\Ó\ÒI—Ù	rqİ§=Ñ¬‚;@\Ûæ‰„¥dG¾\Î\îR]ù:c56\rWÙ¯±jg‰|¡F5T¥n6‘t,N•\åsW\Ì\ç\r§öa=\ß\rÑ\Üú\ÌNş\êgÏ³q¸¢G-3aš\Ò]aE£ˆ\Ä\à\Ø+H\Å\\\Ë\Âu\Z\Å0BM8\Ì\ìˆO »®RQ(!\Ø]ò\ÙU¨\ë‚©¨\Ö#ê¡¤\êGøAD\ĞH•¥\Úòë›½\æ;®nqñ^yR/i\ÏÖ…8\æQ\Z¢¼0\Æ*Ÿ¹i9?}bNLOKi™4§’Œ\Ï\Ô\ÕkªU’\Ö>u€1I­\ë2¡‚}\Ü\Ğ?/¤¿.­9\ïR\ê¡Qi\Ç\âôy¼û\ÜYüÙ©\Ó\è\Í\ÄÙnğB\È%]¾üúˆ,ÁmO\ï$%¶-ZVxkür“–v›°\Ö{\â‘-\ÆUt!Z\ìnokœ@cjk“Àûœ\Ø\"öVù-K\è6S~\Äck†\Ù<Te`¬\ÊuW.$³\Í5\İ\à… •b¸\äóƒ‡¶ğ£¶°­P#l”¦Z\è¦\í\ä\ŞCP\ïY¦ª@	\Å^\nu‹óû¾PûÁ3B«ô\n°Ä…`N_Šw\Ó\Ïk–Ncñ´q\×6\İ\İ\à@\Ğ\Í$ƒ%Ÿ›\ØÎ­\Ëv°nW‰¢\é\æŠVijkª\êø€u\éû\à·T\ãµ\é\Í¬\ÍYèª¡E$,Ag6\Æü$—-\î\â\ÏNÎ‰\ÓÓ¸¶\îfc¦\"¢ÿ\É ”Š ”\Ô#I5ºT(u\Í7`9\é˜C.\á\î7	F¡=\î\Ã%Ÿ\å\Û\nüöùA~÷\Ün\n\Å:µHQ“º6]is]·˜j°WLTµ›6·\Z\×\ÂU›\ènŒ[º\Ï\0%ˆY‚¸-ˆ%\\.]\ÒÍ¥‹º9cv–¹]	R1ûL60D\ÉD’B-¤PY»»ÌšeV\í,ò\è¦Qv\äkTŠ>I?\"³\ÉM\Ïğg§÷ñ¡‹fOº7¹RZ­W\n¶\çk<=ç›ól­²³Pgg¾\ÎX\Ù\'ôµ\Ç<¹÷$Ö‰p›\Ş{¡§¼&=™Ó³1ºS‹zSœ1+Ë™³s\ä®\Âz€\ÆS¢\á(¨…–¦ûŒ!ú‘‡JòµÁb\ç¶¹k\Õ le`´J­‘q-:31º³1.\\\ÜÅ¹sr,™&—pñlA6¡;º¾_)E©’¯†”\êùjÀ\Ö\Ñ\Z¥Z\Èö\Æ\\õ}?u˜\Şh#İò\è\Íx¤c6™˜C6\î\à9ˆ£#TDŠ\å\Ûòl\Z®rÉ¢®ƒ\ê.k`ˆ~È¨‡’mc5\Ø4\Æ=«‡¸õ\é\ì\Ñm‘“1‡9¹8g-\ì\ä\Ò\Åİ¼\ê\ä^æ›‰\"/\Z\Û\Æj\\õı\'9{f–ÿó¶¥¤<\ã\Õ?X˜ğ\Ú$Q\"Fk<´v˜\ë\ÛÊ“›óT|­R&\Ó{“\\¶¸›÷^0‹3feqm£f.\Ä‹„\ÃmOğÆ³úy\åIfL²!ú`W¡\Î\Ï\î\â¦Ç·ñĞª!j\è©*q\×Æ±o<£\Ï^±€s\æ\ä\ÌbfTƒˆß¯âµ#d‹²šE1D?ü\Ø0X\á;÷n\à?`¬\Z\Ù$®f?”\\¸°‹o½m©\éC~˜J\Å\Ú\İ%\îZ9\Ä\ßß±†ºqù©\Óx\İ\Òifq\Ñ/6\rWø\ê\í«ù\r€-Hz\ÍÀrc\î	–\Ğ\İMÏ™\ÓA\Ü\Ì\ê~\Ñş\İ\Å:+w–X·»\ÌmO\ï\àw\Ï1-\år\Í³ùòkiG¡!ú\á‚TŠ\à\çO\í\0\Û\Âml0r\Ö4wm‹{V\rQ®‡üùi}œ=\'\Çü$ó{’¦¢k(\ÕCv|v\ë\ì*\ÖX³«\Âs[üv\ÕnvUH$]^yro:³Ÿ÷?“t\ÌlWCô\ÃMt	«w”(U’¦4‡%\è,2EÌµxt\Ã(ncAOŠ3fe8{N¾\\œ¦§\é\ïˆÓ\Ò\ÓPÿ\É_õõŠ/,\Ö\Ù]ò\ÙY¨S¬l®°~¨\Â\Æ\á*\ÛF«\ìª€\Ì\éMò–sú9wQ7o9³%\Ó\Òû}|5d¬\ZĞŸ‹\'\èÀ„\×^P¢\Ã?İ·‘¿ı\å*†\Ê>^\ÌÁ±E‹\èmP Qø¡\"\n%(E<nsú\Ìº\Ì\îN2»3NO:FWÒ¥3¥\ã\×=i\ïE\ÅÒ[º\ZDŒ–Jõ‘JÀHÙ§\ZHŠÕ]\Å:ƒEŸ|\Åg\ÛX|-£U\ÊÅº^\äF\Æ`¦#\Î9srœ>§ƒó\æupù’fLb‚K¹q\ã\Ô\É\Ç/™kT{Côƒ\Ç`\É\ç¶e;øÙ“\Ûù\ãöC%%–m\áÚ¢U\İ.\å\Ç\ÓWıP¢¤D\ØÙ¸CÊ³\éH¸t\']z\Ó\Ó\Ò=IÏ±ˆ\Å\Òq‡l\Â!\Ùø=Ï¶H\Åm²q§U‹hÄ›\ÇMÒ³[%­\ão\â@w¦›Hø‘jıI$\Õ0jŒX—}j¾ş~°T\'’Š±ªQõ#üJ@”|=~y¨P¬‡•†+>µPR$e?¢V q\0\à\Ùt¦=ú2\'ô¦X2-\Åüi).X\Ğ\É\â\Ş4©IV¿­\ŞU\â\Ø\Ì\ãFy\ÏEsøğEsÌ¦5D?t<¿£\ÈC\ëGY»«\ÄsÛ‹l­²m´F¡â“K\è\ÙeÑ˜!\Ş\è¼\"@5\ÒQ#©HH©PQCš5–ßŠi‚§cq×¢£‘¡–ôl²1Àq¹¤‡\ã\r!:E{»\Øã«½Q¨…”ı°Usî‡Šr5 ’`	®\ÔI¤`¸\â#¥¢Po<Œ\ÕH_\Ü\ãE\ì{ª9Í²X™´\Ç\â\Ş$‹{’\Ì\íI² 7Éœ®$K¦¥Y\Ø{pIE\ÃeŸŸ/\ÛÁ¯—\ïâ§wğsgòõw\ÆôŒ‰|¢TüˆM\ÃU¶U\ÙQ¨3V	,\Ö\ÙY¬30Rc¨\ä3Z\r\ÈW\Ê~DµB¨Àˆ†\Úßœ=ºô´Y}¦š‡@ƒ²9\rQª––€ Q£>\Î%\×\ÙÃœ\Ø»\'ü_)\"5.Ñ¥jü£sk¶\0¡\'ªZ\rÁjº™J…Š¤>´P81‡„CWÒ¥\'£?c^O’¾LŒtŒù=	\æv\'\éI¹¤Ò±V%«v¹\Í0®\á÷«‡,\Ôy\Å\Ò^ş÷[—röl“\Ã`ˆ>…ğC\Éh5`¨è“¯…kC%Ÿ|5d´\â“/l«±«Tg¨°»\ä3Rö5y\ÓL%\Í´qf‰45s{\ï²ò–ƒOLh1±j\rhkH\Ñ,i§¨–™¬PvS¨Æ´\Õ	6‚5Á<±,AW\Êcz\Öcf.\Î\ÌLŒş8]tŒŞŒ§M”\Æ\ï¼oùö±\Zw¯\Z\âñ\Íc¬Ø–gù@‘±±\Z¶gó\çgôñ•\×-\á,“¨dˆş\Ò9óa¤¨’‘²O¡N(@		¥¢P\ÉWÆªA\ãk}PT]\r\'•¢\Ğª(\ĞV+A4®+¨U|}Hˆ=¤¹b\Ïs°À9\Ä\\»1\â®.›®.lqmA®a:ôfb\Ä‹\é\Ù¹„KgR7¡Ô¥¶)—Î„G.\ás¬†¶òb´¦gwh\é\É\Ícl\ØQ\äùÁ\n»Šu\ê~¡bn_š¼l6\ï8·Ÿ§§\Íf3D?ú~’ø\ÏõPH\í\ÈR\èûZ  [a4.\Ñ”*“~„B÷b®5Nô†\0q\Ç&\îZX– \îX8–E2¦\Ó|SMÌµğsø*”ŠU;‹,ß¦‰½=_cı\î\n;uv\ëøa¤2K\Ğ\ßç§M\ç\Íg\Î\à¼yfô²!úŸöá½”‘ür=b\ÓH…õƒe6U\Ø8Ta\Ã\î2;Gj\Ö†\Ê~¤›u(ºÀ‚\Ó\çuğúS§q\å	½,\éK3#kJU\æH<B¨:½3\îZt¥<œ\Ã\Ôw\éhKÁ©•zD¾²i¸\Â\Ú\İe\ßYd\ËH•BU›.£eŸb=\Ôı\âı¡@\n¡J‘IºL\Ë\ÄxõI½¼ò\ÄLK1§3AG\Ò5\Éı\èF5ˆxx\Ã÷®fG¾Îœ®3;b\Ì\îL0·+A.\ŞH q\êöLA¤MŒuƒeŠµ…:\ÛóuòÕ€\á²Ï|\íc5Jey(…’’\â‡:ª\Ğp\êksC\ä²1Î\×\ÉY³sœ37\Ç\â\éiús1\Ó>Ú¨\î\ÇB©mdm\Z®rßšaş¸eŒmc5\êµ7Rx®…\ã\ÚXM_.N6n3«#AÜ³\È\Å]úrz\Ó÷¤uV]­9L\æA6IS	\"\êvõ[BP¨\ì,\èÄ˜b-bG¾À\Æ\á\nµ@²e¤J=\Ğ	4‘TT\Í*ıñ›\áºH*vkx\í#\Íj„Û¶H\Æm:S\İ)§§8gNg\Ï\ÉÒ‘ôt×„C&f›TVCôc:\Ë, P\r\ÙQ¨±y¨\Ê\æ¡\n+w•X¾­\È\ê\íE\ÂZ€-Às´s\Ìnd\ã!%p›\É8€\í\Ù$“n[\Í\ZŸÄ°\Ñ5kõ¿Q\Û-\Ğ\áş IN©\ZqüZ#D:³M\í\Ë1\Ğô–R¥À²\È\æb,\èM²°;É‚${SL\ËÄ˜\Ñ£+é‘Ši\ï½\écˆ~ü;\Ó\Z$ò#E=\ÔöZ!#\ÅH9`óH…Í£Uv\êl©RnØ¿²¡!R\"”üz ¤RTk!Dr¯)+_÷\r}ñ”ƒk\Ûzb‹Pt§¼V²O6®\Ç@\å’qÇ¢?§;\í± \'ÉŒFƒÉ„kcÙº¡£\×øˆ\Ù:ü\æX¦{¬!ºAû! µZJ——9lJA¡\Z¶ˆ^®‡\ÔC	BWŞ•\ê!A(÷™™ú‚^¼	[2q\Ï/\Í\íIy&z\ÂÁj¦ú\n°-\Û\Òe»N+ó\ÏÀ\İ\à°\ãU\íß«f»\çC!j\ëñŞ´\ã[›\Æğ\Ø\İÀÀ\à\èƒqm\Z¢¢¢¢¢.˜¢–\É\"ŠğW¯!\ZÜ½\ÏvMN_\î¢E`›tNƒ£&>I¨J…\İù\åŸıŒV/¦\æÿ©ˆ\ìû\ŞOÏ·¿‰Hš\é©F¢\ÃF…İ™\Ãî›Púû&¤\ïc\år&e\ÌÀ\Ø\èÇ‡Xo¯k)Cj\"Côc\Ù\Ği\ï½\Øn§¦¢Gd×½Î…Rx®Œ\Ön`ˆ~ü¨î´¦(\ÑP\åi40L70D?¸>^Ğ­\Äş#\İÀıø\ê-ó|]ZÑUû||”Q\Ã\\oq\\¦¢O\\\ÔwµYo`pôÁ$\Ì‚Ş®;¡ª–TW¼¸8º¬TP\å²şğı	Ç°…H$±2i¬löø[\Îj\rY*\"+¨ûm,\âqD:…\ÕÙ‰°ö-T¬]‹ÿ\ÜóˆDw\îD<Š\"œ™ıX™ŒÙ³†è‡¦ºC#¬&]]Wõ:õg–¬XA8°hp9–\'\ZCU«´f‹;6v6‹\Õİ\Óß{òI$ÿ\ìuXûK³UŠ`\Ó&*·ÿ‚ \Ñ÷¹y¢H„\ë¿üR¼SN9¸7EÔŸYNõşû÷ @>ö´i¤¯~\Â\Ùÿ–òW­¢ş\è\ã„[·\r!\ÇF‘cc\Èr¥M+²\Ò¬\ÎN\ì}xK–|\Õ+°g\Îl¶p]ˆ\"‚u\ë×­C–J)\Ò\ï½\Æ\İıEH!5N›˜ò~ .GG©=ö8µ¤¾\ìi\äğ²P@V«† %*Š4›j‚€À² ±¡­Lš\Ò\r7’|\Å+\È\\û!D<±\ÃH ªU*·İ†¿z-\"æµ½yU©+—ñN<	œ\É\à¨  |\ë/)\İp#¸n›š£‚ø¥—’¾ú\ê½\ï»PÀ_¾‚\êı÷S_ö4Ñ®]È‘QTµŠ\nCˆ\"T!šó\à`•e#\á8T’IŠ7\ÜHü‚ó\È~ôZœ¹s[\Z\İÙ…;w\Ê÷ñŸZ†ô}œıf³\Z¢¿©\ŞH˜™ ¶\Úg\ÛF/•¨üúvJ?û9\á†õD#£¨ra[\à8(!4±«A ¶\â¸Æ¤Âhh˜p\ç.ü•+ñ×¬¡\ã‹_À™5k¯{»«w\Éj?•N·½wY*SòI‚p/>ûBnİŠ¬T®\Óz‡JJ„m\ãLŸ†˜P¹§Â\ê}÷SúñW¯F\"K¥Ö½bYz¼\ãh©¼\Ç}‹\æ½K‰\Ìç‰††×­#X»\ì§?I\â\ÒKõ\ï%\Ø3gK¥°§O\ÇJ¥™4VW—Ù«†\è/R¤·¾T\r\ç\Ü~$zn\ØHõ\î\ß#’	„\ã`¥’MY¨§š(M¤6\×^ó\0h|¨¦ª\êy¨J•\Ò/o#Ú¹‹\Şı{;™«§›ø—S¼şz„\ã´\ÈJ%ñW¯!X½æ ˆ.\ëu\ä\Ø\Âu[\ê¹Db¥’¸´……mm ö\àC\ÈRóZ&‡„R¨\ÆR¢\Ğv\ß¡M\ÇEÉˆ\êDbı\Ã×ˆq:\"‘À\î\ï\Ç\î\ë\Ã]²¤U&üBvıŸ*\Ìj‚Doûú\0fºˆ\Çq\æ\Ï\ÃÊ¦µô²,T¡j5TE«\íÂ²±\"‘\Ğ1=X\Õj¨†\n*&&\ÂuJQ{\ì1J?ş­úO|M\ÇÁ™5{\ÖlT¶\Çü92‚¿zM\Ã0¹\ÃMlkİ¿š uE&ƒ³pÁ^\ëd÷M\Ç\ê\êÔ¦‡\íh5½^G•+H\ß\×$ö<¬D+‘@x1°²VGùÁ^\ËŞ´\Éı•«(~ÿÈ±ü¸V\àyÚ\çºZC0}ŒD\Ñş¸}|ıB\"]x\îÂ…XÉ¤v>¡pº{ğ\Î?÷¤“p.À\î\ë\Ã\î\îF¤’\Úö/·m§ş\ÔST~u;\á\î\İX®\Û&¥„\ã Â€\âOn\"ùÖ·\âôMo°Ó§?ÿ\\*·ÿ‘É´Ş¬°,dµŠ¿j\Ñ\à Îœ9“#úğ0\ÑÎ-¢·\rw\È\åp›vó¸s\ç\âÎšI°j5²^\Ç\Êfñ–Œwò\É8‹\ãÌœ©Uştª\å[w\î\"x\î9ª¿»“úòˆdRKø	š‚Š\"ª?Lõ\Ş{I½ùMfS\Z¢O\æ\ŞPÔ…\Ö?9°HX\İ\İxgŸğ\\Roz#\ŞÒ¥X\Ù\"Cx\ØÂ±Çµ)ñ\ÎI\\y%©·¿±¿ÿ_\ÔyD«¸–\ÕTú–M8°\Ú¾\ê­m5òvo/ñó/ r\ç\İ(%¢ı}–`\ã\ÆI]I‰¿j\r*Œ°<·Mınúœùó÷ú;{\Îl¼3\Î@\Õ\ÒW¿“\Øy\ç`\å:\Æ\ï\Ûuµ]\ß|\ßJ\á…!\ê²KI¿\ã\í\äÿ\å_)\İôS”eµ“\İq»vQ½\çCtCô)ay\ÃFoL2U†\î‡\ï\Î\Ü9ô|û[Ú‹œJµœO/lPYZõ<b§B\×ÿü;v½\ëj¢mš MG˜Iª÷\İOú­oi?_	Ü¥\'a÷ö\"GF 9G\rÀóÖ¬#Ü¸	.½ôÀ\r3¢ˆúÿ¨=%ºR`Ûº\Ç>\ÂjV*E\îó×¡+n™$û;›ª·•N“û\ì§	×®¥ú\èc\àx4\Ï*\Õ0¢mÛ‘ù¼núa`lôÃª·«a/+@2™	g\Âq°{º±::Lò}l~wÁ|/9x^\Ëq%šN+\á\ÆM{\Õ3s\Ş\É\'¡\ê~›u!,ÂúSËˆv\ï>ğ{ˆ$ş3\ËÛ¤jS\Ò[©ñ_ö\Â\ÚL6£Í’‘|_\äô\éd?ó\éF\ÈQµ›L–@–Ë„»v›}iˆ>5]»Yš*š¡\ß)u\0\Æ/¼\0\á¹{ZòU\à\ïó\r\Ø}}\ÄN?U¯ii\Ù2¹\Äcø\Ï>K°yóo;ˆ†÷–üR\"	b§Ÿ>5÷mÛ¸ó\àô÷£šù	tW\å\nr÷ Ù—†\èS\èSG¶Eœ·x	\ÂvA\É	Ò¹\á‹CT­¶÷\ÃM§ğN;‘I£¢°¥y´\ç>Ü´™p\Í:ˆ¢~a)©ÿñIT¥\Ö~\ÃJe\áÌŸ‡3{\ÖÔ­v<†\İ\Û3‚£\ÕÀT\Z¢O¥êœ\áM¦Æ·ø\Ş.ñN!°g\Í\Ä[ºU÷\ÛBt\Ø6²T\"X»™/\ì—\èÁó«P¾¿G”A!w\Ñ\"D*=µk¾§U¢\ï\ßg\Ènˆ>5ŒS¨=¥û‘\Øo¶µBğÕ9sˆ_pN\ÈQ‹Æµj>F¸u\ëß®”\ÔW¬\0µ·¸n¨\í\Ş\é§M\í\Í\Ûv+\íP\íu»†\å“öw˜%8x{Y¨½…‰z{Nù~\ë\ßG…Q#\í5hÙ¦Ñ–­H%[\Ùcº¸F\ç\Û\ï/\Ñ\Ş\Î\åğN:+›\Õ×ŸH\"\âq\êË–lÚ¤	»/^*¬^¤ ­i–È¤‰uÖ¡\ßw¢\êu¨\×õ×¾¯\ï%QR›rtLÿ|\ÏCN€¦4\Ø}ªôg5\îeWPÛ¡l7U¯\r\r\í\ŞM°a#\áÖ­„[¶mß¡U\é0$\ZFU*š\ÜRB­¦F&H³ú	lwÁœ™ıº\È%1è¶­=\×6 j5D<¾—ön\ÙJ8°„…Õ¼\×Fş½\İÓƒw\â	w\ãQ¤\ï{x˜póV‚õ\ë	7m\"\Z%Ú¶]ÿÿ\È0ª\\¡Æ¬\Õtv\İ^\\7\İ}\Êlt¡É®\Æ\Õ_uTW\Õ*Á¦MÔŸx’\Ê¿Á_±U,!«µF\\\Ú\ÒqtĞ‰$³\álk³U\íÛˆ\İó!/˜‡w\æ™ÔŸYH\Æ\Ç])D2I\í‘GI¾\áõz¤\ÔD¯=ğ ¶Ï›y\èM¢»±sÎ™ü}\×jD;v\à?û\å_ıšú\ãO\"ócº=Šô}Ú¶&¯eµW	Y{›-¦EŸ!ú‘\ë\rPS®¨EF\á\Ö*w\İMé¦›ğŸ~‹kb\'\ãqj¥´\r\Ü:Böö:ŒaO›N\ì\Ì\Ó)ş\Ä\Ñ\Ş\ë‰Yr‡¿r%\áÀ6Ü…\Û\íğ(¢ö\È#-7w“\êJJ¬t†Ä«^99!¾kÕ»\î¦t\ËÏ¨=ò(*°I}\ßñx#k¯Q¥\'U\ë®E3p\ÂÀ}j8.\ÚT÷\Éd\ÆEÔ—¯ ÿ\ÍoSùİÚ¾\Îf\Ç5‚HB\à#ƒ@K5\ÏE¸^C\ÂMaA U\Ù6\Åur®gg\Ş|¼E‹6mÂš¨¢;\Ñ\àş3Ë‰sv[%\\48D¸ys›©\Ğ,\Âw\æ\Î%vÒ‰|\İpófÆ¾ı”ÿ\ë\çP©\"q„j• ú¾¥Ô¤\Å\Ú\Ê]…B×–\ïy›\Â0\İ}Š\Ù\ŞL“™H€R%U\â¯x–±ÿó©üöwX™lKWR\ê\ê2/†=£»§§o:VWVW\'–k[ G†)\İ|ø~›:?Ù½\îÎ›‡wò\É\ë×·\ÉIaY¨  ö\Ğ\Ã$\ßğúq¢+…ÿ\ÔS\ÈÑ±¶\Ú{”BX\Şi§°\æ;\Ø\Æ\Ø×¿E\é\'?\Ñ$N%\ÇKTƒ@w\Ğé†\Ó?‘\Í\àôõa÷ö ‰\ÖJ«J…Ê­¿$Ü½»ı\à\ãt7DŸJ;]Œ÷‹›\ÄN“\Ã\Ã\ä¿şMªw\Ş\İ>ˆ1Š@F¸¸ür\â_L\ì¼s°;;÷y`ıÊ¿ø%²V›P\Å6ùx¾=£\ï\ÔS¨üö· Õ¸\r¬\"‘ ş\ÄDƒƒ¸\æ·XT{\âId¹²·}\î\Ø$.\Û¼\Ì\ç)^ÿ#Ê·Ü¢Ko]W¿ºG3{‰+¯ ~Î¹\Ä/½»¯o\ß\×\ËS{\èaØ¹³½ôT™w†\èS\ì\Û\×7bŸ¨:\Õû r\Ço°š¥˜lğ\ØYg“û\Ô\'ˆ_ñò\æÀ+¿ş\Â\Ò{d±\Î\âEX=\İÈ¡a7\ßü?\Ç!\Z\"\\¿u\æº¹…_£öÈ£:~\î8\ãö¹RØ¹ñ‹^¶\ß×«=ò(¥[~¦UòX¬EJU«\á.YBö\ã×’~\Ë[Z\Ò{¿÷\İÌŠS{¦#\Z‘>Y˜„™ƒV\ÜÕ¤\ÉSú\éÍ¤	ó À=›\ì\'?N\âÕ¯š\\¡‹j\×\Óuw–ƒ\Û\èŞ‰\'\ât’n8±‡4¶<\ÚÃ\"GFğŸ_I¸~ı\'£h…cç¿\ßÆ‹²X¤ö\ĞC6´YE\Äb\ä>v-\éw¼\ã€$\ß\Ó>fÀ!ú\çJ“}O\Â\ïE)	·m#X·—:F?û,\âœÿ\",ˆ‡\ÕöR\ßf\Í\Ä[z2Xv[\î8\è\Ü÷`ı:dQ§\ÃV~}‡Î¦kú”B)‰•H’üó\×\ïWm7m\Æ_¾+™\ØC:ûx§†w\ÖY\ìk`ˆ~TJ÷½’Sƒ€p\ãF¢\áM,&ôƒw\ìş~¬\ÃhGL\â\×\ãqbK—bõM\×Î°6#^7±ˆFF‘…\"õ\'\Ô]ZÅ„\Ä©p\æ\Î!~şyû%z4<L´c§n\ÕvøEx¼ \â\àn\İHwCô©cö†5Z>Oˆt·ÿ®B•J:\ãlB³Ñ˜\ë$¼ƒ«K{”kµ‡¼&w\ÑB¼E‹tš\í\Ä\ë;ÑDÛ·S_¾œp\Ûvö\Õ\Ï:q\ÉE$ª,‘•r\Ë\\ipÂ‚x\ì \ÚL·NuN:CtƒC¦û­”l$\ì\éVB«õª™6Y\Ø\Ö^/&öa»P}_°\0w\É\â†\É=\á\ï,Âˆ\àù•Tw\'2?¶w\r»”¤®ºª=¼·¯[÷}\Âön4B\è\ÖÍ…¢\ÎoŸ\ì:{¾»=¹n\ÊT\rÑ§’\İ\í_\'”ª}H!\ÛÚ»\í°\ë7n\ß>©—FG)ı¿›uÎ·eMxU\ÕF\ÆI=ğLwñ\"/Ÿx\Ğ4\Òa«÷İ§“zİ¶u[Q„wæ™¸‹0Á^¸\î\İ>¡ZN8ÁÊ•\Ú\ë?HIù·mŞºw]aòeÑ§Š\èb±Šû‰¯Y\"“E$m\İQ„`\ÙÔŸx’\êwğ%kü‘/ı5¥oÒ­Ÿ­¬Úµ„ƒô¾Ÿ²g\Îì½ªÂ„\ë¬[G´c§ö@ˆf÷	®£û\ÒM¢_º•\Í\èp\âÄ¶Wh\Ï~°z5•»\îF‹û½F°v-#ıò\ßşGd±°STÁŸ:Œ\ës²\æy£\'9R¡,±§@o\'}\Ã\æu\æ\Í\Ã\ê\êDµ§¸rlŒ\Â„²,Rozc›İ«\ê5jO=M\í®»¨\Ş}şºõZ“\Ø+\×\è^wû\İ[º÷\ÄñW<\ÛnZRg¾1Qs‘\n§¿\Ä+_Ñ–ú‚VFov?Á†\í½\â,ÿ\ãF’\Ìûß‡=}Z\Û\ßú\Ï=Oõ®»©\Şy\'õ\ÏBiõ]\í\Ù_C`¢m†è‡Ÿèµš¶/¥Ä²\ì†ÄƒVyÉ=\Í,§\î\ÉK©\ßsVe÷°=\ÃÍ›\È\ã[T~ñKœY3±:;‘c£„ƒƒD\ÛwmßªV5Á…\ĞUd¯[~€Chvc\år\ÄN9…\ê]wkg\á\Ä÷&š­/\Ç\ík$^ó\ZM\ÊI°Ë¿€ø\çS»ï¾½’\\„\ç!‡‡(^=µÂÖ‹3c\Ñ\Ø\Ñ\ÈÑ®\İzôS¡€\åz\ày:BĞ¨nksF*\ÃtCôÃ­µ7œQ{\Ê4›B\nvGn\ïh½½d®y7µ\ßİ‰ˆ\"°\íñ<s!¶£‡/\r!z\n\á:¨ Ô‰%BŒ`jLvñN?`\ãFD$_t\Ã:w\É\"\ìi\ÓtRKs\ÄR‹“¢U´£”B\Äb¤\ßùIw°\É±s\ÏÁ7Ÿh`\0+•\ÚC¥p[3\àš­­õ}‡­LV<®\ï»RÁ?U©\åó-\Şôœ06ú\ÔHô @Õª\Úc\Şpw\ë\Ùk:µ-½¥¢»$.¾ˆ\ìg?¬ûzj(\í#„\ãhõÖ¶!’`[X§%X²^G\Äbtı\íW\éù\Çoc5\æ·¤\ï!\Ş;õ4\ÜE\Û4‘¶ŞM-9I¾\â•8³g\Ôk\Å\Î?Ÿ\Ü\Ç>Š\Õ\Ñ\Ñ\Zı\ÔV\Ø\ë8‹\é\ÏQ–ÀŠÅ°<O7\×hÌ‰O]õVº¿ùuÜ“O‚	cš\İHô) º\è\Ù\ÛR¶JU›\ÒYØ¶a¼\"X9²\×~U«Qüş¿¡\\W»)™š^ó&i•Ò’,P\Õ*ñ\Ë/%÷\éO¿ğB-\å|„­=¢h¯\Ùk“=­W“W\é{\ïj‚\í¯ÀsI½õMˆøÁõe·R)\ÒW¿Y«Rø\Î?\é‰„>\Ğ&:5›ƒ›~0D\Õ\ê8ó\ç\Ñq\İgI¾ê•ˆDg\î<dı.¬F¦Q€‘)l1D?¼Ö­GŠZ\Õlz…T£&=ÇšÑ·o´8ııt~é¯ˆ_z	¥~‚¿bÑ®]šV\ÂFM•İ™>÷”Sô£³\ÏÆ>­%ù\â_L°òù6;İ9\ãu‹\Øy\ç{òI¢\á\áFuÙ\È\ï”Sˆ{\î!¥¬Z™\Ù~€øù\çQ¾ù*÷\ŞK´c„Q\Ãg\ÑH8jÔ¥\Ûı3p-&õ¦?\'~Ù¥83g\"\âqTµ†{\êRœÙ³Zf€ò}\ì3ú\0ú6=Í‘8şõû\ä¿õd©€p\Æ\ç!%\"•bú\r?&vÖ™û\r?©0Dn\ßA¸~=şšuDÛ·£¢+Ã=w\Ñ\"œ¹sqfôauuµ\Û\ÅJl\İ\n\Õ\nmh]gŞ¼I…¾&B–\ËD;wi\'\ß>¼+%±r8Ó§ôµ\Û_H\"\Â\í;Ö®\Ó}\â¶l_7¿t\ç\é\Şğ\î’%š\Ì\íı\ë”\Ò¿m[\Ëë¯”B¸ÎŒ>Dc³!ú‹ƒ”~\âST~y\Êu°,\íTCQ„3{}·İŠ\İ\Û;\é\ë©0„ \ĞR¼\á³÷\àÁ½\Ù÷Oòszü‡3†¥\Ôø}‡a+«O8®n«\åºû?Pöõ^MŒÍ¨\î‡µÇŸÀ_¹Jo\ÊF³¦SM±s\Ï;ˆ’KZf<\ï\à³8÷\Æ>’DiQ\Äu-{Õúa¼\î¾ù<¥ÿ¸pı:½A\'6OT!©7¾¡½›!ú±U­Røş¨\ÜyW\Ãmµ«¡A@ü\Ê+ğ\Î8}¯„£ºõW\Èb‘\âD\á\ß~ +\Í<Oÿ\\I,a¡¢‘Hı\èµ/¾®\ÜÀÀıs<	·Pø\Ş÷)\ßüŸºg™\çÇº¦¹O|œØ™gL*ÿ\ÛÀÀıhARü	Æ¾ö\Ô~¸Qn\é¶\Õd7»®d\Şv™¼o¿½\ÓÑB\Èb‘\ê]wSôQ\æit?m\Æ\ËU½†\İ\ÑAú=×ı\Ä\'°»:Í¢¢k°:;\É|\äCDCƒ”ÿó¿ ŠPB ‚\0\áy8ı3\É~ì£¤\ßı®¶‰&†\è\ÇÚ‚ô÷“ûô§Q\Å\å;~£\ËM§õ¿\ìr²\×~ï”¥&k`ˆ~<À]²˜\Ì\Ç>ªg¢)I\ê\ío#ù\ÊW\\RŒÁQ“»?›}tLıK\Z‚¢\å0™q†\è†\è†\è†\è†\è†\è†\è†\è†\è†\è†\è†\è†\è†\è†\è†\è¢øÿ–\éq\Ğ,÷e\0\0\0tEXtcomment\0File source: https://uk.wikipedia.org/wiki/%D0%A4%D0%B0%D0%B9%D0%BB:%D0%9B%D0%BE%D0%B3%D0%BE%D1%82%D0%B8%D0%BF_Java.png‡d\Æu\0\0\0%tEXtdate:create\02015-09-14T15:26:22+00:00¼\Ì?¡\0\0\0%tEXtdate:modify\02015-09-14T15:26:22+00:00Í‘‡\0\0\0GtEXtsoftware\0ImageMagick 6.7.7-10 2014-03-06 Q16 http://www.imagemagick.orgoŸ¢¢\0\0\0tEXtThumb::Document::Pages\01§ÿ»/\0\0\0tEXtThumb::Image::height\02596!ZX\0\0\0tEXtThumb::Image::Width\0259\ê	\Õ\0\0\0tEXtThumb::Mimetype\0image/png?²VN\0\0\0tEXtThumb::MTime\01442244382,—\×\0\0\0tEXtThumb::Size\017.5KBB¸¶\n3\0\0\0\0IEND®B`‚','java.png','image/png');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potential_worker`
--

DROP TABLE IF EXISTS `potential_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `potential_worker` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `card_id` bigint DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_card_id3_idx` (`card_id`),
  CONSTRAINT `fk_card_id3` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `fk_user_id3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potential_worker`
--

LOCK TABLES `potential_worker` WRITE;
/*!40000 ALTER TABLE `potential_worker` DISABLE KEYS */;
/*!40000 ALTER TABLE `potential_worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profession`
--

DROP TABLE IF EXISTS `profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profession` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profession`
--

LOCK TABLES `profession` WRITE;
/*!40000 ALTER TABLE `profession` DISABLE KEYS */;
INSERT INTO `profession` VALUES (1,'IT');
/*!40000 ALTER TABLE `profession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `profession_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `card_id` bigint DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id4_idx` (`user_id`),
  KEY `fk_profession_id4_idx` (`profession_id`),
  CONSTRAINT `fk_profession_id4` FOREIGN KEY (`profession_id`) REFERENCES `profession` (`id`),
  CONSTRAINT `fk_user_id4` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume`
--

LOCK TABLES `resume` WRITE;
/*!40000 ALTER TABLE `resume` DISABLE KEYS */;
INSERT INTO `resume` VALUES (1,'Bodya',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int NOT NULL,
  `picture_id` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_picture_id2_idx` (`picture_id`),
  CONSTRAINT `fk_picture_id2` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Chenivtsi','Bohdan',3,'1'),(2,'Chernivtsi','Sasha',5,'1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-17 20:29:46
