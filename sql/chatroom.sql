/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : chatroom

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2018-11-12 10:44:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ali
-- ----------------------------
DROP TABLE IF EXISTS `ali`;
CREATE TABLE `ali` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ali
-- ----------------------------

-- ----------------------------
-- Table structure for chat_message
-- ----------------------------
DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE `chat_message` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '聊天内容',
  `isDelete` varchar(20) NOT NULL DEFAULT 'no' COMMENT '软删除',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='聊天信息';

-- ----------------------------
-- Records of chat_message
-- ----------------------------
INSERT INTO `chat_message` VALUES ('1', '1', '你跳我就跳', 'no');
INSERT INTO `chat_message` VALUES ('2', '2', '亲爱的，相信我，你跳了我也会跳的', 'yes');
INSERT INTO `chat_message` VALUES ('3', '1', '如果你不跳怎么办', 'no');
INSERT INTO `chat_message` VALUES ('4', '2', '怎么可能', 'no');
INSERT INTO `chat_message` VALUES ('5', '1', '那我跳了啊', 'no');
INSERT INTO `chat_message` VALUES ('6', '2', '嗯呢，爱你哟', 'no');
INSERT INTO `chat_message` VALUES ('7', '1', '水里面好冷啊', 'no');
INSERT INTO `chat_message` VALUES ('8', '2', '叫你多穿一点', 'no');
INSERT INTO `chat_message` VALUES ('9', '1', '你真是个大石坝', 'no');
INSERT INTO `chat_message` VALUES ('10', '1', '哈哈', 'no');
INSERT INTO `chat_message` VALUES ('11', '1', '成功啦', 'no');
INSERT INTO `chat_message` VALUES ('12', '1', '怎么情况', 'no');
INSERT INTO `chat_message` VALUES ('13', '1', '这就很好玩了', 'no');
INSERT INTO `chat_message` VALUES ('39', '12', '这就很好玩了', 'yes');
INSERT INTO `chat_message` VALUES ('15', '1', '哈哈哈', 'no');
INSERT INTO `chat_message` VALUES ('16', '1', '煞笔', 'yes');
INSERT INTO `chat_message` VALUES ('17', '6', '这不是真的', 'yes');
INSERT INTO `chat_message` VALUES ('18', '6', '', 'yes');
INSERT INTO `chat_message` VALUES ('19', '6', '', 'yes');
INSERT INTO `chat_message` VALUES ('20', '6', '局部刷新', 'no');
INSERT INTO `chat_message` VALUES ('21', '6', '这就很好玩了', 'no');
INSERT INTO `chat_message` VALUES ('22', '6', '这是什么情况啊', 'no');
INSERT INTO `chat_message` VALUES ('23', '6', '就是不知道', 'no');
INSERT INTO `chat_message` VALUES ('24', '3', '你就是个傻瓜帮你', 'yes');
INSERT INTO `chat_message` VALUES ('25', '3', '哈哈哈', 'yes');
INSERT INTO `chat_message` VALUES ('26', '3', '小奶狗', 'yes');
INSERT INTO `chat_message` VALUES ('27', '3', '狗哥', 'yes');
INSERT INTO `chat_message` VALUES ('28', '1', '关键是我也不知道啊', 'yes');
INSERT INTO `chat_message` VALUES ('29', '1', '说错了', 'no');
INSERT INTO `chat_message` VALUES ('30', '1', '当我没说', 'no');
INSERT INTO `chat_message` VALUES ('31', '1', '阿里戈多', 'no');
INSERT INTO `chat_message` VALUES ('32', '1', '真实渣渣辉', 'no');
INSERT INTO `chat_message` VALUES ('33', '2', '啦啦啦', 'yes');
INSERT INTO `chat_message` VALUES ('34', '2', '我说了好多话但是都撤回了', 'no');
INSERT INTO `chat_message` VALUES ('35', '2', '天下武功唯快不破', 'no');
INSERT INTO `chat_message` VALUES ('36', '2', '这就好多了', 'no');
INSERT INTO `chat_message` VALUES ('37', '2', '就是这样熟悉', 'no');
INSERT INTO `chat_message` VALUES ('38', '2', '接下来开发群聊功能', 'no');

-- ----------------------------
-- Table structure for chat_user
-- ----------------------------
DROP TABLE IF EXISTS `chat_user`;
CREATE TABLE `chat_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `userPass` varchar(255) NOT NULL DEFAULT '' COMMENT '用户密码',
  `userIcon` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='聊天用户';

-- ----------------------------
-- Records of chat_user
-- ----------------------------
INSERT INTO `chat_user` VALUES ('1', 'rose', '123456', '暗黑修女梅丽莎_icon.png');
INSERT INTO `chat_user` VALUES ('2', 'jack', '123456', '八神庵_icon.png');
INSERT INTO `chat_user` VALUES ('3', 'kkkk', 'kkkk', '东部王国管理员_icon.png');
INSERT INTO `chat_user` VALUES ('4', 'cckk', '6686212', '大小章鱼.png');
INSERT INTO `chat_user` VALUES ('5', 'ssss', '1111', '僵尸猴.png');
INSERT INTO `chat_user` VALUES ('6', 'jerry', '123456', '星光精灵.png');
INSERT INTO `chat_user` VALUES ('7', 'cccc', 'cccc', '野狐.png');
INSERT INTO `chat_user` VALUES ('8', 'dddd', 'dddd', '火狸.png');
INSERT INTO `chat_user` VALUES ('9', 'bbbb', 'bbbb', '月光精灵.png');
INSERT INTO `chat_user` VALUES ('10', 'gggg', 'gggg', '大幽灵.png');
INSERT INTO `chat_user` VALUES ('11', 'aaaaa', 'aaaaa', '1368756282448.jpg');
INSERT INTO `chat_user` VALUES ('12', '3333', '3333', '+8613537350408CFA87FB6644DB05CF2D20274102D774E.jpg');

-- ----------------------------
-- Table structure for lolhero
-- ----------------------------
DROP TABLE IF EXISTS `lolhero`;
CREATE TABLE `lolhero` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `heroName` varchar(255) NOT NULL,
  `iconUrl` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lolhero
-- ----------------------------
INSERT INTO `lolhero` VALUES ('1', '派克', 'http://img4.dwstatic.com/lol/1809/401384353295/1537429162285.png');
INSERT INTO `lolhero` VALUES ('2', '卡莎', 'http://img3.dwstatic.com/lol/1804/387389921796/1523593002068.png');
INSERT INTO `lolhero` VALUES ('3', '佐伊', 'http://img2.dwstatic.com/lol/1712/376328607492/1512373414710.jpg');
INSERT INTO `lolhero` VALUES ('4', '奥恩', 'http://img2.dwstatic.com/lol/1805/389357632840/1525402436139.png');
INSERT INTO `lolhero` VALUES ('5', '凯隐', 'http://img1.dwstatic.com/lol/1809/401447870467/1537492678259.png');
INSERT INTO `lolhero` VALUES ('6', '霞', 'http://img1.dwstatic.com/lol/1809/401447870467/1537492678329.png');
INSERT INTO `lolhero` VALUES ('7', '洛', 'http://img2.dwstatic.com/lol/1809/401447870467/1537492678399.png');
INSERT INTO `lolhero` VALUES ('8', '卡蜜尔', 'http://img3.dwstatic.com/lol/1809/401386725929/1537431594819.png');
INSERT INTO `lolhero` VALUES ('9', '艾翁', 'http://img1.dwstatic.com/lol/1609/338393194134/1474437997425.png');
INSERT INTO `lolhero` VALUES ('10', '克烈', 'http://img2.dwstatic.com/lol/1809/401448103802/1537493086901.png');
INSERT INTO `lolhero` VALUES ('11', '塔莉垭', 'http://img4.dwstatic.com/lol/1605/328023671635/1464068536867.png');
INSERT INTO `lolhero` VALUES ('12', '索尔', 'http://img.dwstatic.com/lol/1809/401447870467/1537492678211.png');
INSERT INTO `lolhero` VALUES ('13', '烬', 'http://img4.dwstatic.com/lol/1602/320083658274/1456128461876.png');
INSERT INTO `lolhero` VALUES ('14', '俄洛伊', 'http://img3.dwstatic.com/lol/1511/311181024943/1447226977586.png');
INSERT INTO `lolhero` VALUES ('15', '千珏', 'http://img3.dwstatic.com/lol/1509/306348781099/1442393587190.jpg');
INSERT INTO `lolhero` VALUES ('16', '塔姆', 'http://img3.dwstatic.com/lol/1809/401448103802/1537493016569.png');
INSERT INTO `lolhero` VALUES ('17', '艾克', 'http://img5.dwstatic.com/lol/1809/401448103802/1537493016470.png');
INSERT INTO `lolhero` VALUES ('18', '巴德', 'http://img5.dwstatic.com/lol/1503/289477079770/1425521886799.jpg');
INSERT INTO `lolhero` VALUES ('19', '雷克赛', 'http://img3.dwstatic.com/lol/1412/281530572893/1417575385364.jpg');
INSERT INTO `lolhero` VALUES ('20', '卡莉丝塔', 'http://img4.dwstatic.com/lol/1411/279641746944/1415686553224.jpg');
INSERT INTO `lolhero` VALUES ('21', '阿兹尔', 'http://img3.dwstatic.com/lol/1409/273519298897/1409564119766.jpg');
INSERT INTO `lolhero` VALUES ('22', '纳尔', 'http://img.dwstatic.com/lol/1408/273091424599/1409136231951.png');
INSERT INTO `lolhero` VALUES ('23', '布隆', 'http://img2.dwstatic.com/lol/1809/401386725929/1537431594752.png');
INSERT INTO `lolhero` VALUES ('24', '维克兹', 'http://img.dwstatic.com/lol/1402/256326391926/1392371196098.jpg');
INSERT INTO `lolhero` VALUES ('25', '亚索', 'http://img3.dwstatic.com/lol/1311/249491473153/1385536285032.png');
INSERT INTO `lolhero` VALUES ('26', '金克丝', 'http://img4.dwstatic.com/lol/1310/245353650426/1381398467886.png');
INSERT INTO `lolhero` VALUES ('27', '卢锡安', 'http://img5.dwstatic.com/lol/1308/240574668479/1376619482925.png');
INSERT INTO `lolhero` VALUES ('28', '亚托克斯', 'http://img1.dwstatic.com/lol/1809/401385892592/1537430699759.png');
INSERT INTO `lolhero` VALUES ('29', '丽桑卓', 'http://img1.dwstatic.com/lol/1305/231871544650/231871561051.png');
INSERT INTO `lolhero` VALUES ('30', '扎克', 'http://img2.dwstatic.com/lol/1303/228242985967/228242993255.png');
INSERT INTO `lolhero` VALUES ('31', '奎因', 'http://img3.dwstatic.com/lol/1302/225381420352/225382419902.png');
INSERT INTO `lolhero` VALUES ('32', '锤石', 'http://img5.dwstatic.com/lol/1301/222714364061/222714396868.png');
INSERT INTO `lolhero` VALUES ('33', '蔚', 'http://pic.duowan.com/lol/1212/219251307713/219251317038.png');
INSERT INTO `lolhero` VALUES ('34', '娜美', 'http://pic.duowan.com/lol/1211/218041518261/218041566099.jpg');
INSERT INTO `lolhero` VALUES ('35', '劫', 'http://pic.duowan.com/lol/1211/216813960863/216813987373.jpg');
INSERT INTO `lolhero` VALUES ('36', '伊莉丝', 'http://pic.duowan.com/lol/1210/215627370104/215627419666.png');
INSERT INTO `lolhero` VALUES ('37', '卡兹克', 'http://pic3.duowan.com/lol/1209/212665448739/212665677660.jpg');
INSERT INTO `lolhero` VALUES ('38', '辛德拉', 'http://pic.duowan.com/lol/1208/210247342385/210247356941.png\r\n');
INSERT INTO `lolhero` VALUES ('39', '雷恩加尔', 'http://img4.dwstatic.com/lol/1411/279647578275/1415693006769.png');
INSERT INTO `lolhero` VALUES ('40', '黛安娜', 'http://pic.duowan.com/lol/1208/207845244716/207847215830.jpg');
INSERT INTO `lolhero` VALUES ('41', '婕拉', 'http://pic.duowan.com/lol/1207/207224467449/207225320108.png');
INSERT INTO `lolhero` VALUES ('42', '杰斯', 'http://pic.duowan.com/lol/1207/205773506081/205773517075.png');
INSERT INTO `lolhero` VALUES ('43', '德莱文', 'http://pic1.duowan.com/lol/1206/202991040456/203015268342.gif');
INSERT INTO `lolhero` VALUES ('44', '德莱厄斯', 'http://img2.dwstatic.com/lol/1605/327431848757/1463477081676.png');
INSERT INTO `lolhero` VALUES ('45', '韦鲁斯', 'http://pic.duowan.com/lol/1204/198079462173/198079477246.jpg');
INSERT INTO `lolhero` VALUES ('46', '赫卡里姆', 'http://img.dwstatic.com/lol/1305/231871544650/231872989399.png');
INSERT INTO `lolhero` VALUES ('47', '璐璐', 'http://pic.duowan.com/lol/1203/196696818878/196703018435.png');
INSERT INTO `lolhero` VALUES ('48', '菲奥娜', 'http://img4.dwstatic.com/lol/1508/304453491146/1440498302852.png');
INSERT INTO `lolhero` VALUES ('49', '诺提勒斯', 'http://pic.duowan.com/lol/1202/193328146015/193333009937.gif');
INSERT INTO `lolhero` VALUES ('50', '吉格斯', 'http://pic.duowan.com/lol/1202/192131965665/192131975792.gif');
INSERT INTO `lolhero` VALUES ('51', '瑟庄妮', 'http://img5.dwstatic.com/lol/1305/231871544650/231872781396.png');
INSERT INTO `lolhero` VALUES ('52', '维克托', 'http://img.dwstatic.com/lol/1410/278074218098/1414119027670.png');
INSERT INTO `lolhero` VALUES ('53', '阿狸', 'http://img2.dwstatic.com/lol/1605/327431848757/1463477114973.png');
INSERT INTO `lolhero` VALUES ('54', '沃利贝尔 ', 'http://pic.duowan.com/lol/1111/186599851229/186599920512.jpg');
INSERT INTO `lolhero` VALUES ('55', '菲兹', 'http://pic.duowan.com/lol/1111/185550440004/185552341067.gif');
INSERT INTO `lolhero` VALUES ('56', '希瓦娜', 'http://img5.dwstatic.com/lol/1409/275653745481/1411698550859.png');
INSERT INTO `lolhero` VALUES ('57', '格雷福斯', 'http://img4.dwstatic.com/lol/1411/279647578275/1415692717334.png');
INSERT INTO `lolhero` VALUES ('58', '泽拉斯', 'http://img1.dwstatic.com/lol/1310/246295394773/1382341114891.png');
INSERT INTO `lolhero` VALUES ('59', '锐雯', 'http://img2.dwstatic.com/lol/1310/246296550427/1382341365723.png');
INSERT INTO `lolhero` VALUES ('60', '泰隆', 'http://img4.dwstatic.com/lol/1411/279649187628/1415694426798.png');
INSERT INTO `lolhero` VALUES ('61', '斯卡纳', 'http://pic3.duowan.com/lol/1108/178647387266/178647406694.jpg');
INSERT INTO `lolhero` VALUES ('62', '悟空', 'http://img5.dwstatic.com/lol/1411/279649187628/1415694802272.png');
INSERT INTO `lolhero` VALUES ('63', '蕾欧娜', 'http://img.dwstatic.com/lol/1809/401385892592/1537431024361.png');
INSERT INTO `lolhero` VALUES ('64', '约里克', 'http://img1.dwstatic.com/lol/1608/335991104611/1472035909137.png');
INSERT INTO `lolhero` VALUES ('65', '布兰德', 'http://img3.dwstatic.com/lol/1305/231871544650/231873147386.png');
INSERT INTO `lolhero` VALUES ('66', '兰博', 'http://img1.dwstatic.com/lol/1411/279647578275/1415693077770.png');
INSERT INTO `lolhero` VALUES ('67', '薇恩', 'http://img.dwstatic.com/lol/1809/401386725929/1537431594689.png');
INSERT INTO `lolhero` VALUES ('68', '奥莉安娜', 'http://img3.dwstatic.com/lol/1410/277214494112/1413259306099.png');
INSERT INTO `lolhero` VALUES ('69', '娑娜', 'http://img2.dwstatic.com/lol/1310/246295394773/1382341114754.png');
INSERT INTO `lolhero` VALUES ('70', '斯维因', 'http://img.dwstatic.com/lol/1809/401386725929/1537431594888.png');
INSERT INTO `lolhero` VALUES ('71', '拉克丝', 'http://img3.dwstatic.com/lol/1407/269888611908/1405934522153.png');
INSERT INTO `lolhero` VALUES ('72', '乐芙兰', 'http://img4.dwstatic.com/lol/1305/231871544650/231873618947.png');
INSERT INTO `lolhero` VALUES ('73', '艾瑞莉亚', 'http://img1.dwstatic.com/lol/1804/387389921796/1523592968266.png');
INSERT INTO `lolhero` VALUES ('74', '特朗德尔', 'http://img5.dwstatic.com/lol/1305/231871544650/231872653626.png');
INSERT INTO `lolhero` VALUES ('75', '卡西奥佩娅', 'http://img5.dwstatic.com/lol/1409/275654100149/1411698909355.png');
INSERT INTO `lolhero` VALUES ('76', '凯特琳', 'http://img4.dwstatic.com/lol/1407/269517769163/1405562576193.png');
INSERT INTO `lolhero` VALUES ('77', '雷克顿', 'http://img5.dwstatic.com/lol/1409/275654100149/1411698914143.png');
INSERT INTO `lolhero` VALUES ('78', '李青', 'http://img4.dwstatic.com/lol/1809/401385892592/1537430814373.png');
INSERT INTO `lolhero` VALUES ('79', '卡尔玛', 'http://img3.dwstatic.com/lol/1310/246296550427/1382341365785.png');
INSERT INTO `lolhero` VALUES ('80', '茂凯', 'http://img.dwstatic.com/lol/1608/333990023252/1470034827234.jpg');
INSERT INTO `lolhero` VALUES ('81', '嘉文四世', 'http://img.dwstatic.com/lol/1411/279647578275/1415692869825.png');
INSERT INTO `lolhero` VALUES ('82', '魔腾', 'http://img4.dwstatic.com/lol/1412/282065522028/1418110347375.jpg');
INSERT INTO `lolhero` VALUES ('83', '厄运女郎', 'http://img1.dwstatic.com/lol/1407/269888611908/1405934761751.png');
INSERT INTO `lolhero` VALUES ('84', '厄加特', 'http://img1.dwstatic.com/lol/1809/401385892592/1537430932088.png');
INSERT INTO `lolhero` VALUES ('85', '加里奥', 'http://img.dwstatic.com/lol/1809/401385892592/1537430932016.png');
INSERT INTO `lolhero` VALUES ('86', '弗拉基米尔', 'http://img2.dwstatic.com/lol/1407/269888611908/1405934827815.png');
INSERT INTO `lolhero` VALUES ('87', '赵信', 'http://img3.dwstatic.com/lol/1809/401385892592/1537430931956.png');
INSERT INTO `lolhero` VALUES ('88', '瑞兹', 'undefined');
INSERT INTO `lolhero` VALUES ('89', '卡特琳娜', 'http://img3.dwstatic.com/lol/1605/327431848757/1463476917030.png');
INSERT INTO `lolhero` VALUES ('90', '科加斯', 'http://img2.dwstatic.com/lol/1809/401388774348/1537433652031.png');
INSERT INTO `lolhero` VALUES ('91', '努努', 'http://img.dwstatic.com/lol/1809/401385892592/1537430699644.png');
INSERT INTO `lolhero` VALUES ('92', '阿木木', 'http://img1.dwstatic.com/lol/1408/271538842297/1407583646022.png');
INSERT INTO `lolhero` VALUES ('93', '维迦', 'http://img2.dwstatic.com/lol/1411/279649187628/1415694680759.png');
INSERT INTO `lolhero` VALUES ('94', '辛吉德', 'http://img1.dwstatic.com/lol/1411/279649187628/1415694348156.png');
INSERT INTO `lolhero` VALUES ('95', '泰达米尔', 'http://img3.dwstatic.com/lol/1407/269888611908/1405934286526.png');
INSERT INTO `lolhero` VALUES ('96', '蒙多医生', 'http://pic3.duowan.com/lol/1205/200657192402/200657210773.png');
INSERT INTO `lolhero` VALUES ('97', '普朗克', 'http://img2.dwstatic.com/lol/1605/327431848757/1463477233977.png');
INSERT INTO `lolhero` VALUES ('98', '墨菲特', 'http://img.dwstatic.com/lol/1809/401385892592/1537430931853.png');
INSERT INTO `lolhero` VALUES ('99', '希维尔', 'http://img2.dwstatic.com/lol/1410/278074218098/1414119108556.png');
INSERT INTO `lolhero` VALUES ('100', '费德提克', 'http://img3.dwstatic.com/lol/1605/327431848757/1463476955213.png');
INSERT INTO `lolhero` VALUES ('101', '凯尔', 'http://img5.dwstatic.com/lol/1411/279647578275/1415692934837.png');
INSERT INTO `lolhero` VALUES ('102', '艾尼维亚', 'http://img3.dwstatic.com/lol/1605/327431848757/1463477136452.png');
INSERT INTO `lolhero` VALUES ('103', '提莫', 'http://img2.dwstatic.com/lol/1310/246295394773/1382341114833.png');
INSERT INTO `lolhero` VALUES ('104', '艾希', 'http://img2.dwstatic.com/lol/1305/231871544650/231872031019.png');
INSERT INTO `lolhero` VALUES ('105', '安妮', 'http://img.dwstatic.com/lol/1310/246296550427/1382341365515.png');
INSERT INTO `lolhero` VALUES ('106', '崔丝塔娜', 'http://img5.dwstatic.com/lol/1605/327431848757/1463476681702.png');
INSERT INTO `lolhero` VALUES ('107', '贾克斯', 'http://img3.dwstatic.com/lol/1310/246295394773/1382341114670.png');
INSERT INTO `lolhero` VALUES ('108', '易', 'http://img4.dwstatic.com/lol/1310/246296550427/1382341588085.png');
INSERT INTO `lolhero` VALUES ('109', '库奇', 'http://img2.dwstatic.com/lol/1310/246295394773/1382341114450.png');
INSERT INTO `lolhero` VALUES ('110', '阿利斯塔', 'http://img4.dwstatic.com/lol/1501/285778790953/1421825277654.jpg');
INSERT INTO `lolhero` VALUES ('111', '布里茨', 'http://img2.dwstatic.com/lol/1411/279731654279/1415781858743.png');
INSERT INTO `lolhero` VALUES ('112', '索拉卡', 'http://img5.dwstatic.com/lol/1305/231871544650/231872754143.png');
INSERT INTO `lolhero` VALUES ('113', '内瑟斯', 'http://img.dwstatic.com/lol/1405/264160344403/1400205147348.png');
INSERT INTO `lolhero` VALUES ('114', '沃里克', 'http://img.dwstatic.com/lol/1605/327431848757/1463477413939.png');
INSERT INTO `lolhero` VALUES ('115', '莫甘娜', 'http://img4.dwstatic.com/lol/1407/269888611908/1405934265741.png');
INSERT INTO `lolhero` VALUES ('116', '拉莫斯', 'http://img5.dwstatic.com/lol/1605/327431848757/1463476821956.png');
INSERT INTO `lolhero` VALUES ('117', '卡萨丁', 'http://img3.dwstatic.com/lol/1410/276710213760/1412756511788.png');
INSERT INTO `lolhero` VALUES ('118', '赛恩', 'http://img4.dwstatic.com/lol/1410/277753050551/1413797864676.png');
INSERT INTO `lolhero` VALUES ('119', '塔里克', 'http://img4.dwstatic.com/lol/1604/325604644560/1461649813559.png');
INSERT INTO `lolhero` VALUES ('120', '迦娜', 'http://img5.dwstatic.com/lol/1809/401447870467/1537492678141.png');
INSERT INTO `lolhero` VALUES ('121', '基兰', 'http://img1.dwstatic.com/lol/1411/279649187628/1415694905444.png');
INSERT INTO `lolhero` VALUES ('122', '崔斯特', 'http://img.dwstatic.com/lol/1305/231871544650/231873225306.png');
INSERT INTO `lolhero` VALUES ('123', '伊芙琳', 'http://img.dwstatic.com/lol/1605/327431848757/1463477047695.png');
INSERT INTO `lolhero` VALUES ('124', '卡尔萨斯', 'http://img4.dwstatic.com/lol/1407/269606339574/1405651153711.png');
INSERT INTO `lolhero` VALUES ('125', '图奇', 'http://img2.dwstatic.com/lol/1410/276710213760/1412756788167.jpg');
INSERT INTO `lolhero` VALUES ('126', '萨科', 'http://img.dwstatic.com/lol/1411/279649187628/1415693994078.png');
INSERT INTO `lolhero` VALUES ('127', '黑默丁格', 'http://img1.dwstatic.com/lol/1809/401386725929/1537431594580.png');
INSERT INTO `lolhero` VALUES ('128', '阿卡丽', 'http://img5.dwstatic.com/lol/1809/401385892592/1537430699694.png');
INSERT INTO `lolhero` VALUES ('129', '乌迪尔', 'http://img.dwstatic.com/lol/1411/279649187628/1415694612797.png');
INSERT INTO `lolhero` VALUES ('130', '盖伦', 'http://img3.dwstatic.com/lol/1410/276707403146/1412752217106.png');
INSERT INTO `lolhero` VALUES ('131', '凯南', 'http://img.dwstatic.com/lol/1605/327431848757/1463476890582.png');
INSERT INTO `lolhero` VALUES ('132', '克格莫', 'http://img2.dwstatic.com/lol/1809/401447870467/1537492677897.png');
INSERT INTO `lolhero` VALUES ('133', '玛尔扎哈', 'http://img.dwstatic.com/lol/1605/327431848757/1463476853235.png');
INSERT INTO `lolhero` VALUES ('134', '莫德凯撒', 'http://img3.dwstatic.com/lol/1410/276710213760/1412755019210.jpg');
INSERT INTO `lolhero` VALUES ('135', '奈德丽', 'http://img3.dwstatic.com/lol/1305/231871544650/231873517836.png');
INSERT INTO `lolhero` VALUES ('136', '伊泽瑞尔', 'http://img.dwstatic.com/lol/1411/279647578275/1415692576539.png');
INSERT INTO `lolhero` VALUES ('137', '古拉加斯', 'http://img3.dwstatic.com/lol/1411/279647578275/1415692632471.png');
INSERT INTO `lolhero` VALUES ('138', '奥拉夫', 'http://img1.dwstatic.com/lol/1407/269888611908/1405934460434.png');
INSERT INTO `lolhero` VALUES ('139', '潘森', 'http://img.dwstatic.com/lol/1407/269888611908/1405934598070.png');
INSERT INTO `lolhero` VALUES ('140', '波比', 'http://img4.dwstatic.com/lol/1809/401447870467/1537492678044.png');
INSERT INTO `lolhero` VALUES ('141', '慎', 'http://img5.dwstatic.com/lol/1411/279649187628/1415694139441.png');

-- ----------------------------
-- Table structure for yinyang
-- ----------------------------
DROP TABLE IF EXISTS `yinyang`;
CREATE TABLE `yinyang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yinyang
-- ----------------------------
