/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : move_app

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 11/10/2020 15:54:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `move_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片id',
  `image_url` varchar(520) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片地址',
  `sort` int(32) NULL DEFAULT NULL COMMENT '排序',
  `is_show` int(11) NULL DEFAULT 0 COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (1, '0001', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=366763321,1800567094&fm=26&gp=0.jpg', 1, 0);
INSERT INTO `carousel` VALUES (2, '0002', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3287256622,1937521549&fm=26&gp=0.jpg', 2, 0);
INSERT INTO `carousel` VALUES (3, '0003', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602167785999&di=a7d9091d48a738f51083855528baa275&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fphotoblog%2F1301%2F04%2Fc6%2F17118981_17118981_1357289493065_mthumb.jpg', 3, 0);

-- ----------------------------
-- Table structure for move_hot
-- ----------------------------
DROP TABLE IF EXISTS `move_hot`;
CREATE TABLE `move_hot`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影名称',
  `poster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '海报图片',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面图片',
  `trailer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '.mp4资源',
  `score` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评分',
  `prised_counts` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '点赞数量',
  `basic_info` varchar(520) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '基本信息',
  `release_date` datetime(0) NULL DEFAULT NULL COMMENT '上映时间',
  `totol_time` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影总时长',
  `plot_desc` varchar(520) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电影描述',
  `directors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `actors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '影片作者',
  `plot_pics` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of move_hot
-- ----------------------------
INSERT INTO `move_hot` VALUES (1, '蝙蝠侠：黑暗骑士崛起', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '7.4', '4569', '1989 / 科幻 / 美国 ', '2020-10-09 07:58:37', '时长：126分钟', '在罪恶横行的高汉市，有一个令罪犯们心惊胆颤的名字：蝙蝠侠。蝙蝠侠（迈克尔•基顿 Michael Keaton 饰）穿梭于最黑暗的角落，四处打击罪恶。在一次打击罪恶的行动中，蝙蝠侠令匪徒尼巴（杰克•尼科尔森 Jack Nicholson 饰）落入了化学池。尼巴因此面部神经受损，成了永远咧嘴笑的笑面人，人称“小丑”。 “小丑”杀死了团伙的首领，控制了整个高汉市的黑道。“小丑”利用化学药品让人发笑而死，他用这种方法袭击了博物馆，幸得蝙蝠侠及时赶到，挫败了“小丑”的阴谋。在女友碧姬（金•贝辛格 Kim Basinger 饰）家里时，“小丑”突然袭击，蝙蝠侠巧妙躲过了袭击，意外发现“小丑”就是杀死自己的父母的仇人。 “小丑”这次虏走了蝙蝠侠的女友碧姬，约定蝙蝠在教堂楼顶决一死战！', '', '蒂姆·波顿 ', NULL, '2020-10-09 17:15:20');
INSERT INTO `move_hot` VALUES (2, '永远的蝙蝠侠', 'https://p.ssl.qhimg.com/d/dy_1236479f1b3668b881d5b027ffb4cb51.jpg', 'https://p.ssl.qhimg.com/d/dy_1236479f1b3668b881d5b027ffb4cb51.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '6.9', '5484', '1989 / 科幻 / 美国 ', '2020-10-09 07:58:37', '时长：126分钟', '从小亲眼目睹父母被残忍地杀害，布鲁斯·韦恩（克里斯蒂安·贝尔饰）一生充满愤怒和复仇的怒火，他为了报仇几乎不择手段。虽然韦恩继承了父母事业，成为亿万富翁，然而童年的阴影从未一刻消逝，他环游世界、希望报仇和打击罪恶。 年轻的韦恩到了亚洲，却意外进了监狱。在狱中，他受到忍者集团首领的邀请，加入集团，接受了忍者培训。然而，不久他就发现忍者集团对自己的故乡哥谭市别有目的，毅然决定重返故乡。可他发现这座城市已经成为一座被各式各样的犯罪集团所围绕的堕落腐朽的城市，众多势力不想让他继承父母的韦恩庄园。 之后，韦恩在韦恩庄园里发现了一个地下室，发现了自己神秘的另一身份：蝙蝠侠。穿上了蝙蝠战衣，驾驶着蝙蝠车，戴着蝙蝠面具的韦恩开始到处打击犯罪，这其中包括黑手党首领唐鹰，变态毒枭“稻草人”博士以及一个非常熟悉自己的神秘的对手', NULL, ' 迈克尔·基顿 / 杰克·尼科尔森 / 金·贝辛格', NULL, '2020-10-09 17:15:20');
INSERT INTO `move_hot` VALUES (3, '蝙蝠侠大战罗宾', 'https://p.ssl.qhimg.com/t0199cf698212c5442f.jpg', 'https://p.ssl.qhimg.com/t0199cf698212c5442f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '7.8', '555', '1989 / 科幻 / 美国 ', '2020-10-09 07:58:37', '时长：126分钟', '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, ' 迈克尔·基顿 / 杰克·尼科尔森 / 金·贝辛格', NULL, '2020-10-09 17:15:20');
INSERT INTO `move_hot` VALUES (4, '蝙蝠侠前传2', 'https://p.ssl.qhimg.com/d/dy_28fa0b778b455b1036be7465c26eea9d.jpg', 'https://p.ssl.qhimg.com/d/dy_28fa0b778b455b1036be7465c26eea9d.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '8.4', '5444', '1989 / 科幻 / 美国 ', '2020-10-09 07:58:37', '时长：126分钟', '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, ' 迈克尔·基顿 / 杰克·尼科尔森 / 金·贝辛格', NULL, '2020-10-09 17:15:20');
INSERT INTO `move_hot` VALUES (10, '蝙蝠侠前传2', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '6.9', '654', '1989 / 科幻 / 美国 ', NULL, NULL, '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, NULL, NULL, NULL);
INSERT INTO `move_hot` VALUES (11, '蝙蝠侠前传2', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '6.9', '654', '1989 / 科幻 / 美国 ', NULL, NULL, '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, NULL, NULL, NULL);
INSERT INTO `move_hot` VALUES (5, '蝙蝠侠：侠影之谜', 'https://p.ssl.qhimg.com/d/dy_10648e80cfffbd9e584fabdf578d2f5f.jpg', 'https://p.ssl.qhimg.com/d/dy_10648e80cfffbd9e584fabdf578d2f5f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '6.9', '654', '1989 / 科幻 / 美国 ', '2020-10-09 07:58:37', '时长：126分钟', '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, ' 迈克尔·基顿 / 杰克·尼科尔森 / 金·贝辛格', NULL, '2020-10-09 17:15:20');
INSERT INTO `move_hot` VALUES (6, '蝙蝠侠前传2', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '6.9', '654', '1989 / 科幻 / 美国 ', NULL, NULL, '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, ' 迈克尔·基顿 / 杰克·尼科尔森 / 金·贝辛格', NULL, NULL);
INSERT INTO `move_hot` VALUES (7, '蝙蝠侠前传2', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '6.9', '654', '1989 / 科幻 / 美国 ', NULL, NULL, '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, ' 迈克尔·基顿 / 杰克·尼科尔森 / 金·贝辛格', NULL, NULL);
INSERT INTO `move_hot` VALUES (8, '蝙蝠侠前传2', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '6.9', '654', '1989 / 科幻 / 美国 ', NULL, NULL, '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, ' 迈克尔·基顿 / 杰克·尼科尔森 / 金·贝辛格', NULL, NULL);
INSERT INTO `move_hot` VALUES (9, '蝙蝠侠前传2', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '6.9', '654', '1989 / 科幻 / 美国 ', NULL, NULL, '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, ' 迈克尔·基顿 / 杰克·尼科尔森 / 金·贝辛格', NULL, NULL);
INSERT INTO `move_hot` VALUES (12, '蝙蝠侠前传2', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://p.ssl.qhimg.com/t011643a9ccb1d5724f.jpg', 'https://video.699pic.com/videos/10/56/29/b_XPzd1MSzE7DD1599105629.mp4', '6.9', '654', '1989 / 科幻 / 美国 ', NULL, NULL, '从亲眼目睹父母被人杀死的阴影中走出来的“蝙蝠侠”，经历了成长之后，已经不再是那个桀骜不的孤单英雄了。在警官吉姆·戈登和检查官哈维·登特的通力帮助下，“蝙蝠侠”无后顾之忧地继续满世界的奔波，与日益增长起来的犯罪威胁做着永无休止的争斗，而他所在的高谭市，也是进展最为明显的地方，犯罪率以一种惊人的速度持续下降着。', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
