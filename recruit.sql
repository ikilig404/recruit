CREATE DATABASE  IF NOT EXISTS `recruit1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `recruit1`;
/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : recruit

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 28/02/2020 19:58:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `userid` bigint(20) NOT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (19981021, '17812345678', '4QrcOUm6Wau+VuBX8g+IPg==', '管理员', 'babycoder@163.com');

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application`  (
  `applicationId` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(11) NULL DEFAULT NULL,
  `recentTime` datetime NULL DEFAULT NULL,
  `resumeId` int(11) NOT NULL,
  `positionId` int(11) NOT NULL,
  `hrId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`applicationId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of application
-- ----------------------------
INSERT INTO `application` VALUES (1, 1, NULL, 1, 1, 1);
INSERT INTO `application` VALUES (2, 1, NULL, 2, 5, 2);
INSERT INTO `application` VALUES (3, 1, NULL, 2, 11, 2);
INSERT INTO `application` VALUES (4, 1, NULL, 2, 15, 3);
INSERT INTO `application` VALUES (5, 1, NULL, 6, 11, 5);
INSERT INTO `application` VALUES (6, 1, NULL, 5, 3, 3);
INSERT INTO `application` VALUES (7, 1, NULL, 6, 18, 1);
INSERT INTO `application` VALUES (8, 1, NULL, 4, 5, 1);
INSERT INTO `application` VALUES (9, 1, NULL, 4, 13, 6);
INSERT INTO `application` VALUES (12, 0, '2017-11-17 11:32:47', 24, 14, NULL);
INSERT INTO `application` VALUES (13, 0, '2017-11-17 20:36:09', 25, 15, NULL);
INSERT INTO `application` VALUES (14, 0, '2020-02-24 15:35:11', 26, 14, NULL);
INSERT INTO `application` VALUES (15, 0, '2020-02-24 15:35:30', 26, 14, NULL);
INSERT INTO `application` VALUES (16, 0, '2020-02-24 15:44:34', 1, 716, NULL);
INSERT INTO `application` VALUES (17, 0, '2020-02-26 13:48:58', 1, 4, NULL);
INSERT INTO `application` VALUES (18, 0, '2020-02-26 13:49:34', 1, 839, NULL);
INSERT INTO `application` VALUES (19, 0, '2020-02-26 13:50:25', 1, 14, NULL);
INSERT INTO `application` VALUES (20, 0, '2020-02-26 13:52:19', 1, 776, NULL);
INSERT INTO `application` VALUES (21, 0, '2020-02-26 13:53:21', 1, 838, NULL);
INSERT INTO `application` VALUES (22, 0, '2020-02-26 14:00:08', 1, 7, NULL);
INSERT INTO `application` VALUES (23, 0, '2020-02-26 14:00:38', 1, 775, NULL);
INSERT INTO `application` VALUES (24, 0, '2020-02-26 14:19:18', 1, 840, NULL);
INSERT INTO `application` VALUES (25, 0, '2020-02-26 14:20:39', 1, 117, NULL);
INSERT INTO `application` VALUES (26, 0, '2020-02-26 14:21:07', 1, 777, NULL);
INSERT INTO `application` VALUES (27, 0, '2020-02-26 14:27:09', 1, 14, NULL);
INSERT INTO `application` VALUES (28, 0, '2020-02-26 14:27:59', 1, 1005, NULL);
INSERT INTO `application` VALUES (29, 0, '2020-02-26 14:50:35', 1, 14, NULL);
INSERT INTO `application` VALUES (30, 0, '2020-02-26 15:07:09', 1, 837, NULL);
INSERT INTO `application` VALUES (31, 0, '2020-02-26 15:39:04', 1, 21, NULL);
INSERT INTO `application` VALUES (32, 0, '2020-02-28 19:39:23', 1, 12, NULL);
INSERT INTO `application` VALUES (33, 0, '2020-02-28 19:47:39', 1, 14, NULL);
INSERT INTO `application` VALUES (34, 0, '2020-02-28 19:48:02', 1, 16, NULL);
INSERT INTO `application` VALUES (35, 0, '2020-02-28 19:52:38', 1, 10, NULL);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`categoryId`) USING BTREE,
  UNIQUE INDEX `categoryName_UNIQUE`(`categoryName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Java', 'Java开发');
INSERT INTO `category` VALUES (2, 'C++', 'C++开发');
INSERT INTO `category` VALUES (3, 'PHP', 'PHP开发');
INSERT INTO `category` VALUES (4, '.NET', '.NET开发');
INSERT INTO `category` VALUES (5, 'Python', 'Python开发');
INSERT INTO `category` VALUES (6, '数据挖掘', '数据挖掘');
INSERT INTO `category` VALUES (7, '网络安全', '网络安全');
INSERT INTO `category` VALUES (8, '机器学习', '机器学习');
INSERT INTO `category` VALUES (9, '大数据开发', '大数据开发');
INSERT INTO `category` VALUES (10, '区块链', '区块链');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `releaseTime` datetime NULL DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `positionId` int(11) NOT NULL,
  PRIMARY KEY (`commentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 3, 'C++是C语言的继承，它既可以进行C语言的过程化程序设计，又可以进行以抽象数据类型为特点的基于对象的程序设计，还可以进行以继承和多态为特点的面向对象的程序设计', '2017-11-14 22:47:42', 1, 5);
INSERT INTO `comment` VALUES (2, 2, 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念', '2017-11-14 22:47:42', 1, 17);
INSERT INTO `comment` VALUES (3, 1, 'Python是纯粹的自由软件， 源代码和解释器CPython遵循 GPL(GNU General Public License)协议', '2017-11-14 22:47:42', 2, 11);
INSERT INTO `comment` VALUES (4, 3, 'C++不仅拥有计算机高效运行的实用性特征，同时还致力于提高大规模程序的编程质量与程序设计语言的问题描述能力', '2017-11-14 22:47:42', 3, 18);
INSERT INTO `comment` VALUES (5, 3, '这是一些关于Java工程师的评论，这个职位需要丰富的阅历的和工作经验', '2017-11-14 22:47:42', 5, 2);
INSERT INTO `comment` VALUES (6, 2, '又要写测试评论，写点啥呢？布吉岛', '2017-11-14 22:47:42', 6, 8);
INSERT INTO `comment` VALUES (7, 3, '数据挖掘一般是指从大量的数据中通过算法搜索隐藏于其中信息的过程', '2017-11-14 22:47:42', 6, 14);
INSERT INTO `comment` VALUES (8, 3, 'Java具有简单性、面向对象、分布式、健壮性、安全性、平台独立与可移植性、多线程、动态性等特点', '2017-11-14 22:47:42', 6, 17);
INSERT INTO `comment` VALUES (9, 2, 'Python 已经成为最受欢迎的程序设计语言之一', '2017-11-14 22:47:42', 1, 10);
INSERT INTO `comment` VALUES (10, 3, '<p>.NET是 Microsoft XML Web services 平台</p>', '2017-11-14 22:47:42', 2, 9);
INSERT INTO `comment` VALUES (19, 3, 'IndexRecruit大透明弱弱地评论一句~', '2017-11-16 22:37:26', 7, 13);
INSERT INTO `comment` VALUES (21, 3, '学习数据挖掘小白应该从哪个方面入手？萌新小白求教~', '2017-11-17 11:32:32', 24, 14);
INSERT INTO `comment` VALUES (23, 3, '<p><span><u><b>XML Web services 允许应用程序通过 Internet 进行通讯和共享数据，而不管所采用的是哪种操作系统、设备或编程语言</b></u></span></p>', '2017-11-17 21:45:42', 25, 9);
INSERT INTO `comment` VALUES (24, 3, '<i>阿里今年双十一赚大发了。。。</i>', '2017-11-17 21:56:58', 25, 1);
INSERT INTO `comment` VALUES (25, 1, '好', '2020-02-26 13:48:55', 1, 4);
INSERT INTO `comment` VALUES (26, 1, '1', '2020-02-26 13:50:23', 1, 14);
INSERT INTO `comment` VALUES (27, 3, '好', '2020-02-26 13:52:15', 1, 776);
INSERT INTO `comment` VALUES (28, 2, '好', '2020-02-26 14:00:03', 1, 7);
INSERT INTO `comment` VALUES (29, 1, '<b><i>好</i></b>', '2020-02-26 14:19:10', 1, 840);
INSERT INTO `comment` VALUES (30, 1, '1', '2020-02-26 14:26:59', 1, 14);
INSERT INTO `comment` VALUES (31, 3, '1', '2020-02-26 14:27:49', 1, 1005);
INSERT INTO `comment` VALUES (32, 1, '1', '2020-02-26 14:50:28', 1, 14);
INSERT INTO `comment` VALUES (33, 1, '1', '2020-02-26 15:07:06', 1, 837);
INSERT INTO `comment` VALUES (34, 1, '1', '2020-02-26 15:38:49', 1, 21);
INSERT INTO `comment` VALUES (35, 3, '好', '2020-02-28 19:47:31', 1, 14);
INSERT INTO `comment` VALUES (36, 3, '好', '2020-02-28 19:52:31', 1, 10);

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `companyId` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `companyLogo` int(11) NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `state` int(11) NULL DEFAULT NULL,
  `companyCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`companyId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company  state: 0-审核中  1-通过审核  2-禁止；  credit: 0-差  1-一般  2-良好
-- ----------------------------
INSERT INTO `company` VALUES (1, '阿里巴巴', 1, '阿里巴巴网络技术有限公司（简称：阿里巴巴集团）是以曾担任英语教师的马云为首的18人于1999年在浙江杭州创立', 1, 'AL85685', 0);
INSERT INTO `company` VALUES (2, '滴滴出行', 2, '滴滴出行是涵盖出租车、专车、 快车、顺风车、代驾及 大巴等多项业务在内的一站式出行平台，2015年9月9日由“滴滴打车”更名而来', 1, 'DD36526', 0);
INSERT INTO `company` VALUES (3, '搜狐媒体', 3, '搜狐公司是中国领先的互联网品牌，是中国最主要的新闻提供商，搜狐的网络资产给众多用户在信息、娱乐以及交流方面提供了广泛的选择', 0, 'SH74524', 1);
INSERT INTO `company` VALUES (4, '京东', 4, '京东致力于成为一家为社会创造最大价值的公司。经过13年砥砺前行，京东在商业领域一次又一次突破创新，取得了跨越式发展', 0, 'JD86635', 1);
INSERT INTO `company` VALUES (5, '网易', 5, '网易公司（NASDAQ: NTES）是中国的互联网公司，利用互联网技术，加强人与人之间信息的交流和共享，实现“网聚人的力量”', 2, 'WY53265', 2);
INSERT INTO `company` VALUES (6, '爱奇艺', 6, '自成立伊始，爱奇艺坚持“悦享品质”的公司理念，以“用户体验”为生命，专注为用户提供清晰、流畅、界面友好的观映体验', 2, 'AQ86532', 2);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `departmentId` int(11) NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `companyId` int(11) NOT NULL,
  PRIMARY KEY (`departmentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '技术部', '负责对新产品的设计和开发的控制，编制各类技术文件', 1);
INSERT INTO `department` VALUES (2, '行政部', '负责行政事务和办公事务', 1);
INSERT INTO `department` VALUES (3, '市场部', '对销售预测，提出未来市场的分析、发展方向和规划', 1);
INSERT INTO `department` VALUES (4, '技术部', '负责对新产品的设计和开发的控制，编制各类技术文件', 2);
INSERT INTO `department` VALUES (5, '行政部', '负责行政事务和办公事务', 2);
INSERT INTO `department` VALUES (6, '市场部', '对销售预测，提出未来市场的分析、发展方向和规划', 2);
INSERT INTO `department` VALUES (7, '技术部', '负责对新产品的设计和开发的控制，编制各类技术文件', 3);
INSERT INTO `department` VALUES (8, '行政部', '负责行政事务和办公事务', 3);
INSERT INTO `department` VALUES (9, '市场部', '对销售预测，提出未来市场的分析、发展方向和规划', 3);
INSERT INTO `department` VALUES (10, '技术部', '负责对新产品的设计和开发的控制，编制各类技术文件', 4);
INSERT INTO `department` VALUES (11, '行政部', '负责行政事务和办公事务', 4);
INSERT INTO `department` VALUES (12, '市场部', '对销售预测，提出未来市场的分析、发展方向和规划', 4);
INSERT INTO `department` VALUES (13, '技术部', '负责对新产品的设计和开发的控制，编制各类技术文件', 5);
INSERT INTO `department` VALUES (14, '行政部', '负责行政事务和办公事务', 5);
INSERT INTO `department` VALUES (15, '市场部', '对销售预测，提出未来市场的分析、发展方向和规划', 5);
INSERT INTO `department` VALUES (16, '技术部', '负责对新产品的设计和开发的控制，编制各类技术文件', 6);
INSERT INTO `department` VALUES (17, '行政部', '负责行政事务和办公事务', 6);
INSERT INTO `department` VALUES (18, '市场部', '对销售预测，提出未来市场的分析、发展方向和规划', 6);

-- ----------------------------
-- Table structure for favor
-- ----------------------------
DROP TABLE IF EXISTS `favor`;
CREATE TABLE `favor`  (
  `favorId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `positionId` int(11) NOT NULL,
  PRIMARY KEY (`favorId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of favor
-- ----------------------------
INSERT INTO `favor` VALUES (4, 2, 2);
INSERT INTO `favor` VALUES (5, 2, 15);
INSERT INTO `favor` VALUES (6, 2, 3);
INSERT INTO `favor` VALUES (7, 2, 5);
INSERT INTO `favor` VALUES (8, 3, 1);
INSERT INTO `favor` VALUES (9, 4, 6);
INSERT INTO `favor` VALUES (10, 4, 8);
INSERT INTO `favor` VALUES (11, 4, 8);
INSERT INTO `favor` VALUES (12, 6, 10);
INSERT INTO `favor` VALUES (13, 6, 11);
INSERT INTO `favor` VALUES (14, 6, 18);
INSERT INTO `favor` VALUES (17, 24, 2);
INSERT INTO `favor` VALUES (23, 1, 4);
INSERT INTO `favor` VALUES (25, 1, 775);
INSERT INTO `favor` VALUES (26, 1, 840);
INSERT INTO `favor` VALUES (27, 1, 1005);
INSERT INTO `favor` VALUES (29, 1, 837);
INSERT INTO `favor` VALUES (30, 1, 21);
INSERT INTO `favor` VALUES (31, 1, 14);
INSERT INTO `favor` VALUES (32, 1, 16);
INSERT INTO `favor` VALUES (33, 1, 10);

-- ----------------------------
-- Table structure for hr
-- ----------------------------
DROP TABLE IF EXISTS `hr`;
CREATE TABLE `hr`  (
  `hrId` int(11) NOT NULL AUTO_INCREMENT,
  `hrMobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hrPassword` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hrName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hrEmail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `departmentId` int(11) NOT NULL,
  PRIMARY KEY (`hrId`) USING BTREE,
  UNIQUE INDEX `mobile_UNIQUE`(`hrMobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hr
-- ----------------------------
INSERT INTO `hr` VALUES (1, '123456', '4QrcOUm6Wau+VuBX8g+IPg==', '董一鸣', 'dongyiming@163.com', '行政部HR', 2);
INSERT INTO `hr` VALUES (2, '13685653625', '4QrcOUm6Wau+VuBX8g+IPg==', '张帆', 'zhangfan@163.com', '行政部HR', 5);
INSERT INTO `hr` VALUES (3, '18596475235', '4QrcOUm6Wau+VuBX8g+IPg==', '李斌', 'libin@163.com', '行政部HR', 8);
INSERT INTO `hr` VALUES (4, '16785253625', '4QrcOUm6Wau+VuBX8g+IPg==', '王语意', 'wangyuyi@163.com', '行政部HR', 11);
INSERT INTO `hr` VALUES (5, '17865253625', '4QrcOUm6Wau+VuBX8g+IPg==', '李星泽', 'lixingze@163.com', '行政部HR', 14);
INSERT INTO `hr` VALUES (6, '13958726395', '4QrcOUm6Wau+VuBX8g+IPg==', '程瑜', 'chengyu@163.com', '行政部HR', 17);

-- ----------------------------
-- Table structure for position  statePub: 已发布-（0-合法  1-违规，未屏蔽  2-违规，已屏蔽）  3-新增，未发布  4-关闭，
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `positionId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requirement` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `workCity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salaryUp` int(11) NULL DEFAULT NULL,
  `salaryDown` int(11) NULL DEFAULT NULL,
  `releaseDate` date NULL DEFAULT NULL,
  `validDate` date NULL DEFAULT NULL,
  `statePub` int(11) NULL DEFAULT NULL,
  `hits` int(11) NULL DEFAULT 0,
  `categoryId` int(11) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `hrIdPub` int(11) NOT NULL,
  PRIMARY KEY (`positionId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1015 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, 'Java工程师', '熟练使用RPC框架，具备相关的分布式开发经验', 3, '北京市', 12000, 7000, '2019-10-27', NULL, 1, 142, 1, 1, 1);
INSERT INTO `position` VALUES (2, 'Java工程师', '接收应届实习生，实习期满应聘上岗接收应届实习生，实习期满应聘上岗收应届实习生，实习期满应聘上岗', 5, '上海市', 16000, 11000, '2019-11-07', NULL, 1, 122, 1, 4, 2);
INSERT INTO `position` VALUES (3, 'Java工程师', '有扎实的java基础，熟悉分布式、缓存、异步消息等原理和应用', 15, '天津市', 13000, 10000, '2019-09-30', NULL, 1, 3, 1, 7, 3);
INSERT INTO `position` VALUES (4, 'Java工程师', 'JAVA WEB方向2年+经验', 2, '南京市', 16000, 12000, '2019-09-25', NULL, 1, 25, 1, 10, 4);
INSERT INTO `position` VALUES (5, 'C++工程师', '可接收计算机相关专业应届生，表现优秀者加薪转正', 30, '南京市', 8000, 5000, '2019-10-16', NULL, 1, 13, 2, 10, 4);
INSERT INTO `position` VALUES (6, 'C++工程师', '3-5年工作经验，计算机相关专业毕业', 1, '上海市', 16000, 8000, '2019-11-03', NULL, 1, 4, 2, 4, 2);
INSERT INTO `position` VALUES (7, 'PHP工程师', '一年以上PHP开发经验 （项目经验丰富的，也可以升级为高级开发工程师）', 10, '上海市', 11000, 8000, '2019-11-10', NULL, 1, 84, 3, 4, 2);
INSERT INTO `position` VALUES (8, 'PHP工程师', '熟悉LNMP/WNMP开发环境 , 熟练使用Yaf, Yii, ThinkPHP等一种或多种框架', 5, '上海市', 12000, 7000, '2019-11-01', NULL, 1, 1, 3, 4, 2);
INSERT INTO `position` VALUES (9, '.NET工程师', '熟悉WinForm/WPF窗体开发并有实际项目经验', 2, '北京市', 13000, 11000, '2019-11-02', NULL, 1, 11, 4, 1, 1);
INSERT INTO `position` VALUES (10, 'Python数据分析', '熟练使用Linux，可以快速上手编写shell、powershell、cmd等操作系统脚本', 2, '北京市', 23000, 18000, '2019-10-09', NULL, 1, 46, 5, 1, 1);
INSERT INTO `position` VALUES (11, 'Python开发', '4年以上互联网产品后台研发经验，2年以上后台构架经验', 2, '北京市', 22000, 18000, '2019-09-23', NULL, 1, 0, 5, 1, 1);
INSERT INTO `position` VALUES (12, 'Python开发', '精通Python，2年或以上Python项目经验', 3, '天津市', 16000, 14000, '2019-07-27', NULL, 1, 36, 5, 7, 3);
INSERT INTO `position` VALUES (13, '数据挖掘工程师', '熟悉 Linux平台上的编程环境，精通Java开发，精通 Python/Shell等脚本语言', 12, '天津市', 22000, 15000, '2019-11-05', NULL, 1, 4, 6, 7, 3);
INSERT INTO `position` VALUES (14, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '北京市', 32000, 28000, '2019-11-06', NULL, 1, 28, 6, 1, 1);
INSERT INTO `position` VALUES (15, '数据挖掘工程师', '精通Python，熟悉PHP/GO/Java/C++/C等语言中的一种或几种', 2, '杭州市', 26000, 14000, '2019-11-08', NULL, 1, 20, 6, 13, 5);
INSERT INTO `position` VALUES (16, 'Java工程师', '熟悉Spring、Freemark、Struts、Hibernate 等开源框架', 13, '杭州市', 18000, 15000, '2019-11-11', NULL, 1, 10, 1, 17, 6);
INSERT INTO `position` VALUES (17, 'Java后端开发', '熟练使用Mybatis，SpringMVC，SpringCloud等框架', 5, '杭州市', 21000, 18000, '2019-10-23', NULL, 1, 3, 1, 13, 5);
INSERT INTO `position` VALUES (18, 'C++后端开发', '熟练linux系统操作，熟练gcc,gdb,vim, eclipse等开发工具', 5, '北京市', 12000, 9000, '2019-10-28', NULL, 1, 0, 2, 1, 1);
INSERT INTO `position` VALUES (19, 'java研发工程师（中国联通网络AI中心）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 7, '南京', 30000, 6000, '2020-01-01', NULL, 1, 26, 1, 16, 8);
INSERT INTO `position` VALUES (20, 'Senior Java Developer (职位编号：007284)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 0, '上海', 20000, 6000, '2020-01-01', NULL, 1, 142, 1, 1, 9);
INSERT INTO `position` VALUES (21, '高级开发工程师（Java)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 5, '广州', 30000, 6000, '2020-01-01', NULL, 1, 23, 1, 2, 10);
INSERT INTO `position` VALUES (22, '盒马-Java技术专家-技术研发 (MJ001170)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 7, '上海', 20000, 5000, '2020-01-01', NULL, 1, 50, 1, 13, 11);
INSERT INTO `position` VALUES (23, '高级Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 5, '北京', 11000, 9000, '2020-01-01', NULL, 1, 51, 1, 10, 12);
INSERT INTO `position` VALUES (24, 'IT Java工程师 （可考虑优秀2020届毕业生）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 3, '上海', 30000, 8000, '2020-01-01', NULL, 1, 24, 1, 9, 13);
INSERT INTO `position` VALUES (25, '高级Java软件工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 9, '北京', 23000, 5000, '2020-01-01', NULL, 1, 93, 1, 0, 14);
INSERT INTO `position` VALUES (26, 'Java开发工程师（上海）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 10, '上海', 11000, 7000, '2020-01-01', NULL, 1, 140, 1, 10, 15);
INSERT INTO `position` VALUES (27, 'Java高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 1, '武汉', 20000, 9000, '2020-01-01', NULL, 1, 46, 1, 5, 16);
INSERT INTO `position` VALUES (28, 'Java软件测试（双休）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 13, '武汉', 11000, 7000, '2020-01-01', NULL, 1, 79, 1, 20, 17);
INSERT INTO `position` VALUES (29, '对日Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 15, '无锡', 11000, 8000, '2020-01-01', NULL, 1, 133, 1, 4, 18);
INSERT INTO `position` VALUES (30, '高级Java架构师（算法工程化）(J12115)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 7, '上海', 20000, 8000, '2020-01-01', NULL, 1, 118, 1, 10, 19);
INSERT INTO `position` VALUES (31, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 6, '苏州', 15000, 8000, '2020-01-01', NULL, 1, 71, 1, 11, 20);
INSERT INTO `position` VALUES (32, 'Java中级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 14, '上海', 16000, 8000, '2020-01-01', NULL, 1, 29, 1, 9, 21);
INSERT INTO `position` VALUES (33, '项目主管(java)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 1, '杭州', 20000, 5000, '2020-01-01', NULL, 1, 35, 1, 2, 22);
INSERT INTO `position` VALUES (34, '移动端开发实习生（java/android）+高薪双休', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 15, '大连', 15000, 7000, '2020-01-01', NULL, 1, 84, 1, 13, 23);
INSERT INTO `position` VALUES (35, 'Java高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 0, '上海', 15000, 8000, '2020-01-01', NULL, 1, 117, 1, 18, 24);
INSERT INTO `position` VALUES (36, 'Java开发（西城区）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 11, '北京', 16000, 9000, '2020-01-01', NULL, 1, 78, 1, 5, 25);
INSERT INTO `position` VALUES (37, '高级Java工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 14, '杭州', 16000, 5000, '2020-01-01', NULL, 1, 18, 1, 3, 26);
INSERT INTO `position` VALUES (38, 'JAVA软件开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 5, '上海', 23000, 8000, '2020-01-01', NULL, 1, 55, 1, 13, 27);
INSERT INTO `position` VALUES (39, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 5, '福州', 11000, 5000, '2020-01-01', NULL, 1, 43, 1, 9, 28);
INSERT INTO `position` VALUES (40, 'Java高级开发工程师（大数据方向）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 13, '成都', 11000, 6000, '2020-01-01', NULL, 1, 94, 1, 15, 29);
INSERT INTO `position` VALUES (41, 'Java开发工程师.', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 12, '北京', 15000, 7000, '2020-01-01', NULL, 1, 91, 1, 15, 30);
INSERT INTO `position` VALUES (42, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 15, '上海', 16000, 9000, '2020-01-01', NULL, 1, 130, 1, 20, 31);
INSERT INTO `position` VALUES (43, 'Java开发实习生', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 1, '成都', 20000, 8000, '2020-01-01', NULL, 1, 103, 1, 12, 32);
INSERT INTO `position` VALUES (44, 'java开发工程师（银行驻场）(J10710)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 1, '上海', 23000, 9000, '2020-01-01', NULL, 1, 22, 1, 12, 33);
INSERT INTO `position` VALUES (45, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 4, '广州', 16000, 9000, '2020-01-01', NULL, 1, 85, 1, 1, 34);
INSERT INTO `position` VALUES (46, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 6, '杭州', 15000, 9000, '2020-01-01', NULL, 1, 64, 1, 0, 35);
INSERT INTO `position` VALUES (47, '游戏服务端高级Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 2, '广州', 16000, 9000, '2020-01-01', NULL, 1, 58, 1, 9, 36);
INSERT INTO `position` VALUES (48, 'JAVA软件工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 7, '广州', 15000, 5000, '2020-01-01', NULL, 1, 0, 1, 9, 37);
INSERT INTO `position` VALUES (49, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 13, '郑州', 16000, 9000, '2020-01-01', NULL, 1, 0, 1, 5, 38);
INSERT INTO `position` VALUES (50, 'Java开发工程师.', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 5, '昆明', 11000, 8000, '2020-01-01', NULL, 1, 85, 1, 15, 39);
INSERT INTO `position` VALUES (51, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 4, '郑州', 21000, 5000, '2020-01-01', NULL, 1, 34, 1, 3, 40);
INSERT INTO `position` VALUES (52, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 13, '宁波', 15000, 8000, '2020-01-01', NULL, 1, 30, 1, 20, 41);
INSERT INTO `position` VALUES (53, 'JAVA高级软件开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 12, '广州', 30000, 8000, '2020-01-01', NULL, 1, 58, 1, 3, 42);
INSERT INTO `position` VALUES (54, 'JAVA 工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 15, '上海', 15000, 5000, '2020-01-01', NULL, 1, 52, 1, 8, 43);
INSERT INTO `position` VALUES (55, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 12, '成都', 16000, 8000, '2020-01-01', NULL, 1, 97, 1, 12, 44);
INSERT INTO `position` VALUES (56, 'Java开发工程师 (一年合同期）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 12, '广州', 20000, 8000, '2020-01-01', NULL, 1, 12, 1, 11, 45);
INSERT INTO `position` VALUES (57, 'Java服务端开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 15, '广州', 15000, 5000, '2020-01-01', NULL, 1, 10, 1, 18, 46);
INSERT INTO `position` VALUES (58, '资深JAVA软件工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 10, '上海', 15000, 8000, '2020-01-01', NULL, 1, 69, 1, 13, 47);
INSERT INTO `position` VALUES (59, 'Java开发工程师 (职位编号：002)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 14, '福州', 20000, 8000, '2020-01-01', NULL, 1, 54, 1, 3, 48);
INSERT INTO `position` VALUES (60, 'Java高级开发工程师（双休，六险一金）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 12, '西安', 23000, 9000, '2020-01-01', NULL, 1, 85, 1, 18, 49);
INSERT INTO `position` VALUES (61, 'Java高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 4, '南京', 16000, 7000, '2020-01-01', NULL, 1, 35, 1, 4, 50);
INSERT INTO `position` VALUES (62, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 11, '株洲', 30000, 8000, '2020-01-01', NULL, 1, 69, 1, 20, 51);
INSERT INTO `position` VALUES (63, 'Java开发工程师-初级', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 2, '成都', 20000, 5000, '2020-01-01', NULL, 1, 56, 1, 19, 52);
INSERT INTO `position` VALUES (64, 'Java开发工程师（2020届应届生）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 10, '合肥', 11000, 6000, '2020-01-01', NULL, 1, 136, 1, 17, 53);
INSERT INTO `position` VALUES (65, 'Java、小程序开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 2, '深圳', 16000, 7000, '2020-01-01', NULL, 1, 13, 1, 7, 54);
INSERT INTO `position` VALUES (66, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 9, '西安', 15000, 9000, '2020-01-01', NULL, 1, 75, 1, 7, 55);
INSERT INTO `position` VALUES (67, 'Java初级开发工程师-双休', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 2, '成都', 23000, 5000, '2020-01-01', NULL, 1, 121, 1, 16, 56);
INSERT INTO `position` VALUES (68, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 13, '上海', 11000, 9000, '2020-01-01', NULL, 1, 57, 1, 12, 57);
INSERT INTO `position` VALUES (69, 'JAVA高级软件开发工程师 (职位编号：002)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 5, '南京', 11000, 9000, '2020-01-01', NULL, 1, 39, 1, 12, 58);
INSERT INTO `position` VALUES (70, '中级Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 0, '上海', 21000, 5000, '2020-01-01', NULL, 1, 119, 1, 0, 59);
INSERT INTO `position` VALUES (71, 'Java中级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 8, '广州', 23000, 8000, '2020-01-01', NULL, 1, 86, 1, 6, 60);
INSERT INTO `position` VALUES (72, 'Java初级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 6, '杭州', 20000, 5000, '2020-01-01', NULL, 1, 106, 1, 0, 61);
INSERT INTO `position` VALUES (73, 'Java中高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 5, '上海', 20000, 5000, '2020-01-01', NULL, 1, 79, 1, 19, 62);
INSERT INTO `position` VALUES (74, 'Java高级开发工程师（运满满）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 2, '南京', 11000, 6000, '2020-01-01', NULL, 1, 27, 1, 0, 63);
INSERT INTO `position` VALUES (75, 'Java高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 10, '杭州', 23000, 7000, '2020-01-01', NULL, 1, 48, 1, 12, 64);
INSERT INTO `position` VALUES (76, 'Java游戏服务器工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 4, '广州', 20000, 7000, '2020-01-01', NULL, 1, 19, 1, 4, 65);
INSERT INTO `position` VALUES (77, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 4, '苏州', 15000, 9000, '2020-01-01', NULL, 1, 4, 1, 20, 66);
INSERT INTO `position` VALUES (78, 'Java后台工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 12, '深圳', 23000, 8000, '2020-01-01', NULL, 1, 108, 1, 4, 67);
INSERT INTO `position` VALUES (79, 'Java软件工程师（Java Software Engineer）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 0, '上海', 23000, 6000, '2020-01-01', NULL, 1, 116, 1, 17, 68);
INSERT INTO `position` VALUES (80, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 7, '北京', 20000, 5000, '2020-01-01', NULL, 1, 46, 1, 19, 69);
INSERT INTO `position` VALUES (81, 'JAVA开发架构师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 1, '深圳', 21000, 7000, '2020-01-01', NULL, 1, 57, 1, 12, 70);
INSERT INTO `position` VALUES (82, 'Java中级开发工程师（加班少+双休）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 0, '广州', 23000, 6000, '2020-01-01', NULL, 1, 104, 1, 10, 71);
INSERT INTO `position` VALUES (83, '软件Java开发助理', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 15, '泉州', 16000, 5000, '2020-01-01', NULL, 1, 60, 1, 5, 72);
INSERT INTO `position` VALUES (84, 'Java开发实习 人才储备（朝九晚五）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 13, '厦门', 21000, 5000, '2020-01-01', NULL, 1, 57, 1, 19, 73);
INSERT INTO `position` VALUES (85, '技术主管（JAVA）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 0, '成都', 21000, 7000, '2020-01-01', NULL, 1, 28, 1, 12, 74);
INSERT INTO `position` VALUES (86, 'Java高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 7, '深圳', 16000, 6000, '2020-01-01', NULL, 1, 91, 1, 8, 75);
INSERT INTO `position` VALUES (87, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 2, '营口', 16000, 5000, '2020-01-01', NULL, 1, 82, 1, 18, 76);
INSERT INTO `position` VALUES (88, 'Java高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 10, '长沙', 15000, 9000, '2020-01-01', NULL, 1, 71, 1, 8, 77);
INSERT INTO `position` VALUES (89, 'JAVA软件开发技术助理', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 13, '武汉', 15000, 7000, '2020-01-01', NULL, 1, 63, 1, 19, 78);
INSERT INTO `position` VALUES (90, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 10, '南京', 20000, 7000, '2020-01-01', NULL, 1, 85, 1, 5, 79);
INSERT INTO `position` VALUES (91, '高级Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 10, '深圳', 21000, 9000, '2020-01-01', NULL, 1, 22, 1, 17, 80);
INSERT INTO `position` VALUES (92, 'java 软件开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 2, '无锡', 23000, 7000, '2020-01-01', NULL, 1, 54, 1, 0, 81);
INSERT INTO `position` VALUES (93, 'java开发工程师（偏数据方向），年薪7-15万', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 6, '成都', 30000, 6000, '2020-01-01', NULL, 1, 90, 1, 1, 82);
INSERT INTO `position` VALUES (94, '软件工程师（Java开发-应届生岗位）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 11, '上海', 11000, 9000, '2020-01-01', NULL, 1, 74, 1, 3, 83);
INSERT INTO `position` VALUES (95, 'Java高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 3, '西安', 20000, 8000, '2020-01-01', NULL, 1, 61, 1, 7, 84);
INSERT INTO `position` VALUES (96, '物联网Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 14, '深圳', 21000, 8000, '2020-01-01', NULL, 1, 139, 1, 3, 85);
INSERT INTO `position` VALUES (97, 'Java高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 4, '南京', 11000, 9000, '2020-01-01', NULL, 1, 82, 1, 8, 86);
INSERT INTO `position` VALUES (98, 'java软件工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 15, '无锡', 23000, 7000, '2020-01-01', NULL, 1, 7, 1, 15, 87);
INSERT INTO `position` VALUES (99, 'JAVA开发工程师（上海）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 5, '上海', 23000, 7000, '2020-01-01', NULL, 1, 52, 1, 8, 88);
INSERT INTO `position` VALUES (100, 'Java中级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 15, '苏州', 30000, 5000, '2020-01-01', NULL, 1, 54, 1, 13, 89);
INSERT INTO `position` VALUES (101, 'JAVA开发专员', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 13, '沈阳', 11000, 6000, '2020-01-01', NULL, 1, 87, 1, 11, 90);
INSERT INTO `position` VALUES (102, 'JAVA开发（SaaS平台）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 8, '上海', 11000, 9000, '2020-01-01', NULL, 1, 57, 1, 19, 91);
INSERT INTO `position` VALUES (103, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 5, '广州', 11000, 8000, '2020-01-01', NULL, 1, 15, 1, 8, 92);
INSERT INTO `position` VALUES (104, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 10, '沈阳', 23000, 9000, '2020-01-01', NULL, 1, 134, 1, 12, 93);
INSERT INTO `position` VALUES (105, 'Java高级开发工程师/项目经理 (职位编号：YD20190801)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 10, '上海', 23000, 5000, '2020-01-01', NULL, 1, 75, 1, 3, 94);
INSERT INTO `position` VALUES (106, '中级Java研发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 3, '南京', 30000, 8000, '2020-01-01', NULL, 1, 135, 1, 19, 95);
INSERT INTO `position` VALUES (107, '高级软件工程师(JAVA)', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 7, '上海', 16000, 8000, '2020-01-01', NULL, 1, 26, 1, 6, 96);
INSERT INTO `position` VALUES (108, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 2, '南京', 23000, 7000, '2020-01-01', NULL, 1, 65, 1, 0, 97);
INSERT INTO `position` VALUES (109, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 12, '广州', 11000, 5000, '2020-01-01', NULL, 1, 72, 1, 16, 98);
INSERT INTO `position` VALUES (110, 'Java系统架构师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 2, '广州', 23000, 8000, '2020-01-01', NULL, 1, 128, 1, 0, 99);
INSERT INTO `position` VALUES (111, '技术开发部Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 11, '杭州', 11000, 6000, '2020-01-01', NULL, 1, 84, 1, 17, 100);
INSERT INTO `position` VALUES (112, 'Java开发/Java软件工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 11, '深圳', 16000, 6000, '2020-01-01', NULL, 1, 56, 1, 1, 101);
INSERT INTO `position` VALUES (113, 'Java高级开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 14, '无锡', 21000, 5000, '2020-01-01', NULL, 1, 139, 1, 12, 102);
INSERT INTO `position` VALUES (114, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 15, '济南', 23000, 7000, '2020-01-01', NULL, 1, 54, 1, 3, 103);
INSERT INTO `position` VALUES (115, 'Java开发高级', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 7, '上海', 11000, 8000, '2020-01-01', NULL, 1, 10, 1, 11, 104);
INSERT INTO `position` VALUES (116, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 9, '北京', 11000, 7000, '2020-01-01', NULL, 1, 8, 1, 20, 105);
INSERT INTO `position` VALUES (117, 'Java系统架构师（微服务平台）', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 11, '广州', 30000, 9000, '2020-01-01', NULL, 1, 92, 1, 3, 106);
INSERT INTO `position` VALUES (118, 'Java开发工程师', '熟悉Java常用开发框架,良好的编程能力,掌握数据库技术', 1, '无锡', 15000, 8000, '2020-01-01', NULL, 1, 7, 1, 4, 107);
INSERT INTO `position` VALUES (119, 'B2C片区运营和生鲜片区运营经理', '扎实的语言基础,熟练计算机底层,操作系统等知识', 14, '上海', 20000, 7000, '2020-01-01', NULL, 1, 87, 2, 11, 108);
INSERT INTO `position` VALUES (120, 'C&B Specialist 薪酬专员', '扎实的语言基础,熟练计算机底层,操作系统等知识', 8, '上海', 21000, 8000, '2020-01-01', NULL, 1, 93, 2, 2, 109);
INSERT INTO `position` VALUES (121, 'C++工程师（代发）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 4, '广州', 20000, 7000, '2020-01-01', NULL, 1, 79, 2, 13, 110);
INSERT INTO `position` VALUES (122, '软件开发工程师（C/C++）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 13, '济南', 11000, 6000, '2020-01-01', NULL, 1, 71, 2, 6, 111);
INSERT INTO `position` VALUES (123, 'B2C Operation Director', '扎实的语言基础,熟练计算机底层,操作系统等知识', 0, '上海', 23000, 6000, '2020-01-01', NULL, 1, 117, 2, 4, 112);
INSERT INTO `position` VALUES (124, 'C++ 图像算法工程师1', '扎实的语言基础,熟练计算机底层,操作系统等知识', 15, '深圳', 16000, 6000, '2020-01-01', NULL, 1, 125, 2, 4, 113);
INSERT INTO `position` VALUES (125, '电商运营（B2B2C业务）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 0, '上海', 15000, 7000, '2020-01-01', NULL, 1, 0, 2, 2, 114);
INSERT INTO `position` VALUES (126, '链家销售代表+5.5k底薪+提成c', '扎实的语言基础,熟练计算机底层,操作系统等知识', 0, '东莞', 30000, 7000, '2020-01-01', NULL, 1, 117, 2, 9, 115);
INSERT INTO `position` VALUES (127, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 14, '广州', 21000, 5000, '2020-01-01', NULL, 1, 77, 2, 7, 116);
INSERT INTO `position` VALUES (128, 'C#开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 7, '沈阳', 16000, 7000, '2020-01-01', NULL, 1, 36, 2, 19, 117);
INSERT INTO `position` VALUES (129, 'c#/.net高级开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 2, '长沙', 11000, 6000, '2020-01-01', NULL, 1, 88, 2, 6, 118);
INSERT INTO `position` VALUES (130, 'C/C++/C#开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 6, '南京', 16000, 6000, '2020-01-01', NULL, 1, 91, 2, 11, 119);
INSERT INTO `position` VALUES (131, 'C4D电商视觉设计师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 8, '深圳', 15000, 7000, '2020-01-01', NULL, 1, 74, 2, 18, 120);
INSERT INTO `position` VALUES (132, '销售代表/五险3金c本科底薪5500/家门口上班', '扎实的语言基础,熟练计算机底层,操作系统等知识', 5, '成都', 23000, 9000, '2020-01-01', NULL, 1, 93, 2, 6, 121);
INSERT INTO `position` VALUES (133, '游戏C++工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 9, '上海', 30000, 6000, '2020-01-01', NULL, 1, 102, 2, 16, 122);
INSERT INTO `position` VALUES (134, 'C#软件开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 3, '广州', 21000, 6000, '2020-01-01', NULL, 1, 117, 2, 2, 123);
INSERT INTO `position` VALUES (135, 'c++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 3, '南京', 15000, 5000, '2020-01-01', NULL, 1, 33, 2, 16, 124);
INSERT INTO `position` VALUES (136, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 7, '广州', 21000, 7000, '2020-01-01', NULL, 1, 92, 2, 0, 125);
INSERT INTO `position` VALUES (137, '外贸销售（B2C）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 13, '长沙', 15000, 7000, '2020-01-01', NULL, 1, 136, 2, 13, 126);
INSERT INTO `position` VALUES (138, 'C++软件开发工程师 (职位编号：001)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 9, '上海', 16000, 6000, '2020-01-01', NULL, 1, 80, 2, 1, 127);
INSERT INTO `position` VALUES (139, '中高级C#开发工程师（双休，五险一金）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 8, '西安', 30000, 6000, '2020-01-01', NULL, 1, 24, 2, 5, 128);
INSERT INTO `position` VALUES (140, '独立站推广主管（B2C）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 7, '深圳', 16000, 9000, '2020-01-01', NULL, 1, 30, 2, 3, 129);
INSERT INTO `position` VALUES (141, 'C++高级开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 14, '北京', 23000, 7000, '2020-01-01', NULL, 1, 116, 2, 17, 130);
INSERT INTO `position` VALUES (142, '诚聘亚马逊精品运营（3C、家居）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 6, '深圳', 30000, 5000, '2020-01-01', NULL, 1, 40, 2, 16, 131);
INSERT INTO `position` VALUES (143, 'C#软件开发工程师（残疾人岗位）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 15, '上海', 30000, 9000, '2020-01-01', NULL, 1, 67, 2, 15, 132);
INSERT INTO `position` VALUES (144, 'C/C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 15, '南京', 23000, 9000, '2020-01-01', NULL, 1, 59, 2, 18, 133);
INSERT INTO `position` VALUES (145, '播放器c开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 5, '上海', 16000, 9000, '2020-01-01', NULL, 1, 116, 2, 15, 134);
INSERT INTO `position` VALUES (146, 'C房产经纪人/可签三方/无责4.5k/五险二金', '扎实的语言基础,熟练计算机底层,操作系统等知识', 6, '西安', 15000, 8000, '2020-01-01', NULL, 1, 95, 2, 18, 135);
INSERT INTO `position` VALUES (147, 'C4D设计师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 3, '杭州', 11000, 9000, '2020-01-01', NULL, 1, 95, 2, 7, 136);
INSERT INTO `position` VALUES (148, '软件工程师(C++/MFC)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 4, '无锡', 15000, 7000, '2020-01-01', NULL, 1, 23, 2, 0, 137);
INSERT INTO `position` VALUES (149, 'C开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 10, '北京', 20000, 5000, '2020-01-01', NULL, 1, 6, 2, 14, 138);
INSERT INTO `position` VALUES (150, '高级C/C++软件开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 12, '广州', 21000, 9000, '2020-01-01', NULL, 1, 34, 2, 19, 139);
INSERT INTO `position` VALUES (151, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 7, '成都', 16000, 9000, '2020-01-01', NULL, 1, 21, 2, 20, 140);
INSERT INTO `position` VALUES (152, 'C#.net软件工程师 (职位编号：001)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 7, '岳阳', 15000, 6000, '2020-01-01', NULL, 1, 61, 2, 8, 141);
INSERT INTO `position` VALUES (153, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 3, '成都', 21000, 9000, '2020-01-01', NULL, 1, 88, 2, 4, 142);
INSERT INTO `position` VALUES (154, 'C#/C++/C软件工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 15, '北京', 20000, 9000, '2020-01-01', NULL, 1, 95, 2, 12, 143);
INSERT INTO `position` VALUES (155, 'C++软件工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 0, '上海', 15000, 8000, '2020-01-01', NULL, 1, 43, 2, 18, 144);
INSERT INTO `position` VALUES (156, 'c++软件工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 10, '成都', 20000, 6000, '2020-01-01', NULL, 1, 24, 2, 13, 145);
INSERT INTO `position` VALUES (157, 'c++软件工程师（应届生）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 12, '武汉', 20000, 5000, '2020-01-01', NULL, 1, 26, 2, 13, 146);
INSERT INTO `position` VALUES (158, '本科（实习）不限经验VIP销售顾问/就近分配C', '扎实的语言基础,熟练计算机底层,操作系统等知识', 3, '成都', 15000, 8000, '2020-01-01', NULL, 1, 21, 2, 11, 147);
INSERT INTO `position` VALUES (159, 'C#程序员', '扎实的语言基础,熟练计算机底层,操作系统等知识', 8, '上海', 21000, 5000, '2020-01-01', NULL, 1, 44, 2, 13, 148);
INSERT INTO `position` VALUES (160, '月入过万交通银行客户经理五险一金C', '扎实的语言基础,熟练计算机底层,操作系统等知识', 11, '合肥', 21000, 9000, '2020-01-01', NULL, 1, 133, 2, 10, 149);
INSERT INTO `position` VALUES (161, 'C/C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 7, '广州', 30000, 6000, '2020-01-01', NULL, 1, 24, 2, 11, 150);
INSERT INTO `position` VALUES (162, 'C# .Net 软件工程师/系统工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 4, '上海', 11000, 9000, '2020-01-01', NULL, 1, 25, 2, 15, 151);
INSERT INTO `position` VALUES (163, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 10, '深圳', 11000, 5000, '2020-01-01', NULL, 1, 4, 2, 0, 152);
INSERT INTO `position` VALUES (164, 'C++高级开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 2, '南京', 23000, 7000, '2020-01-01', NULL, 1, 1, 2, 12, 153);
INSERT INTO `position` VALUES (165, 'C#开发工程师（Winform/CS）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 4, '深圳', 20000, 5000, '2020-01-01', NULL, 1, 69, 2, 6, 154);
INSERT INTO `position` VALUES (166, 'C++服务端', '扎实的语言基础,熟练计算机底层,操作系统等知识', 15, '广州', 20000, 7000, '2020-01-01', NULL, 1, 72, 2, 12, 155);
INSERT INTO `position` VALUES (167, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 12, '无锡', 16000, 6000, '2020-01-01', NULL, 1, 0, 2, 14, 156);
INSERT INTO `position` VALUES (168, 'C#开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 0, '上海', 16000, 6000, '2020-01-01', NULL, 1, 116, 2, 8, 157);
INSERT INTO `position` VALUES (169, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 10, '上海', 30000, 5000, '2020-01-01', NULL, 1, 142, 2, 1, 158);
INSERT INTO `position` VALUES (170, 'C语言开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 5, '无锡', 16000, 5000, '2020-01-01', NULL, 1, 86, 2, 9, 159);
INSERT INTO `position` VALUES (171, '亚马逊精品开发（家居、3c、LED、玩具）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 9, '深圳', 23000, 9000, '2020-01-01', NULL, 1, 124, 2, 12, 160);
INSERT INTO `position` VALUES (172, 'C#软件工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 5, '上海', 20000, 7000, '2020-01-01', NULL, 1, 71, 2, 19, 161);
INSERT INTO `position` VALUES (173, 'C++中级工程师 (职位编号：C)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 10, '成都', 15000, 7000, '2020-01-01', NULL, 1, 66, 2, 9, 162);
INSERT INTO `position` VALUES (174, '.Net研发工程师C#工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 14, '成都', 11000, 7000, '2020-01-01', NULL, 1, 74, 2, 4, 163);
INSERT INTO `position` VALUES (175, 'C4D电商设计师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 13, '广州', 11000, 5000, '2020-01-01', NULL, 1, 20, 2, 9, 164);
INSERT INTO `position` VALUES (176, '游戏服务器开发工程师（C++）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 10, '广州', 21000, 5000, '2020-01-01', NULL, 1, 140, 2, 2, 165);
INSERT INTO `position` VALUES (177, '软件工程师-C++', '扎实的语言基础,熟练计算机底层,操作系统等知识', 15, '上海', 16000, 8000, '2020-01-01', NULL, 1, 121, 2, 13, 166);
INSERT INTO `position` VALUES (178, 'C++高级开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 15, '广州', 20000, 9000, '2020-01-01', NULL, 1, 96, 2, 12, 167);
INSERT INTO `position` VALUES (179, '外贸B2C ebay 运营销售专员 (职位编号：001)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 8, '成都', 16000, 6000, '2020-01-01', NULL, 1, 103, 2, 0, 168);
INSERT INTO `position` VALUES (180, 'C#开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 11, '青岛', 30000, 6000, '2020-01-01', NULL, 1, 70, 2, 16, 169);
INSERT INTO `position` VALUES (181, 'C++开发工程师（双休、五险一金）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 11, '杭州', 15000, 8000, '2020-01-01', NULL, 1, 67, 2, 6, 170);
INSERT INTO `position` VALUES (182, 'C#开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 8, '常州', 30000, 5000, '2020-01-01', NULL, 1, 40, 2, 0, 171);
INSERT INTO `position` VALUES (183, '外贸跟单（西乡坪洲C出口附近）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 2, '深圳', 23000, 6000, '2020-01-01', NULL, 1, 111, 2, 1, 172);
INSERT INTO `position` VALUES (184, 'C#工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 11, '成都', 16000, 7000, '2020-01-01', NULL, 1, 137, 2, 0, 173);
INSERT INTO `position` VALUES (185, 'C++Qt中级工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 9, '石家庄', 23000, 7000, '2020-01-01', NULL, 1, 137, 2, 19, 174);
INSERT INTO `position` VALUES (186, 'C++开发工程师（上海证券交易所）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 2, '上海', 23000, 9000, '2020-01-01', NULL, 1, 38, 2, 4, 175);
INSERT INTO `position` VALUES (187, '急招C1网约车司机+保底1万', '扎实的语言基础,熟练计算机底层,操作系统等知识', 6, '上海', 20000, 9000, '2020-01-01', NULL, 1, 107, 2, 19, 176);
INSERT INTO `position` VALUES (188, '软件开发工程师（C#方向）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 8, '青岛', 23000, 7000, '2020-01-01', NULL, 1, 62, 2, 3, 177);
INSERT INTO `position` VALUES (189, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 2, '深圳', 23000, 7000, '2020-01-01', NULL, 1, 106, 2, 9, 178);
INSERT INTO `position` VALUES (190, '软件开发工程师（熟悉C#、C++、C其中一项）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 10, '上海', 16000, 8000, '2020-01-01', NULL, 1, 30, 2, 16, 179);
INSERT INTO `position` VALUES (191, 'HR Officer, C&B', '扎实的语言基础,熟练计算机底层,操作系统等知识', 3, '广州', 15000, 5000, '2020-01-01', NULL, 1, 68, 2, 1, 180);
INSERT INTO `position` VALUES (192, 'C++初级研发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 10, '广州', 20000, 9000, '2020-01-01', NULL, 1, 9, 2, 16, 181);
INSERT INTO `position` VALUES (193, 'C++高级开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 4, '广州', 11000, 6000, '2020-01-01', NULL, 1, 44, 2, 20, 182);
INSERT INTO `position` VALUES (194, 'C#开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 13, '徐州', 21000, 8000, '2020-01-01', NULL, 1, 114, 2, 6, 183);
INSERT INTO `position` VALUES (195, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 5, '厦门', 20000, 9000, '2020-01-01', NULL, 1, 84, 2, 5, 184);
INSERT INTO `position` VALUES (196, '初级软件开发工程师（C\\C++）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 2, '武汉', 20000, 8000, '2020-01-01', NULL, 1, 7, 2, 14, 185);
INSERT INTO `position` VALUES (197, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 12, '广州', 30000, 5000, '2020-01-01', NULL, 1, 128, 2, 14, 186);
INSERT INTO `position` VALUES (198, 'C++开发工程师(J10334)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 10, '南京', 21000, 8000, '2020-01-01', NULL, 1, 108, 2, 3, 187);
INSERT INTO `position` VALUES (199, 'C#工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 2, '东莞', 21000, 6000, '2020-01-01', NULL, 1, 27, 2, 2, 188);
INSERT INTO `position` VALUES (200, '本科福利：底薪5500/销售/专员/店员/销售业务C', '扎实的语言基础,熟练计算机底层,操作系统等知识', 1, '成都', 16000, 5000, '2020-01-01', NULL, 1, 100, 2, 17, 189);
INSERT INTO `position` VALUES (201, 'C++开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 4, '上海', 11000, 7000, '2020-01-01', NULL, 1, 136, 2, 20, 190);
INSERT INTO `position` VALUES (202, 'C语言开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 12, '杭州', 20000, 7000, '2020-01-01', NULL, 1, 94, 2, 4, 191);
INSERT INTO `position` VALUES (203, 'C#开发工程师(广州)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 0, '广州', 20000, 8000, '2020-01-01', NULL, 1, 102, 2, 10, 192);
INSERT INTO `position` VALUES (204, 'C#开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 4, '广州', 11000, 6000, '2020-01-01', NULL, 1, 81, 2, 3, 193);
INSERT INTO `position` VALUES (205, '电商运营 B2C外贸专员 英语四级 无责任底薪', '扎实的语言基础,熟练计算机底层,操作系统等知识', 6, '深圳', 11000, 8000, '2020-01-01', NULL, 1, 88, 2, 20, 194);
INSERT INTO `position` VALUES (206, 'C++软件开发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 2, '大连', 23000, 7000, '2020-01-01', NULL, 1, 1, 2, 5, 195);
INSERT INTO `position` VALUES (207, 'C/C++工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 9, '西安', 23000, 9000, '2020-01-01', NULL, 1, 25, 2, 4, 196);
INSERT INTO `position` VALUES (208, 'C++/QT高级软件工程师 (职位编号：4)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 8, '珠海', 16000, 5000, '2020-01-01', NULL, 1, 37, 2, 10, 197);
INSERT INTO `position` VALUES (209, 'C语言开发工程师（停车场收费系统）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 14, '杭州', 11000, 7000, '2020-01-01', NULL, 1, 109, 2, 10, 198);
INSERT INTO `position` VALUES (210, '五险一金+高薪 B2C外贸业务员 跨境电商运营', '扎实的语言基础,熟练计算机底层,操作系统等知识', 8, '深圳', 15000, 8000, '2020-01-01', NULL, 1, 143, 2, 13, 199);
INSERT INTO `position` VALUES (211, 'C市场/渠道/销售/就近/地铁口/住宿', '扎实的语言基础,熟练计算机底层,操作系统等知识', 12, '西安', 11000, 5000, '2020-01-01', NULL, 1, 18, 2, 10, 200);
INSERT INTO `position` VALUES (212, 'B2C跨境电商运营 速卖通运营', '扎实的语言基础,熟练计算机底层,操作系统等知识', 14, '深圳', 30000, 7000, '2020-01-01', NULL, 1, 126, 2, 6, 201);
INSERT INTO `position` VALUES (213, 'B2C外贸业务员包吃住', '扎实的语言基础,熟练计算机底层,操作系统等知识', 0, '深圳', 16000, 7000, '2020-01-01', NULL, 1, 117, 2, 5, 202);
INSERT INTO `position` VALUES (214, 'B2C外贸专员（接受实习生）', '扎实的语言基础,熟练计算机底层,操作系统等知识', 5, '广州', 23000, 7000, '2020-01-01', NULL, 1, 120, 2, 15, 203);
INSERT INTO `position` VALUES (215, 'Linux C/C++研发工程师', '扎实的语言基础,熟练计算机底层,操作系统等知识', 13, '徐州', 30000, 8000, '2020-01-01', NULL, 1, 82, 2, 15, 204);
INSERT INTO `position` VALUES (216, '课程顾问B2C', '扎实的语言基础,熟练计算机底层,操作系统等知识', 5, '上海', 11000, 5000, '2020-01-01', NULL, 1, 59, 2, 16, 205);
INSERT INTO `position` VALUES (217, '人事主任管理师(C&B)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 4, '武汉', 21000, 5000, '2020-01-01', NULL, 1, 66, 2, 17, 206);
INSERT INTO `position` VALUES (218, 'C++开发工程师(JN)', '扎实的语言基础,熟练计算机底层,操作系统等知识', 4, '武汉', 15000, 8000, '2020-01-01', NULL, 1, 83, 2, 6, 207);
INSERT INTO `position` VALUES (219, '高级PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 11, '武汉', 23000, 7000, '2020-01-01', NULL, 1, 54, 3, 5, 208);
INSERT INTO `position` VALUES (220, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '上海', 15000, 6000, '2020-01-01', NULL, 1, 11, 3, 13, 209);
INSERT INTO `position` VALUES (221, 'PHP开发主管', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '深圳', 11000, 9000, '2020-01-01', NULL, 1, 133, 3, 9, 210);
INSERT INTO `position` VALUES (222, '集团事业部-PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '深圳', 20000, 5000, '2020-01-01', NULL, 1, 95, 3, 12, 211);
INSERT INTO `position` VALUES (223, 'PHP高级开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '广州', 20000, 6000, '2020-01-01', NULL, 1, 45, 3, 6, 212);
INSERT INTO `position` VALUES (224, '高级PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 1, '武汉', 23000, 8000, '2020-01-01', NULL, 1, 107, 3, 4, 213);
INSERT INTO `position` VALUES (225, 'PHP中级开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 13, '佛山', 11000, 7000, '2020-01-01', NULL, 1, 111, 3, 3, 214);
INSERT INTO `position` VALUES (226, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '广州', 20000, 5000, '2020-01-01', NULL, 1, 75, 3, 20, 215);
INSERT INTO `position` VALUES (227, '资深PHP工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 13, '上海', 11000, 5000, '2020-01-01', NULL, 1, 64, 3, 10, 216);
INSERT INTO `position` VALUES (228, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 3, '上海', 30000, 7000, '2020-01-01', NULL, 1, 60, 3, 17, 217);
INSERT INTO `position` VALUES (229, 'PHP程序员/PHP开发工程师（高薪急聘+五险一金） (职位编号：1)', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 14, '成都', 16000, 7000, '2020-01-01', NULL, 1, 30, 3, 2, 218);
INSERT INTO `position` VALUES (230, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 8, '福州', 30000, 9000, '2020-01-01', NULL, 1, 42, 3, 20, 219);
INSERT INTO `position` VALUES (231, 'PHP开发工程师程序员', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 5, '惠州', 15000, 6000, '2020-01-01', NULL, 1, 107, 3, 14, 220);
INSERT INTO `position` VALUES (232, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 4, '广州', 23000, 6000, '2020-01-01', NULL, 1, 4, 3, 3, 221);
INSERT INTO `position` VALUES (233, 'PHP开发工程师 (职位编号：03)', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 13, '杭州', 30000, 7000, '2020-01-01', NULL, 1, 9, 3, 9, 222);
INSERT INTO `position` VALUES (234, '高级PHP研发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 10, '上海', 21000, 5000, '2020-01-01', NULL, 1, 9, 3, 8, 223);
INSERT INTO `position` VALUES (235, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 6, '广州', 11000, 8000, '2020-01-01', NULL, 1, 90, 3, 9, 224);
INSERT INTO `position` VALUES (236, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 13, '广州', 20000, 6000, '2020-01-01', NULL, 1, 137, 3, 16, 225);
INSERT INTO `position` VALUES (237, '高级PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 6, '上海', 16000, 5000, '2020-01-01', NULL, 1, 75, 3, 1, 226);
INSERT INTO `position` VALUES (238, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '昆明', 23000, 5000, '2020-01-01', NULL, 1, 62, 3, 2, 227);
INSERT INTO `position` VALUES (239, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 1, '苏州', 21000, 7000, '2020-01-01', NULL, 1, 75, 3, 12, 228);
INSERT INTO `position` VALUES (240, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 14, '武汉', 21000, 6000, '2020-01-01', NULL, 1, 79, 3, 17, 229);
INSERT INTO `position` VALUES (241, 'PHP程序员', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 4, '佛山', 20000, 6000, '2020-01-01', NULL, 1, 127, 3, 14, 230);
INSERT INTO `position` VALUES (242, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 7, '无锡', 16000, 5000, '2020-01-01', NULL, 1, 98, 3, 10, 231);
INSERT INTO `position` VALUES (243, 'PHP高级开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 11, '上海', 15000, 9000, '2020-01-01', NULL, 1, 85, 3, 20, 232);
INSERT INTO `position` VALUES (244, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 8, '武汉', 21000, 8000, '2020-01-01', NULL, 1, 57, 3, 0, 233);
INSERT INTO `position` VALUES (245, '高级PHP研发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 2, '成都', 21000, 6000, '2020-01-01', NULL, 1, 142, 3, 0, 234);
INSERT INTO `position` VALUES (246, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 13, '常熟', 16000, 6000, '2020-01-01', NULL, 1, 133, 3, 17, 235);
INSERT INTO `position` VALUES (247, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 1, '天津', 11000, 9000, '2020-01-01', NULL, 1, 35, 3, 1, 236);
INSERT INTO `position` VALUES (248, '后端开发（PHP/Java）工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 4, '上海', 16000, 5000, '2020-01-01', NULL, 1, 42, 3, 11, 237);
INSERT INTO `position` VALUES (249, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 0, '广州', 21000, 8000, '2020-01-01', NULL, 1, 84, 3, 6, 238);
INSERT INTO `position` VALUES (250, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 10, '上海', 20000, 8000, '2020-01-01', NULL, 1, 11, 3, 4, 239);
INSERT INTO `position` VALUES (251, '中级PHP工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 0, '福州', 23000, 6000, '2020-01-01', NULL, 1, 20, 3, 12, 240);
INSERT INTO `position` VALUES (252, 'PHP（南京）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 7, '南京', 15000, 6000, '2020-01-01', NULL, 1, 137, 3, 13, 241);
INSERT INTO `position` VALUES (253, 'PHP开发  (外派东莞虎门)', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '东莞', 15000, 7000, '2020-01-01', NULL, 1, 114, 3, 15, 242);
INSERT INTO `position` VALUES (254, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 15, '大连', 15000, 9000, '2020-01-01', NULL, 1, 27, 3, 19, 243);
INSERT INTO `position` VALUES (255, 'PHP高级开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 13, '广州', 20000, 9000, '2020-01-01', NULL, 1, 21, 3, 15, 244);
INSERT INTO `position` VALUES (256, 'PHP开发工程师（电商erp）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 15, '深圳', 30000, 6000, '2020-01-01', NULL, 1, 48, 3, 12, 245);
INSERT INTO `position` VALUES (257, 'PHP高级开发（15-25K汉口）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 10, '武汉', 23000, 6000, '2020-01-01', NULL, 1, 62, 3, 9, 246);
INSERT INTO `position` VALUES (258, 'PHP工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 7, '广州', 15000, 8000, '2020-01-01', NULL, 1, 116, 3, 14, 247);
INSERT INTO `position` VALUES (259, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 3, '成都', 16000, 8000, '2020-01-01', NULL, 1, 51, 3, 2, 248);
INSERT INTO `position` VALUES (260, 'PHP软件开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 14, '上海', 30000, 8000, '2020-01-01', NULL, 1, 15, 3, 9, 249);
INSERT INTO `position` VALUES (261, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 4, '连云港', 23000, 9000, '2020-01-01', NULL, 1, 109, 3, 20, 250);
INSERT INTO `position` VALUES (262, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 2, '大连', 20000, 7000, '2020-01-01', NULL, 1, 94, 3, 4, 251);
INSERT INTO `position` VALUES (263, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 2, '武汉', 30000, 9000, '2020-01-01', NULL, 1, 136, 3, 5, 252);
INSERT INTO `position` VALUES (264, 'PHP高级研发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 1, '武汉', 11000, 9000, '2020-01-01', NULL, 1, 82, 3, 10, 253);
INSERT INTO `position` VALUES (265, 'PHP程序员', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '广州', 20000, 7000, '2020-01-01', NULL, 1, 0, 3, 16, 254);
INSERT INTO `position` VALUES (266, 'php工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 3, '苏州', 21000, 5000, '2020-01-01', NULL, 1, 131, 3, 17, 255);
INSERT INTO `position` VALUES (267, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '上海', 30000, 8000, '2020-01-01', NULL, 1, 143, 3, 4, 256);
INSERT INTO `position` VALUES (268, '大数据产品部—PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 15, '北京', 11000, 9000, '2020-01-01', NULL, 1, 107, 3, 18, 257);
INSERT INTO `position` VALUES (269, 'PHP软件开发工程师（0023040202）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 6, '上海', 30000, 9000, '2020-01-01', NULL, 1, 61, 3, 5, 258);
INSERT INTO `position` VALUES (270, 'PHP开发工程师（2020校招）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 1, '广州', 21000, 8000, '2020-01-01', NULL, 1, 40, 3, 16, 259);
INSERT INTO `position` VALUES (271, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 5, '北京', 20000, 7000, '2020-01-01', NULL, 1, 16, 3, 18, 260);
INSERT INTO `position` VALUES (272, 'PHP程序开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 15, '成都', 11000, 8000, '2020-01-01', NULL, 1, 23, 3, 5, 261);
INSERT INTO `position` VALUES (273, 'PHP高级开发工程师（OMS）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 14, '上海', 23000, 7000, '2020-01-01', NULL, 1, 88, 3, 4, 262);
INSERT INTO `position` VALUES (274, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 3, '南京', 21000, 6000, '2020-01-01', NULL, 1, 56, 3, 0, 263);
INSERT INTO `position` VALUES (275, 'PHP高级开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 4, '广州', 21000, 6000, '2020-01-01', NULL, 1, 44, 3, 18, 264);
INSERT INTO `position` VALUES (276, 'PHP开发工程师（校招）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 0, '广州', 15000, 7000, '2020-01-01', NULL, 1, 57, 3, 6, 265);
INSERT INTO `position` VALUES (277, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 11, '北京', 11000, 5000, '2020-01-01', NULL, 1, 55, 3, 1, 266);
INSERT INTO `position` VALUES (278, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 12, '南京', 20000, 5000, '2020-01-01', NULL, 1, 84, 3, 14, 267);
INSERT INTO `position` VALUES (279, '高级PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 13, '上海', 11000, 7000, '2020-01-01', NULL, 1, 33, 3, 9, 268);
INSERT INTO `position` VALUES (280, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 2, '武汉', 30000, 9000, '2020-01-01', NULL, 1, 36, 3, 3, 269);
INSERT INTO `position` VALUES (281, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 4, '上海', 11000, 8000, '2020-01-01', NULL, 1, 73, 3, 14, 270);
INSERT INTO `position` VALUES (282, 'PHP后端', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 13, '合肥', 30000, 7000, '2020-01-01', NULL, 1, 25, 3, 2, 271);
INSERT INTO `position` VALUES (283, 'PHP专业教师（周末双休有寒暑假）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 14, '广州', 20000, 8000, '2020-01-01', NULL, 1, 90, 3, 1, 272);
INSERT INTO `position` VALUES (284, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 8, '珠海', 30000, 5000, '2020-01-01', NULL, 1, 24, 3, 5, 273);
INSERT INTO `position` VALUES (285, 'PHP工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 9, '北京', 20000, 5000, '2020-01-01', NULL, 1, 47, 3, 8, 274);
INSERT INTO `position` VALUES (286, 'PHP工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 11, '上海', 30000, 6000, '2020-01-01', NULL, 1, 37, 3, 10, 275);
INSERT INTO `position` VALUES (287, 'PHP工程师(J10454)', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 14, '广州', 30000, 7000, '2020-01-01', NULL, 1, 70, 3, 14, 276);
INSERT INTO `position` VALUES (288, 'PHP实习生', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 10, '长春', 16000, 6000, '2020-01-01', NULL, 1, 89, 3, 12, 277);
INSERT INTO `position` VALUES (289, 'PHP开发工程师-上海嘉定-02005', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 8, '上海', 23000, 9000, '2020-01-01', NULL, 1, 29, 3, 1, 278);
INSERT INTO `position` VALUES (290, '高级php程序员（合伙人）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 3, '燕郊开发区', 30000, 6000, '2020-01-01', NULL, 1, 72, 3, 18, 279);
INSERT INTO `position` VALUES (291, 'PHP/MYSQL开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 6, '上海', 11000, 6000, '2020-01-01', NULL, 1, 5, 3, 3, 280);
INSERT INTO `position` VALUES (292, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 2, '北京', 23000, 9000, '2020-01-01', NULL, 1, 55, 3, 4, 281);
INSERT INTO `position` VALUES (293, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 6, '上海', 30000, 9000, '2020-01-01', NULL, 1, 33, 3, 5, 282);
INSERT INTO `position` VALUES (294, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 11, '广州', 23000, 8000, '2020-01-01', NULL, 1, 14, 3, 8, 283);
INSERT INTO `position` VALUES (295, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 14, '上海', 20000, 5000, '2020-01-01', NULL, 1, 141, 3, 14, 284);
INSERT INTO `position` VALUES (296, 'PHP高级开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 9, '广州', 30000, 6000, '2020-01-01', NULL, 1, 64, 3, 11, 285);
INSERT INTO `position` VALUES (297, 'PHP后端研发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 7, '深圳', 20000, 5000, '2020-01-01', NULL, 1, 38, 3, 4, 286);
INSERT INTO `position` VALUES (298, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 1, '广州', 21000, 9000, '2020-01-01', NULL, 1, 127, 3, 5, 287);
INSERT INTO `position` VALUES (299, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 2, '广州', 21000, 8000, '2020-01-01', NULL, 1, 81, 3, 7, 288);
INSERT INTO `position` VALUES (300, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 7, '北京', 23000, 8000, '2020-01-01', NULL, 1, 106, 3, 6, 289);
INSERT INTO `position` VALUES (301, 'PHP工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 15, '广州', 23000, 8000, '2020-01-01', NULL, 1, 23, 3, 7, 290);
INSERT INTO `position` VALUES (302, 'PHP开发经理', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 10, '广州', 20000, 6000, '2020-01-01', NULL, 1, 134, 3, 8, 291);
INSERT INTO `position` VALUES (303, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 10, '上海', 21000, 8000, '2020-01-01', NULL, 1, 19, 3, 1, 292);
INSERT INTO `position` VALUES (304, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 0, '上海', 23000, 6000, '2020-01-01', NULL, 1, 72, 3, 13, 293);
INSERT INTO `position` VALUES (305, 'PHP高级开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 15, '广州', 11000, 7000, '2020-01-01', NULL, 1, 15, 3, 11, 294);
INSERT INTO `position` VALUES (306, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 10, '广州', 30000, 5000, '2020-01-01', NULL, 1, 0, 3, 15, 295);
INSERT INTO `position` VALUES (307, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 14, '北京', 30000, 7000, '2020-01-01', NULL, 1, 31, 3, 5, 296);
INSERT INTO `position` VALUES (308, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 1, '佛山', 11000, 7000, '2020-01-01', NULL, 1, 115, 3, 7, 297);
INSERT INTO `position` VALUES (309, 'PHP开发工程师/PHP程序员（高级）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 0, '广州', 30000, 7000, '2020-01-01', NULL, 1, 127, 3, 11, 298);
INSERT INTO `position` VALUES (310, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 8, '北京', 11000, 6000, '2020-01-01', NULL, 1, 16, 3, 14, 299);
INSERT INTO `position` VALUES (311, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 5, '广州', 20000, 7000, '2020-01-01', NULL, 1, 59, 3, 6, 300);
INSERT INTO `position` VALUES (312, '《45万顶薪》PHP服务器主程 Topgames', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 3, '上海', 16000, 6000, '2020-01-01', NULL, 1, 40, 3, 18, 301);
INSERT INTO `position` VALUES (313, 'PHP高级开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 10, '广州', 23000, 7000, '2020-01-01', NULL, 1, 5, 3, 14, 302);
INSERT INTO `position` VALUES (314, 'php高级开发工程师（管理方向）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 11, '广州', 20000, 9000, '2020-01-01', NULL, 1, 11, 3, 19, 303);
INSERT INTO `position` VALUES (315, 'PHP全栈工程师 （偏向Web开发）', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 4, '北京', 20000, 7000, '2020-01-01', NULL, 1, 142, 3, 18, 304);
INSERT INTO `position` VALUES (316, 'PHP后台程序员', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 15, '广州', 30000, 8000, '2020-01-01', NULL, 1, 84, 3, 18, 305);
INSERT INTO `position` VALUES (317, 'PHP开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 8, '广州', 11000, 5000, '2020-01-01', NULL, 1, 11, 3, 17, 306);
INSERT INTO `position` VALUES (318, 'PHP后端开发工程师', '掌握PHP语言,熟悉使用mysql数据库,熟悉前端应用', 11, '广州', 23000, 8000, '2020-01-01', NULL, 1, 127, 3, 14, 307);
INSERT INTO `position` VALUES (319, '.net 高级软件工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 2, '北京', 16000, 6000, '2020-01-01', NULL, 1, 139, 4, 10, 308);
INSERT INTO `position` VALUES (320, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '无锡', 15000, 5000, '2020-01-01', NULL, 1, 37, 4, 11, 309);
INSERT INTO `position` VALUES (321, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 12, '沈阳', 11000, 5000, '2020-01-01', NULL, 1, 95, 4, 15, 310);
INSERT INTO `position` VALUES (322, 'c#/.net高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 9, '长沙', 21000, 5000, '2020-01-01', NULL, 1, 105, 4, 10, 311);
INSERT INTO `position` VALUES (323, '.NET开发工程师（番禺上班）', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '广州', 15000, 7000, '2020-01-01', NULL, 1, 82, 4, 9, 312);
INSERT INTO `position` VALUES (324, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 6, '北京', 21000, 7000, '2020-01-01', NULL, 1, 16, 4, 15, 313);
INSERT INTO `position` VALUES (325, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 9, '广州', 30000, 6000, '2020-01-01', NULL, 1, 123, 4, 13, 314);
INSERT INTO `position` VALUES (326, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 9, '广州', 23000, 7000, '2020-01-01', NULL, 1, 44, 4, 9, 315);
INSERT INTO `position` VALUES (327, '.Net 开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 6, '上海', 21000, 7000, '2020-01-01', NULL, 1, 12, 4, 5, 316);
INSERT INTO `position` VALUES (328, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 2, '上海', 21000, 7000, '2020-01-01', NULL, 1, 40, 4, 11, 317);
INSERT INTO `position` VALUES (329, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '宁波', 15000, 5000, '2020-01-01', NULL, 1, 81, 4, 1, 318);
INSERT INTO `position` VALUES (330, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 9, '深圳', 11000, 7000, '2020-01-01', NULL, 1, 31, 4, 12, 319);
INSERT INTO `position` VALUES (331, 'C#.net软件工程师 (职位编号：001)', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 6, '岳阳', 20000, 5000, '2020-01-01', NULL, 1, 88, 4, 12, 320);
INSERT INTO `position` VALUES (332, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 11, '天津', 11000, 8000, '2020-01-01', NULL, 1, 46, 4, 16, 321);
INSERT INTO `position` VALUES (333, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 12, '西安', 21000, 9000, '2020-01-01', NULL, 1, 59, 4, 10, 322);
INSERT INTO `position` VALUES (334, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 6, '上海', 11000, 7000, '2020-01-01', NULL, 1, 0, 4, 10, 323);
INSERT INTO `position` VALUES (335, 'C# .Net 软件工程师/系统工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '上海', 30000, 8000, '2020-01-01', NULL, 1, 8, 4, 18, 324);
INSERT INTO `position` VALUES (336, '.NET软件工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 11, '南京', 15000, 5000, '2020-01-01', NULL, 1, 48, 4, 6, 325);
INSERT INTO `position` VALUES (337, '.Net研发工程师C#工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 13, '成都', 30000, 8000, '2020-01-01', NULL, 1, 59, 4, 9, 326);
INSERT INTO `position` VALUES (338, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 6, '天津', 20000, 9000, '2020-01-01', NULL, 1, 93, 4, 15, 327);
INSERT INTO `position` VALUES (339, '.NET软件开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 0, '无锡', 23000, 8000, '2020-01-01', NULL, 1, 28, 4, 5, 328);
INSERT INTO `position` VALUES (340, '.net工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 1, '广州', 21000, 7000, '2020-01-01', NULL, 1, 36, 4, 14, 329);
INSERT INTO `position` VALUES (341, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 11, '大连', 21000, 5000, '2020-01-01', NULL, 1, 76, 4, 10, 330);
INSERT INTO `position` VALUES (342, '.NET工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 11, '广州', 30000, 8000, '2020-01-01', NULL, 1, 134, 4, 17, 331);
INSERT INTO `position` VALUES (343, '高级.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 9, '上海', 20000, 9000, '2020-01-01', NULL, 1, 53, 4, 0, 332);
INSERT INTO `position` VALUES (344, '.NET开发（实习生）', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '广州', 16000, 8000, '2020-01-01', NULL, 1, 109, 4, 3, 333);
INSERT INTO `position` VALUES (345, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 5, '广州', 15000, 9000, '2020-01-01', NULL, 1, 45, 4, 11, 334);
INSERT INTO `position` VALUES (346, 'ASP.NET高级软件开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 4, '南京', 23000, 6000, '2020-01-01', NULL, 1, 44, 4, 17, 335);
INSERT INTO `position` VALUES (347, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 7, '上海', 15000, 7000, '2020-01-01', NULL, 1, 98, 4, 1, 336);
INSERT INTO `position` VALUES (348, 'ASP.NET 软件工程师 (职位编号：103)', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 5, '西安', 23000, 6000, '2020-01-01', NULL, 1, 88, 4, 16, 337);
INSERT INTO `position` VALUES (349, '高级.NET研发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 7, '重庆', 23000, 9000, '2020-01-01', NULL, 1, 47, 4, 2, 338);
INSERT INTO `position` VALUES (350, '.NET高级开发工程师 (职位编号：kl-1703001)', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '上海', 11000, 9000, '2020-01-01', NULL, 1, 14, 4, 4, 339);
INSERT INTO `position` VALUES (351, '.NET软件工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '宁波', 21000, 6000, '2020-01-01', NULL, 1, 105, 4, 14, 340);
INSERT INTO `position` VALUES (352, '.net软件工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 4, '天津', 30000, 8000, '2020-01-01', NULL, 1, 87, 4, 19, 341);
INSERT INTO `position` VALUES (353, '.net 开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 5, '上海', 21000, 6000, '2020-01-01', NULL, 1, 113, 4, 20, 342);
INSERT INTO `position` VALUES (354, '中级.NET工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 13, '福州', 23000, 5000, '2020-01-01', NULL, 1, 46, 4, 14, 343);
INSERT INTO `position` VALUES (355, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 11, '合肥', 30000, 9000, '2020-01-01', NULL, 1, 15, 4, 15, 344);
INSERT INTO `position` VALUES (356, '项目经理（java/.net)', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 1, '福州', 15000, 6000, '2020-01-01', NULL, 1, 139, 4, 8, 345);
INSERT INTO `position` VALUES (357, '.net', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 8, '深圳', 21000, 9000, '2020-01-01', NULL, 1, 71, 4, 13, 346);
INSERT INTO `position` VALUES (358, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 12, '株洲', 11000, 6000, '2020-01-01', NULL, 1, 97, 4, 1, 347);
INSERT INTO `position` VALUES (359, '.Net开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 11, '上海', 30000, 6000, '2020-01-01', NULL, 1, 70, 4, 7, 348);
INSERT INTO `position` VALUES (360, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 11, '珠海', 11000, 8000, '2020-01-01', NULL, 1, 32, 4, 16, 349);
INSERT INTO `position` VALUES (361, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 12, '大连', 23000, 5000, '2020-01-01', NULL, 1, 37, 4, 6, 350);
INSERT INTO `position` VALUES (362, '.NET高级开发工程师---城西', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 1, '杭州', 21000, 7000, '2020-01-01', NULL, 1, 141, 4, 3, 351);
INSERT INTO `position` VALUES (363, '.net高级软件开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '成都', 30000, 5000, '2020-01-01', NULL, 1, 143, 4, 2, 352);
INSERT INTO `position` VALUES (364, '.NET开发主管', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 6, '广州', 20000, 7000, '2020-01-01', NULL, 1, 119, 4, 14, 353);
INSERT INTO `position` VALUES (365, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 11, '广州', 16000, 9000, '2020-01-01', NULL, 1, 26, 4, 4, 354);
INSERT INTO `position` VALUES (366, '.net 开发工程师（在线教育集团）', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 0, '北京', 15000, 8000, '2020-01-01', NULL, 1, 14, 4, 14, 355);
INSERT INTO `position` VALUES (367, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 8, '北京', 20000, 8000, '2020-01-01', NULL, 1, 112, 4, 1, 356);
INSERT INTO `position` VALUES (368, '.Net高级软件开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '杭州', 23000, 8000, '2020-01-01', NULL, 1, 29, 4, 13, 357);
INSERT INTO `position` VALUES (369, '.Net 中级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 11, '上海', 16000, 6000, '2020-01-01', NULL, 1, 92, 4, 2, 358);
INSERT INTO `position` VALUES (370, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '北京', 21000, 9000, '2020-01-01', NULL, 1, 82, 4, 17, 359);
INSERT INTO `position` VALUES (371, '.NET开发工程师 (职位编号：10)', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 2, '上海', 11000, 6000, '2020-01-01', NULL, 1, 49, 4, 9, 360);
INSERT INTO `position` VALUES (372, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 8, '武汉', 21000, 5000, '2020-01-01', NULL, 1, 1, 4, 5, 361);
INSERT INTO `position` VALUES (373, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 14, '惠州', 21000, 8000, '2020-01-01', NULL, 1, 104, 4, 14, 362);
INSERT INTO `position` VALUES (374, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 1, '深圳', 15000, 6000, '2020-01-01', NULL, 1, 47, 4, 1, 363);
INSERT INTO `position` VALUES (375, '软件开发工程师（.net/Java） (职位编号：TJ-202001)', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 0, '天津', 30000, 6000, '2020-01-01', NULL, 1, 135, 4, 12, 364);
INSERT INTO `position` VALUES (376, '软件工程师（C#、.net）', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 9, '成都', 16000, 6000, '2020-01-01', NULL, 1, 40, 4, 15, 365);
INSERT INTO `position` VALUES (377, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 2, '成都', 11000, 5000, '2020-01-01', NULL, 1, 122, 4, 2, 366);
INSERT INTO `position` VALUES (378, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '乌鲁木齐', 16000, 8000, '2020-01-01', NULL, 1, 56, 4, 13, 367);
INSERT INTO `position` VALUES (379, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 2, '佛山', 11000, 8000, '2020-01-01', NULL, 1, 122, 4, 15, 368);
INSERT INTO `position` VALUES (380, 'asp.net C#工程师 (职位编号：10)', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 1, '南京', 23000, 8000, '2020-01-01', NULL, 1, 95, 4, 20, 369);
INSERT INTO `position` VALUES (381, '.NET开发工程师（后台）', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 1, '广州', 30000, 6000, '2020-01-01', NULL, 1, 54, 4, 6, 370);
INSERT INTO `position` VALUES (382, '.NET工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 0, '珠海', 16000, 6000, '2020-01-01', NULL, 1, 19, 4, 9, 371);
INSERT INTO `position` VALUES (383, '.NET开发经理', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 4, '洛阳', 21000, 9000, '2020-01-01', NULL, 1, 25, 4, 14, 372);
INSERT INTO `position` VALUES (384, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 12, '兰州', 20000, 8000, '2020-01-01', NULL, 1, 128, 4, 11, 373);
INSERT INTO `position` VALUES (385, '.Net开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 2, '西安', 20000, 8000, '2020-01-01', NULL, 1, 82, 4, 20, 374);
INSERT INTO `position` VALUES (386, '软件工程师Java/.net方向 工业物联网软硬件配合 国企', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '天津', 15000, 5000, '2020-01-01', NULL, 1, 90, 4, 3, 375);
INSERT INTO `position` VALUES (387, 'c#/.net高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 12, '上海', 15000, 8000, '2020-01-01', NULL, 1, 21, 4, 1, 376);
INSERT INTO `position` VALUES (388, '.Net高级软件工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 13, '西安', 21000, 6000, '2020-01-01', NULL, 1, 104, 4, 17, 377);
INSERT INTO `position` VALUES (389, 'MES开发工程师（ASP.NET C#或JAVA）', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '合肥', 11000, 7000, '2020-01-01', NULL, 1, 88, 4, 6, 378);
INSERT INTO `position` VALUES (390, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 8, '杭州', 20000, 6000, '2020-01-01', NULL, 1, 83, 4, 19, 379);
INSERT INTO `position` VALUES (391, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 8, '南昌', 15000, 7000, '2020-01-01', NULL, 1, 2, 4, 12, 380);
INSERT INTO `position` VALUES (392, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 8, '深圳', 15000, 8000, '2020-01-01', NULL, 1, 117, 4, 18, 381);
INSERT INTO `position` VALUES (393, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '西安', 20000, 5000, '2020-01-01', NULL, 1, 46, 4, 2, 382);
INSERT INTO `position` VALUES (394, '软件工程师(.net)', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 2, '上海', 23000, 7000, '2020-01-01', NULL, 1, 88, 4, 14, 383);
INSERT INTO `position` VALUES (395, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 5, '上海', 15000, 9000, '2020-01-01', NULL, 1, 118, 4, 2, 384);
INSERT INTO `position` VALUES (396, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 12, '大连', 30000, 5000, '2020-01-01', NULL, 1, 99, 4, 19, 385);
INSERT INTO `position` VALUES (397, '.Net C#高级软件工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 13, '大连', 11000, 9000, '2020-01-01', NULL, 1, 25, 4, 7, 386);
INSERT INTO `position` VALUES (398, '初级.net开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 5, '长沙', 23000, 8000, '2020-01-01', NULL, 1, 20, 4, 7, 387);
INSERT INTO `position` VALUES (399, '.net开发工程师-合肥-01673', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 4, '合肥', 16000, 5000, '2020-01-01', NULL, 1, 97, 4, 16, 388);
INSERT INTO `position` VALUES (400, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '北京', 21000, 9000, '2020-01-01', NULL, 1, 110, 4, 18, 389);
INSERT INTO `position` VALUES (401, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 2, '北京', 15000, 9000, '2020-01-01', NULL, 1, 122, 4, 14, 390);
INSERT INTO `position` VALUES (402, '程序开发、编程、软件工程师C#  Java Web .Net (职位编号：1)', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 13, '东营', 16000, 5000, '2020-01-01', NULL, 1, 50, 4, 16, 391);
INSERT INTO `position` VALUES (403, '.NET/C# 程序员/软件工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 5, '广州', 20000, 9000, '2020-01-01', NULL, 1, 131, 4, 0, 392);
INSERT INTO `position` VALUES (404, '.Net软件工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '上海', 16000, 8000, '2020-01-01', NULL, 1, 81, 4, 5, 393);
INSERT INTO `position` VALUES (405, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 3, '上海', 21000, 8000, '2020-01-01', NULL, 1, 134, 4, 12, 394);
INSERT INTO `position` VALUES (406, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '深圳', 15000, 7000, '2020-01-01', NULL, 1, 9, 4, 14, 395);
INSERT INTO `position` VALUES (407, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 12, '上海', 15000, 5000, '2020-01-01', NULL, 1, 98, 4, 14, 396);
INSERT INTO `position` VALUES (408, '.NET程序员', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 0, '上海', 21000, 9000, '2020-01-01', NULL, 1, 84, 4, 6, 397);
INSERT INTO `position` VALUES (409, 'Asp.net、C#软件开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 4, '广州', 23000, 9000, '2020-01-01', NULL, 1, 100, 4, 11, 398);
INSERT INTO `position` VALUES (410, '.NET高级开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 5, '北京', 15000, 7000, '2020-01-01', NULL, 1, 52, 4, 18, 399);
INSERT INTO `position` VALUES (411, '.NET高级软件工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 14, '上海', 11000, 8000, '2020-01-01', NULL, 1, 119, 4, 11, 400);
INSERT INTO `position` VALUES (412, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 6, '上海', 20000, 8000, '2020-01-01', NULL, 1, 26, 4, 4, 401);
INSERT INTO `position` VALUES (413, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 4, '上海', 11000, 6000, '2020-01-01', NULL, 1, 27, 4, 17, 402);
INSERT INTO `position` VALUES (414, 'ASP.NET软件开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '广州', 11000, 5000, '2020-01-01', NULL, 1, 57, 4, 0, 403);
INSERT INTO `position` VALUES (415, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 12, '北京', 11000, 8000, '2020-01-01', NULL, 1, 96, 4, 8, 404);
INSERT INTO `position` VALUES (416, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '上海', 30000, 8000, '2020-01-01', NULL, 1, 141, 4, 0, 405);
INSERT INTO `position` VALUES (417, '.net软件开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 10, '广州', 20000, 5000, '2020-01-01', NULL, 1, 33, 4, 16, 406);
INSERT INTO `position` VALUES (418, '.NET开发工程师', '良好语言基础,具有团队合作能力,熟悉.net应用开发流程', 0, '北京', 15000, 5000, '2020-01-01', NULL, 1, 110, 4, 17, 407);
INSERT INTO `position` VALUES (419, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 3, '深圳', 11000, 5000, '2020-01-01', NULL, 1, 81, 5, 18, 408);
INSERT INTO `position` VALUES (420, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 10, '上海', 23000, 6000, '2020-01-01', NULL, 1, 127, 5, 6, 409);
INSERT INTO `position` VALUES (421, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 3, '上海', 16000, 5000, '2020-01-01', NULL, 1, 113, 5, 4, 410);
INSERT INTO `position` VALUES (422, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '无锡', 20000, 5000, '2020-01-01', NULL, 1, 2, 5, 6, 411);
INSERT INTO `position` VALUES (423, 'Python中级工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '广州', 15000, 5000, '2020-01-01', NULL, 1, 120, 5, 2, 412);
INSERT INTO `position` VALUES (424, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 6, '石家庄', 21000, 5000, '2020-01-01', NULL, 1, 71, 5, 2, 413);
INSERT INTO `position` VALUES (425, 'Python爬虫工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 7, '杭州', 15000, 7000, '2020-01-01', NULL, 1, 66, 5, 10, 414);
INSERT INTO `position` VALUES (426, 'Python/Java Software Engineer', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 8, '北京', 16000, 9000, '2020-01-01', NULL, 1, 84, 5, 5, 415);
INSERT INTO `position` VALUES (427, 'python开发工程师 (职位编号：kl-1602001)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 0, '上海', 20000, 5000, '2020-01-01', NULL, 1, 7, 5, 6, 416);
INSERT INTO `position` VALUES (428, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 2, '福州', 21000, 8000, '2020-01-01', NULL, 1, 124, 5, 20, 417);
INSERT INTO `position` VALUES (429, 'Python 编程教师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 7, '芜湖', 21000, 7000, '2020-01-01', NULL, 1, 118, 5, 11, 418);
INSERT INTO `position` VALUES (430, '（外企）Python工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 8, '广州', 30000, 5000, '2020-01-01', NULL, 1, 46, 5, 10, 419);
INSERT INTO `position` VALUES (431, 'python编程教师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '贵阳', 11000, 9000, '2020-01-01', NULL, 1, 131, 5, 11, 420);
INSERT INTO `position` VALUES (432, 'python后端工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 2, '广州', 23000, 5000, '2020-01-01', NULL, 1, 44, 5, 9, 421);
INSERT INTO `position` VALUES (433, 'scratch/Python老师（罗湖翠竹洲际校区）', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 0, '深圳', 20000, 8000, '2020-01-01', NULL, 1, 0, 5, 10, 422);
INSERT INTO `position` VALUES (434, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 14, '广州', 16000, 7000, '2020-01-01', NULL, 1, 27, 5, 16, 423);
INSERT INTO `position` VALUES (435, 'python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '广州', 16000, 7000, '2020-01-01', NULL, 1, 77, 5, 4, 424);
INSERT INTO `position` VALUES (436, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 7, '常州', 30000, 9000, '2020-01-01', NULL, 1, 20, 5, 12, 425);
INSERT INTO `position` VALUES (437, '云方向-python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 6, '西安', 15000, 9000, '2020-01-01', NULL, 1, 60, 5, 16, 426);
INSERT INTO `position` VALUES (438, 'VC、Python程序员', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '重庆', 21000, 8000, '2020-01-01', NULL, 1, 132, 5, 1, 427);
INSERT INTO `position` VALUES (439, 'Python开发  M', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 6, '广州', 16000, 7000, '2020-01-01', NULL, 1, 134, 5, 9, 428);
INSERT INTO `position` VALUES (440, '软件开发工程师（Python方向） (职位编号：JD22-02)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 5, '上海', 16000, 7000, '2020-01-01', NULL, 1, 143, 5, 10, 429);
INSERT INTO `position` VALUES (441, 'ScratchC++Python编程教师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 8, '广州', 11000, 8000, '2020-01-01', NULL, 1, 75, 5, 11, 430);
INSERT INTO `position` VALUES (442, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 14, '上海', 11000, 9000, '2020-01-01', NULL, 1, 95, 5, 12, 431);
INSERT INTO `position` VALUES (443, 'Perl/Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 9, '天津', 11000, 7000, '2020-01-01', NULL, 1, 59, 5, 6, 432);
INSERT INTO `position` VALUES (444, 'Python开发工程师（金蝶云苍穹）', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 2, '深圳', 30000, 9000, '2020-01-01', NULL, 1, 125, 5, 2, 433);
INSERT INTO `position` VALUES (445, 'python开发专业教师（周末双休有寒暑假）', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '广州', 21000, 6000, '2020-01-01', NULL, 1, 133, 5, 14, 434);
INSERT INTO `position` VALUES (446, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 10, '长沙', 30000, 6000, '2020-01-01', NULL, 1, 70, 5, 12, 435);
INSERT INTO `position` VALUES (447, 'Python开发工程师 (MJ000145)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 7, '上海', 20000, 7000, '2020-01-01', NULL, 1, 128, 5, 18, 436);
INSERT INTO `position` VALUES (448, '金融教育信息研究中心—Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 14, '北京', 11000, 9000, '2020-01-01', NULL, 1, 83, 5, 5, 437);
INSERT INTO `position` VALUES (449, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 3, '广州', 15000, 8000, '2020-01-01', NULL, 1, 1, 5, 5, 438);
INSERT INTO `position` VALUES (450, 'Python工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 13, '广州', 21000, 9000, '2020-01-01', NULL, 1, 84, 5, 18, 439);
INSERT INTO `position` VALUES (451, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 2, '北京', 11000, 7000, '2020-01-01', NULL, 1, 3, 5, 3, 440);
INSERT INTO `position` VALUES (452, 'Python高级开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 0, '重庆', 15000, 8000, '2020-01-01', NULL, 1, 24, 5, 13, 441);
INSERT INTO `position` VALUES (453, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 6, '杭州', 15000, 9000, '2020-01-01', NULL, 1, 9, 5, 9, 442);
INSERT INTO `position` VALUES (454, 'python后端开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 15, '深圳', 21000, 6000, '2020-01-01', NULL, 1, 14, 5, 13, 443);
INSERT INTO `position` VALUES (455, 'Python高级开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 0, '武汉', 20000, 9000, '2020-01-01', NULL, 1, 75, 5, 17, 444);
INSERT INTO `position` VALUES (456, 'Python开发工程师-机器人', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 10, '北京', 11000, 7000, '2020-01-01', NULL, 1, 52, 5, 11, 445);
INSERT INTO `position` VALUES (457, 'python教师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 8, '广州', 20000, 8000, '2020-01-01', NULL, 1, 50, 5, 7, 446);
INSERT INTO `position` VALUES (458, 'Python中级开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 0, '北京', 20000, 5000, '2020-01-01', NULL, 1, 60, 5, 15, 447);
INSERT INTO `position` VALUES (459, 'Python开发工程师(金融科技)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 2, '上海', 23000, 9000, '2020-01-01', NULL, 1, 6, 5, 6, 448);
INSERT INTO `position` VALUES (460, 'Python软件开发工程师-WL', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '深圳', 20000, 8000, '2020-01-01', NULL, 1, 21, 5, 4, 449);
INSERT INTO `position` VALUES (461, '高级Python算法工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 0, '上海', 11000, 8000, '2020-01-01', NULL, 1, 48, 5, 9, 450);
INSERT INTO `position` VALUES (462, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '北京', 11000, 8000, '2020-01-01', NULL, 1, 74, 5, 18, 451);
INSERT INTO `position` VALUES (463, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 7, '郑州', 20000, 8000, '2020-01-01', NULL, 1, 107, 5, 2, 452);
INSERT INTO `position` VALUES (464, '中高级Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 2, '南京', 20000, 7000, '2020-01-01', NULL, 1, 102, 5, 19, 453);
INSERT INTO `position` VALUES (465, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 14, '上海', 20000, 5000, '2020-01-01', NULL, 1, 17, 5, 6, 454);
INSERT INTO `position` VALUES (466, '软件开发(HTML5、.net、Python)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 6, '无锡', 20000, 6000, '2020-01-01', NULL, 1, 21, 5, 11, 455);
INSERT INTO `position` VALUES (467, 'Python工程师 (职位编号：18580)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 8, '北京', 15000, 9000, '2020-01-01', NULL, 1, 37, 5, 10, 456);
INSERT INTO `position` VALUES (468, 'python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '广州', 11000, 6000, '2020-01-01', NULL, 1, 16, 5, 7, 457);
INSERT INTO `position` VALUES (469, 'python数据分析工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 9, '上海', 20000, 6000, '2020-01-01', NULL, 1, 111, 5, 11, 458);
INSERT INTO `position` VALUES (470, 'python直播主管', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 8, '长沙', 21000, 9000, '2020-01-01', NULL, 1, 66, 5, 8, 459);
INSERT INTO `position` VALUES (471, 'C++/Python GUI 软件工程师 (职位编号：2)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 15, '苏州', 11000, 6000, '2020-01-01', NULL, 1, 34, 5, 18, 460);
INSERT INTO `position` VALUES (472, 'Python高级开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 10, '广州', 20000, 5000, '2020-01-01', NULL, 1, 125, 5, 19, 461);
INSERT INTO `position` VALUES (473, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 15, '广州', 23000, 9000, '2020-01-01', NULL, 1, 74, 5, 1, 462);
INSERT INTO `position` VALUES (474, 'Scratch/Python课程设计', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '上海', 23000, 9000, '2020-01-01', NULL, 1, 134, 5, 20, 463);
INSERT INTO `position` VALUES (475, 'python爬虫工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '武汉', 30000, 6000, '2020-01-01', NULL, 1, 81, 5, 17, 464);
INSERT INTO `position` VALUES (476, 'python高级软件开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 10, '上海', 16000, 5000, '2020-01-01', NULL, 1, 28, 5, 5, 465);
INSERT INTO `position` VALUES (477, 'Python中级开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 14, '深圳', 15000, 5000, '2020-01-01', NULL, 1, 20, 5, 17, 466);
INSERT INTO `position` VALUES (478, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 6, '苏州', 30000, 6000, '2020-01-01', NULL, 1, 120, 5, 0, 467);
INSERT INTO `position` VALUES (479, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 13, '深圳', 11000, 9000, '2020-01-01', NULL, 1, 72, 5, 12, 468);
INSERT INTO `position` VALUES (480, 'Python数据分析讲师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 2, '成都', 20000, 9000, '2020-01-01', NULL, 1, 120, 5, 2, 469);
INSERT INTO `position` VALUES (481, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 10, '深圳', 20000, 7000, '2020-01-01', NULL, 1, 94, 5, 15, 470);
INSERT INTO `position` VALUES (482, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 4, '上海', 30000, 5000, '2020-01-01', NULL, 1, 27, 5, 19, 471);
INSERT INTO `position` VALUES (483, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '上海', 30000, 5000, '2020-01-01', NULL, 1, 57, 5, 4, 472);
INSERT INTO `position` VALUES (484, 'Python高级开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '深圳', 23000, 9000, '2020-01-01', NULL, 1, 78, 5, 3, 473);
INSERT INTO `position` VALUES (485, '研发工程师（PHP&python）', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 3, '广州', 11000, 8000, '2020-01-01', NULL, 1, 71, 5, 10, 474);
INSERT INTO `position` VALUES (486, '高级Python金融开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 8, '深圳', 16000, 5000, '2020-01-01', NULL, 1, 33, 5, 7, 475);
INSERT INTO `position` VALUES (487, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 6, '广州', 16000, 5000, '2020-01-01', NULL, 1, 62, 5, 6, 476);
INSERT INTO `position` VALUES (488, 'Python高级开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 14, '上海', 23000, 9000, '2020-01-01', NULL, 1, 119, 5, 2, 477);
INSERT INTO `position` VALUES (489, 'python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 15, '上海', 16000, 8000, '2020-01-01', NULL, 1, 90, 5, 13, 478);
INSERT INTO `position` VALUES (490, 'Python课程设计/教研老师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 14, '福州', 11000, 9000, '2020-01-01', NULL, 1, 98, 5, 9, 479);
INSERT INTO `position` VALUES (491, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '西安', 11000, 8000, '2020-01-01', NULL, 1, 106, 5, 9, 480);
INSERT INTO `position` VALUES (492, 'Python后端开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 13, '广州', 20000, 8000, '2020-01-01', NULL, 1, 113, 5, 7, 481);
INSERT INTO `position` VALUES (493, 'Python后端开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 2, '成都', 16000, 5000, '2020-01-01', NULL, 1, 83, 5, 2, 482);
INSERT INTO `position` VALUES (494, 'Python开发工程师（华贸能联）', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 3, '成都', 30000, 9000, '2020-01-01', NULL, 1, 141, 5, 14, 483);
INSERT INTO `position` VALUES (495, 'python后端开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 7, '南京', 23000, 7000, '2020-01-01', NULL, 1, 123, 5, 3, 484);
INSERT INTO `position` VALUES (496, 'Python工程师(J12197)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 0, '天津', 21000, 5000, '2020-01-01', NULL, 1, 73, 5, 5, 485);
INSERT INTO `position` VALUES (497, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 7, '太仓', 11000, 5000, '2020-01-01', NULL, 1, 130, 5, 19, 486);
INSERT INTO `position` VALUES (498, 'Python自动化测试', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 12, '西安', 23000, 9000, '2020-01-01', NULL, 1, 101, 5, 7, 487);
INSERT INTO `position` VALUES (499, 'Python开发工程师(SS)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 5, '杭州', 16000, 6000, '2020-01-01', NULL, 1, 130, 5, 8, 488);
INSERT INTO `position` VALUES (500, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 3, '上海', 30000, 8000, '2020-01-01', NULL, 1, 3, 5, 17, 489);
INSERT INTO `position` VALUES (501, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 8, '郑州', 16000, 6000, '2020-01-01', NULL, 1, 89, 5, 8, 490);
INSERT INTO `position` VALUES (502, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 10, '广州', 21000, 8000, '2020-01-01', NULL, 1, 19, 5, 16, 491);
INSERT INTO `position` VALUES (503, 'Python全栈工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 12, '上海', 16000, 8000, '2020-01-01', NULL, 1, 71, 5, 19, 492);
INSERT INTO `position` VALUES (504, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 7, '北京', 20000, 8000, '2020-01-01', NULL, 1, 30, 5, 1, 493);
INSERT INTO `position` VALUES (505, '软件工程师（Python、C/C++）', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '苏州', 15000, 6000, '2020-01-01', NULL, 1, 6, 5, 2, 494);
INSERT INTO `position` VALUES (506, 'Python高级开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '上海', 30000, 7000, '2020-01-01', NULL, 1, 61, 5, 3, 495);
INSERT INTO `position` VALUES (507, 'Python高级开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '上海', 15000, 9000, '2020-01-01', NULL, 1, 97, 5, 18, 496);
INSERT INTO `position` VALUES (508, 'Python开发实习生（创新中心）(J11913)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 12, '西安', 23000, 9000, '2020-01-01', NULL, 1, 29, 5, 3, 497);
INSERT INTO `position` VALUES (509, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 5, '上海', 15000, 8000, '2020-01-01', NULL, 1, 137, 5, 3, 498);
INSERT INTO `position` VALUES (510, 'Python研发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '珠海', 30000, 9000, '2020-01-01', NULL, 1, 88, 5, 15, 499);
INSERT INTO `position` VALUES (511, '高级软件工程师(Python)', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 6, '深圳', 16000, 7000, '2020-01-01', NULL, 1, 136, 5, 0, 500);
INSERT INTO `position` VALUES (512, 'VBA/Python项目开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 6, '北京', 20000, 5000, '2020-01-01', NULL, 1, 47, 5, 4, 501);
INSERT INTO `position` VALUES (513, 'Python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '杭州', 15000, 9000, '2020-01-01', NULL, 1, 34, 5, 9, 502);
INSERT INTO `position` VALUES (514, 'Python WEB开发主管', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 11, '杭州', 16000, 8000, '2020-01-01', NULL, 1, 116, 5, 1, 503);
INSERT INTO `position` VALUES (515, 'web/PHP/Java/Python工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 1, '苏州', 16000, 6000, '2020-01-01', NULL, 1, 109, 5, 8, 504);
INSERT INTO `position` VALUES (516, 'python开发工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 12, '合肥', 30000, 5000, '2020-01-01', NULL, 1, 86, 5, 0, 505);
INSERT INTO `position` VALUES (517, 'Python机器学习工程师', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 2, '广州', 30000, 9000, '2020-01-01', NULL, 1, 33, 5, 19, 506);
INSERT INTO `position` VALUES (518, 'python开发工程师-A0122', '熟练掌握python语言,了解使用python第三方类库,掌握常用数据分析能力', 3, '上海', 16000, 6000, '2020-01-01', NULL, 1, 32, 5, 10, 507);
INSERT INTO `position` VALUES (519, '呼叫中心客服-数据挖掘渠道 ID-40282', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 1, '广州', 23000, 8000, '2020-01-01', NULL, 1, 75, 6, 20, 508);
INSERT INTO `position` VALUES (520, '高级数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '北京', 16000, 8000, '2020-01-01', NULL, 1, 30, 6, 0, 509);
INSERT INTO `position` VALUES (521, '数据分析师（数据挖掘工程师）(研发中心)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 14, '成都', 21000, 9000, '2020-01-01', NULL, 1, 70, 6, 11, 510);
INSERT INTO `position` VALUES (522, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '上海', 15000, 8000, '2020-01-01', NULL, 1, 125, 6, 14, 511);
INSERT INTO `position` VALUES (523, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 10, '天津', 23000, 9000, '2020-01-01', NULL, 1, 4, 6, 0, 512);
INSERT INTO `position` VALUES (524, 'SAS数据挖掘顾问 (职位编号：00409)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 7, '广州', 30000, 9000, '2020-01-01', NULL, 1, 77, 6, 15, 513);
INSERT INTO `position` VALUES (525, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '武汉', 15000, 7000, '2020-01-01', NULL, 1, 127, 6, 14, 514);
INSERT INTO `position` VALUES (526, '数据挖掘工程师-NLP', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '深圳', 20000, 5000, '2020-01-01', NULL, 1, 1, 6, 11, 515);
INSERT INTO `position` VALUES (527, '数据挖掘', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '深圳', 15000, 7000, '2020-01-01', NULL, 1, 138, 6, 4, 516);
INSERT INTO `position` VALUES (528, '高级数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 6, '武汉', 11000, 8000, '2020-01-01', NULL, 1, 15, 6, 0, 517);
INSERT INTO `position` VALUES (529, '数据挖掘实习生', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 15, '深圳', 23000, 5000, '2020-01-01', NULL, 1, 71, 6, 15, 518);
INSERT INTO `position` VALUES (530, '数据挖掘实习生（毕业可转正）2020届', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 6, '郑州', 21000, 7000, '2020-01-01', NULL, 1, 68, 6, 14, 519);
INSERT INTO `position` VALUES (531, '数据挖掘工程师(J10027)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '珠海', 11000, 9000, '2020-01-01', NULL, 1, 103, 6, 7, 520);
INSERT INTO `position` VALUES (532, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 0, '南京', 30000, 9000, '2020-01-01', NULL, 1, 9, 6, 14, 521);
INSERT INTO `position` VALUES (533, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 5, '深圳', 23000, 8000, '2020-01-01', NULL, 1, 89, 6, 7, 522);
INSERT INTO `position` VALUES (534, '资深数据挖掘（AI）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 5, '上海', 11000, 6000, '2020-01-01', NULL, 1, 35, 6, 18, 523);
INSERT INTO `position` VALUES (535, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 7, '广州', 20000, 5000, '2020-01-01', NULL, 1, 89, 6, 8, 524);
INSERT INTO `position` VALUES (536, '高级数据挖掘工程师 (职位编号：zhaolian000830)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 10, '深圳', 20000, 7000, '2020-01-01', NULL, 1, 13, 6, 14, 525);
INSERT INTO `position` VALUES (537, '数据挖掘经理（金融科技）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 11, '上海', 23000, 6000, '2020-01-01', NULL, 1, 79, 6, 16, 526);
INSERT INTO `position` VALUES (538, '数据挖掘师—北京分公司', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 8, '北京', 16000, 7000, '2020-01-01', NULL, 1, 10, 6, 19, 527);
INSERT INTO `position` VALUES (539, '数据挖掘专家', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '广州', 20000, 9000, '2020-01-01', NULL, 1, 2, 6, 9, 528);
INSERT INTO `position` VALUES (540, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '上海', 30000, 8000, '2020-01-01', NULL, 1, 58, 6, 15, 529);
INSERT INTO `position` VALUES (541, '29912-高级数据挖掘工程师 (职位编号：57705)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 1, '深圳', 16000, 5000, '2020-01-01', NULL, 1, 114, 6, 15, 530);
INSERT INTO `position` VALUES (542, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 0, '西安', 11000, 7000, '2020-01-01', NULL, 1, 100, 6, 7, 531);
INSERT INTO `position` VALUES (543, '数据挖掘专家', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '深圳', 15000, 5000, '2020-01-01', NULL, 1, 95, 6, 6, 532);
INSERT INTO `position` VALUES (544, '电商数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '上海', 20000, 7000, '2020-01-01', NULL, 1, 57, 6, 13, 533);
INSERT INTO `position` VALUES (545, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 7, '上海', 11000, 6000, '2020-01-01', NULL, 1, 67, 6, 18, 534);
INSERT INTO `position` VALUES (546, '算法工程师/用户数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 15, '广州', 16000, 9000, '2020-01-01', NULL, 1, 12, 6, 7, 535);
INSERT INTO `position` VALUES (547, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 6, '南京', 30000, 7000, '2020-01-01', NULL, 1, 60, 6, 1, 536);
INSERT INTO `position` VALUES (548, '数据分析师、数据挖掘工程师(000643)（绵阳） (职位编号：000643)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 7, '绵阳', 23000, 8000, '2020-01-01', NULL, 1, 8, 6, 7, 537);
INSERT INTO `position` VALUES (549, '数据挖掘工程师(000396)（重庆） (职位编号：000396)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 0, '重庆', 16000, 7000, '2020-01-01', NULL, 1, 140, 6, 13, 538);
INSERT INTO `position` VALUES (550, '数据挖掘与分析师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 3, '成都', 23000, 7000, '2020-01-01', NULL, 1, 77, 6, 2, 539);
INSERT INTO `position` VALUES (551, '高级数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '北京', 23000, 6000, '2020-01-01', NULL, 1, 108, 6, 6, 540);
INSERT INTO `position` VALUES (552, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 9, '福州', 30000, 7000, '2020-01-01', NULL, 1, 51, 6, 9, 541);
INSERT INTO `position` VALUES (553, '大数据挖掘建模工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 8, '乌鲁木齐', 30000, 8000, '2020-01-01', NULL, 1, 93, 6, 10, 542);
INSERT INTO `position` VALUES (554, '数据挖掘工程师(006508) (职位编号：vivo006508)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 10, '杭州', 20000, 7000, '2020-01-01', NULL, 1, 42, 6, 5, 543);
INSERT INTO `position` VALUES (555, '数据挖掘实习生', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 14, '广州', 16000, 7000, '2020-01-01', NULL, 1, 2, 6, 7, 544);
INSERT INTO `position` VALUES (556, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '成都', 30000, 7000, '2020-01-01', NULL, 1, 67, 6, 5, 545);
INSERT INTO `position` VALUES (557, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '武汉', 16000, 9000, '2020-01-01', NULL, 1, 140, 6, 7, 546);
INSERT INTO `position` VALUES (558, '数据挖掘顾问（Customer Service）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 3, '上海', 23000, 5000, '2020-01-01', NULL, 1, 101, 6, 18, 547);
INSERT INTO `position` VALUES (559, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 8, '西安', 20000, 6000, '2020-01-01', NULL, 1, 39, 6, 20, 548);
INSERT INTO `position` VALUES (560, '大数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 5, '南京', 21000, 7000, '2020-01-01', NULL, 1, 86, 6, 19, 549);
INSERT INTO `position` VALUES (561, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 9, '中山', 23000, 6000, '2020-01-01', NULL, 1, 108, 6, 13, 550);
INSERT INTO `position` VALUES (562, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 0, '上海', 11000, 8000, '2020-01-01', NULL, 1, 58, 6, 0, 551);
INSERT INTO `position` VALUES (563, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '沈阳', 21000, 7000, '2020-01-01', NULL, 1, 39, 6, 7, 552);
INSERT INTO `position` VALUES (564, '算法工程师/数据挖掘', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 10, '广州', 15000, 5000, '2020-01-01', NULL, 1, 142, 6, 8, 553);
INSERT INTO `position` VALUES (565, '数据挖掘实习', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 3, '上海', 20000, 5000, '2020-01-01', NULL, 1, 22, 6, 10, 554);
INSERT INTO `position` VALUES (566, '医药数据挖掘与分析师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '成都', 15000, 9000, '2020-01-01', NULL, 1, 41, 6, 5, 555);
INSERT INTO `position` VALUES (567, '大数据挖掘高级工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '珠海', 20000, 5000, '2020-01-01', NULL, 1, 37, 6, 8, 556);
INSERT INTO `position` VALUES (568, '数据挖掘分析（出差东莞）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 1, '东莞', 16000, 7000, '2020-01-01', NULL, 1, 76, 6, 5, 557);
INSERT INTO `position` VALUES (569, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '广州', 21000, 5000, '2020-01-01', NULL, 1, 83, 6, 19, 558);
INSERT INTO `position` VALUES (570, 'BI数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 3, '上海', 11000, 5000, '2020-01-01', NULL, 1, 30, 6, 17, 559);
INSERT INTO `position` VALUES (571, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '广州', 11000, 8000, '2020-01-01', NULL, 1, 8, 6, 6, 560);
INSERT INTO `position` VALUES (572, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '杭州', 21000, 6000, '2020-01-01', NULL, 1, 110, 6, 14, 561);
INSERT INTO `position` VALUES (573, '数据挖掘和分析工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '深圳', 20000, 9000, '2020-01-01', NULL, 1, 143, 6, 13, 562);
INSERT INTO `position` VALUES (574, '高级数据挖掘工程师 (职位编号：J192718)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 3, '杭州', 15000, 5000, '2020-01-01', NULL, 1, 22, 6, 17, 563);
INSERT INTO `position` VALUES (575, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 7, '广州', 30000, 8000, '2020-01-01', NULL, 1, 69, 6, 10, 564);
INSERT INTO `position` VALUES (576, '数据挖掘（开发工程师）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 8, '上海', 16000, 7000, '2020-01-01', NULL, 1, 86, 6, 10, 565);
INSERT INTO `position` VALUES (577, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 0, '上海', 11000, 9000, '2020-01-01', NULL, 1, 41, 6, 11, 566);
INSERT INTO `position` VALUES (578, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '深圳', 20000, 6000, '2020-01-01', NULL, 1, 60, 6, 4, 567);
INSERT INTO `position` VALUES (579, '数据挖掘分析师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 10, '深圳', 16000, 5000, '2020-01-01', NULL, 1, 119, 6, 15, 568);
INSERT INTO `position` VALUES (580, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 11, '深圳', 16000, 5000, '2020-01-01', NULL, 1, 4, 6, 17, 569);
INSERT INTO `position` VALUES (581, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 0, '北京', 15000, 8000, '2020-01-01', NULL, 1, 40, 6, 3, 570);
INSERT INTO `position` VALUES (582, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 6, '苏州', 30000, 5000, '2020-01-01', NULL, 1, 84, 6, 16, 571);
INSERT INTO `position` VALUES (583, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '广州', 30000, 9000, '2020-01-01', NULL, 1, 4, 6, 13, 572);
INSERT INTO `position` VALUES (584, '大数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 5, '厦门', 21000, 6000, '2020-01-01', NULL, 1, 41, 6, 10, 573);
INSERT INTO `position` VALUES (585, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 5, '重庆', 16000, 8000, '2020-01-01', NULL, 1, 133, 6, 10, 574);
INSERT INTO `position` VALUES (586, '数据挖掘（01）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 7, '上海', 20000, 8000, '2020-01-01', NULL, 1, 90, 6, 8, 575);
INSERT INTO `position` VALUES (587, '数据挖掘与分析工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 3, '北京', 11000, 6000, '2020-01-01', NULL, 1, 54, 6, 12, 576);
INSERT INTO `position` VALUES (588, '消费者数据挖掘经理', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '广州', 11000, 5000, '2020-01-01', NULL, 1, 75, 6, 19, 577);
INSERT INTO `position` VALUES (589, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 10, '长沙', 30000, 5000, '2020-01-01', NULL, 1, 41, 6, 9, 578);
INSERT INTO `position` VALUES (590, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 3, '深圳', 30000, 8000, '2020-01-01', NULL, 1, 91, 6, 14, 579);
INSERT INTO `position` VALUES (591, '数据挖掘工程师（电商数据）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 5, '上海', 16000, 5000, '2020-01-01', NULL, 1, 8, 6, 12, 580);
INSERT INTO `position` VALUES (592, '大数据挖掘/人工智能首席架构师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '上海', 23000, 8000, '2020-01-01', NULL, 1, 116, 6, 12, 581);
INSERT INTO `position` VALUES (593, '高级算法/数据挖掘/机器学习专家', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '广州', 15000, 8000, '2020-01-01', NULL, 1, 138, 6, 13, 582);
INSERT INTO `position` VALUES (594, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 14, '深圳', 21000, 9000, '2020-01-01', NULL, 1, 135, 6, 4, 583);
INSERT INTO `position` VALUES (595, '机器学习/数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 0, '北京', 23000, 8000, '2020-01-01', NULL, 1, 16, 6, 19, 584);
INSERT INTO `position` VALUES (596, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 0, '广州', 30000, 5000, '2020-01-01', NULL, 1, 109, 6, 5, 585);
INSERT INTO `position` VALUES (597, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '广州', 30000, 5000, '2020-01-01', NULL, 1, 96, 6, 8, 586);
INSERT INTO `position` VALUES (598, '数据挖掘师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '东莞', 15000, 5000, '2020-01-01', NULL, 1, 72, 6, 6, 587);
INSERT INTO `position` VALUES (599, '中级数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 3, '重庆', 11000, 8000, '2020-01-01', NULL, 1, 120, 6, 17, 588);
INSERT INTO `position` VALUES (600, '数据分析工程师（数据挖掘）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 8, '佛山', 23000, 9000, '2020-01-01', NULL, 1, 14, 6, 9, 589);
INSERT INTO `position` VALUES (601, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 13, '深圳', 30000, 9000, '2020-01-01', NULL, 1, 79, 6, 8, 590);
INSERT INTO `position` VALUES (602, 'SCADA数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '北京', 21000, 8000, '2020-01-01', NULL, 1, 99, 6, 1, 591);
INSERT INTO `position` VALUES (603, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 8, '成都', 16000, 5000, '2020-01-01', NULL, 1, 82, 6, 2, 592);
INSERT INTO `position` VALUES (604, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 9, '广州', 23000, 8000, '2020-01-01', NULL, 1, 52, 6, 12, 593);
INSERT INTO `position` VALUES (605, '数据挖掘算法工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 10, '嘉兴', 16000, 8000, '2020-01-01', NULL, 1, 36, 6, 6, 594);
INSERT INTO `position` VALUES (606, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 10, '杭州', 30000, 8000, '2020-01-01', NULL, 1, 28, 6, 11, 595);
INSERT INTO `position` VALUES (607, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 7, '广州', 21000, 5000, '2020-01-01', NULL, 1, 98, 6, 6, 596);
INSERT INTO `position` VALUES (608, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 6, '南京', 11000, 8000, '2020-01-01', NULL, 1, 115, 6, 5, 597);
INSERT INTO `position` VALUES (609, '经营分析经理（数据挖掘方向）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 11, '广州', 23000, 5000, '2020-01-01', NULL, 1, 100, 6, 3, 598);
INSERT INTO `position` VALUES (610, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 13, '马鞍山', 20000, 5000, '2020-01-01', NULL, 1, 121, 6, 1, 599);
INSERT INTO `position` VALUES (611, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 5, '杭州', 30000, 6000, '2020-01-01', NULL, 1, 101, 6, 13, 600);
INSERT INTO `position` VALUES (612, '数据挖掘算法工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 14, '杭州', 21000, 9000, '2020-01-01', NULL, 1, 53, 6, 3, 601);
INSERT INTO `position` VALUES (613, '数据挖掘经理 (职位编号：purcotton001274)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 14, '深圳', 16000, 7000, '2020-01-01', NULL, 1, 101, 6, 16, 602);
INSERT INTO `position` VALUES (614, '数据挖掘算法工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 4, '北京', 23000, 8000, '2020-01-01', NULL, 1, 48, 6, 11, 603);
INSERT INTO `position` VALUES (615, '大数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 8, '佛山', 23000, 9000, '2020-01-01', NULL, 1, 67, 6, 4, 604);
INSERT INTO `position` VALUES (616, '菜鸟-数据挖掘/算法专家 (职位编号：GP033439)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 12, '北京', 21000, 6000, '2020-01-01', NULL, 1, 115, 6, 3, 605);
INSERT INTO `position` VALUES (617, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 8, '苏州', 20000, 9000, '2020-01-01', NULL, 1, 60, 7, 14, 606);
INSERT INTO `position` VALUES (618, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '郑州', 30000, 8000, '2020-01-01', NULL, 1, 133, 7, 9, 607);
INSERT INTO `position` VALUES (619, '网络/网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '昆明', 30000, 7000, '2020-01-01', NULL, 1, 61, 7, 4, 608);
INSERT INTO `position` VALUES (620, '厂商专职网络安全技术工程师（舟山定海）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 8, '舟山', 20000, 5000, '2020-01-01', NULL, 1, 78, 7, 14, 609);
INSERT INTO `position` VALUES (621, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 5, '深圳', 30000, 9000, '2020-01-01', NULL, 1, 67, 7, 18, 610);
INSERT INTO `position` VALUES (622, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 0, '深圳', 30000, 6000, '2020-01-01', NULL, 1, 143, 7, 9, 611);
INSERT INTO `position` VALUES (623, '网络安全专员', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 1, '杭州', 23000, 9000, '2020-01-01', NULL, 1, 107, 7, 5, 612);
INSERT INTO `position` VALUES (624, '项目经理（网络安全）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 1, '广州', 11000, 7000, '2020-01-01', NULL, 1, 106, 7, 8, 613);
INSERT INTO `position` VALUES (625, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 10, '厦门', 11000, 5000, '2020-01-01', NULL, 1, 55, 7, 18, 614);
INSERT INTO `position` VALUES (626, '驻场网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 4, '广州', 15000, 8000, '2020-01-01', NULL, 1, 51, 7, 17, 615);
INSERT INTO `position` VALUES (627, '网络安全工程师（DSP）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '武汉', 30000, 6000, '2020-01-01', NULL, 1, 88, 7, 16, 616);
INSERT INTO `position` VALUES (628, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 13, '深圳', 23000, 8000, '2020-01-01', NULL, 1, 15, 7, 8, 617);
INSERT INTO `position` VALUES (629, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 15, '重庆', 16000, 6000, '2020-01-01', NULL, 1, 26, 7, 1, 618);
INSERT INTO `position` VALUES (630, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 14, '北京', 23000, 5000, '2020-01-01', NULL, 1, 52, 7, 7, 619);
INSERT INTO `position` VALUES (631, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 13, '沈阳', 30000, 8000, '2020-01-01', NULL, 1, 48, 7, 14, 620);
INSERT INTO `position` VALUES (632, '中电上海研发中心网络安全研究员', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 4, '上海', 16000, 9000, '2020-01-01', NULL, 1, 4, 7, 11, 621);
INSERT INTO `position` VALUES (633, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '上海', 15000, 7000, '2020-01-01', NULL, 1, 124, 7, 9, 622);
INSERT INTO `position` VALUES (634, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 7, '广州', 15000, 9000, '2020-01-01', NULL, 1, 24, 7, 19, 623);
INSERT INTO `position` VALUES (635, '网络安全销售', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 13, '北京', 20000, 8000, '2020-01-01', NULL, 1, 94, 7, 18, 624);
INSERT INTO `position` VALUES (636, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 3, '广州', 16000, 8000, '2020-01-01', NULL, 1, 88, 7, 0, 625);
INSERT INTO `position` VALUES (637, '网络安全工程师（偏售前）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '广州', 21000, 9000, '2020-01-01', NULL, 1, 134, 7, 0, 626);
INSERT INTO `position` VALUES (638, '网络安全工程师（等级保护）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 5, '东莞', 23000, 9000, '2020-01-01', NULL, 1, 74, 7, 11, 627);
INSERT INTO `position` VALUES (639, '网络安全运维经理', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 4, '北京', 23000, 7000, '2020-01-01', NULL, 1, 65, 7, 5, 628);
INSERT INTO `position` VALUES (640, '网络安全和技术支持工程师 (职位编号：1)', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 11, '北京', 16000, 9000, '2020-01-01', NULL, 1, 30, 7, 10, 629);
INSERT INTO `position` VALUES (641, '网络安全运维工程师(集成2027)', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 2, '北京', 30000, 7000, '2020-01-01', NULL, 1, 142, 7, 11, 630);
INSERT INTO `position` VALUES (642, '网络安全管理工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 12, '上海', 20000, 5000, '2020-01-01', NULL, 1, 140, 7, 3, 631);
INSERT INTO `position` VALUES (643, '外企网络安全信息安全岗', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 2, '北京', 15000, 7000, '2020-01-01', NULL, 1, 54, 7, 3, 632);
INSERT INTO `position` VALUES (644, '售前工程师-网络安全-EDR', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '北京', 15000, 9000, '2020-01-01', NULL, 1, 91, 7, 10, 633);
INSERT INTO `position` VALUES (645, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 11, '南京', 16000, 9000, '2020-01-01', NULL, 1, 92, 7, 16, 634);
INSERT INTO `position` VALUES (646, '网络安全工程师（金融科技）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '上海', 21000, 8000, '2020-01-01', NULL, 1, 53, 7, 15, 635);
INSERT INTO `position` VALUES (647, '信息安全-网络安全运维工程师-XX5001', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 2, '北京', 23000, 7000, '2020-01-01', NULL, 1, 10, 7, 6, 636);
INSERT INTO `position` VALUES (648, '网络安全研究员', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 3, '武汉', 16000, 9000, '2020-01-01', NULL, 1, 94, 7, 10, 637);
INSERT INTO `position` VALUES (649, '网络安全（2020届校招）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 14, '广州', 11000, 9000, '2020-01-01', NULL, 1, 73, 7, 11, 638);
INSERT INTO `position` VALUES (650, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 3, '成都', 11000, 6000, '2020-01-01', NULL, 1, 72, 7, 18, 639);
INSERT INTO `position` VALUES (651, '网络安全产品销售', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 3, '上海', 11000, 9000, '2020-01-01', NULL, 1, 44, 7, 7, 640);
INSERT INTO `position` VALUES (652, '信息/网络安全标准工程师 (职位编号：19508)', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '北京', 15000, 9000, '2020-01-01', NULL, 1, 96, 7, 10, 641);
INSERT INTO `position` VALUES (653, '网络安全产品销售助理', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 15, '成都', 21000, 7000, '2020-01-01', NULL, 1, 78, 7, 14, 642);
INSERT INTO `position` VALUES (654, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '上海', 30000, 5000, '2020-01-01', NULL, 1, 68, 7, 8, 643);
INSERT INTO `position` VALUES (655, '销售经理(网络安全产品）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 13, '上海', 15000, 5000, '2020-01-01', NULL, 1, 82, 7, 10, 644);
INSERT INTO `position` VALUES (656, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 14, '成都', 21000, 5000, '2020-01-01', NULL, 1, 14, 7, 18, 645);
INSERT INTO `position` VALUES (657, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '成都', 30000, 5000, '2020-01-01', NULL, 1, 37, 7, 4, 646);
INSERT INTO `position` VALUES (658, '计算机网络安全管理员', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '上海', 30000, 9000, '2020-01-01', NULL, 1, 79, 7, 2, 647);
INSERT INTO `position` VALUES (659, '高级网络安全解决方案工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 11, '成都', 20000, 6000, '2020-01-01', NULL, 1, 39, 7, 2, 648);
INSERT INTO `position` VALUES (660, '网络安全讲师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 3, '福州', 11000, 5000, '2020-01-01', NULL, 1, 81, 7, 11, 649);
INSERT INTO `position` VALUES (661, '主机安全测评师（网络安全）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '武汉', 16000, 6000, '2020-01-01', NULL, 1, 48, 7, 5, 650);
INSERT INTO `position` VALUES (662, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 15, '苏州', 16000, 8000, '2020-01-01', NULL, 1, 39, 7, 20, 651);
INSERT INTO `position` VALUES (663, '高级网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '北京', 30000, 7000, '2020-01-01', NULL, 1, 85, 7, 11, 652);
INSERT INTO `position` VALUES (664, '网络安全技术岗', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 2, '上海', 15000, 7000, '2020-01-01', NULL, 1, 58, 7, 7, 653);
INSERT INTO `position` VALUES (665, '网络安全产品销售代表', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 8, '南京', 21000, 6000, '2020-01-01', NULL, 1, 9, 7, 18, 654);
INSERT INTO `position` VALUES (666, '网络安全高级工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '深圳', 11000, 9000, '2020-01-01', NULL, 1, 101, 7, 7, 655);
INSERT INTO `position` VALUES (667, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '上海', 16000, 8000, '2020-01-01', NULL, 1, 128, 7, 13, 656);
INSERT INTO `position` VALUES (668, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 10, '淄博', 23000, 9000, '2020-01-01', NULL, 1, 106, 7, 8, 657);
INSERT INTO `position` VALUES (669, '网络安全工程师（***也可）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 7, '广州', 30000, 5000, '2020-01-01', NULL, 1, 20, 7, 11, 658);
INSERT INTO `position` VALUES (670, '网络安全工程师（可接受实习生）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 11, '长沙', 15000, 8000, '2020-01-01', NULL, 1, 89, 7, 5, 659);
INSERT INTO `position` VALUES (671, '网络安全系统工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 10, '北京', 21000, 8000, '2020-01-01', NULL, 1, 6, 7, 1, 660);
INSERT INTO `position` VALUES (672, '网络安全分析专家（态势感知产品/SOC产品）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '杭州', 11000, 8000, '2020-01-01', NULL, 1, 39, 7, 6, 661);
INSERT INTO `position` VALUES (673, '网络安全的实施、售后服务工程师 (职位编号：001)', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '广州', 21000, 5000, '2020-01-01', NULL, 1, 15, 7, 11, 662);
INSERT INTO `position` VALUES (674, '网络安全产品销售', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 14, '南京', 20000, 6000, '2020-01-01', NULL, 1, 139, 7, 16, 663);
INSERT INTO `position` VALUES (675, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 13, '江门', 21000, 6000, '2020-01-01', NULL, 1, 99, 7, 2, 664);
INSERT INTO `position` VALUES (676, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 13, '广州', 23000, 8000, '2020-01-01', NULL, 1, 51, 7, 5, 665);
INSERT INTO `position` VALUES (677, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 3, '深圳', 11000, 9000, '2020-01-01', NULL, 1, 100, 7, 7, 666);
INSERT INTO `position` VALUES (678, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 5, '南京', 15000, 8000, '2020-01-01', NULL, 1, 114, 7, 6, 667);
INSERT INTO `position` VALUES (679, '网络安全产品（运营总监）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 12, '西安', 16000, 6000, '2020-01-01', NULL, 1, 65, 7, 14, 668);
INSERT INTO `position` VALUES (680, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 1, '苏州', 16000, 8000, '2020-01-01', NULL, 1, 134, 7, 12, 669);
INSERT INTO `position` VALUES (681, '网络安全运维（驻黄埔）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 8, '广州', 15000, 7000, '2020-01-01', NULL, 1, 31, 7, 2, 670);
INSERT INTO `position` VALUES (682, '网络安全管理员', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 4, '长沙', 11000, 6000, '2020-01-01', NULL, 1, 124, 7, 16, 671);
INSERT INTO `position` VALUES (683, '网络安全产品销售经理', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 15, '广州', 11000, 8000, '2020-01-01', NULL, 1, 65, 7, 3, 672);
INSERT INTO `position` VALUES (684, '网络安全架构师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 0, '武汉', 11000, 8000, '2020-01-01', NULL, 1, 122, 7, 13, 673);
INSERT INTO `position` VALUES (685, '销售顾问（网络安全线产品）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 11, '成都', 16000, 5000, '2020-01-01', NULL, 1, 53, 7, 1, 674);
INSERT INTO `position` VALUES (686, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 14, '广州', 16000, 7000, '2020-01-01', NULL, 1, 142, 7, 17, 675);
INSERT INTO `position` VALUES (687, '网络安全工程师 (职位编号：（代新潮招聘）)', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 5, '广州', 16000, 9000, '2020-01-01', NULL, 1, 12, 7, 16, 676);
INSERT INTO `position` VALUES (688, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 11, '武汉', 30000, 5000, '2020-01-01', NULL, 1, 22, 7, 11, 677);
INSERT INTO `position` VALUES (689, 'Cyber Security Engineer 网络安全工程师 (职位编号：000778)', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 12, '上海', 15000, 6000, '2020-01-01', NULL, 1, 97, 7, 16, 678);
INSERT INTO `position` VALUES (690, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 13, '成都', 30000, 5000, '2020-01-01', NULL, 1, 116, 7, 10, 679);
INSERT INTO `position` VALUES (691, '计算机网络安全管理专员', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 7, '成都', 15000, 5000, '2020-01-01', NULL, 1, 28, 7, 4, 680);
INSERT INTO `position` VALUES (692, '网络安全专员', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 0, '成都', 20000, 9000, '2020-01-01', NULL, 1, 65, 7, 7, 681);
INSERT INTO `position` VALUES (693, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 14, '上海', 23000, 5000, '2020-01-01', NULL, 1, 33, 7, 3, 682);
INSERT INTO `position` VALUES (694, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '成都', 20000, 9000, '2020-01-01', NULL, 1, 46, 7, 6, 683);
INSERT INTO `position` VALUES (695, '（子公司）网络安全解决方案工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 12, '三门峡', 11000, 5000, '2020-01-01', NULL, 1, 142, 7, 19, 684);
INSERT INTO `position` VALUES (696, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 15, '深圳', 20000, 6000, '2020-01-01', NULL, 1, 102, 7, 7, 685);
INSERT INTO `position` VALUES (697, '网络安全（等级保护）业务总监', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 8, '上海', 30000, 5000, '2020-01-01', NULL, 1, 100, 7, 9, 686);
INSERT INTO `position` VALUES (698, '某银行-网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 15, '成都', 11000, 6000, '2020-01-01', NULL, 1, 128, 7, 8, 687);
INSERT INTO `position` VALUES (699, '网络安全工程师/网络安全专家', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 14, '广州', 15000, 8000, '2020-01-01', NULL, 1, 37, 7, 1, 688);
INSERT INTO `position` VALUES (700, '网络安全产品经理', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 7, '北京', 30000, 6000, '2020-01-01', NULL, 1, 49, 7, 3, 689);
INSERT INTO `position` VALUES (701, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 1, '北京', 30000, 5000, '2020-01-01', NULL, 1, 46, 7, 2, 690);
INSERT INTO `position` VALUES (702, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 12, '重庆', 30000, 6000, '2020-01-01', NULL, 1, 66, 7, 6, 691);
INSERT INTO `position` VALUES (703, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '上海', 30000, 8000, '2020-01-01', NULL, 1, 50, 7, 12, 692);
INSERT INTO `position` VALUES (704, '网络安全开发工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 7, '重庆', 11000, 8000, '2020-01-01', NULL, 1, 49, 7, 16, 693);
INSERT INTO `position` VALUES (705, '网络安全工程师（东莞）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 3, '东莞', 30000, 7000, '2020-01-01', NULL, 1, 138, 7, 18, 694);
INSERT INTO `position` VALUES (706, '网络安全工程师（发展前景好+专业培训）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 15, '深圳', 15000, 5000, '2020-01-01', NULL, 1, 43, 7, 15, 695);
INSERT INTO `position` VALUES (707, '网络安全测试工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 12, '武汉', 16000, 6000, '2020-01-01', NULL, 1, 68, 7, 3, 696);
INSERT INTO `position` VALUES (708, '网络安全专家 (职位编号：uniview002175)', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 7, '杭州', 21000, 6000, '2020-01-01', NULL, 1, 10, 7, 4, 697);
INSERT INTO `position` VALUES (709, '网络安全', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 3, '北京', 11000, 8000, '2020-01-01', NULL, 1, 73, 7, 8, 698);
INSERT INTO `position` VALUES (710, '反黑客网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 9, '惠州', 23000, 7000, '2020-01-01', NULL, 1, 53, 7, 13, 699);
INSERT INTO `position` VALUES (711, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 3, '杭州', 21000, 8000, '2020-01-01', NULL, 1, 40, 7, 10, 700);
INSERT INTO `position` VALUES (712, '网络安全工程师', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 2, '深圳', 16000, 7000, '2020-01-01', NULL, 1, 115, 7, 5, 701);
INSERT INTO `position` VALUES (713, '网络安全政策研究员', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 8, '重庆', 15000, 6000, '2020-01-01', NULL, 1, 58, 7, 5, 702);
INSERT INTO `position` VALUES (714, '网络安全工程师（日语流利）', '具备一定网络知识,了解使用网络安全工具,具备较强的编程能力', 6, '大连', 15000, 5000, '2020-01-01', NULL, 1, 67, 7, 7, 703);
INSERT INTO `position` VALUES (715, '机器学习算法专家', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 3, '成都', 23000, 7000, '2020-01-01', NULL, 1, 103, 8, 11, 704);
INSERT INTO `position` VALUES (716, '机器学习/深度学习/算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 1, '福州', 30000, 7000, '2020-01-01', NULL, 1, 137, 8, 2, 705);
INSERT INTO `position` VALUES (717, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 9, '武汉', 16000, 6000, '2020-01-01', NULL, 1, 7, 8, 13, 706);
INSERT INTO `position` VALUES (718, '机器学习系统专家', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 15, '广州', 23000, 7000, '2020-01-01', NULL, 1, 108, 8, 5, 707);
INSERT INTO `position` VALUES (719, '算法工程师（机器学习自然语言处理）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 6, '上海', 30000, 8000, '2020-01-01', NULL, 1, 37, 8, 5, 708);
INSERT INTO `position` VALUES (720, '数据建模师（机器学习） (MJ000272)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 1, '上海', 11000, 8000, '2020-01-01', NULL, 1, 106, 8, 8, 709);
INSERT INTO `position` VALUES (721, '机器学习工程师（金融科技）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '上海', 21000, 7000, '2020-01-01', NULL, 1, 59, 8, 1, 710);
INSERT INTO `position` VALUES (722, '数据分析工程师 （大数据分析挖掘/机器学习）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '北京', 15000, 8000, '2020-01-01', NULL, 1, 4, 8, 7, 711);
INSERT INTO `position` VALUES (723, '机器学习/算法-风险策略方向', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 9, '广州', 21000, 5000, '2020-01-01', NULL, 1, 107, 8, 3, 712);
INSERT INTO `position` VALUES (724, 'CSIG16-地图检索机器学习算法高级研发工程师（北京） (职位编号：57728)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '北京', 15000, 7000, '2020-01-01', NULL, 1, 48, 8, 2, 713);
INSERT INTO `position` VALUES (725, '人工智能研发工程师（算法/开发/机器学习）（广州）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 5, '广州', 23000, 5000, '2020-01-01', NULL, 1, 22, 8, 17, 714);
INSERT INTO `position` VALUES (726, '算法工程师（机器学习方向）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 7, '北京', 30000, 6000, '2020-01-01', NULL, 1, 59, 8, 0, 715);
INSERT INTO `position` VALUES (727, '人工智能、机器学习、算法讲师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '成都', 15000, 5000, '2020-01-01', NULL, 1, 98, 8, 19, 716);
INSERT INTO `position` VALUES (728, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 7, '北京', 30000, 5000, '2020-01-01', NULL, 1, 6, 8, 17, 717);
INSERT INTO `position` VALUES (729, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 8, '杭州', 15000, 8000, '2020-01-01', NULL, 1, 137, 8, 11, 718);
INSERT INTO `position` VALUES (730, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 9, '上海', 30000, 9000, '2020-01-01', NULL, 1, 106, 8, 19, 719);
INSERT INTO `position` VALUES (731, '2621YV-机器学习及大数据算法工程师 (职位编号：2621YV)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 3, '上海', 30000, 9000, '2020-01-01', NULL, 1, 88, 8, 13, 720);
INSERT INTO `position` VALUES (732, 'Python机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 8, '广州', 23000, 6000, '2020-01-01', NULL, 1, 59, 8, 2, 721);
INSERT INTO `position` VALUES (733, 'AI机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 4, '深圳', 20000, 5000, '2020-01-01', NULL, 1, 103, 8, 8, 722);
INSERT INTO `position` VALUES (734, '机器学习研发工程师（Python）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 8, '广州', 23000, 6000, '2020-01-01', NULL, 1, 44, 8, 1, 723);
INSERT INTO `position` VALUES (735, '机器学习&自然语言处理研发工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 15, '南京', 20000, 8000, '2020-01-01', NULL, 1, 72, 8, 15, 724);
INSERT INTO `position` VALUES (736, '算法工程师/机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 6, '上海', 15000, 9000, '2020-01-01', NULL, 1, 17, 8, 10, 725);
INSERT INTO `position` VALUES (737, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 14, '广州', 16000, 5000, '2020-01-01', NULL, 1, 47, 8, 0, 726);
INSERT INTO `position` VALUES (738, '机器学习算法高级工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 0, '深圳', 21000, 6000, '2020-01-01', NULL, 1, 94, 8, 13, 727);
INSERT INTO `position` VALUES (739, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 2, '北京', 20000, 7000, '2020-01-01', NULL, 1, 92, 8, 12, 728);
INSERT INTO `position` VALUES (740, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 6, '广州', 21000, 5000, '2020-01-01', NULL, 1, 130, 8, 6, 729);
INSERT INTO `position` VALUES (741, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 0, '上海', 30000, 6000, '2020-01-01', NULL, 1, 119, 8, 1, 730);
INSERT INTO `position` VALUES (742, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 2, '上海', 11000, 8000, '2020-01-01', NULL, 1, 42, 8, 7, 731);
INSERT INTO `position` VALUES (743, '高级算法/数据挖掘/机器学习专家', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 3, '广州', 15000, 5000, '2020-01-01', NULL, 1, 101, 8, 3, 732);
INSERT INTO `position` VALUES (744, '机器学习算法工程师（应届毕业生）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 13, '武汉', 23000, 7000, '2020-01-01', NULL, 1, 142, 8, 8, 733);
INSERT INTO `position` VALUES (745, '机器学习/数据挖掘工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 5, '北京', 16000, 9000, '2020-01-01', NULL, 1, 80, 8, 1, 734);
INSERT INTO `position` VALUES (746, '机器学习工程师（双休+五险一金）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 14, '长沙', 16000, 6000, '2020-01-01', NULL, 1, 72, 8, 7, 735);
INSERT INTO `position` VALUES (747, '机器学习实习生', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 15, '北京', 20000, 8000, '2020-01-01', NULL, 1, 84, 8, 17, 736);
INSERT INTO `position` VALUES (748, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 9, '上海', 15000, 6000, '2020-01-01', NULL, 1, 27, 8, 6, 737);
INSERT INTO `position` VALUES (749, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 2, '成都', 16000, 5000, '2020-01-01', NULL, 1, 64, 8, 5, 738);
INSERT INTO `position` VALUES (750, '算法（图像算法、深度学习、机器学习均有需求）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 5, '杭州', 21000, 7000, '2020-01-01', NULL, 1, 96, 8, 20, 739);
INSERT INTO `position` VALUES (751, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 8, '武汉', 20000, 8000, '2020-01-01', NULL, 1, 101, 8, 16, 740);
INSERT INTO `position` VALUES (752, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 3, '西安', 11000, 9000, '2020-01-01', NULL, 1, 6, 8, 5, 741);
INSERT INTO `position` VALUES (753, '算法工程师\\机器学习', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 0, '南京', 20000, 7000, '2020-01-01', NULL, 1, 62, 8, 20, 742);
INSERT INTO `position` VALUES (754, '资深机器学习工程师/技术专家', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '北京', 30000, 9000, '2020-01-01', NULL, 1, 137, 8, 11, 743);
INSERT INTO `position` VALUES (755, '达摩院-机器学习算法专家-数据决策 (职位编号：GP564513)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '杭州', 20000, 7000, '2020-01-01', NULL, 1, 99, 8, 7, 744);
INSERT INTO `position` VALUES (756, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '广州', 23000, 9000, '2020-01-01', NULL, 1, 74, 8, 17, 745);
INSERT INTO `position` VALUES (757, '算法工程师（机器学习方向）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '成都', 20000, 7000, '2020-01-01', NULL, 1, 24, 8, 4, 746);
INSERT INTO `position` VALUES (758, '机器学习（开发）工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 15, '烟台', 23000, 9000, '2020-01-01', NULL, 1, 43, 8, 18, 747);
INSERT INTO `position` VALUES (759, '机器学习工程师/实习生', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 1, '南京', 11000, 8000, '2020-01-01', NULL, 1, 36, 8, 1, 748);
INSERT INTO `position` VALUES (760, '机器学习工程师(上海 深圳)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 6, '上海', 20000, 5000, '2020-01-01', NULL, 1, 81, 8, 18, 749);
INSERT INTO `position` VALUES (761, '机器学习算法工程师 (职位编号：52794)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 13, '深圳', 11000, 9000, '2020-01-01', NULL, 1, 91, 8, 5, 750);
INSERT INTO `position` VALUES (762, '垂类-B2B业务部_机器学习/数据挖掘工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 0, '北京', 11000, 7000, '2020-01-01', NULL, 1, 106, 8, 11, 751);
INSERT INTO `position` VALUES (763, '高薪聘机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '西安', 21000, 6000, '2020-01-01', NULL, 1, 31, 8, 18, 752);
INSERT INTO `position` VALUES (764, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 0, '南京', 23000, 8000, '2020-01-01', NULL, 1, 111, 8, 2, 753);
INSERT INTO `position` VALUES (765, '机器学习算法开发-f (职位编号：000916)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '深圳', 23000, 6000, '2020-01-01', NULL, 1, 76, 8, 4, 754);
INSERT INTO `position` VALUES (766, '机器学习实训师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 3, '苏州', 30000, 5000, '2020-01-01', NULL, 1, 38, 8, 12, 755);
INSERT INTO `position` VALUES (767, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '北京', 23000, 5000, '2020-01-01', NULL, 1, 8, 8, 2, 756);
INSERT INTO `position` VALUES (768, '机器学习算法工程师（2年以上机器视觉相关经验）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 0, '上海', 21000, 5000, '2020-01-01', NULL, 1, 62, 8, 1, 757);
INSERT INTO `position` VALUES (769, '机器学习高级研究员', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '苏州', 15000, 9000, '2020-01-01', NULL, 1, 31, 8, 6, 758);
INSERT INTO `position` VALUES (770, '初级量化研究员-机器学习2018-2020届', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 2, '上海', 23000, 6000, '2020-01-01', NULL, 1, 90, 8, 3, 759);
INSERT INTO `position` VALUES (771, '机器学习工程师（可视化）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 15, '长春', 15000, 5000, '2020-01-01', NULL, 1, 92, 8, 17, 760);
INSERT INTO `position` VALUES (772, '人工智能/机器学习工程师 (职位编号：WH08)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 14, '武汉', 16000, 8000, '2020-01-01', NULL, 1, 114, 8, 9, 761);
INSERT INTO `position` VALUES (773, '机器学习算法开发工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 1, '长沙', 16000, 9000, '2020-01-01', NULL, 1, 92, 8, 14, 762);
INSERT INTO `position` VALUES (774, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 15, '广州', 11000, 5000, '2020-01-01', NULL, 1, 22, 8, 10, 763);
INSERT INTO `position` VALUES (775, '机器学习开发工程师 (职位编号：WL702)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 15, '南京', 23000, 5000, '2020-01-01', NULL, 1, 96, 8, 3, 764);
INSERT INTO `position` VALUES (776, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 8, '北京', 15000, 7000, '2020-01-01', NULL, 1, 121, 8, 14, 765);
INSERT INTO `position` VALUES (777, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 0, '上海', 20000, 8000, '2020-01-01', NULL, 1, 20, 8, 16, 766);
INSERT INTO `position` VALUES (778, 'AI人工智能工程师/ 机器学习', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 9, '广州', 23000, 9000, '2020-01-01', NULL, 1, 0, 8, 10, 767);
INSERT INTO `position` VALUES (779, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '广州', 15000, 8000, '2020-01-01', NULL, 1, 21, 8, 9, 768);
INSERT INTO `position` VALUES (780, '机器学习&算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 4, '上海', 20000, 9000, '2020-01-01', NULL, 1, 16, 8, 2, 769);
INSERT INTO `position` VALUES (781, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 3, '苏州', 15000, 8000, '2020-01-01', NULL, 1, 116, 8, 17, 770);
INSERT INTO `position` VALUES (782, '机器学习算法工程师(TA0001)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 15, '上海', 20000, 5000, '2020-01-01', NULL, 1, 57, 8, 7, 771);
INSERT INTO `position` VALUES (783, '数据分析师（机器学习方向）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 10, '深圳', 30000, 5000, '2020-01-01', NULL, 1, 64, 8, 4, 772);
INSERT INTO `position` VALUES (784, '量化研究员--机器学习方向', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 4, '上海', 21000, 8000, '2020-01-01', NULL, 1, 82, 8, 15, 773);
INSERT INTO `position` VALUES (785, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 6, '上海', 20000, 6000, '2020-01-01', NULL, 1, 26, 8, 17, 774);
INSERT INTO `position` VALUES (786, '图像处理与机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 8, '杭州', 21000, 5000, '2020-01-01', NULL, 1, 80, 8, 6, 775);
INSERT INTO `position` VALUES (787, '机器学习工程师（大数据）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 9, '广州', 16000, 7000, '2020-01-01', NULL, 1, 142, 8, 18, 776);
INSERT INTO `position` VALUES (788, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 10, '广州', 11000, 7000, '2020-01-01', NULL, 1, 9, 8, 4, 777);
INSERT INTO `position` VALUES (789, '机器学习(算法)工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 10, '深圳', 30000, 9000, '2020-01-01', NULL, 1, 131, 8, 1, 778);
INSERT INTO `position` VALUES (790, '机器学习算法研究员', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 10, '北京', 20000, 6000, '2020-01-01', NULL, 1, 124, 8, 16, 779);
INSERT INTO `position` VALUES (791, '机器学习平台架构师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 8, '广州', 11000, 8000, '2020-01-01', NULL, 1, 95, 8, 10, 780);
INSERT INTO `position` VALUES (792, '机器学习算法工程师（模型训练方向）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '南京', 23000, 6000, '2020-01-01', NULL, 1, 56, 8, 17, 781);
INSERT INTO `position` VALUES (793, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '西安', 11000, 7000, '2020-01-01', NULL, 1, 42, 8, 3, 782);
INSERT INTO `position` VALUES (794, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '北京', 11000, 9000, '2020-01-01', NULL, 1, 114, 8, 7, 783);
INSERT INTO `position` VALUES (795, '机器学习算法研发工程师（机器人自编程项目组）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '佛山', 20000, 7000, '2020-01-01', NULL, 1, 94, 8, 10, 784);
INSERT INTO `position` VALUES (796, '机器学习技术专家', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 3, '上海', 20000, 9000, '2020-01-01', NULL, 1, 51, 8, 0, 785);
INSERT INTO `position` VALUES (797, '研发工程师 （机器学习平台）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 4, '天津', 21000, 5000, '2020-01-01', NULL, 1, 86, 8, 15, 786);
INSERT INTO `position` VALUES (798, '机器学习工程师(J10038)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 3, '广州', 16000, 5000, '2020-01-01', NULL, 1, 81, 8, 7, 787);
INSERT INTO `position` VALUES (799, '算法工程师（大数据、机器学习）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 3, '广州', 21000, 8000, '2020-01-01', NULL, 1, 135, 8, 4, 788);
INSERT INTO `position` VALUES (800, '机器学习工程师（Machine Learning Developer）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 15, '上海', 16000, 7000, '2020-01-01', NULL, 1, 45, 8, 11, 789);
INSERT INTO `position` VALUES (801, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 7, '深圳', 15000, 5000, '2020-01-01', NULL, 1, 83, 8, 9, 790);
INSERT INTO `position` VALUES (802, '机器学习工程师/算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 10, '上海', 16000, 6000, '2020-01-01', NULL, 1, 138, 8, 17, 791);
INSERT INTO `position` VALUES (803, '高级机器学习/数据挖掘工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 4, '南京', 15000, 7000, '2020-01-01', NULL, 1, 83, 8, 19, 792);
INSERT INTO `position` VALUES (804, '机器学习算法研究员', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 7, '北京', 30000, 7000, '2020-01-01', NULL, 1, 103, 8, 0, 793);
INSERT INTO `position` VALUES (805, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '武汉', 20000, 7000, '2020-01-01', NULL, 1, 98, 8, 15, 794);
INSERT INTO `position` VALUES (806, '机器学习实习生', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 14, '广州', 11000, 8000, '2020-01-01', NULL, 1, 66, 8, 7, 795);
INSERT INTO `position` VALUES (807, '安卓机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 2, '扬州', 30000, 7000, '2020-01-01', NULL, 1, 118, 8, 13, 796);
INSERT INTO `position` VALUES (808, '机器学习算法工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 10, '武汉', 15000, 6000, '2020-01-01', NULL, 1, 92, 8, 2, 797);
INSERT INTO `position` VALUES (809, '机器学习算法研发工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 14, '北京', 20000, 5000, '2020-01-01', NULL, 1, 93, 8, 1, 798);
INSERT INTO `position` VALUES (810, '视觉算法工程师（机器学习方向）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 14, '苏州', 15000, 6000, '2020-01-01', NULL, 1, 19, 8, 4, 799);
INSERT INTO `position` VALUES (811, '机器学习与AI服务开发（信息技术中心）', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 10, '上海', 20000, 8000, '2020-01-01', NULL, 1, 53, 8, 3, 800);
INSERT INTO `position` VALUES (812, '机器学习工程师 (MJ000348)', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 12, '广州', 30000, 5000, '2020-01-01', NULL, 1, 101, 8, 11, 801);
INSERT INTO `position` VALUES (813, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 11, '深圳', 20000, 5000, '2020-01-01', NULL, 1, 14, 8, 3, 802);
INSERT INTO `position` VALUES (814, '机器学习工程师', '熟悉常用机器学习算法,熟悉神经网络,良好python基础', 13, '石家庄', 21000, 8000, '2020-01-01', NULL, 1, 126, 8, 20, 803);
INSERT INTO `position` VALUES (815, '大数据开发工程师（中国联通网络AI中心）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 12, '南京', 21000, 6000, '2020-01-01', NULL, 1, 143, 9, 1, 804);
INSERT INTO `position` VALUES (816, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 4, '南京', 16000, 5000, '2020-01-01', NULL, 1, 141, 9, 9, 805);
INSERT INTO `position` VALUES (817, '高级大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 5, '武汉', 20000, 5000, '2020-01-01', NULL, 1, 63, 9, 7, 806);
INSERT INTO `position` VALUES (818, '科技金融岗（大数据开发方向-成都）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 0, '成都', 20000, 9000, '2020-01-01', NULL, 1, 30, 9, 4, 807);
INSERT INTO `position` VALUES (819, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 7, '上海', 20000, 5000, '2020-01-01', NULL, 1, 129, 9, 0, 808);
INSERT INTO `position` VALUES (820, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 12, '上海', 11000, 7000, '2020-01-01', NULL, 1, 95, 9, 19, 809);
INSERT INTO `position` VALUES (821, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 9, '济南', 23000, 6000, '2020-01-01', NULL, 1, 27, 9, 13, 810);
INSERT INTO `position` VALUES (822, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 6, '深圳', 21000, 7000, '2020-01-01', NULL, 1, 70, 9, 20, 811);
INSERT INTO `position` VALUES (823, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 3, '北京', 30000, 6000, '2020-01-01', NULL, 1, 125, 9, 20, 812);
INSERT INTO `position` VALUES (824, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 5, '南京', 15000, 6000, '2020-01-01', NULL, 1, 99, 9, 14, 813);
INSERT INTO `position` VALUES (825, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 4, '济南', 16000, 5000, '2020-01-01', NULL, 1, 139, 9, 2, 814);
INSERT INTO `position` VALUES (826, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 11, '南京', 20000, 9000, '2020-01-01', NULL, 1, 53, 9, 2, 815);
INSERT INTO `position` VALUES (827, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 14, '上海', 20000, 5000, '2020-01-01', NULL, 1, 70, 9, 13, 816);
INSERT INTO `position` VALUES (828, '大数据开发/可带薪实习+住宿双休', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 4, '青岛', 11000, 7000, '2020-01-01', NULL, 1, 83, 9, 18, 817);
INSERT INTO `position` VALUES (829, '大数据高级开发工程师/大数据开发', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 15, '武汉', 23000, 7000, '2020-01-01', NULL, 1, 18, 9, 6, 818);
INSERT INTO `position` VALUES (830, '大数据开发工程师（JAVA方向）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 2, '济南', 21000, 6000, '2020-01-01', NULL, 1, 5, 9, 4, 819);
INSERT INTO `position` VALUES (831, '大数据开发', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 12, '济南', 15000, 8000, '2020-01-01', NULL, 1, 17, 9, 20, 820);
INSERT INTO `position` VALUES (832, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 2, '福州', 21000, 5000, '2020-01-01', NULL, 1, 53, 9, 9, 821);
INSERT INTO `position` VALUES (833, '大数据开发工程师-GZ', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 7, '广州', 20000, 9000, '2020-01-01', NULL, 1, 124, 9, 16, 822);
INSERT INTO `position` VALUES (834, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 13, '杭州', 11000, 7000, '2020-01-01', NULL, 1, 74, 9, 18, 823);
INSERT INTO `position` VALUES (835, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 15, '大连', 21000, 9000, '2020-01-01', NULL, 1, 73, 9, 17, 824);
INSERT INTO `position` VALUES (836, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 9, '上海', 21000, 7000, '2020-01-01', NULL, 1, 16, 9, 0, 825);
INSERT INTO `position` VALUES (837, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 7, '深圳', 30000, 5000, '2020-01-01', NULL, 1, 73, 9, 1, 826);
INSERT INTO `position` VALUES (838, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 0, '成都', 30000, 9000, '2020-01-01', NULL, 1, 135, 9, 6, 827);
INSERT INTO `position` VALUES (839, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 14, '成都', 16000, 9000, '2020-01-01', NULL, 1, 52, 9, 15, 828);
INSERT INTO `position` VALUES (840, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 7, '广州', 15000, 7000, '2020-01-01', NULL, 1, 123, 9, 5, 829);
INSERT INTO `position` VALUES (841, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 10, '天津', 20000, 9000, '2020-01-01', NULL, 1, 98, 9, 6, 830);
INSERT INTO `position` VALUES (842, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 4, '武汉', 11000, 6000, '2020-01-01', NULL, 1, 106, 9, 15, 831);
INSERT INTO `position` VALUES (843, '大数据开发工程师（研发中心）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 2, '南京', 15000, 8000, '2020-01-01', NULL, 1, 62, 9, 10, 832);
INSERT INTO `position` VALUES (844, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 10, '南京', 16000, 8000, '2020-01-01', NULL, 1, 120, 9, 4, 833);
INSERT INTO `position` VALUES (845, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 15, '上海', 20000, 9000, '2020-01-01', NULL, 1, 21, 9, 19, 834);
INSERT INTO `position` VALUES (846, '大数据开发工程师（工业能源领域） (职位编号：116336880)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 4, '上海', 20000, 8000, '2020-01-01', NULL, 1, 46, 9, 19, 835);
INSERT INTO `position` VALUES (847, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 4, '上海', 16000, 5000, '2020-01-01', NULL, 1, 3, 9, 0, 836);
INSERT INTO `position` VALUES (848, '大数据开发工程师 (职位编号：TCL001098)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 5, '惠州', 16000, 8000, '2020-01-01', NULL, 1, 68, 9, 12, 837);
INSERT INTO `position` VALUES (849, '25664-大数据开发工程师（腾讯云全资子公司）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 14, '西安', 15000, 7000, '2020-01-01', NULL, 1, 60, 9, 10, 838);
INSERT INTO `position` VALUES (850, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 1, '深圳', 15000, 9000, '2020-01-01', NULL, 1, 65, 9, 7, 839);
INSERT INTO `position` VALUES (851, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 8, '上海', 15000, 8000, '2020-01-01', NULL, 1, 61, 9, 8, 840);
INSERT INTO `position` VALUES (852, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 4, '厦门', 16000, 5000, '2020-01-01', NULL, 1, 25, 9, 14, 841);
INSERT INTO `position` VALUES (853, '大数据开发工程师-上海-01803', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 0, '上海', 15000, 7000, '2020-01-01', NULL, 1, 84, 9, 1, 842);
INSERT INTO `position` VALUES (854, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 5, '北京', 30000, 5000, '2020-01-01', NULL, 1, 93, 9, 7, 843);
INSERT INTO `position` VALUES (855, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 3, '广州', 16000, 6000, '2020-01-01', NULL, 1, 9, 9, 13, 844);
INSERT INTO `position` VALUES (856, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 3, '广州', 11000, 9000, '2020-01-01', NULL, 1, 72, 9, 8, 845);
INSERT INTO `position` VALUES (857, '大数据开发运维工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 5, '上海', 30000, 8000, '2020-01-01', NULL, 1, 50, 9, 6, 846);
INSERT INTO `position` VALUES (858, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 3, '广州', 30000, 7000, '2020-01-01', NULL, 1, 87, 9, 0, 847);
INSERT INTO `position` VALUES (859, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 10, '深圳', 30000, 5000, '2020-01-01', NULL, 1, 31, 9, 17, 848);
INSERT INTO `position` VALUES (860, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 7, '上海', 15000, 8000, '2020-01-01', NULL, 1, 111, 9, 20, 849);
INSERT INTO `position` VALUES (861, '高级大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 0, '北京', 23000, 8000, '2020-01-01', NULL, 1, 91, 9, 1, 850);
INSERT INTO `position` VALUES (862, '初中级大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 10, '广州', 15000, 7000, '2020-01-01', NULL, 1, 100, 9, 11, 851);
INSERT INTO `position` VALUES (863, '高级大数据开发工程师(000771) (职位编号：UEC000771)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 1, '北京', 20000, 7000, '2020-01-01', NULL, 1, 79, 9, 9, 852);
INSERT INTO `position` VALUES (864, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 7, '珠海', 23000, 5000, '2020-01-01', NULL, 1, 114, 9, 17, 853);
INSERT INTO `position` VALUES (865, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 0, '广州', 20000, 8000, '2020-01-01', NULL, 1, 133, 9, 16, 854);
INSERT INTO `position` VALUES (866, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 4, '深圳', 15000, 7000, '2020-01-01', NULL, 1, 45, 9, 7, 855);
INSERT INTO `position` VALUES (867, '高级大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 0, '广州', 30000, 7000, '2020-01-01', NULL, 1, 61, 9, 14, 856);
INSERT INTO `position` VALUES (868, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 1, '北京', 23000, 5000, '2020-01-01', NULL, 1, 116, 9, 10, 857);
INSERT INTO `position` VALUES (869, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 0, '北京', 30000, 7000, '2020-01-01', NULL, 1, 99, 9, 11, 858);
INSERT INTO `position` VALUES (870, '大数据开发工程师（金融科技）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 0, '上海', 20000, 6000, '2020-01-01', NULL, 1, 113, 9, 11, 859);
INSERT INTO `position` VALUES (871, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 15, '上海', 15000, 6000, '2020-01-01', NULL, 1, 7, 9, 12, 860);
INSERT INTO `position` VALUES (872, '信息安全-大数据开发工程师-XX6002', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 5, '北京', 30000, 8000, '2020-01-01', NULL, 1, 104, 9, 3, 861);
INSERT INTO `position` VALUES (873, '大数据开发工程师-武汉-01121', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 6, '武汉', 20000, 7000, '2020-01-01', NULL, 1, 24, 9, 6, 862);
INSERT INTO `position` VALUES (874, '大数据开发工程师(广告)-WLW', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 15, '深圳', 11000, 6000, '2020-01-01', NULL, 1, 124, 9, 19, 863);
INSERT INTO `position` VALUES (875, '大数据开发（集团）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 2, '广州', 16000, 7000, '2020-01-01', NULL, 1, 20, 9, 1, 864);
INSERT INTO `position` VALUES (876, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 15, '深圳', 20000, 8000, '2020-01-01', NULL, 1, 5, 9, 7, 865);
INSERT INTO `position` VALUES (877, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 8, '深圳', 30000, 6000, '2020-01-01', NULL, 1, 17, 9, 10, 866);
INSERT INTO `position` VALUES (878, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 5, '北京', 16000, 9000, '2020-01-01', NULL, 1, 10, 9, 5, 867);
INSERT INTO `position` VALUES (879, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 1, '武汉', 11000, 7000, '2020-01-01', NULL, 1, 143, 9, 13, 868);
INSERT INTO `position` VALUES (880, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 2, '上海', 16000, 6000, '2020-01-01', NULL, 1, 51, 9, 19, 869);
INSERT INTO `position` VALUES (881, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 12, '郑州', 30000, 5000, '2020-01-01', NULL, 1, 71, 9, 16, 870);
INSERT INTO `position` VALUES (882, '大数据开发运营可实习', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 14, '上海', 20000, 7000, '2020-01-01', NULL, 1, 126, 9, 3, 871);
INSERT INTO `position` VALUES (883, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 14, '深圳', 23000, 9000, '2020-01-01', NULL, 1, 57, 9, 20, 872);
INSERT INTO `position` VALUES (884, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 9, '娄底', 11000, 9000, '2020-01-01', NULL, 1, 35, 9, 11, 873);
INSERT INTO `position` VALUES (885, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 12, '沈阳', 16000, 5000, '2020-01-01', NULL, 1, 122, 9, 13, 874);
INSERT INTO `position` VALUES (886, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 2, '济南', 11000, 5000, '2020-01-01', NULL, 1, 31, 9, 17, 875);
INSERT INTO `position` VALUES (887, '大数据开发人员（上海）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 9, '上海', 11000, 6000, '2020-01-01', NULL, 1, 26, 9, 2, 876);
INSERT INTO `position` VALUES (888, '资深大数据开发工程师（车联网方向）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 12, '上海', 30000, 9000, '2020-01-01', NULL, 1, 84, 9, 14, 877);
INSERT INTO `position` VALUES (889, 'LLZ-024-大数据开发', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 8, '杭州', 30000, 7000, '2020-01-01', NULL, 1, 0, 9, 16, 878);
INSERT INTO `position` VALUES (890, '29912-微视大数据开发工程师 (职位编号：57711)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 12, '深圳', 16000, 6000, '2020-01-01', NULL, 1, 33, 9, 19, 879);
INSERT INTO `position` VALUES (891, '大数据开发工程师 (职位编号：19841)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 9, '北京', 21000, 8000, '2020-01-01', NULL, 1, 30, 9, 16, 880);
INSERT INTO `position` VALUES (892, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 1, '南昌', 20000, 8000, '2020-01-01', NULL, 1, 90, 9, 0, 881);
INSERT INTO `position` VALUES (893, '大数据开发', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 15, '广州', 15000, 8000, '2020-01-01', NULL, 1, 84, 9, 9, 882);
INSERT INTO `position` VALUES (894, '高级大数据开发（研究开发部）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 1, '深圳', 21000, 8000, '2020-01-01', NULL, 1, 112, 9, 7, 883);
INSERT INTO `position` VALUES (895, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 7, '南京', 20000, 8000, '2020-01-01', NULL, 1, 94, 9, 5, 884);
INSERT INTO `position` VALUES (896, '大数据开发工程师（2020校招岗位）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 6, '广州', 16000, 5000, '2020-01-01', NULL, 1, 128, 9, 10, 885);
INSERT INTO `position` VALUES (897, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 9, '深圳', 30000, 5000, '2020-01-01', NULL, 1, 59, 9, 6, 886);
INSERT INTO `position` VALUES (898, '大数据开发工程师-成都', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 9, '成都', 20000, 6000, '2020-01-01', NULL, 1, 93, 9, 2, 887);
INSERT INTO `position` VALUES (899, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 13, '上海', 20000, 8000, '2020-01-01', NULL, 1, 46, 9, 18, 888);
INSERT INTO `position` VALUES (900, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 12, '北京', 21000, 5000, '2020-01-01', NULL, 1, 55, 9, 5, 889);
INSERT INTO `position` VALUES (901, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 2, '昆明', 11000, 5000, '2020-01-01', NULL, 1, 38, 9, 9, 890);
INSERT INTO `position` VALUES (902, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 1, '北京', 21000, 8000, '2020-01-01', NULL, 1, 65, 9, 19, 891);
INSERT INTO `position` VALUES (903, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 6, '深圳', 11000, 5000, '2020-01-01', NULL, 1, 74, 9, 10, 892);
INSERT INTO `position` VALUES (904, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 5, '佛山', 30000, 6000, '2020-01-01', NULL, 1, 75, 9, 19, 893);
INSERT INTO `position` VALUES (905, '大数据开发实习生 (职位编号：01)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 10, '北京', 21000, 6000, '2020-01-01', NULL, 1, 97, 9, 11, 894);
INSERT INTO `position` VALUES (906, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 5, '长沙', 16000, 8000, '2020-01-01', NULL, 1, 104, 9, 18, 895);
INSERT INTO `position` VALUES (907, '大数据开发工程师 (职位编号：机票)', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 0, '苏州', 11000, 5000, '2020-01-01', NULL, 1, 112, 9, 5, 896);
INSERT INTO `position` VALUES (908, '大数据开发', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 10, '上海', 11000, 6000, '2020-01-01', NULL, 1, 64, 9, 10, 897);
INSERT INTO `position` VALUES (909, 'java大数据开发助理岗', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 3, '武汉', 16000, 5000, '2020-01-01', NULL, 1, 10, 9, 3, 898);
INSERT INTO `position` VALUES (910, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 9, '深圳', 16000, 7000, '2020-01-01', NULL, 1, 59, 9, 12, 899);
INSERT INTO `position` VALUES (911, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 6, '广州', 23000, 5000, '2020-01-01', NULL, 1, 5, 9, 4, 900);
INSERT INTO `position` VALUES (912, '大数据开发工程师（金融国企）', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 10, '南京', 16000, 9000, '2020-01-01', NULL, 1, 40, 9, 19, 901);
INSERT INTO `position` VALUES (913, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 7, '杭州', 21000, 9000, '2020-01-01', NULL, 1, 72, 9, 12, 902);
INSERT INTO `position` VALUES (914, '大数据开发工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先,熟练使用linux操作系统', 3, '成都', 11000, 9000, '2020-01-01', NULL, 1, 109, 9, 0, 903);
INSERT INTO `position` VALUES (915, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 7, '深圳', 20000, 7000, '2020-01-01', NULL, 1, 25, 10, 1, 904);
INSERT INTO `position` VALUES (916, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 5, '广州', 11000, 8000, '2020-01-01', NULL, 1, 88, 10, 0, 905);
INSERT INTO `position` VALUES (917, '三级等保　互联网医院　区块链软件服务平台', '良好的c/c++语言基础，熟悉区块链技术', 1, '上海', 11000, 9000, '2020-01-01', NULL, 1, 97, 10, 2, 906);
INSERT INTO `position` VALUES (918, '品牌公关总监（区块链）', '良好的c/c++语言基础，熟悉区块链技术', 3, '上海', 21000, 5000, '2020-01-01', NULL, 1, 22, 10, 15, 907);
INSERT INTO `position` VALUES (919, '区块链高级研发工程师', '良好的c/c++语言基础，熟悉区块链技术', 12, '北京', 16000, 8000, '2020-01-01', NULL, 1, 132, 10, 12, 908);
INSERT INTO `position` VALUES (920, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 10, '上海', 16000, 8000, '2020-01-01', NULL, 1, 2, 10, 8, 909);
INSERT INTO `position` VALUES (921, 'CVL - （区块链）媒体实习生', '良好的c/c++语言基础，熟悉区块链技术', 9, '上海', 23000, 7000, '2020-01-01', NULL, 1, 37, 10, 4, 910);
INSERT INTO `position` VALUES (922, '《25万顶薪》区块链运营专员 Topgames互联网游戏公司', '良好的c/c++语言基础，熟悉区块链技术', 6, '广州', 23000, 8000, '2020-01-01', NULL, 1, 45, 10, 2, 911);
INSERT INTO `position` VALUES (923, '区块链解决方案经理', '良好的c/c++语言基础，熟悉区块链技术', 1, '深圳', 21000, 6000, '2020-01-01', NULL, 1, 95, 10, 4, 912);
INSERT INTO `position` VALUES (924, '区块链技术专家', '良好的c/c++语言基础，熟悉区块链技术', 6, '深圳', 16000, 8000, '2020-01-01', NULL, 1, 102, 10, 5, 913);
INSERT INTO `position` VALUES (925, '键盘侠+区块链/纯线上文字销售（无责5.5K）', '良好的c/c++语言基础，熟悉区块链技术', 0, '上海', 20000, 8000, '2020-01-01', NULL, 1, 56, 10, 0, 914);
INSERT INTO `position` VALUES (926, '区块链项目经理', '良好的c/c++语言基础，熟悉区块链技术', 7, '广州', 20000, 9000, '2020-01-01', NULL, 1, 110, 10, 15, 915);
INSERT INTO `position` VALUES (927, 'Go语言研发实习生(区块链方向)', '良好的c/c++语言基础，熟悉区块链技术', 1, '北京', 30000, 6000, '2020-01-01', NULL, 1, 78, 10, 14, 916);
INSERT INTO `position` VALUES (928, '区块链应用工程师', '良好的c/c++语言基础，熟悉区块链技术', 12, '深圳', 16000, 8000, '2020-01-01', NULL, 1, 125, 10, 7, 917);
INSERT INTO `position` VALUES (929, '商务拓展经理（区块链行业机构销售/IR方向）', '良好的c/c++语言基础，熟悉区块链技术', 11, '上海', 21000, 9000, '2020-01-01', NULL, 1, 53, 10, 4, 918);
INSERT INTO `position` VALUES (930, '区块链研究员(000650) (职位编号：000650)', '良好的c/c++语言基础，熟悉区块链技术', 8, '成都', 23000, 5000, '2020-01-01', NULL, 1, 81, 10, 3, 919);
INSERT INTO `position` VALUES (931, '区块链培训讲师', '良好的c/c++语言基础，熟悉区块链技术', 8, '成都', 21000, 5000, '2020-01-01', NULL, 1, 35, 10, 19, 920);
INSERT INTO `position` VALUES (932, '销售（区块链）', '良好的c/c++语言基础，熟悉区块链技术', 7, '深圳', 20000, 6000, '2020-01-01', NULL, 1, 125, 10, 9, 921);
INSERT INTO `position` VALUES (933, '高级Java开发工程师（区块链）', '良好的c/c++语言基础，熟悉区块链技术', 15, '武汉', 15000, 9000, '2020-01-01', NULL, 1, 51, 10, 2, 922);
INSERT INTO `position` VALUES (934, '区块链开发', '良好的c/c++语言基础，熟悉区块链技术', 6, '上海', 16000, 7000, '2020-01-01', NULL, 1, 81, 10, 10, 923);
INSERT INTO `position` VALUES (935, '区块链技术工程师', '良好的c/c++语言基础，熟悉区块链技术', 15, '南昌', 21000, 8000, '2020-01-01', NULL, 1, 53, 10, 7, 924);
INSERT INTO `position` VALUES (936, '区块链与安全工程师', '良好的c/c++语言基础，熟悉区块链技术', 7, '北京', 23000, 5000, '2020-01-01', NULL, 1, 63, 10, 4, 925);
INSERT INTO `position` VALUES (937, '区块链量化投资总监', '良好的c/c++语言基础，熟悉区块链技术', 8, '上海', 30000, 6000, '2020-01-01', NULL, 1, 106, 10, 4, 926);
INSERT INTO `position` VALUES (938, '区块链Golang开发', '良好的c/c++语言基础，熟悉区块链技术', 4, '杭州', 15000, 6000, '2020-01-01', NULL, 1, 140, 10, 16, 927);
INSERT INTO `position` VALUES (939, '区块链应用工程师', '良好的c/c++语言基础，熟悉区块链技术', 4, '武汉', 23000, 6000, '2020-01-01', NULL, 1, 40, 10, 10, 928);
INSERT INTO `position` VALUES (940, '产品经理(人工智能、区块链)', '良好的c/c++语言基础，熟悉区块链技术', 7, '北京', 20000, 7000, '2020-01-01', NULL, 1, 124, 10, 10, 929);
INSERT INTO `position` VALUES (941, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 1, '广州', 30000, 5000, '2020-01-01', NULL, 1, 34, 10, 14, 930);
INSERT INTO `position` VALUES (942, '区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 9, '广州', 16000, 9000, '2020-01-01', NULL, 1, 38, 10, 6, 931);
INSERT INTO `position` VALUES (943, '区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 4, '东莞', 11000, 6000, '2020-01-01', NULL, 1, 112, 10, 16, 932);
INSERT INTO `position` VALUES (944, 'Java开发工程师  6-12K  五险一金、区块链技术', '良好的c/c++语言基础，熟悉区块链技术', 7, '广州', 21000, 8000, '2020-01-01', NULL, 1, 110, 10, 7, 933);
INSERT INTO `position` VALUES (945, '区块链技术研发工程师', '良好的c/c++语言基础，熟悉区块链技术', 11, '广州', 30000, 8000, '2020-01-01', NULL, 1, 44, 10, 16, 934);
INSERT INTO `position` VALUES (946, '数据分析师-区块链方向', '良好的c/c++语言基础，熟悉区块链技术', 0, '西安', 16000, 6000, '2020-01-01', NULL, 1, 28, 10, 18, 935);
INSERT INTO `position` VALUES (947, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 2, '上海', 21000, 6000, '2020-01-01', NULL, 1, 141, 10, 11, 936);
INSERT INTO `position` VALUES (948, '区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 5, '杭州', 11000, 8000, '2020-01-01', NULL, 1, 123, 10, 6, 937);
INSERT INTO `position` VALUES (949, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 12, '成都', 20000, 6000, '2020-01-01', NULL, 1, 6, 10, 8, 938);
INSERT INTO `position` VALUES (950, '区块链前端开发', '良好的c/c++语言基础，熟悉区块链技术', 0, '福州', 11000, 9000, '2020-01-01', NULL, 1, 72, 10, 4, 939);
INSERT INTO `position` VALUES (951, '㊣㊣㊣ 区块链高级开发工程师（公链）', '良好的c/c++语言基础，熟悉区块链技术', 3, '广州', 20000, 5000, '2020-01-01', NULL, 1, 136, 10, 7, 940);
INSERT INTO `position` VALUES (952, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 13, '北京', 15000, 5000, '2020-01-01', NULL, 1, 55, 10, 0, 941);
INSERT INTO `position` VALUES (953, '区块链研发工程师', '良好的c/c++语言基础，熟悉区块链技术', 1, '深圳', 30000, 8000, '2020-01-01', NULL, 1, 83, 10, 16, 942);
INSERT INTO `position` VALUES (954, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 9, '上海', 21000, 8000, '2020-01-01', NULL, 1, 15, 10, 3, 943);
INSERT INTO `position` VALUES (955, '区块链底层研发工程师', '良好的c/c++语言基础，熟悉区块链技术', 0, '广州', 20000, 6000, '2020-01-01', NULL, 1, 143, 10, 20, 944);
INSERT INTO `position` VALUES (956, '区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 6, '深圳', 15000, 6000, '2020-01-01', NULL, 1, 29, 10, 3, 945);
INSERT INTO `position` VALUES (957, '高级区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 4, '宁波', 30000, 8000, '2020-01-01', NULL, 1, 80, 10, 5, 946);
INSERT INTO `position` VALUES (958, '区块链技术专家', '良好的c/c++语言基础，熟悉区块链技术', 0, '上海', 16000, 8000, '2020-01-01', NULL, 1, 76, 10, 15, 947);
INSERT INTO `position` VALUES (959, '区块链开发', '良好的c/c++语言基础，熟悉区块链技术', 5, '上海', 21000, 7000, '2020-01-01', NULL, 1, 60, 10, 8, 948);
INSERT INTO `position` VALUES (960, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 0, '深圳', 15000, 5000, '2020-01-01', NULL, 1, 99, 10, 12, 949);
INSERT INTO `position` VALUES (961, '区块链产品经理', '良好的c/c++语言基础，熟悉区块链技术', 5, '深圳', 23000, 5000, '2020-01-01', NULL, 1, 77, 10, 2, 950);
INSERT INTO `position` VALUES (962, '区块链研发工程师', '良好的c/c++语言基础，熟悉区块链技术', 5, '广州', 21000, 7000, '2020-01-01', NULL, 1, 25, 10, 17, 951);
INSERT INTO `position` VALUES (963, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 13, '深圳', 20000, 7000, '2020-01-01', NULL, 1, 52, 10, 12, 952);
INSERT INTO `position` VALUES (964, '资深区块链项目经理', '良好的c/c++语言基础，熟悉区块链技术', 1, '上海', 16000, 9000, '2020-01-01', NULL, 1, 68, 10, 8, 953);
INSERT INTO `position` VALUES (965, '前端高级开发工程师(区块链)', '良好的c/c++语言基础，熟悉区块链技术', 6, '成都', 15000, 5000, '2020-01-01', NULL, 1, 107, 10, 17, 954);
INSERT INTO `position` VALUES (966, '区块链研究员', '良好的c/c++语言基础，熟悉区块链技术', 1, '大连', 30000, 7000, '2020-01-01', NULL, 1, 52, 10, 8, 955);
INSERT INTO `position` VALUES (967, '高级区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 6, '柳州', 15000, 9000, '2020-01-01', NULL, 1, 0, 10, 20, 956);
INSERT INTO `position` VALUES (968, '区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 3, '深圳', 15000, 5000, '2020-01-01', NULL, 1, 15, 10, 17, 957);
INSERT INTO `position` VALUES (969, '区块链技术工程师', '良好的c/c++语言基础，熟悉区块链技术', 4, '北京', 30000, 9000, '2020-01-01', NULL, 1, 57, 10, 14, 958);
INSERT INTO `position` VALUES (970, '区块链高级Java开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 2, '成都', 20000, 5000, '2020-01-01', NULL, 1, 21, 10, 20, 959);
INSERT INTO `position` VALUES (971, '区块链平台部负责人 (职位编号：baoneng006864)', '良好的c/c++语言基础，熟悉区块链技术', 15, '深圳', 21000, 8000, '2020-01-01', NULL, 1, 33, 10, 13, 960);
INSERT INTO `position` VALUES (972, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 3, '重庆', 21000, 9000, '2020-01-01', NULL, 1, 7, 10, 8, 961);
INSERT INTO `position` VALUES (973, 'ICBU技术部-区块链技术专家 (职位编号：GP528328)', '良好的c/c++语言基础，熟悉区块链技术', 11, '深圳', 20000, 6000, '2020-01-01', NULL, 1, 113, 10, 7, 962);
INSERT INTO `position` VALUES (974, '29777-区块链应用售前架构师（深圳、北京）（北京） (职位编号：52398)', '良好的c/c++语言基础，熟悉区块链技术', 2, '北京', 30000, 6000, '2020-01-01', NULL, 1, 142, 10, 18, 963);
INSERT INTO `position` VALUES (975, '区块链开发高级工程师', '良好的c/c++语言基础，熟悉区块链技术', 1, '上海', 30000, 8000, '2020-01-01', NULL, 1, 134, 10, 20, 964);
INSERT INTO `position` VALUES (976, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 9, '广州', 16000, 6000, '2020-01-01', NULL, 1, 91, 10, 11, 965);
INSERT INTO `position` VALUES (977, '区块链平台币运营经理', '良好的c/c++语言基础，熟悉区块链技术', 4, '武汉', 23000, 7000, '2020-01-01', NULL, 1, 114, 10, 20, 966);
INSERT INTO `position` VALUES (978, '区块链编辑', '良好的c/c++语言基础，熟悉区块链技术', 4, '武汉', 21000, 7000, '2020-01-01', NULL, 1, 80, 10, 15, 967);
INSERT INTO `position` VALUES (979, '区块链运营实习生', '良好的c/c++语言基础，熟悉区块链技术', 7, '青岛', 30000, 8000, '2020-01-01', NULL, 1, 61, 10, 0, 968);
INSERT INTO `position` VALUES (980, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 11, '上海', 15000, 6000, '2020-01-01', NULL, 1, 137, 10, 18, 969);
INSERT INTO `position` VALUES (981, '区块链运营', '良好的c/c++语言基础，熟悉区块链技术', 4, '西安', 30000, 6000, '2020-01-01', NULL, 1, 128, 10, 13, 970);
INSERT INTO `position` VALUES (982, '区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 2, '金昌', 20000, 9000, '2020-01-01', NULL, 1, 85, 10, 16, 971);
INSERT INTO `position` VALUES (983, '品牌总监（区块链）', '良好的c/c++语言基础，熟悉区块链技术', 5, '上海', 15000, 5000, '2020-01-01', NULL, 1, 120, 10, 11, 972);
INSERT INTO `position` VALUES (984, '区块链运营经理/总监', '良好的c/c++语言基础，熟悉区块链技术', 13, '深圳', 16000, 9000, '2020-01-01', NULL, 1, 140, 10, 5, 973);
INSERT INTO `position` VALUES (985, '区块链技术工程师', '良好的c/c++语言基础，熟悉区块链技术', 11, '北京', 21000, 7000, '2020-01-01', NULL, 1, 52, 10, 10, 974);
INSERT INTO `position` VALUES (986, '区块链产品开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 3, '深圳', 11000, 7000, '2020-01-01', NULL, 1, 83, 10, 9, 975);
INSERT INTO `position` VALUES (987, '区块链技术学徒', '良好的c/c++语言基础，熟悉区块链技术', 14, '深圳', 11000, 8000, '2020-01-01', NULL, 1, 64, 10, 13, 976);
INSERT INTO `position` VALUES (988, '区块链应用专家(J10815)', '良好的c/c++语言基础，熟悉区块链技术', 14, '深圳', 16000, 6000, '2020-01-01', NULL, 1, 58, 10, 6, 977);
INSERT INTO `position` VALUES (989, '区块链解决方案总监/高级经理', '良好的c/c++语言基础，熟悉区块链技术', 0, '杭州', 23000, 8000, '2020-01-01', NULL, 1, 97, 10, 16, 978);
INSERT INTO `position` VALUES (990, '区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 1, '广州', 23000, 8000, '2020-01-01', NULL, 1, 34, 10, 12, 979);
INSERT INTO `position` VALUES (991, '区块链开发工程师（高级）', '良好的c/c++语言基础，熟悉区块链技术', 11, '广州', 20000, 5000, '2020-01-01', NULL, 1, 5, 10, 13, 980);
INSERT INTO `position` VALUES (992, '区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 7, '广州', 21000, 5000, '2020-01-01', NULL, 1, 103, 10, 10, 981);
INSERT INTO `position` VALUES (993, 'GO工程师（区块链）', '良好的c/c++语言基础，熟悉区块链技术', 13, '杭州', 30000, 6000, '2020-01-01', NULL, 1, 64, 10, 19, 982);
INSERT INTO `position` VALUES (994, 'PHP开发工程师（区块链方向）', '良好的c/c++语言基础，熟悉区块链技术', 13, '广州', 21000, 9000, '2020-01-01', NULL, 1, 49, 10, 11, 983);
INSERT INTO `position` VALUES (995, '区块链应用工程师', '良好的c/c++语言基础，熟悉区块链技术', 9, '上海', 15000, 5000, '2020-01-01', NULL, 1, 39, 10, 6, 984);
INSERT INTO `position` VALUES (996, '区块链研发工程师', '良好的c/c++语言基础，熟悉区块链技术', 11, '南京', 16000, 9000, '2020-01-01', NULL, 1, 129, 10, 14, 985);
INSERT INTO `position` VALUES (997, '区块链研究实习生', '良好的c/c++语言基础，熟悉区块链技术', 3, '广州', 11000, 9000, '2020-01-01', NULL, 1, 94, 10, 8, 986);
INSERT INTO `position` VALUES (998, '区块链技术工程师SGW108 (职位编号：caict002240)', '良好的c/c++语言基础，熟悉区块链技术', 4, '北京', 20000, 8000, '2020-01-01', NULL, 1, 7, 10, 5, 987);
INSERT INTO `position` VALUES (999, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 10, '成都', 15000, 9000, '2020-01-01', NULL, 1, 102, 10, 7, 988);
INSERT INTO `position` VALUES (1000, '区块链技术专职教师', '良好的c/c++语言基础，熟悉区块链技术', 1, '南昌', 30000, 7000, '2020-01-01', NULL, 1, 8, 10, 16, 989);
INSERT INTO `position` VALUES (1001, '区块链应用工程师', '良好的c/c++语言基础，熟悉区块链技术', 0, '福州', 21000, 7000, '2020-01-01', NULL, 1, 88, 10, 13, 990);
INSERT INTO `position` VALUES (1002, '客服运营专员（区块链方向）', '良好的c/c++语言基础，熟悉区块链技术', 3, '深圳', 15000, 6000, '2020-01-01', NULL, 1, 135, 10, 10, 991);
INSERT INTO `position` VALUES (1003, '产品经理（区块链）', '良好的c/c++语言基础，熟悉区块链技术', 4, '北京', 20000, 5000, '2020-01-01', NULL, 1, 95, 10, 1, 992);
INSERT INTO `position` VALUES (1004, '区块链实习生助理-实习生招聘', '良好的c/c++语言基础，熟悉区块链技术', 2, '深圳', 15000, 5000, '2020-01-01', NULL, 1, 121, 10, 20, 993);
INSERT INTO `position` VALUES (1005, '区块链开发工程师', '良好的c/c++语言基础，熟悉区块链技术', 12, '深圳', 30000, 8000, '2020-01-01', NULL, 1, 110, 10, 3, 994);
INSERT INTO `position` VALUES (1006, '区块链工程师', '良好的c/c++语言基础，熟悉区块链技术', 7, '镇江', 16000, 7000, '2020-01-01', NULL, 1, 114, 10, 19, 995);
INSERT INTO `position` VALUES (1007, '高级产品经理（区块链）', '良好的c/c++语言基础，熟悉区块链技术', 10, '成都', 16000, 6000, '2020-01-01', NULL, 1, 5, 10, 16, 996);
INSERT INTO `position` VALUES (1008, '区块链技术总监', '良好的c/c++语言基础，熟悉区块链技术', 13, '深圳', 16000, 5000, '2020-01-01', NULL, 1, 59, 10, 17, 997);
INSERT INTO `position` VALUES (1009, 'Java开发工程师(区块链)', '良好的c/c++语言基础，熟悉区块链技术', 14, '成都', 21000, 9000, '2020-01-01', NULL, 1, 126, 10, 16, 998);
INSERT INTO `position` VALUES (1010, '销售经理（区块链）', '良好的c/c++语言基础，熟悉区块链技术', 8, '深圳', 21000, 8000, '2020-01-01', NULL, 1, 126, 10, 10, 999);
INSERT INTO `position` VALUES (1011, '研究员（区块链）(J11240)', '良好的c/c++语言基础，熟悉区块链技术', 4, '北京', 16000, 5000, '2020-01-01', NULL, 1, 112, 10, 11, 1000);
INSERT INTO `position` VALUES (1012, '区块链研发经理', '良好的c/c++语言基础，熟悉区块链技术', 4, '广州', 30000, 6000, '2020-01-01', NULL, 1, 86, 10, 14, 1001);
INSERT INTO `position` VALUES (1013, '区块链研发经理', '良好的c/c++语言基础，熟悉区块链技术', 0, '广州', 15000, 7000, '2020-01-01', NULL, 1, 82, 10, 5, 1002);
INSERT INTO `position` VALUES (1014, '产品经理（区块链）', '良好的c/c++语言基础，熟悉区块链技术', 10, '上海', 30000, 5000, '2020-01-01', NULL, 1, 88, 10, 18, 1003);

-- ----------------------------
-- Table structure for positionindex
-- ----------------------------
DROP TABLE IF EXISTS `positionindex`;
CREATE TABLE `positionindex`  (
  `positionId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requirement` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `quantity` int(11) NULL DEFAULT NULL,
  `workCity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salaryUp` int(11) NULL DEFAULT NULL,
  `salaryDown` int(11) NULL DEFAULT NULL,
  `releaseDate` date NULL DEFAULT NULL,
  `validDate` date NULL DEFAULT NULL,
  `statePub` int(11) NULL DEFAULT NULL,
  `hits` int(11) NULL DEFAULT 0,
  `categoryId` int(11) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `hrIdPub` int(11) NOT NULL,
  PRIMARY KEY (`positionId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of positionindex
-- ----------------------------
INSERT INTO `positionindex` VALUES (1, 'Java工程师', '熟练使用RPC框架，具备相关的分布式开发经验', 3, '北京市', 12000, 7000, '2017-10-27', NULL, 1, 142, 1, 1, 1);
INSERT INTO `positionindex` VALUES (2, 'Java工程师', '接收应届实习生，实习期满应聘上岗接收应届实习生，实习期满应聘上岗收应届实习生，实习期满应聘上岗', 5, '上海市', 16000, 11000, '2017-11-07', NULL, 1, 121, 1, 4, 2);
INSERT INTO `positionindex` VALUES (3, 'Java工程师', '有扎实的java基础，熟悉分布式、缓存、异步消息等原理和应用', 15, '天津市', 13000, 10000, '2017-09-30', NULL, 1, 3, 1, 7, 3);
INSERT INTO `positionindex` VALUES (4, 'Java工程师', 'JAVA WEB方向2年+经验', 2, '南京市', 16000, 12000, '2017-09-25', NULL, 1, 7, 1, 10, 4);
INSERT INTO `positionindex` VALUES (5, 'C++工程师', '可接收计算机相关专业应届生，表现优秀者加薪转正', 30, '南京市', 8000, 5000, '2017-10-16', NULL, 1, 13, 2, 10, 4);
INSERT INTO `positionindex` VALUES (6, 'C++工程师', '3-5年工作经验，计算机相关专业毕业', 1, '上海市', 16000, 8000, '2017-11-03', NULL, 1, 4, 2, 4, 2);
INSERT INTO `positionindex` VALUES (7, 'PHP工程师', '一年以上PHP开发经验 （项目经验丰富的，也可以升级为高级开发工程师）', 10, '上海市', 11000, 8000, '2017-11-10', NULL, 1, 82, 3, 4, 2);
INSERT INTO `positionindex` VALUES (8, 'PHP工程师', '熟悉LNMP/WNMP开发环境 , 熟练使用Yaf, Yii, ThinkPHP等一种或多种框架', 5, '上海市', 12000, 7000, '2017-11-01', NULL, 1, 1, 3, 4, 2);
INSERT INTO `positionindex` VALUES (9, '.NET工程师', '熟悉WinForm/WPF窗体开发并有实际项目经验', 2, '北京市', 13000, 11000, '2017-11-02', NULL, 1, 11, 4, 1, 1);
INSERT INTO `positionindex` VALUES (10, 'Python数据分析', '熟练使用Linux，可以快速上手编写shell、powershell、cmd等操作系统脚本', 2, '北京市', 23000, 18000, '2017-10-09', NULL, 1, 43, 5, 1, 1);
INSERT INTO `positionindex` VALUES (11, 'Python开发', '4年以上互联网产品后台研发经验，2年以上后台构架经验', 2, '北京市', 22000, 18000, '2017-09-23', NULL, 1, 0, 5, 1, 1);
INSERT INTO `positionindex` VALUES (12, 'Python开发', '精通Python，2年或以上Python项目经验', 3, '天津市', 16000, 14000, '2017-07-27', NULL, 1, 35, 5, 7, 3);
INSERT INTO `positionindex` VALUES (13, '数据挖掘工程师', '熟悉 Linux平台上的编程环境，精通Java开发，精通 Python/Shell等脚本语言', 12, '天津市', 22000, 15000, '2017-11-05', NULL, 1, 4, 6, 7, 3);
INSERT INTO `positionindex` VALUES (14, '数据挖掘工程师', '熟悉Hadoop、Hive、Spark、流式计算、实时计算等大数据相关技术者优先，熟悉时序挖掘、文本挖掘、网络挖掘等优先', 2, '北京市', 32000, 28000, '2017-11-06', NULL, 1, 7, 6, 1, 1);
INSERT INTO `positionindex` VALUES (15, '数据挖掘工程师', '精通Python，熟悉PHP/GO/Java/C++/C等语言中的一种或几种', 2, '杭州市', 26000, 14000, '2017-11-08', NULL, 1, 20, 6, 13, 5);
INSERT INTO `positionindex` VALUES (16, 'Java工程师', '熟悉Spring、Freemark、Struts、Hibernate 等开源框架', 13, '杭州市', 18000, 15000, '2017-11-11', NULL, 1, 4, 1, 17, 6);
INSERT INTO `positionindex` VALUES (17, 'Java后端开发', '熟练使用Mybatis，SpringMVC，SpringCloud等框架', 5, '杭州市', 21000, 18000, '2017-10-23', NULL, 1, 3, 1, 13, 5);
INSERT INTO `positionindex` VALUES (18, 'C++后端开发', '熟练linux系统操作，熟练gcc,gdb,vim, eclipse等开发工具', 5, '北京市', 12000, 9000, '2017-10-28', NULL, 1, 0, 2, 1, 1);

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `resumeId` int(11) NOT NULL AUTO_INCREMENT,
  `ability` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `internship` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `workExperience` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `certificate` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `jobDesire` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`resumeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES (1, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `resume` VALUES (2, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `resume` VALUES (3, NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO `resume` VALUES (4, NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO `resume` VALUES (5, NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO `resume` VALUES (6, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO `resume` VALUES (7, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO `resume` VALUES (8, NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO `resume` VALUES (9, NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO `resume` VALUES (10, NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO `resume` VALUES (11, NULL, NULL, NULL, NULL, NULL, 11);
INSERT INTO `resume` VALUES (12, NULL, NULL, NULL, NULL, NULL, 12);
INSERT INTO `resume` VALUES (13, NULL, NULL, NULL, NULL, NULL, 13);
INSERT INTO `resume` VALUES (14, NULL, NULL, NULL, NULL, NULL, 14);
INSERT INTO `resume` VALUES (17, NULL, NULL, NULL, NULL, NULL, 17);
INSERT INTO `resume` VALUES (21, NULL, NULL, NULL, NULL, NULL, 21);
INSERT INTO `resume` VALUES (24, '写点什么。。。', '写点什么。。。', '写点什么。。。', '写点什么。。。', '写点什么。。。', 24);
INSERT INTO `resume` VALUES (25, '专业能力么。。。也就能悄悄代码', '还没毕业，也没啥实习经历~', '无实际工作经历~', '拿过几次奖学金吧', '有一份别太累稳定的工作就好。。。', 25);
INSERT INTO `resume` VALUES (26, NULL, NULL, NULL, NULL, NULL, 26);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` int(11) NULL DEFAULT NULL,
  `birthYear` int(11) NULL DEFAULT NULL,
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eduDegree` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graduation` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `graYear` int(11) NULL DEFAULT NULL,
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dirDesire` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`userId`) USING BTREE,
  UNIQUE INDEX `user_id_UNIQUE`(`userId`) USING BTREE,
  UNIQUE INDEX `user_mobile_UNIQUE`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123456', '4QrcOUm6Wau+VuBX8g+IPg==', '夏高兴', 0, NULL, '云淡天高', 'xiagaoxin@163.com', '北京市', '北京市', '硕士', '中南财经政法大学', NULL, NULL, 3);
INSERT INTO `user` VALUES (2, '16873315255', '4QrcOUm6Wau+VuBX8g+IPg==', '沈茂德', 0, NULL, '冷酷的云', 'shenmaode@163.com', '北京市', '北京市', '本科', '湖南师范大学', NULL, NULL, 3);
INSERT INTO `user` VALUES (3, '16535356412', '4QrcOUm6Wau+VuBX8g+IPg==', '杜文瑞', 0, NULL, '我心寂寞', 'duwenrui@163.com', '上海市', '上海市', '本科', '东北财经大学', NULL, NULL, 1);
INSERT INTO `user` VALUES (4, '15785658371', '4QrcOUm6Wau+VuBX8g+IPg==', '彭友卉', 0, NULL, '尘封记忆', 'pengyouhui@163.com', '上海市', '上海市', '本科', '西南大学', NULL, NULL, 2);
INSERT INTO `user` VALUES (5, '16735259632', '4QrcOUm6Wau+VuBX8g+IPg==', '崔谷槐', 0, NULL, '飘雪无垠', 'cuiguhuai@163.com', '上海市', '上海市', '本科', '苏州大学', NULL, NULL, 2);
INSERT INTO `user` VALUES (6, '17898763255', '4QrcOUm6Wau+VuBX8g+IPg==', '魏茂材', 0, NULL, '风过无痕', 'weimaocai@163.com', '广东省', '广州市', '本科', '西北大学', NULL, NULL, 6);
INSERT INTO `user` VALUES (7, '17563522636', '4QrcOUm6Wau+VuBX8g+IPg==', '侯成文', 0, 1997, '星月相随', 'huochengwen', '湖北省', '武汉市', '硕士', '上海财经大学', 2019, '国际金融', 3);
INSERT INTO `user` VALUES (8, '18936258863', '4QrcOUm6Wau+VuBX8g+IPg==', '邵夜云', 1, NULL, '低调沉默者', 'shaoyeyun@163.com', '北京市', '北京市', '本科', '江苏大学', NULL, NULL, 2);
INSERT INTO `user` VALUES (9, '13752533625', '4QrcOUm6Wau+VuBX8g+IPg==', '方彭湃', 1, NULL, '梦醒童话', 'fangpengpai@163.com', '天津市', '天津市', '硕士', '西南政法大学', NULL, NULL, 4);
INSERT INTO `user` VALUES (10, '15763968252', '4QrcOUm6Wau+VuBX8g+IPg==', '熊新觉', 1, NULL, '咖啡的味道', 'xiongxinjue@163.com', '广东省', '广州市', '本科', '重庆医科大学', NULL, NULL, 3);
INSERT INTO `user` VALUES (11, '13685259986', '4QrcOUm6Wau+VuBX8g+IPg==', '肖又香', 1, NULL, '悬世尘埃', 'xiaoyouxiang@163.com', '浙江省', '杭州市', '大专', '福建师范大学', NULL, NULL, 2);
INSERT INTO `user` VALUES (12, '15788875236', '4QrcOUm6Wau+VuBX8g+IPg==', '严经纶', 0, NULL, '冰封夕阳', 'yanjinlun@163.com', '浙江省', '杭州市', '本科', '广州中医药大学', NULL, NULL, 6);
INSERT INTO `user` VALUES (13, '18766635865', '4QrcOUm6Wau+VuBX8g+IPg==', '邓和豫', 1, NULL, '隐水酣龙', 'dengheyu@163.com', '浙江省', '杭州市', '本科', '哈尔滨工程大学', NULL, NULL, 1);
INSERT INTO `user` VALUES (14, '15623527861', '4QrcOUm6Wau+VuBX8g+IPg==', '邓雪风', 0, NULL, '一顿小皮锤', 'dengxuefeng@163.com', '江苏省', '南京市', '本科', '暨南大学', NULL, NULL, 4);
INSERT INTO `user` VALUES (17, '15726928003', '4QrcOUm6Wau+VuBX8g+IPg==', '龟龟', 0, NULL, '龟龟', 'guigui@163.com', '广东省', '中山市', '本科', '华东理工大学', NULL, NULL, 0);
INSERT INTO `user` VALUES (21, '13957336750', '4QrcOUm6Wau+VuBX8g+IPg==', '木木', 0, NULL, '木木', 'mumu@163.com', '湖北省', '武汉市', '本科', '天津科技大学', NULL, NULL, 0);
INSERT INTO `user` VALUES (24, '17863954768', '4QrcOUm6Wau+VuBX8g+IPg==', '轩', 0, 1997, '轩', 'xuan@163.com', '山东省', '青岛市', '本科', '青岛科技大学', 2019, '软件工程', 2);
INSERT INTO `user` VALUES (25, '17812345687', '4QrcOUm6Wau+VuBX8g+IPg==', '青柠', 0, 1997, '青柠', 'babycoder@foxmail.com', '浙江省', '杭州市', '本科', '青岛科技大学', 2019, '软件', 1);
INSERT INTO `user` VALUES (26, '15216452250', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 0, 0, '恒星', NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
