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
/*!50503 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `card_to_picture` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `card_id` bigint DEFAULT NULL,
  `picture_id` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_card_id1_idx` (`card_id`),
  KEY `fk_picture_id1_idx` (`picture_id`),
  CONSTRAINT `fk_card_id1` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `fk_picture_id1` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `picture` (
  `id` varchar(150) NOT NULL,
  `data` longblob,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES ('1',_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0�\�Z=\0\0\0gAMA\0\0���a\0\0\0sRGB\0�\�\�\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0%\0\0%IR$�\0\0DiIDATx\�\�w�\\G�\����:wO�F�\�q\�&/,\�$c2�\�.\�\�\�\�\�\�޽�%n`aYkc�\�,�\r\�\�	g˖l+\�Q�ع���\�\�\�3-\�\�H\�Ȓ�\��&h\�t�:��7��PJ)�kXf	\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r\�\r^R\r\r�u8F\�%0����\�/�,##�D78\� ,+�a\�\�D\��fA\�\r�ϝb\�\�\��\�S��=�Ҭ�!��q)\�c1\�J��U,�1D78n�z\���\�o�L�pCt�\���=s&*�=�8\�̚��\�e��$x�9\�\�͂��P��n\�d\�\�ฃ�\�\�!�l�\"��k͚�w�\"\�m\�����YCt�\�Nm�\�	7oϊ\�,�!���&\��U�QB4�\Z�\�Ǐ4C\�?�P\n-ǅ\�w7D78\�^�Q{\���c\�Οo\�\�ก��+�\��9�,�R�\���G\�<)����jU/\�\�\�8�f�\�1D78>X�֬��\�c`\��²�N:��ì�!��q���\�\��-d����.d�m\�W^�pL\�Ct�\�\�\���\���m�\�\�\�$q\�fq\�\r��+W��\�?��5]̢$\�6\�W�\Z+�3d�np�#\Z\Z&��ol\��ݰ\�%\�̙d\��^�g�np\�\�\�\�2\�믧z�\�\0!P(�\"Ro~#\��\�\�\�:J�q#\��%%¶�m�8�f�~\�;\�\r\�\r�mQ.)�\�\�\��\�\�|�Ar�s\�\�\�~\�83g\Z��Ӓ��[���9<��	�@V*$^�JRo~4\�opL�B\r�\�2�����?�r\�D�\�\n����\�ǰ:��\�\�\��E����\�\�\"\�ư<%@\0*\n!�\�E\�\�S�\�n�np,\"ھ�\�D\�\'7�\�F^�$�\�\��˿$��W��TCt�c��\r\��韩�◨Z\rbq]g�\0%Q�:�k\�M\�\�\�B$f�\�\r�5\���c_���/�\n�@G\��\�Z�\�\�@��\�\�\�9|���1�g�Ù?O{\�\r\�\r?��Tn�������rB�\�h�\���*�\�.!w\�guc�i��j���eT~�+d�D�\r�\�6Uo�\�SY(P�\�O)|\����v!\\Wwsm�+ET(?\�\\���%��N:t�<���x�\�o~K��?n\�B�կ!��\�x\"�2\�C(eh\�b\\n\�J�[ߡ��\�l{�\�R\nU,�x�\�t�����q�A\�\�U\�\�I�\�\�S����\��\�v\Zُ^K���i3�x\�D78\�b\\\�/_�\�\��=�\��(ǁ\�J*T�B\��\�Ji�o\�L�P��~\�͛��<VG�̇>H暫q\�\�G��yF�vA^.S�\�\�}\�[�[��KMii\�()Qu��\�\�J\�ӟ\�]�hr$W\nY�\�/[F�?��\�\�r\��\�&~٥d?�ab瞃�J)n�n0��\�\�)����\���*��4m�bWZ�k\�E$\��:��\��y�ɥD\�\�7��\�ש=�8rl�(\�\�\�$�����\��:r��!���\�\�[�2�ߠ���BX�\�筩�+� ��\�~�\�{�\�M$@rU�l\�D���\�\�wh[߲@\�f��/\"w\�ux�.E\�\�\�Y\�`�\��`\�F��S�\�7Z�7\��F�� ��g���\'I]uVz�p�ȱ1J7\�L�\�7\rl\�n�O�\�_E\�\�aO\��00\�\�Py<�\��\�O?��L�,]y&�\�)JB\�v\Z_�\"�/:�j-�%j=D��\�\�\�ip\\]�*JE��\��/��\�\�\�\�f�n0�$\�>\�\�W�B�f-��hh\�\\�P��%\��Ԟ��I^)���)�\�Q�\�&]�\�8 *��C�\�\���\��l��Q\�\r��\�\���\�\���h\�n�\�*��@(@F  ��\�\��\�_>`\��+�\�)��\���\�V�D�V*I\�7\��կ�\�o`$��T!�>��>�9\�\�\�uQJL\��B!\"\'}��\�}\�Sؽ��?8*�x�\���U���\�V�	X��\��,\��\�4�0\�\�H��\�#\�D\�\�X�J �\Z6��\�%�ַ\��\�/`�\���\�*������hpP���\�̞C\�#$�����np$\�Z\�\���h��\\\�p\�2H?\��\�\�}/�\�}��󀒼xÍ�}��\�B+\�E.\n�\�̜A\�\��\�W�\�\�\�F��}\�&F�����6!b��W�m�RK�t\\�Y�\�\��\0\�_��¿~Y*b\�bZ4\�u����/�%�W\\aH~\�<�c*\��\�T\�\�y-I�M�J��������=�8�o}�p\�\0V�\���$\�qt��\�o2Yn�\�G\�.\�aʿ�\�\�]}�\�Zu2L\�ڏ\�̟w`\�`\��\��\'\�-[�R\�	\'\n�\��f\�\�z����L=d>O�\�B\�덁�MF6\�2B$��\������ځ\�S��\'\���v��\�5*pf\�&��OЉg`�npQ�\�^�\�o�\�J)ZnT(E\�\�\�\\�\�I]\�_��\�C�\�`�Z�Z���w�{\���\�	�\�u��|\�m�j\�_L\�R�(\�J�\�~��\�ӧX�!�\�މ�\���v\�iw^\�̚I�u�\�%�F�)��@�a����	$o)\�\��~:�+^>�\�7P�\��a��*�\�8��\�,�!���D80��\�\�:ÌזKD2I�u��I�ԟz�`�ZD#�F#��m�3w�q��iD;v@\�o��&\�Eæ����%M\�bJnފ�{>B0�Q��!����mO �%�\�|�9���\��RA��鐜?,\0�\0%rpP7�00D78�<\�\�\�R�\�f�\�Q\0��o\��\�*P������m��PժYxCt�#	g޼F��f\�xu��ʓ�\�m�y�\�!p]\�\�>K�y�ne`�np�R:�5}��(\�8\���M��Mݨl\�\�t\�5�\�mU*Q��?���Y|Ct�#�\�+�Dx�΀k��I\�h\�N�d�\�d�;:V��hZ�D\�bT~�[\�˞c��9$����o�\�J\'� %Ѧ͓\'�\�`uv�c��jTָd�@\�6�X�tÍ\�b\�,�!���\�\�\�#~\�\�`و�.w\�\��y\�\�ŋuK� \�\�B�;߅�j�b�\�\�I\��݂�\�\�0D78�K\�\�\�J$Z\�u\�[!GF	�_9\�k\�N?\rw\�\"] \�T\�E���i�[ �p����Wǜ!�����h���\rlK�݀rl�\���OZ}��O\'v\�\�X�(��\�Bw�\r�{.\��\0��U\�3D78�R�#\�-��ֲ�AH��\� +�I>u�\�y\�\�,��\n�q�\���Z?��\�O��\��Ml\�\�\��\�\�3�\�~\�`Y\ri��4�6R�\�7�W\�\�;�\��\�kG���\�����\\X�~B�\�\��\�6Ct�)�\�M�嗓��j\�H�aYȺO\�\��D\n�\�\�o��\�Yg�\�>{E\�\�3c����<#�\�\�\�7D782dO&\��\�牟}�!�� \�\�WR�\�ד�\�c��F\���Gt\�PA\��\Zb<3V��,�5k(�\�{�\�\Z�L\r\�.��\�pf\�\�$�,��1���o��vM\�VO�\�=$.�XOt�\�YW�\�\�4U�[I�u\�Ct�%\�ΜYt|��؝��0\�&ܲ�\�w���M.�m�\�d\��>ܓOFA��J\�\�%\��˖��7D78b\\w]��}\r]�\��Lr)��O\�W��z�\�\'}���\��W_��ٯc\�J5l\'\nw�\"�T\�{�\�\�\r\�\r�(\�c1�}\r\�k?�H%J!w\��\�\�\'�$_�*2W_�Ցk\�\�\�Cn\�\�m\�\�\���N��\�\�\�~�Zp�R�O-#�\�\� K�I_\'��ϐ�\�*�c�Bwj�\�\�b�)t1D7x\�\����y����\\��;��\��\�k�E��\�\�̛׊���\�:x��YpCt��\�avv\��A\�\��J\'	6o��\�\����3{\�?{=\"�DEQ[\"M3\'\�=\�$\�S\�\�\�%}�\�\�\��\�W��HP{�i�\��W\�\�Ȥ����\�\�\�\�k8\�ơ�\�8���2CtCt��\Zvw�\�|�\��ߋ�HQ��_P�\�W����\�c\�\�\�hC����x���w�i�\�\�G٧O�\�\�_\"�\�O��U�7�ժ\�\�\�8\"�f|�\��S���\�w0D78�n6K��\�!w\�\�v\�x���\�t���\�g.�W�|ͫ�47D78\�${O�O|�ܵ��\�ST\������$�a�\�r\�\�����t[i��f\�\�\0D:M��\� R)\�m\�t+�@�q����\�\�.ZH\�_|\�%S\"\���\�#U�\�^d�\�3\\�#�a:21z3KgdX؛\"7[\��8B ;�5F\�>��>�jH̱�lq7\�\��?6+�#�\�w�]{���\�\�؉,��NXB\��ʔ�\��j�-\�ɽ�ٴ�Ȫ�2#�Y\rA*pmY�Τ\�\�$\'�gyŉ=\\qb	�Y\�a��)Cz)ᇒ��U��\�X7Xf\�\�2��\Z�B�!�\�\�x�\�\�ҟaQo�s\�v��ه��R\�\�{\�׈�G\�}\�{�=�(�\�$��\�H�z\�0b{�Ə\��\�cLKy\�L�t�<\�R�e�\��\�E�m\�S�؎��\n۶���s\�\�N��t.�.\�6\��\�E5�xt\�(Omͳ~�¦\�e�\rW\�V�3\\򙕋sŢ.N��cɌs�,\�Mљ�z)V�\�����;��/\"��\�\�γS��o\�\�Y1P ��Y<-Mw\�\�j�\�P\�g\�H�e[���mܳzϱ�,|���\�\�\�sW.\�\�sg�\re�~��Xyx\��le\�\�<��\�l-\�+��H2�\'ɕ\'��E]�Зf�4�i\�>r\�\�m�b\�\�$~\�%�\��v��O�2{(���kK�xf��MOl\�;�nDp�@����\�\�R�\�O\�mg\�0\�\�\�/-6U�\�\�xjs�\�wٞ�Q��I�cq\�N\�vv?,\�d~w���Ƅxf9�G#�\��x\�k�<V~ �XBp\�\�3rq�P|\���l�%1\�b\�`�\��~s:�?�\�l6#я,���7�p�\�yt\�\�F*�\�J)�%��bqo��^<�+O\�eAO��g�d\�W��O?�H�𖞌�MM\�J\�hQm[�%�,�\��|�\�=��xc�\"�@*>z\�\\�~\�\�C���\��D�e[��߻\��\�@��#U\�Ķ-lK ���-\�\�\�\�xg\�ʾ8\�\�\�:\�\�q�3N\�J��ӭH*~\�P\�g\�2+�\�\�._\�\�%��I¡6�;\�g^>�\�=�)�Xj�\�\r��qK��\��n�>ժo$�����\��mb\�\�2�!�b�\�\Z|�DR2�#\�\�\�w`%H�\�!%UC��T\�6Vg\�H�ݥ:\�\�j\�,�\��2��D2\�3���S��tF��{h�m	N\�K�]<�~��k!\0Ǳ\�<Vcـ!�!�TKr`��w�g�hϲt\�ԉ�Y\Z�b�\�]+y���䪳fp�\�.�\���\�Dދ)~����T��Q#j��\ZD�\�cU�\�>[��l��e�\�p\�\'RP�#j��F�$���9�\�\\s�l��\�I{��\���\\\�\��\�]<�f\ZZ�m�X\�g�`\�lDC�)��@2fӕ�غ�L\�	P��1Nv\��\�w�䑵\��dc\�\�Iҟ�ӛ�\�\�Ř��1=\�sl\�t\�Iy�z�\"C\��A�\�f\�x\�z$\�9V�X�-�p\�g�䃂�:�j@)���Z \�\�\���|5�P	j!�T�J\�\�RIE�\��\�x�Hb!8u~�\�_��ם\�Gg\�=l���c3�#�~�	>�C\�x��!�!s�\�ڳ��?l\�e;\�2\\A*��č��\�tb,�[/Iq�¦�*���`#p,�\�\�aX\�AIJ\�\�\�\�O\�\���5\\I��Y�\Z)��B	\� �f�D�OdnMfV-���P`I�\�6ӳ1fv\�9�/Å:8{N�)���G\�9�I6\nE\�,�m\�\\)\Z�\�\rѧZ��ם\�K�Y\�{.�\�3~�l;�o\Zcd�Nd��\n�@�͙\�%�\"�ec����L��\��Rk:�Ҩ;W�{!`�\'�\�N��ᴙYN\�ϰxz��l�޴G̵�9\�a\'�DT���\��=�fJ�c�e��!��\�q���Y؛䵧L#�$\�Z\�S[�<��\�ơ\n��uK:}�\�S��(�P�H1>��)�Bk��\�\�{FJ[�\�[RW�	�R\n۳�\�rq�Lܡ+咍;t�<�$�ߓbvg�y\�IKk\Z�m\�\��kk�/b�1Z	�g�0�c5\�UJŴ�Ǣޤ\�|�\�G^����kk\�֕�Ց\�uK�#�\"�$e?�\�G��?��|v\�Ԃ�-#5*AD���P#�T˹70Zg�쏓x\�R�\�\�\�D�xJ*1���I�s1r	�\\\�aZ&F*fsm��EܵI{N#��	�\�/\�8R�\nv\�\�Vĳ�����Y�\'�e\�\�3D\�u�-pZ\�6ل\�d�Z*h\��\�ҽ�3\�^��R���\�s\�<\r&�Ԛ`.���h\ZG��;X��\�6!�B��\�Q\�g񲅝&�f�~���e�\�!���َP*��%\�o�\�u,D#���\��3��\�&+\�\00f�ҍ-MfrK\�Y?X櫷��P\r��ɥ$��x\���|I�Y(#я4�S���=)�R��B��߽�e[�x�l��\�\�\�Mg��\�\�\�v�\�\��ՀM\�U~�r�[�\�ɕ\'���K\��ɯ\�\�B�\�?��=�\�ѱ��1\0�L\�^�P�\�яv}\�h�\�_\�\��E��h\�\�l�e�?\�*�|���\�\�u\0AI,K��S�󵷜̼nR3D?\�Q\r\"Y?\�7\�^ϝ+�\'=\�r\�\�3�G�l3��PR$� bz6vX\�o\�\����m|��4�BIO\�\�\�g\�\�/^���\��\��3�r\�JY7B<\�b��G�f\� \'\�\�p\�\�n��/��.�\�3Z�\�WC����b���:\�G���}\�y\�,.Y\�uX<\�\�\�(�?~���?�\�\�\�H��\�\�\�9>t\�>z�\\�yя\r(ܚ\�\�\nĒ�\�\01\�\�\�M�޺�7�2�Sfe\�\�\�\�L�$=�t\�&\�\�TSۂ�kcBTe�T�0%�� \�	<a�\�\�B\���b-�X��T|�+\��5\�\r\��]�:\�z\�X% �#lߜ\�+\���{�\�yhrjA\�\�W�\��6q\�s�Q� ��9q.[\�ŵ�\�\�\�fB̡\�t�yI��\�Ǐ�ٛ��\ZD\�\�F#�FJ\�zz;\�\�ӝ�\�I\��Ԏ��\��\�^#uZ:�l$\�t\�e\�Q\�A$�#��1((TC�aD5�(\�\"\nՀ�/\�>Vc�\\gw\�gWѧ8Z\�X\�[ ,\�@òD\���!\�\�sgr\�Y38kN�i�ɛ\�\�ܾbs�\Z\�\�\�\�ZL\�Ƹhao;k\�2\r \rяU�,�߭\�\���k\�7���$�Jg\�5\�\�cc�ca52\�\�ݪ6Bs��\�$��\�\�k�$jJ�HFR�\0�%��m���=\��f�TP�C�%��3|쒹\\s\�L\�t%�����?�ᆇ�p\�\�;	Q\�\�Jr��N.?����\�Go\�\�b7��1�E�)��\�E\�\��˧w�|G�Za[\�\�\�XMf��f\n]3*�.;\rQԣ��\0�j[�j�^\�\�\�#��-��\��jx\�\�\�߇�.�R3\��l\�\����\�\�Jҝr���\��\��~�\�vn|r�Ѣϩ�Y.=���\�w�\�\�Nyf��~� ��׏��UC,(��\�\"����a[X��k\�iT�M��-b\�G\�\�����є̂V\��Q\� �T`	�31�S.3;\�\�\�L0�3�\���g8qz�\���	�\�\�1~��\�Z3B�\Zp\��\�\�q޼.^\�5�e��\�G��n�P��;K�\�Yb\�\�2�ˬ�2\\�㇒ �HIhU�	�5n+7U�߀lJ��9\���V��v\�9�E&\�03\�1#cv.NoG�\�]	�et���l��llҙiOo-p\��\�k\�\�Mq�\��\�\�З3\�!��(J��\rCe6�\�\�`\�gW�g�\�/�\�k\�zD�R\r\"0V	\"��\�\��[ H\�l���ҞCʳH\�l21�l¡#\�ґt\�Iy\�.��Ìl�\�L�\��9\�p\�\�����32\�\�j4D7\�[\�W�R-�T��e?�\�Kʾ\��:\�4\ZK�ih\�yµtOt	\�&\�\�$\\��g�tm��>sL��!�����\��000D7000D7�Rl�r�#[yp\��P�18d\�\�Q�\�\�\n��m\��\�n.9��\�w\��\��\�S���\��\�\�O\�\�\�\Z�|�\\2�����!��a@(\�����ލ��۶�R.߹\�P�\�fѕ��иu\�\�\��GÏ\"��d\��˷Y>P\�\�99�>w&��	�K0ᵣw�\�/ny�\�w�7\�\�z��\"\�:3���9sV���8\�\�I�ٝ	rqݧ=Ѭ�;@\�扄�dG�\�\�R�]�:c56\rWٞ��jg�|�F5�T�n6�t,N��\�sW\�\�\r��a=\�\rя\��\�N�\�gϳq��G-3a�\�]aE��\�\�\��+H\�\\\�\�u\Z\�0B�M8\�\�O ��RQ(!\�]�\�U�\���\�#ꡤ\�G�AD\�H���\��뛽\�;�nq�^yR/i\�օ8\�Q\Z��0\�*��i9?}bNLOKi�4���\�\�\�k�U�\�>u�1I�\�2��}\�\�?/��.�9\�R\�Qi\�\��y��\�Y�٩\�\�\�\�ٍ�n�B\�%]����,�mO\�$%�-ZVxk�r��v��\�{\�-\�Ut!Z\�nok�@cjk����\�\"�V�-K\�6S~\�ck�\�<Te`�\�uW.$�\�5\�\�� �b�\�󃇶����P#l��Z\�\�\�\�CP\�Y��@	\�^\nu����P��3B��\n�ą`N_�w�\�\�k�Nc�q\�6\�\�\�@\�\�$�%���\�έ\�v�nW��\�\�Vijk�\���u\��\�T\�\�\��\�Y誡E$,Ag6\���$�-\�\�\�N�Ή\�Ӹ�\�fc�\"��\� �� �\�#I5��T(u\�7`9\�C.\�\�7	F�=\�\�%�\�\�\n���A~�\�n\n\�:�HQ��6]is]��j�WLT��6�\Z\�\�U�\�n�[�\�\0�%�Y��-�%\\.]\�ͥ��9cv��]	R1��L60D\�D�B-�PY��̚�eV\�,�\�Qv\�kT�>I?\"�\�M\��g���fO�7�RZ�W\n�\�k<=�珛�l���Pgg�\�X\�\'��\�<��$։p�\�{���&=�ӳ1�S�zS�1+˙�s\���\�z�\�S�\�(������!���J��b�\��k\� �le`�J��q-:31��1.\\\�Źsr,��&�p�lA6�;��_)E�����\��j�\�\�\Z�Z\��\�\\�}?u�\�h#ݝ�\�\�x�c6��C6\�\�9��#TD�\�\��l\Z�rɢ��\�.k`�~Ȩ��mc5�\�4\�=����\�\�\�m��1�9�8g-\�\�\�\�ݼ\�\�^曉\"/\Z\�\�j\\��\'9{f��󶥤<\�\�?X��\�$Q\"Fk<�v�\�\�ʓ��T|�R&\�{�\\����^0�3feqm�f.\����\�mO�Ƴ�y\�IfL�!�`W�\�\�\�\�Ƿ�Ъ!j\�*q\�Ʊo<��\�^��s\�\�\�bfT��߯➵#d���E1D?�\�0X\�;�n\�?`�\Z�\�$�f?�\\���o�m�\�C~�J\�\�\�%\�Z9\�\�߱��q��\�x\�\�ifq\�/6\rW�\�\���\r�-Hz\��rc\�	�\�\�Mϙ\�A\�\�\�~\���\�\�:+w�X��\�mO\�\�w\�1-\�r\����kiG��!�\�T�\�\�O\�\0\�\�ml0r\�4wm�{V\rQ����i}�=\'\���$�{���k(\�Cv|v\�\�*\�X��\�s[�v\�nvUH$]^yro:����?�t\�lWC�\�Mt	�w�(U���4�%\�,2E̵xt\�(�ncAO�3fe8{N��\\���\�\�ӝ\�\�P�\�_���/,\�\�]�\�Y�S�l��~�\�\�\�*\�F�\���\�\�M�s�9wQ7o9��%\�\��}�|5d�\ZП�\'\���\�^P�\�?ݷ���\�*�\�>^\���E�\�mP Q��\"\n%(E<ns�\��\�\�N2�3NO:FWҥ3�\�\�=i\�E\�ҏ[�\ZD��J���J�H٧\ZH�Ր]\�:�E�|\�g\�X��|�-�U\�ź^\�F\�`�#\�9sr�>���\�up��fLb�K�q\�\�\�\�/�kT{C�\�`\�\�e;�ٓ\��\��C%%�m\�ڢU\�.\�\�\�W�P��D\�ٸCʳ\�H�t\']z\�\�\�=Iϱ�\�\�q�l\�!\��=϶H\�m�q�U��hĐ�\�Mҳ[%�\�o\�@w��H��j�I$\�0j�X�}j��~�T\'����Q�#�J@�|=~y�P����+>�PR$e?�V��q\0\�\�t�=�2\'��X2-\��i).X\�\�\�\�4�IV��\�U\�\�\�\�Fy\�Es��Eș5D?t<��\�C\�GY��\�sۋl��m�F�⏓K\�\�eј!\�\�\"@5\�Q#�HH�PQC�5�ߊi��cqע�����l�1��q���\�\r!:E{�\�㫽Q�����Usr5 �`	�\�I�`�\�#��Po�<��\�H_\�\�E\�{�9ͲX��\�\�\�$�{�\�\�I��7ɜ�$K��Y\�{pIE\�e��/\����\�⎧w��sg��w�\��|�T��M\�U��U\�Q�3V	,\�\�Y�30Rc�\�3Z\r\�W\�~D�B����\�ߜ=���Y}���@��9\rQ�����Q�>\�%\�\�Ü\��\'�_)\"5.ѥj��sk�\0�\'�Z\r��j���J���>�P81���CWҥ\'�?c^O��L��t��=	\�v\'\�I��ұV%�v�\�0��\����,\�y\�\�^��[�r�l�\�`�>��C\�h5`�蓯�kC%�|5d�\�/l���Tg���\�3R�5y\�L%\��q�f�45s{\��OLh1�j\rhkH\�,�i�����P�vS�ƴ\�	6�5�<�,AW\�cz\�cf.\�\�L���8]��t�ތ�M�\�\�o���\Zw�\Z\��\�c�ؖg�@���\Z�g�\�g��\�-\�,��d��\�9�a�����O�N(@		��P\�WƪA\�k}PT]\r\'��\��(\�V+A4�+�U|}H�=��b\�s���9\�\\�1\�.��.lqmA�a:�fb\��\�\���KgR7�ԥ��)�΄G.\�s����b���gwh\�\�\�cl\�Q\���\n��u\�~�bn_��l6\�8����\�f3D?�~���\��PH\�\�R\��Z �[a4.\��*�~�B�b�5N�\0q\�&\�ZX� \�X8�E2�\�|S�M̵�s�*��U;�,ߦ��=_c�\�\n;uv\��a�2K\�\�獧M\�\�g\�\�y�f��!���ὔ��r=b\�H���e6U\�8Ta\�\�2;Gj\��\�~��u(���\�\�u��S�q\�	�,\�K3#kJU\�H<B�:�3\�Zt�<�\�\�w\�hK���zD��i�\�\�\�e�\�Yd\�H�BU�.�e�b=\��\���@\n��J�I�L\�\�x�I���\�LK1�3AG\�5\��\�F5�xx\���fG�Μ�3;b\�\�L0�+A.\�H�q�\��LA�M�u�e�����:\��u�Հ\�ώ|�\�c5Jey(���\�:�\�p\�ksC�\�1Ν\�\�Y�s�37\�\�\�i�s1\�>ڨ\�\�B�md�m\Z�rߚa��e�mc5\�7Rx��\�\�X�M_.N6n3�#Aܳ\�\�]�rz\���uV]��9L\�A6IS	\"\�v�[BP�\�,\�Ęb-bG��\�\�\n�@�e�J=\�	4�TT\�*��\�H*vkx\�#\�j�۶H\�m:S\�)���8gNg\�\�ґ�tם�C&f�TVC�c:\�,�P\r\�Q��y�\�\�\n+w�X��\�\�\�E\�Z�-�s�s\�nd\�!�%p�\�8�\�\�$�n[\�\Z�İ\�5k��Q\�-\�\���IN�\Zq�Z#�D:�M\�\�1\���R���\�\�b,\�M��;ɂ�${SL\�Ę\��+鑊i\�\�c�~�;\�\Z$�#E=\��Z!#\�H9`�H�ͣUv\�l�Rnؿ��!R\"���z �RTk!Dr�)+_�\r}�k\�zb�Pt��V�O6�\�@\�qǢ?�;\�\'ɌF�Ʉkcٺ��\���\�:�\�X�{�!�A�! �ZJ���9lJA�\Z��^��\�C	BWޕ\�!A(�����^�	[2q\�/\�\�Iy�&z\��j��\n�-\�\�e�N+�\��\�\�\�U\�߫f�\�C!�j\��޴\�[�\��\�\���\�\�qm\Z�����.���\�\"��W�!\Zܽ\�vMN_\�E`�tN��&�>I�J�\��\���V/�\����\��\�OϷ��H�\�F�\�F��ݙ\�P��&�\�c\�r&e\��\�\�ǇXo�k)Cj�\"C�c\�\�i\�\�n���Gd׽΅Rx��\�n`�~���(\�P\�i40L70D?��>^Э\��#\����\�-�|]ZяU�||�Q\�\\oq\\��O\\\�w�Yo`p��$\��ޮ;���TW��8��TP\����	ǰ�H$�2i�l��[\�j\rY*\"+��m,\�qD:�\�ى��-�T�]��\��Dw\�D<��\"���X��ٳ�臦�C#�&]]W�:�g��XA8��hp9�\'\ZCU��f�;6v6�\�ݍ\�ߏ{�I$�\�uX�K�U�`\�&*����\���y�H�\���R�SN9�7EԟYN���� �@>��i��~\�\����W���\�\�[�\r!\�F�cc\�r�M+�\��\�N\�}xK��|\�+�g\�l��p]�\"�u\�׭C�J)\�\�\�\��EH!5N���~ �.GG�=�8���\�i\���P@V�� %*�4�j��������L�\�\r7�|\�+\�\\�!D<��\�H��U*�݆�z-\"浽yU��+��N<	�\�\� �|\�/)\�p#�n�����������\�\�P�_��\���S_�4Ѯ]ȑQT��\nC�\"T!��\�`�e#\�8T�I�7\�H���\�~�Z��s[\Z�\�م;w\���Z��}��f�\Z���\�H����\�g\�F/����vJ?�9\��D#��ra[\�8(!4��A��\�Ƥhh�p\�.��+�׬�\�_��5k�{��w\�j�?��N��wY*S�I��p/>�Bn݊�T�\�z�JJ�m\�L���P��\�}�S���W�F\"K�ֽbYz�\�h��\�}�\�K�\�牆�׭#X��\�?I\�\�K�\�%\�3gK���O\�J��4VW�٫�\�/R���T\r\�\�~$zn\�H�\�\�#�	�\�`��MY���(M�6\�^�\0h|���\�y�J�\�/o#ڹ�\��{;������S��z�\�\�J%�W�!X�栈.\�u\�\�\�u[\�Db������mm��\�C\�R�Z&��R�\�R��\�v\��M\�EɈ\�D��b�\�׈�q:\"��\�\�\�\�\�\�]��U&�Bv��*\�j�Do��\0f��\�q\�\�\�ʦ���,T�j5TE�\�²�\"�\�1=X\�j��\n*&&\�uJQ{\�1J?���O|M\���5{\�lT�\��92��zM\�0�\�M��lkݿ� uE&��p�^\�d�M\�\�\�Ԧ�\�h5�^G�+H\�\�$�<�D+�@x1��VG��^\�޴\����(~�ȱ��V\�yځ\�ZC0}�D\���}|�B\"]x\�Xɤv>�p�{�\�?���p.�\�\�\�\�\�F��\��/�m��\�ST~u;\�\�\�X�\�&��\�\�On\"�ַ\��Mo�ӧ?�\\*���ɴެ�,d���j\�\� Μ9�#��0\�Ν-��\rw\�\�p�v��s\�\�ΚI�j5�^\�\�f񖞌w�\�8�\�̜�U�t�\�[w\�\"x\�9�������dRK�	���\"�?L�\�{I��MfS\Z�O�\�\�Pԅ\�?9�HX\�\�xg���\\Roz#\�ҥX\�\"Cx\�±ǵ)�\�I\\y%�������_\�yD���\�T��M8��\���\�m5�vo/��/�r\�\�(%����}�`\�\�I]I��j\r*��<�M�n������;{\�l�3\�@\�\�W��\�y\�`\�:\�\�\�u�]\�|\�J\�!\�KI�\�\�\��\�_)\��S�e��\�q��vQ�\�CtC�)ay\�FoL2U�\�\�\�\�9�|�[ڋ�J��O/lPYZ�<b��B\���;v�\�j��m� MG�I��\�O��oi?_	ܥ\'a��\"GF�9G\r��֬#ܸ	.���\r3�����=�%�R`ۺ\�>\�jV*E\��ס+�n�$�;����N��\�	׮��\�c\�x4\�*\�0�mۑ��n�a`l�ê��a/+@2�	g\�q�{��::L�}l~w�|/9x^\�q%�N+\�\�M{\��3s\�\�\'�\�~�u!,�Sˈv\�>�{�$�3\�ۤjS\�[��_�\�\�L6�͒�|_\��\�d?�\�F\�Q��L�@�˄�v�}i�>5]�Y�*��\�)u\0\�/�\0\�{Z�U\�\��\r\�}}\�N?U�ii\�2�\�c�\�>K�y�o;�����R\"	b��>5�m۸�\�������	tW\�\nr��ٗ�\�S\�SG�E��x	\�vA\�	ҹ\�CT���\�M��N;�I����y�\�>ܴ�p\�:��~a)���IT�\�~\�J�e\�̟�3{\�ԭv<�\�\�3��\��T\Z�O�ꎎ�\�M�Ʒ�\�.�N!�g\�\�[�U�\�Bt\�6�T\"X��/\�\���P��G�A!w\�\"D*=�k��U�\�\�g\�n�>5�S�=���\�o��B�՝9s�_p�N\�Q��Ƶj�>F�u\�߮�\�W�\0���n�\�\�\�M\�\�\�v+\�P\�u��\��w�%8x{Y����z{N�~\�\�G�Q#\�5h٦і�H%[\�c��F\�\�\�/\�\�\�\��N:+�\�ן�H\"\�q\�˖lڤ	�/�^*�^���i�Ȥ��u֡\�w�\�u�\��׾�\�%QR�rtL�|\�CN��4\�}��g5\�eW�Pۡl7U�\r\r\�\�M�a#\�֭�[�mߡU\�0$\ZFU*�\�RB��F&H��	lw�����\�%1�趭=\�6�j5D<���n\�J8���ռ\�F��\�Ӄw\�	w\�Q�\�{x�p�V��\�	7m\"\Z%ڶ]��\�0�\\�Ƭ\�tv\�^\\7\�}\�lt�ɮ\�\�_uTW\�*��Mԟx�\���_�U,!��F\\\�\�qtЉ$�\�lk�U\�ۈ\��!/��w\�ԟY�H\�\�])D2I\�GI�\��z�\�D�=�ϛy\�M���sΙ�}\�jD;v\�?�\�_���\�O\"�c�=��}ڶ&�e�W	Y{�-�E�!��\�\r�PS��EF\�\�*w\�M馛�~�kb\'\�qj��\r\�:B��:�aO�N\�\�\�)�\�\�\�\�Yr���r%\��6܅\�\��(��\�#-7w�\�JJ�t�ī^99!�kջ\�t\�Ϩ=�(*�I}\��x#k�Q�\'U\�E3p�\��}j8.\�T�\�d\�Eԗ� �\�oS�ݝھ\�f\�5�HB\�#�@K5\�E�^C\�MaA�U\�6\�ur�gg\�|�E�6m��;\�\��3ˉ�sv[%\\48D�ys��\�,\�w\�\�%v҉|\�p�fƾ����\�\�P�\"q��j�����Ԥ�\�\�\�]�Bז\�y�\�0\�}�\�\�L��H�R%U\�x�������wX�lKWR\�\�2/�=����o:VWVW\'�k[ G�)\�|�~�:?ٽ\�Λ�w�\�\�׷\�IaY� ��\�\�$\���q�+��\�S\�ѱ�\�{�BX\�i��\�;\�\�\�׿E\�\'?\�$N%\�KT�@w\�靆\�?�\�\���a�� �\�J�J�ʭ�$ܽ��\�\�t7D�J;]����\�N�\�\�\��M�w\�\�>�1�@F����r\�_L\�s�;;�y�`�ʿ�%�V�P\�6�x�=�\�\�S���� ո\r�\"���\�D���\�XT{\�Id���}\�\�$.\���\�\�)^�#ʷܢKo]W��G�3{�+� ~ι\�/���o\�\�\�S{\�aع���T��w�\�S\�\�\�7b��:\���r\�o����l�\�Yg��\�\'�_��\��+��\�\�{d�\�\�EX=\�ȡa�7\��?\�!\Z\"\\�u\����_��ȣ:~\�8\���Rع�^�\�׫=�(�[~�U�X�EJU�\�.YB�\�ג~\�[Z\�{��\�̊S{�#\Z�>Y����V\�դ\��S�\�͍��	� ��=�\�\'?N\�կ�\\��j\�\�uw��\�\�މ\'\�t�n8��4�<�\�Ï\"GF�_I�~�\'�h�c睿\�Ƌ�X��\�C6�YE\�b\�>v-\�w�\�$\�\�>f��!�\�J�}O\�\�E)	�m#X���:F?�,\���\",��\��R\�f\�\�[z2Xv[\�8\�\��`�:dQ�\�V~}�Φk��B)��H���\�\�Wm7m\�_�+�\�C:�x���w\�Y\�k`�~TJ���S��p\�F�\�M,&�w\��~���\�hGL\�\�\�qbK�b�M\�ΰ6#^7��FF��\"�\'�\�]Zń\��p\�\�!~�y�%z4<L�c�n\�v�Ex��\�\�n\�HwC��c��5Z>O�t���B�J:\�lB�ј\�$���K{�k���&w\�B�E�t�\�\�\�;юD۷S_��p\�v�\�\�:q\�E$�,��r\�\\ipx\�\�L�NuN:Ct�C����l$\�\�VB����6Y\�\�^/&�a�P}_�\0w\�\�\�=\�\�,\���Tw\'2?�w\r������=���[�}\��n4B\�\�ͅ�\�o�\�:{���=�n\�T\rѧ�\�\�_\'���}H!\�ڻ\�\�7n\�>���FG)���uηeMxU\�F\�I=�Lw�\"/�x\�4\�a��ݧ�zݝ�u[Q�w晸�0�^��\�\�>�ZN8�ʕ\�\�?HI��m޺w]a�eѧ�\�b������Y\"�E$m\�Q�`\�ԟx�\�w�%k���/�5�oҭ���ڵ������g\�콪\��[G�c��@�f�	���\�M�_��\�\�p\�ĶWh\�~�z5��\�F���F�v-#��\��Gd���ST���:�\�s�\�y�\'9R�,��@o\'}\�\�u\�\�\�\�\�D�����rl�\���,Rozc�ݫ\�5jO=M\��\�}���Z�\�+\�\�^w��\�[��\��W<\�nZRg�1Qs�\n���\�+_і���VFov?���\�\�,�\�F��\��߇=}Z\�\��\�=O����\�y\'�\�Bi�]\�\�_C`�m�臟赚�/�Ĳ\�ăVyɞ=\�,�\�\�K�\�s�Ve��=\�͛\�\�[T~�K�Y3�:;�c����D\�wm߁�V5��\�Ud��[~�Chvc\�r\�N9�\�]wkg\�\��&��/\�\�k$^�\ZM\�I�˝���\�S�ﾽ�\\�\�!��(^=�֋3c\�\�\�\�Ѯ\�z�S��\�z\�y:BШnksF*\�tC�í�7�Q{\�4�B\nvGn\�h��d�y7�\�݉�\"�\��<s!���/\r!�z\n\�:� ԉ%B��`jLv�N?�`\�FD$_t\�:w\�\"\�i\�tRKs\�R���U���B\�b�\���Iw�\��s\���7�h`\0+�\�C�p[3\�����}��LV<�\�R��?U�\��-\���06�\�H� @ժ\�c\�pw\�\�k:��-�����$.��\�g?���zj(\�#��\�h�ֶ!�`[X��%X�^G\�bt�\�W\��\�oc5\���\�!\�;�4\�E\�4��ޏM-9I�\�8�g\�k\�\�?�\�\�>�\�\�\�\Z�\�V\�\�8�\�\�Q���Ű<O7\�h̉O]�V���uܓO�	c�\�H�) �\�\�\�R�JU�\�Yضa�\"X9�\�~U�Q����\\W�)��^�&i�Ғ,P\�*�\�/%�\�O��B-\�|��=�h�\�k��=�W�W\�{\�j�\��sI��M����e�R)\�W�Y�R�\�?\����>\�&:5���~�0D\�\�8�\�\�q\�gI�ꕈDg\�<d�.�F�Q���)l1D?�֭G�Z\�lz�T�&=ǚѷo��8��t~鯈_z	�~��bѮ]�V\�FM�ݙ>��S���\�ƞ>�%�\�_L���6;ݞ9\�u�\�y\�{�I�\�\�Fuٞ\�\�S��{\�!��Z�\�~���\�Q��*�\�K�c�Q\�g\�H8jԥ\��3p-&��?\'~٥83g\"\�qT��{\�R�ٳZf��}\�3�\0�6=͑8���\��d��p\�\�!%\"�b�\r?&v֙�\r?�0Dn\�A�~=��uD۷��+Þ=w\�\"��sqf�auu�\�\�Jl\�\n\�\nmh]g޼I��&B�\�D;wi\'\�>�+%�r8ӧ��\�_H\"\�\�;֮\�}\�l_7�t\�\�\��\�%�\�\��\�\��m[\�믔B�Ό>Dc��!����~\�ST~y\�u�,\�TCQ�3{}�݊\�\�;\�\�0� \�R�\����\���\��O��sz��3��\��}�a+�O8�n�\��?P��^M�ͨ\��ǟ�_�Jo\�F��SM�s\�;��KZ�f<\�\�8�\�>�DiQ\�u-{Ր��a�\���<����p�:�A\'6OT!�7������!��U�R���\�yW\�m���A@�\�+�\�8}�����W\�b�\�D\�\�~�+\�<O�\\I,a���H��\�/��\����s<	�P�\��)\����g�\�Ǻ���O|�ؙgL*�\����hAR�	ƾ�\�~�Qn\�\�d7��d\�v��o��\�яB\�b�\�]wS�Q\�it?m\�\�U��\�\�A�=א�\�\'��:͢�k�:;\�|\�CDC���� �PB��\0\�y8�3\�~죤\�����&�\�\�ڂ������Q\�\�;~�\�M���\�r�\�~&�k`�~<�]��\�\�>�g�)I\�\�o#�\�W\\R���Q��?�}tL�K\Z��\�0�q�\��\��\��\��\��\��\��\��\��\��\��\��\��\��\��\�����\�q\�,�e\0\0\0tEXtcomment\0File source: https://uk.wikipedia.org/wiki/%D0%A4%D0%B0%D0%B9%D0%BB:%D0%9B%D0%BE%D0%B3%D0%BE%D1%82%D0%B8%D0%BF_Java.png�d\�u\0\0\0%tEXtdate:create\02015-09-14T15:26:22+00:00�\�?�\0\0\0%tEXtdate:modify\02015-09-14T15:26:22+00:00͑�\0\0\0GtEXtsoftware\0ImageMagick 6.7.7-10 2014-03-06 Q16 http://www.imagemagick.orgo���\0\0\0tEXtThumb::Document::Pages\01���/\0\0\0tEXtThumb::Image::height\02596!ZX\0\0\0tEXtThumb::Image::Width\0259\�	\�\0\0\0tEXtThumb::Mimetype\0image/png?�VN\0\0\0tEXtThumb::MTime\01442244382,��\�\0\0\0tEXtThumb::Size\017.5KBB��\n3\0\0\0\0IEND�B`�','java.png','image/png');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potential_worker`
--

DROP TABLE IF EXISTS `potential_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `potential_worker` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `card_id` bigint DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_card_id3_idx` (`card_id`),
  CONSTRAINT `fk_card_id3` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `fk_user_id3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `profession` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int NOT NULL,
  `picture_id` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_picture_id2_idx` (`picture_id`),
  CONSTRAINT `fk_picture_id2` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
